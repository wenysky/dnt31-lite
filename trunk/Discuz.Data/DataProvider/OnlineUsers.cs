using System;
using System.Text;
using System.Data;

using Discuz.Entity;
using Discuz.Config;
using Discuz.Common.Generic;
using Discuz.Common;

namespace Discuz.Data
{
    public class OnlineUsers
    {
        /// <summary>
        /// 获得在线用户总数量
        /// </summary>
        /// <returns>用户数量</returns>
        public static int GetOnlineAllUserCount()
        {
            int count = DatabaseProvider.GetInstance().GetOnlineAllUserCount();
            return count == 0 ? 1 : count;
        }

        /// <summary>
        /// 创建在线表记录(本方法在应用程序初始化时被调用)
        /// </summary>
        /// <returns></returns>
        public static int CreateOnlineTable()
        {
            return DatabaseProvider.GetInstance().CreateOnlineTable();
        }

        /// <summary>
        /// 获得在线注册用户总数量
        /// </summary>
        /// <returns>用户数量</returns>
        public static int GetOnlineUserCount()
        {
            return DatabaseProvider.GetInstance().GetOnlineUserCount();
        }

        /// <summary>
        /// 获取在线用户列表
        /// </summary>
        /// <returns></returns>
        public static DataTable GetOnlineUserListTable()
        {
            return DatabaseProvider.GetInstance().GetOnlineUserListTable();
        }

        /// <summary>
        /// 获取在线用户组图标
        /// </summary>
        /// <returns></returns>
        public static DataTable GetOnlineGroupIconTable()
        {
            return DatabaseProvider.GetInstance().GetOnlineGroupIconTable();
        }


        public static OnlineUserInfo GetOnlineUser(int olid)
        {
            IDataReader reader = DatabaseProvider.GetInstance().GetOnlineUser(olid);
            OnlineUserInfo onlineuserinfo = null;

            if (reader.Read())
            {
                onlineuserinfo = LoadSingleOnlineUser(reader);
            }
            reader.Close();
            return onlineuserinfo;
        }

        /// <summary>
        /// 获得指定用户的详细信息
        /// </summary>
        /// <param name="userid">在线用户ID</param>
        /// <param name="password">用户密码</param>
        /// <returns>用户的详细信息</returns>
        public static OnlineUserInfo GetOnlineUser(int userid, string password)
        {
            OnlineUserInfo onlineuserinfo = null;
            DataTable dt = DatabaseProvider.GetInstance().GetOnlineUser(userid, password);

            if (dt.Rows.Count > 0)
            {
                onlineuserinfo = LoadSingleOnlineUser(dt.Rows[0]);
                dt.Dispose();
            }
            return onlineuserinfo;
        }


        /// <summary>
        /// 获得指定用户的详细信息
        /// </summary>
        /// <returns>用户的详细信息</returns>
        public static OnlineUserInfo GetOnlineUserByIP(int userid, string ip)
        {
            OnlineUserInfo oluser = null;
            DataTable dt = DatabaseProvider.GetInstance().GetOnlineUserByIP(userid, ip);

            if (dt.Rows.Count > 0)
            {
                oluser = LoadSingleOnlineUser(dt.Rows[0]);
                dt.Dispose();
            }
            return oluser;
        }

