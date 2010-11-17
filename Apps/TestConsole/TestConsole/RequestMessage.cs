using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Security.Cryptography;

namespace Discuz.TestConsole
{
    public class RequestMessage
    {
        public string Message = "";
        private string apikey, secret, url, sessionkey, method;
        public RequestMessage(string apikey, string secret, string url, string sessionkey)
        {
            this.apikey = apikey;
            this.secret = secret;
            this.url = url;
            this.sessionkey = sessionkey;
            this.method = HttpContext.Current.Request.Form["method"];
            switch (method)
            {
                case "Users.getInfo":
                    {
                        Message = CreateMessage("uids|fields", "GetUserInfo(long uid)");
                        break;
                    }
                case "Users.getID":
                    {
                        Message = CreateMessage("user_name", "GetUserID(string username)");
                        break;
                    }
                case "Users.getLoggedInUser":
                    {
                        Message = CreateMessage("", "GetLoggedInUser()");
                        break;
                    }
                case "Users.setInfo":
                    {
                        Message = CreateMessage("uid|user_info", "SetUserInfo(int uid, UserForEditing user_for_editing)");
                        break;
                    }
                case "Users.setExtCredits":
                    {
                        Message = CreateMessage("additional_values", "SetExtCredits(string additional_values)");
                        break;
                    }
                case "Users.changePassword":
                    {
                        Message = CreateMessage("uid|original_password|new_password|confirm_new_password", "ChangeUserPassword(long uid, string originalPassword, string newPassword, string confirmNewPassword, string passwordFormat)");
                        break;
                    }
                case "Topics.create":
                    {
                        Message = CreateMessage("topic_info", "CreateTopic(int uid, string title, int fid, string message, int icon_id, string tags) +1重载");
                        break;
                    }
                case "Topics.reply":
                    {
                        Message = CreateMessage("reply_info", "TopicReply(Reply reply)");
                        break;
                    }
                case "Topics.getRecentReplies":
                    {
                        Message = CreateMessage("fid|tid|page_size|page_index", "GetRecentReplies(int fid,int tid,int page_size,int page_index)");
                        break;
                    }
                case "Topics.getList":
                    {
                        Message = CreateMessage("fid|page_size|page_index", "GetTopicList(int fid, int page_size, int page_index)");
                        break;
                    }
                case "Topics.edit":
                    {
                        Message = CreateMessage("tid|topic_info", "EditTopic(int tid, string jsonTopicInfo) +1重载");
                        break;
                    }
                case "Topics.delete":
                    {
                        Message = CreateMessage("fid|topic_ids", "DeleteTopic(string topicids, int forumid) +1重载");
                        break;
                    }
                case "Topics.get":
                    {
                        Message = CreateMessage("tid|page_size|page_index", "GetTopic(int tid, int pageindex, int pagesize)");
                        break;
                    }
                case "Topics.deleteReplies":
                    {
                        Message = CreateMessage("tid|posts_ids", "DeleteTopicReplies(int tid, string postids)");
                        break;
                    }
                case "Forums.create":
                    {
                        Message = CreateMessage("forum_info", "ForumCreate(Forum forum)");
                        break;
                    }
                case "Forums.get":
                    {
                        Message = CreateMessage("fid", "ForumGet(int fid)");
                        break;
                    }
                case "Notifications.sendEmail":
                    {
                        Message = CreateMessage("recipients|subject|text", "NotificationSendEmail(string recipients,string subject,string text)");
                        break;
                    }
                case "Notifications.send":
                    {
                        Message = CreateMessage("to_ids|notification", "NotificationsSend(string notification, string to_ids, int uid)");
                        break;
                    }
                case "Notifications.get":
                    {
                        Message = CreateMessage("", "NotificationGet()");
                        break;
                    }
                case "Auth.register":
                    {
                        Message = CreateMessage("user_name|password|email|password_format", "Register(string username, string password, string email, bool isMD5Passwd)");
                        break;
                    }
                case "Auth.encodePassword":
                    {
                        Message = CreateMessage("password|password_format", "EncodePassword(string password, bool isMD5Passwd)");
                        break;
                    }
                case "Messages.send":
                    {
                        Message = CreateMessage("to_ids|subject|message|from_id", "SendMessages(string to_uids, string fromid, string subject, string message)");
                        break;
                    }
                case "Messages.get":
                    {
                        Message = CreateMessage("uid|page_size|page_index", "GetUserMessages(int uid, int pagesize, int pageindex)");
                        break;
                    }
            }
        }

