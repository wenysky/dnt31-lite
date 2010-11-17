using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Net;
using Newtonsoft.Json;
using System.Xml.Serialization;

namespace Discuz.TestConsole
{
    [XmlRoot("users_getLoggedInUser_response", Namespace = "http://nt.discuz.net/api/", IsNullable = false)]
    public class LoggedInUserResponse
    {
        [XmlText]
        public int Uid;
    }

    public class DiscuzSession
    {
        Util util;
        public SessionInfo session_info;
        string auth_token;
        string forum_url;
        public string format = "xml";


        internal Util Util
        {
            get { return util; }
        }

        internal string SessionKey
        {
            get { return session_info.SessionKey; }
        }

        internal string Format
        {
            get { return format; }
        }

        // use this for plain sessions
        public DiscuzSession(string api_key, string shared_secret, string forum_url)
        {
            util = new Util(api_key, shared_secret, forum_url + "services/restserver.aspx?");
            this.forum_url = forum_url;
        }

        // use this if you want to re-start an infinite session
        public DiscuzSession(string api_key, SessionInfo session_info, string forum_url)
            : this(api_key, session_info.Secret, forum_url)
        {
            this.session_info = session_info;
            this.forum_url = forum_url;
        }

        public string CreateToken()
        {
            return new Uri(string.Format("{0}login.aspx?api_key={1}", forum_url, util.ApiKey)).ToString();
        }

        #region 内部身份验证程序，不作为API方法调用

        //此方法为testconsole内部验证程序，不是作为API方法调用
        public SessionInfo GetSessionFromToken(string auth_token)
        {
            this.session_info = util.GetXMLResponse<SessionInfo>("auth.getSession",
                    DiscuzParam.Create("auth_token", auth_token));

            this.auth_token = string.Empty;
            this.session_info.Secret = util.SharedSecret;
            return session_info;
        }

        public int LoggedInUser()
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            return util.GetXMLResponse<LoggedInUserResponse>("users.getLoggedInUser", param_list.ToArray()).Uid;
        }

        #endregion

        #region auth