        #region Helper
        private static OnlineUserInfo LoadSingleOnlineUser(IDataReader reader)
        {
            OnlineUserInfo info = new OnlineUserInfo();
            info.Olid = TypeConverter.ObjectToInt(reader["olid"]);
            info.Userid = TypeConverter.ObjectToInt(reader["userid"]);
            info.Ip = reader["ip"].ToString();
            info.Username = reader["username"].ToString();
            info.Nickname = reader["nickname"].ToString();
            info.Password = reader["password"].ToString();
            info.Groupid = Int16.Parse(reader["groupid"].ToString());
            info.Olimg = reader["olimg"].ToString();
            info.Adminid = Int16.Parse(reader["adminid"].ToString());
            info.Invisible = Int16.Parse(reader["invisible"].ToString());
            info.Action = Int16.Parse(reader["action"].ToString());
            info.Actionname = "";
            info.Lastactivity = Int16.Parse(reader["lastactivity"].ToString());
            info.Lastposttime = reader["lastposttime"].ToString();
            info.Lastpostpmtime = reader["lastpostpmtime"].ToString();
            info.Lastsearchtime = reader["lastsearchtime"].ToString();
            info.Lastupdatetime = reader["lastupdatetime"].ToString();
            info.Forumid = TypeConverter.ObjectToInt(reader["forumid"]);
            if (reader["forumname"] != DBNull.Value)
                info.Forumname = reader["forumname"].ToString();

            info.Titleid = TypeConverter.ObjectToInt(reader["titleid"]);
            if (reader["title"] != DBNull.Value)
                info.Title = reader["title"].ToString();

            info.Verifycode = reader["verifycode"].ToString();
            if (reader["newpms"] != DBNull.Value)
                info.Newpms = Int16.Parse(reader["newpms"].ToString());

            if (reader["newnotices"] != DBNull.Value)
                info.Newnotices = Int16.Parse(reader["newnotices"].ToString());
            
            return info;
        }

        private static OnlineUserInfo LoadSingleOnlineUser(DataRow dr)
        {
            OnlineUserInfo info = new OnlineUserInfo();
            info.Olid = TypeConverter.ObjectToInt(dr["olid"]);
            info.Userid = TypeConverter.ObjectToInt(dr["userid"]);
            info.Ip = dr["ip"].ToString();
            info.Username = dr["username"].ToString();
            info.Nickname = dr["nickname"].ToString();
            info.Password = dr["password"].ToString();
            info.Groupid = Int16.Parse(dr["groupid"].ToString());
            info.Olimg = dr["olimg"].ToString();
            info.Adminid = Int16.Parse(dr["adminid"].ToString());
            info.Invisible = Int16.Parse(dr["invisible"].ToString());
            info.Action = Int16.Parse(dr["action"].ToString());
            info.Actionname = "";
            info.Lastactivity = Int16.Parse(dr["lastactivity"].ToString());
            info.Lastposttime = dr["lastposttime"].ToString();
            info.Lastpostpmtime = dr["lastpostpmtime"].ToString();
            info.Lastsearchtime = dr["lastsearchtime"].ToString();
            info.Lastupdatetime = dr["lastupdatetime"].ToString();
            info.Forumid = TypeConverter.ObjectToInt(dr["forumid"]);
            if (dr["forumname"] != DBNull.Value)
                info.Forumname = dr["forumname"].ToString();

            info.Titleid = TypeConverter.ObjectToInt(dr["titleid"]);
            if (dr["title"] != DBNull.Value)
                info.Title = dr["title"].ToString();

            info.Verifycode = dr["verifycode"].ToString();
            if (dr["newpms"] != DBNull.Value)
                info.Newpms = Int16.Parse(dr["newpms"].ToString());

            if (dr["newnotices"] != DBNull.Value)
                info.Newnotices = Int16.Parse(dr["newnotices"].ToString());

            return info;
        }
        #endregion

        /// <summary>
        /// 检查在线用户验证码是否有效
        /// </summary>
        /// <param name="olid">在组用户ID</param>
        /// <param name="verifycode">验证码</param>
        /// <param name="newverifycode">新验证码</param>
        /// <returns>在组用户ID</returns>
        public static bool CheckUserVerifyCode(int olid, string verifycode, string newverifycode)
        {
            return DatabaseProvider.GetInstance().CheckUserVerifyCode(olid, verifycode, newverifycode);
        }

        /// <summary>
        /// 执行在线用户向表及缓存中添加的操作。
        /// </summary>
        /// <param name="onlineuserinfo">在组用户信息内容</param>
        /// <returns>添加成功则返回刚刚添加的olid,失败则返回0</returns>
        public static int CreateOnlineUserInfo(OnlineUserInfo onlineuserinfo, int timeout)
        {
            return DatabaseProvider.GetInstance().AddOnlineUser(onlineuserinfo, timeout, GeneralConfigs.GetConfig().Deletingexpireduserfrequency);
        }

