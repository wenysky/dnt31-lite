using System;
using System.Web.UI;
using Discuz.TestConsole;

namespace TestConsoleWeb
{
    public partial class TestConsole : System.Web.UI.Page
    {
        public bool needlogin;
        public string format = "", method = "", api_key = "", secret = "", url = "", result = "", requestmsg = "";
        DiscuzSession ds;
        public int uid = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DS"] != null)
            {
                ds = (DiscuzSession)Session["DS"];
            }
            else
            {
                ds = new DiscuzSession(api_key, secret, url);
            }

            if (Request.QueryString["auth_token"] != null && Request.QueryString["auth_token"].ToString() != "")
            {
                //登录，成功后自动返回
                try
                {
                    ds.session_info = ds.GetSessionFromToken(Request.QueryString["auth_token"].ToString());

                    Session["DS"] = ds;
                }
                catch { }

                //告诉用户登录成功
                //Page.RegisterStartupScript("script", "<script>alert('登录成功');</script>");
            }

            if (ds.session_info == null)
            {
                if ((Request.QueryString["action"] != null && Request.QueryString["action"].ToString() == "login") || (Request.QueryString["user_status"] != null && Request.QueryString["user_status"].ToString() == "1"))
                {
                    //登录，成功后自动返回
                    Response.Redirect(ds.CreateToken());
                    return;
                }

                //提示用户登录、
                if (Util.GetQueryString("user_status") == "0")
                {
                    needlogin = true;
                    return;
                }
                //Page.RegisterStartupScript("script","<script>alert('请先登录');</script>");
                Response.Redirect(url + "services/status.aspx?api_key=" + api_key);
                return;

            }
            if (ds.LoggedInUser() < 1)
            {
                ds.session_info = null;
                Response.Redirect(url + "services/status.aspx?api_key=" + api_key);
                needlogin = true;
                return;
            }

            uid = Convert.ToInt32(ds.session_info.UId);

            if (Request.Form["method"] != null)
            {
                ds.format = Request.Form["format"].ToString();
                //绑定结果
                result = GetResult(Request.Form["method"].ToString());
            }

        }

        private string GetResult(string method)
        {
            RequestMessage rm = new RequestMessage(api_key, secret, url, ds.session_info.SessionKey);
            requestmsg = rm.Message;
            //if (method == "Users.getInfo")
            //{
            //    return ds.GetInfo(Util.GetFormString("uids"), Util.GetFormString("fields"));
            //}
            //if (method == "Users.getID")
            //{
            //    return ds.getUserID(Util.GetFormString("user_name"));
            //}

            //if (method == "Users.getLoggedInUser")
            //{
            //    return ds.GetLoggedInUser();
            //}

            //if (method == "Users.setInfo")
            //{
            //    return ds.SetUserInfo(Util.GetFormInt("uid", 0), Util.GetFormString("user_info"));
            //}

            //if (method == "Users.setExtCredits")
            //{
            //    return ds.SetExtCredits(Util.GetFormString("uids"), Util.GetFormString("additional_values"));
            //}

            //if (method == "Topics.create")
            //{
            //    return ds.CreateTopic(Util.GetFormString("topic_info"));
            //}

            //if (method == "Topics.reply")
            //{
            //    return ds.TopicReply(Util.GetFormString("reply_info"));
            //}

            if (method == "Topics.getRecentReplies")
            {
                return ds.GetRecentReplies(Util.GetFormInt("fid", 0), Util.GetFormInt("tid", 0), Util.GetFormInt("page_size", 1), Util.GetFormInt("page_index", 1));
            }

            if (method == "Topics.getList")
            {
                return ds.GetList(Util.GetFormInt("fid", 0), Util.GetFormInt("page_size", 1), Util.GetFormInt("page_index", 1));
            }

            if (method == "Topics.getAttentionList")
            {
                return ds.GetAttentionList(Util.GetFormInt("fid", 0), Util.GetFormInt("page_size", 1), Util.GetFormInt("page_index", 1));
            }

            //if (method == "Forums.create")
            //{
            //    return ds.ForumCreate(Util.GetFormString("forum_info"));
            //}

            if (method == "Forums.get")
            {
                return ds.ForumGet(Util.GetFormInt("fid", 1));
            }

            //if (method == "Notifications.sendEmail")
            //{
            //    string recipients = Util.GetFormString("recipients");
            //    string subject = Util.GetFormString("subject");
            //    string body = Util.GetFormString("text");
            //    return ds.NotificationSendEmail(recipients, subject, body);
            //}

            //if (method == "Notifications.send")
            //{
            //    string note = Util.GetFormString("notification").ToString();
            //    string to_ids = Util.GetFormString("to_ids").ToString();
            //    return ds.NotificationsSend(note, to_ids, 0);
            //}

            //if (method == "Notifications.get")
            //{
            //    return ds.NotificationGet();
            //}

            //if (method == "Auth.register")
            //{
            //    string username = Util.GetFormString("user_name");
            //    string password = Util.GetFormString("password");
            //    string email = Util.GetFormString("email");
            //    return ds.Register(username, password, email, false);
            //}

            //if (method == "Auth.encodePassword")
            //{
            //    return ds.getEncodePassword(Util.GetFormString("password"));
            //}

            //if (method == "Messages.send")
            //{
            //    return ds.MessagesSend(Util.GetFormString("to_ids"), Util.GetFormString("from_id"), Util.GetFormString("subject"), Util.GetFormString("message"));
            //}

            //if (method == "Messages.get")
            //{
            //    return ds.MessagesGet(Util.GetFormInt("uid", uid), Util.GetFormInt("page_size", 10), Util.GetFormInt("page_index", 1));
            //}

            //if (method == "Users.changePassword")
            //{
            //    return ds.changePassword(Util.GetFormInt("uid", 0), Util.GetFormString("original_password"), Util.GetFormString("new_password"), Util.GetFormString("confirm_new_password"));
            //}

            if (method == "Topics.get")
            {
                return ds.TopicsGet(Util.GetFormInt("tid", 0), Util.GetFormInt("page_size", 1), Util.GetFormInt("page_index", 1));
            }

            //if (method == "Topics.edit")
            //{
            //    return ds.TopicsEdit(Util.GetFormInt("tid", 0), Util.GetFormString("topic_info"));
            //}

            //if (method == "Topics.delete")
            //{
            //    return ds.TopicsDelete(Util.GetFormString("topic_ids"), Util.GetFormInt("fid", -1));
            //}
            return "";
        }

    }
}