        private string CreateMessage(string paramSource, string toolkitFunction)
        {
            string sigSource = "";
            string sig = "";
            string requestParams = "";
            string requestUrl = "";
            DiscuzParam[] dp;
            string message = "\r\n调用DiscuzToolkit方法:{0}\r\n\r\nSig原字串:\r\n{1}\r\n\r\nSig:{2}\r\n\r\n传递参数字串:\r\n{3}\r\n\r\n完全的请求URL:\r\n{4}";
            dp = GetParamsFromRequest(HttpContext.Current.Request, paramSource, ConvertFunctionName(method));
            sig = GetSignature(dp, out sigSource);
            requestParams = CreateRequestParamsStream(dp, sig);
            requestUrl = url + "services/restserver.aspx?" + requestParams;
            return string.Format(message, toolkitFunction, sigSource, sig, requestParams, requestUrl);
        }

        private static string ConvertFunctionName(string functionName)
        {
            char[] a = new char[functionName.Length];
            a = functionName.ToCharArray();
            a[0] = a[0].ToString().ToLower().ToCharArray()[0];
            StringBuilder sb = new StringBuilder();
            foreach (char c in a)
            {
                sb.Append(c);
            }
            return sb.ToString();
        }

        private static string CreateRequestParamsStream(DiscuzParam[] dp, string sig)
        {
            string url = "";
            foreach (DiscuzParam d in dp)
            {
                url += "&" + d.ToString();
            }
            return "sig=" + sig + url;
        }

        /// <summary>
        /// 获取API提交的参数
        /// </summary>
        /// <param name="request">request对象</param>
        /// <returns>参数数组</returns>
        private DiscuzParam[] GetParamsFromRequest(HttpRequest request, string element, string method)
        {
            List<DiscuzParam> list = new List<DiscuzParam>();
            element += "|format|callback";
            Regex r = new Regex(element.Trim('|'));

            foreach (string key in request.QueryString.AllKeys)
            {
                if (r.IsMatch(key) && request.QueryString[key] != "")
                {
                    list.Add(DiscuzParam.Create(key, request.QueryString[key]));
                }
            }
            foreach (string key in request.Form.AllKeys)
            {
                if (r.IsMatch(key) && request.Form[key] != "")
                {
                    list.Add(DiscuzParam.Create(key, request.Form[key]));
                }
            }
            list.Add(DiscuzParam.Create("api_key", apikey));
            list.Add(DiscuzParam.Create("method", method));
            list.Add(DiscuzParam.Create("call_id", DateTime.Now.Ticks));
            list.Add(DiscuzParam.Create("session_key", sessionkey));
            list.Sort(new Util.DiscuzParamComparer());
            return list.ToArray();
        }

        /// <summary>
        /// 根据参数和密码生成签名字符串
        /// </summary>
        /// <param name="parameters">API参数</param>
        /// <param name="secret">密码</param>
        /// <returns>签名字符串</returns>
        private string GetSignature(DiscuzParam[] parameters, out string sigsource)
        {
            StringBuilder values = new StringBuilder();

            foreach (DiscuzParam param in parameters)
            {
                if (param.Name == "sig" || string.IsNullOrEmpty(param.Value))
                    continue;
                values.Append(param.ToString());
            }

            values.Append(secret);
            sigsource = values.ToString();

            byte[] md5_result = MD5.Create().ComputeHash(Encoding.UTF8.GetBytes(values.ToString()));

            StringBuilder sig_builder = new StringBuilder();

            foreach (byte b in md5_result)
                sig_builder.Append(b.ToString("x2"));

            return sig_builder.ToString();
        }
    }
}