        /// <summary>
        /// 设置用户在线状态
        /// </summary>
        /// <param name="uid">在线用户id</param>
        /// <param name="onlinestate">在线用户状态</param>
        /// <returns></returns>
        public static int SetUserOnlineState(int uid, int onlinestate)
        {
            return DatabaseProvider.GetInstance().SetUserOnlineState(uid, 1);
        }


        /// <summary>
        /// 更新用户的当前动作及相关信息
        /// </summary>
        /// <param name="olid">在线列表id</param>
        /// <param name="action">动作</param>
        /// <param name="inid">所在位置代码</param>
        public static void UpdateAction(int olid, int action, int inid)
        {
            DatabaseProvider.GetInstance().UpdateAction(olid, action, inid);
        }

        /// <summary>
        /// 更新用户动作
        /// </summary>
        /// <param name="olid">在线用户id</param>
        /// <param name="action">用户操作</param>
        /// <param name="fid">版块id</param>
        /// <param name="forumname">版块名称</param>
        /// <param name="tid">主题id</param>
        /// <param name="topictitle">主题标题</param>
        public static void UpdateAction(int olid, int action, int fid, string forumname, int tid, string topictitle)
        {
            DatabaseProvider.GetInstance().UpdateAction(olid, action, fid, forumname, tid, topictitle);
        }

        /// <summary>
        /// 更新用户最后活动时间
        /// </summary>
        /// <param name="olid">在线id</param>
        public static void UpdateLastTime(int olid)
        {
            DatabaseProvider.GetInstance().UpdateLastTime(olid);
        }


        /// <summary>
        /// 更新用户最后发帖时间
        /// </summary>
        /// <param name="olid">在线id</param>
        public static void UpdatePostTime(int olid)
        {
            DatabaseProvider.GetInstance().UpdatePostTime(olid);
        }

        /// <summary>
        /// 更新用户最后发短消息时间
        /// </summary>
        /// <param name="olid">在线id</param>
        public static void UpdatePostPMTime(int olid)
        {
            DatabaseProvider.GetInstance().UpdatePostPMTime(olid);
        }

        /// <summary>
        /// 更新在线表中指定用户是否隐身
        /// </summary>
        /// <param name="olid">在线id</param>
        /// <param name="invisible">是否隐身</param>
        public static void UpdateInvisible(int olid, int invisible)
        {
            DatabaseProvider.GetInstance().UpdateInvisible(olid, invisible);
        }

        /// <summary>
        /// 更新在线表中指定用户的用户密码
        /// </summary>
        /// <param name="olid">在线id</param>
        /// <param name="password">用户密码</param>
        public static void UpdatePassword(int olid, string password)
        {
            DatabaseProvider.GetInstance().UpdatePassword(olid, password);
        }


        /// <summary>
        /// 更新用户IP地址
        /// </summary>
        /// <param name="olid">在线id</param>
        /// <param name="ip">ip地址</param>
        public static void UpdateIP(int olid, string ip)
        {
            DatabaseProvider.GetInstance().UpdateIP(olid, ip);
        }

        /// <summary>
        /// 更新用户最后搜索时间
        /// </summary>
        /// <param name="olid">在线id</param>
        public static void UpdateSearchTime(int olid)
        {
            DatabaseProvider.GetInstance().UpdateSearchTime(olid);
        }



        /// <summary>
        /// 更新用户的用户组
        /// </summary>
        /// <param name="userid">用户ID</param>
        /// <param name="groupid">组名</param>
        public static void UpdateGroupid(int userid, int groupid)
        {
            DatabaseProvider.GetInstance().UpdateGroupid(userid, groupid);
        }

        #region 删除符合条件的用户信息

        /// <summary>
        /// 删除符合条件的一个或多个用户信息
        /// </summary>
        /// <returns>删除行数</returns>
        public static int DeleteRowsByIP(string ip)
        {
            return DatabaseProvider.GetInstance().DeleteRowsByIP(ip);
        }