        /// <summary>
        /// 根据authtoken获取session
        /// </summary>
        /// <param name="auth_token"></param>
        /// <returns></returns>
        public string GetSession(string auth_token)
        {
            this.auth_token = string.Empty;
            this.session_info.Secret = util.SharedSecret;
            return util.GetResponse("auth.getSession", DiscuzParam.Create("auth_token", auth_token));
        }

        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <param name="email"></param>
        /// <param name="isMD5Passwd"></param>
        /// <returns></returns>
        public string Register(string username, string password, string email, bool isMD5Passwd)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("user_name", username));
            param_list.Add(DiscuzParam.Create("password", password));
            param_list.Add(DiscuzParam.Create("email", email));
            param_list.Add(DiscuzParam.Create("format", format));

            if (isMD5Passwd)
                param_list.Add(DiscuzParam.Create("password_format", "MD5"));

            return util.GetResponse("auth.register", param_list.ToArray());
        }

        /// <summary>
        /// 获得当前论坛的cookie加密密码
        /// </summary>
        /// <param name="password"></param>
        /// <returns></returns>
        public string getEncodePassword(string password)
        {
            return util.GetResponse("auth.encodePassword", DiscuzParam.Create("password", password), DiscuzParam.Create("format", format));
        }

        #endregion

        #region user

        public string GetInfo(string uids, string fields)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));

            if (uids == null || uids.Length == 0)
                throw new Exception("uid not provided");

            param_list.Add(DiscuzParam.Create("uids", uids));
            param_list.Add(DiscuzParam.Create("fields", fields));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("users.getInfo", param_list.ToArray());
        }

        public string GetLoggedInUser()
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("users.getLoggedInUser", param_list.ToArray());
        }

        public string SetUserInfo(int uid, string user_for_editing)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));

            param_list.Add(DiscuzParam.Create("uid", uid));
            param_list.Add(DiscuzParam.Create("user_info", user_for_editing));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("users.setInfo", param_list.ToArray());
        }

        public string SetExtCredits(string uids, string additional_values)
        {

            List<DiscuzParam> param_list = new List<DiscuzParam>();

            param_list.Add(DiscuzParam.Create("uids", uids));
            param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("additional_values", additional_values));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("users.setExtCredits", param_list.ToArray());
        }

        /// <summary>
        /// 获得用户id
        /// </summary>
        /// <param name="username">用户名</param>
        /// <returns>不存在返回-1</returns>
        public string getUserID(string username)
        {
            return util.GetResponse("users.getID", DiscuzParam.Create("user_name", username), DiscuzParam.Create("format", format));
        }

        /// <summary>
        /// 修改指定ID用户的密码
        /// </summary>
        /// <param name="uid">用户ID</param>
        /// <param name="originalPassword">原密码</param>
        /// <param name="newPassword">新密码</param>
        /// <param name="confirmPassword">确认新密码</param>
        /// <returns>XML返回1,0;JSON返回true,false</returns>
        public string changePassword(int uid, string originalPassword, string newPassword, string confirmPassword)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("format", format));
            param_list.Add(DiscuzParam.Create("uid", uid));
            param_list.Add(DiscuzParam.Create("original_password", originalPassword));
            param_list.Add(DiscuzParam.Create("new_password", newPassword));
            param_list.Add(DiscuzParam.Create("confirm_new_password", confirmPassword));
            return util.GetResponse("users.changePassword", param_list.ToArray());
        }



        #endregion

        #region topic

        public string CreateTopic(int uid, string topicinfo)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (uid == 0)
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("topic_info", topicinfo));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("topics.create", param_list.ToArray());

        }

        public string CreateTopic(string topicinfo)
        {
            return CreateTopic(0, topicinfo);
        }

        /// <summary>
        /// 回复帖子
        /// </summary>
        /// <param name="reply"></param>
        /// <returns></returns>
        public string TopicReply(string reply)
        {

            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("reply_info", reply));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("topics.reply", param_list.ToArray());
        }

        /// <summary>
        /// 最近回复的帖子
        /// </summary>
        /// <param name="fid">论坛id</param>
        /// <param name="tid">帖子id</param>
        /// <param name="page_size"></param>
        /// <param name="page_index"></param>
        /// <returns></returns>
        public string GetRecentReplies(int fid, int tid, int page_size, int page_index)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("fid", fid));
            param_list.Add(DiscuzParam.Create("tid", tid));
            param_list.Add(DiscuzParam.Create("page_size", page_size));
            param_list.Add(DiscuzParam.Create("page_index", page_index));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("topics.getRecentReplies", param_list.ToArray());
        }

        /// <summary>
        /// 获取主题列表
        /// </summary>
        /// <param name="fid">版块id</param>
        /// <param name="page_size">页面大小</param>
        /// <param name="page_index">页码</param>
        /// <returns></returns>
        public string GetList(int fid, int page_size, int page_index)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("fid", fid));
            param_list.Add(DiscuzParam.Create("page_size", page_size));
            param_list.Add(DiscuzParam.Create("page_index", page_index));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("topics.getList", param_list.ToArray());
        }

        /// <summary>
        /// 获得需要管理人员关注的主题列表
        /// </summary>
        /// <param name="fid">版块id</param>
        /// <param name="page_size">页面大小</param>
        /// <param name="page_index">页码</param>
        /// <returns></returns>
        public string GetAttentionList(int fid, int page_size, int page_index)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("fid", fid));
            param_list.Add(DiscuzParam.Create("page_size", page_size));
            param_list.Add(DiscuzParam.Create("page_index", page_index));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("topics.getAttentionList", param_list.ToArray());
        }

        /// <summary>
        /// 获取主题信息
        /// </summary>
        /// <param name="topicid">主题ID</param>
        /// <param name="pagesize">每页帖子数</param>
        /// <param name="pageindex">当前页码</param>
        /// <returns></returns>
        public string TopicsGet(int topicid, int pagesize, int pageindex)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("format", format));
            param_list.Add(DiscuzParam.Create("tid", topicid));
            param_list.Add(DiscuzParam.Create("page_size", pagesize));
            param_list.Add(DiscuzParam.Create("page_index", pageindex));
            return util.GetResponse("topics.get", param_list.ToArray());
        }

        /// <summary>
        /// 编辑主题帖
        /// </summary>
        /// <param name="topicid">主题ID</param>
        /// <param name="topicinfo">主题信息(json)</param>
        /// <returns></returns>
        public string TopicsEdit(int topicid, string topicinfo)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("format", format));
            param_list.Add(DiscuzParam.Create("tid", topicid));
            param_list.Add(DiscuzParam.Create("topic_info", topicinfo));
            return util.GetResponse("topics.edit", param_list.ToArray());
        }

        /// <summary>
        /// 删除主题
        /// </summary>
        /// <param name="topicids">主题IDs(可批量删除,主题ID以逗号分隔)</param>
        /// <param name="forumid">板块ID(客户端用于进行版主身份验证)</param>
        /// <returns></returns>
        public string TopicsDelete(string topicids, int forumid)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("format", format));
            param_list.Add(DiscuzParam.Create("topic_ids", topicids));
            if (forumid > 0)
                param_list.Add(DiscuzParam.Create("fid", forumid));
            return util.GetResponse("topics.delete", param_list.ToArray());
        }

        #endregion

        #region  notifications

        /// <summary>
        /// 发送通知
        /// </summary>
        /// <param name="note"></param>
        /// <param name="to_ids"></param>
        /// <param name="uid">如果为0，就用当前用户会话id</param>
        /// <returns>发送成功的用户id列表字符串</returns>
        public string NotificationsSend(string notification, string to_ids, int uid)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();

            if (uid < 1 && session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }

            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("to_ids", to_ids));
            param_list.Add(DiscuzParam.Create("notification", notification));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("notifications.send", param_list.ToArray());
        }

        /// <summary>
        /// 发送email通知
        /// </summary>
        /// <param name="recipients">uids</param>
        /// <param name="subject">主题</param>
        /// <param name="text">内容</param>
        /// <returns></returns>
        public string NotificationSendEmail(string recipients, string subject, string text)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("recipients", recipients));
            param_list.Add(DiscuzParam.Create("subject", subject));
            param_list.Add(DiscuzParam.Create("text", text));
            param_list.Add(DiscuzParam.Create("format", format));

            return util.GetResponse("notifications.sendEmail", param_list.ToArray());
        }

        /// <summary>
        /// 获取通知
        /// </summary>
        /// <returns></returns>
        public string NotificationGet()
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            else
            {
                return null;
            }
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("format", format));
            param_list.Add(DiscuzParam.Create("Uid", session_info.UId));
            return util.GetResponse("notifications.get", param_list.ToArray());

        }

        #endregion

        #region forums

        /// <summary>
        /// 获取论坛信息
        /// </summary>
        /// <param name="fid">论坛id</param>
        /// <returns></returns>
        public string ForumGet(int fid)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("fid", fid));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("forums.get", param_list.ToArray());
        }

        /// <summary>
        /// 创建论坛
        /// </summary>
        /// <param name="forum">要创建的论坛</param>
        /// <returns></returns>
        public string ForumCreate(string forum)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("format", format));
            param_list.Add(DiscuzParam.Create("forum_info", forum));
            return util.GetResponse("forums.create", param_list.ToArray());
        }

        public string ForumIndexList()
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("forums.getindexlist", param_list.ToArray());
        }

        #endregion

        #region messages

        /// <summary>
        /// 发送短信息
        /// </summary>
        /// <param name="toids">ToUids</param>
        /// <param name="fromid">发送Uid</param>
        /// <param name="subject">标题</param>
        /// <param name="message">正文信息</param>
        /// <returns></returns>
        public string MessagesSend(string toids, string fromid, string subject, string message)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("subject", subject));
            param_list.Add(DiscuzParam.Create("message", message));
            param_list.Add(DiscuzParam.Create("to_ids", toids));
            if (fromid != "")
                param_list.Add(DiscuzParam.Create("from_id", fromid));
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("messages.send", param_list.ToArray());
        }

        /// <summary>
        /// 获取短信息列表
        /// </summary>
        /// <param name="uid"></param>
        /// <param name="pagesize"></param>
        /// <param name="pageindex"></param>
        /// <returns></returns>
        public string MessagesGet(int uid, int pagesize, int pageindex)
        {
            List<DiscuzParam> param_list = new List<DiscuzParam>();
            if (session_info != null && !string.IsNullOrEmpty(session_info.SessionKey))
            {
                param_list.Add(DiscuzParam.Create("session_key", session_info.SessionKey));
            }
            param_list.Add(DiscuzParam.Create("uid", uid));
            param_list.Add(DiscuzParam.Create("page_size", pagesize));
            param_list.Add(DiscuzParam.Create("page_index", pageindex));
            param_list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            param_list.Add(DiscuzParam.Create("format", format));
            return util.GetResponse("messages.get", param_list.ToArray());
        }
        #endregion
    }
}

///// <summary>
///// 根据uid获取用户信息
///// </summary>
///// <param name="uid">要获取用户的uid</param>
///// <returns>用户信息</returns>
////public string GetUserInfo(long uid)
////{
////    return this.GetUserInfo(new long[1] { uid }, User.FIELDS);
////}