        /// <summary>
        /// 删除在线表中指定在线id的行
        /// </summary>
        /// <param name="olid">在线id</param>
        /// <returns></returns>
        public static int DeleteRows(int olid)
        {
            return DatabaseProvider.GetInstance().DeleteRows(olid);
        }


        #endregion

        /// <summary>
        /// 返回在线用户列表
        /// </summary>
        /// <param name="forumid">版块id</param>
        /// <returns></returns>
        public static List<OnlineUserInfo> GetForumOnlineUserCollection(int forumid)
        {
            Discuz.Common.Generic.List<OnlineUserInfo> coll = new Discuz.Common.Generic.List<OnlineUserInfo>();

            IDataReader reader = DatabaseProvider.GetInstance().GetForumOnlineUserList(forumid);
            while (reader.Read())
            {
                OnlineUserInfo info = LoadSingleOnlineUser(reader);
                coll.Add(info);
            }
            reader.Close();       
            //返回当前版块的在线用户表
            return coll;
        }

        /// <summary>
        /// 返回在线用户列表
        /// </summary>
        public static List<OnlineUserInfo> GetOnlineUserCollection()
        {
            Discuz.Common.Generic.List<OnlineUserInfo> coll = new Discuz.Common.Generic.List<OnlineUserInfo>();

            IDataReader reader = DatabaseProvider.GetInstance().GetOnlineUserList();
            while (reader.Read())
            {
                OnlineUserInfo onlineUserInfo = LoadSingleOnlineUser(reader);
                if (onlineUserInfo.Userid > 0 || (onlineUserInfo.Userid == -1 && GeneralConfigs.GetConfig().Whosonlinecontract == 0))
                {   
                    onlineUserInfo.Actionname = UserAction.GetActionDescriptionByID((int)(onlineUserInfo.Action));
                    coll.Add(onlineUserInfo);
                } 
            }
            reader.Close();
            //返回当前版块的在线用户表
            return coll;
        }

        /// <summary>
        /// 更新在线时间
        /// </summary>
        /// <param name="oltimespan">在线时间间隔</param>
        /// <param name="uid">当前用户id</param>
        public static void UpdateOnlineTime(int oltimespan, int uid)
        {
            DatabaseProvider.GetInstance().UpdateOnlineTime(oltimespan, uid);
        }

        /// <summary>
        /// 同步在线时间
        /// </summary>
        /// <param name="uid">用户id</param>
        public static void SynchronizeOnlineTime(int uid)
        {
            DatabaseProvider.GetInstance().SynchronizeOnlineTime(uid);
        }

        /// <summary>
        /// 根据Uid获得Olid
        /// </summary>
        /// <param name="uid"></param>
        /// <returns></returns>
        public static int GetOlidByUid(int uid)
        {
            return DatabaseProvider.GetInstance().GetOlidByUid(uid);
        }

        /// <summary>
        /// 更新用户新短消息数
        /// </summary>
        /// <param name="olid">在线id</param>
        /// <param name="count">增加量</param>
        /// <returns></returns>
        public static int UpdateNewPms(int olid, int count)
        {
            return DatabaseProvider.GetInstance().UpdateNewPms(olid, count);
        }

        /// <summary>
        /// 更新用户新通知数
        /// </summary>
        /// <param name="olid">在线id</param>
        /// <param name="pluscount">增加量</param>
        /// <returns></returns>
        public static int UpdateNewNotices(int olid, int pluscount)
        {
            return DatabaseProvider.GetInstance().UpdateNewNotices(olid, pluscount);
        }

        /// <summary>
        /// 按用户组删除在线用户
        /// </summary>
        /// <param name="groupid">用户组Id</param>
        public static void DeleteOnlineByUserGroup(int groupid)
        {
            DatabaseProvider.GetInstance().DeleteOnlineList(groupid);
        }

        /// <summary>
        /// 增加在线用户图例
        /// </summary>
        /// <param name="grouptitle"></param>
        public static void AddOnlineList(string grouptitle)
        {
            DatabaseProvider.GetInstance().AddOnlineList(grouptitle);
        }
    }
}
