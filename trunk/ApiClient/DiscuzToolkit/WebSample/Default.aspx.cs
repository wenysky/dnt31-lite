using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSampleHelper;

namespace Discuz.Toolkit.WebSample
{
    public partial class Default : System.Web.UI.Page
    {
        public string List = "";
        public string userName = "";
        DiscuzSession ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["dnt"] == null)
            {
                unlogin.Visible = true;
                ds = DiscuzSessionHelper.GetSession();
            }
            else
            {
                login.Visible = true;
                ds = DiscuzSessionHelper.GetSession();
                try
                {
                    ds.session_info = ds.GetSessionFromToken(Session["AuthToken"].ToString());
                }
                catch
                {
                    Response.Redirect("SessionCreater.aspx?next=default");
                }
                userName = ds.GetUserInfo(ds.GetLoggedInUser().UId).UserName;
            }
        }

        protected void GetListBtn_Click(object sender, EventArgs e)
        {
            ForumTopic[] ft = ds.GetTopicList(Util.GetIntFromString(FidBox.Text), Util.GetIntFromString(TopicListPageSizeBox.Text), Util.GetIntFromString(TopicListPageIndexBox.Text), TopicTypeListBox.Text).Topics;
            List = PageHelper.ShowTopicList(ft);
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            ds.Login(ds.GetUserID(UserBox.Text), PwdBox.Text, false, 100, "");
            Response.Redirect("SessionCreater.aspx?next=default");
        }

        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            ds.Logout("");
            ds.session_info = null;
            Session["AuthToken"] = null;
            Response.Redirect(Request.RawUrl);
        }

        protected void GetTopicBtn_Click(object sender, EventArgs e)
        {
            TopicGetResponse tgr = ds.GetTopic(Util.GetIntFromString(TopicIDBox.Text), Util.GetIntFromString(TopicPageIndexBox.Text), Util.GetIntFromString(TopicPageSizeBox.Text));
            List = PageHelper.ShowTopic(tgr);
        }

        protected void GetAttentionBtn_Click(object sender, EventArgs e)
        {
            ForumTopic[] ft = ds.GetAttentionTopicList(Util.GetIntFromString(FidBox.Text), Util.GetIntFromString(TopicListPageSizeBox.Text), Util.GetIntFromString(TopicListPageIndexBox.Text)).Topics;
            List = PageHelper.ShowTopicList(ft);
        }
    }
}


////验证authtoken是否是可用的，如不可用，则更新authtoken（前提是该用户论坛在登录状态）
//try
//{
//    ds.session_info = ds.GetSessionFromToken(Session["AuthToken"].ToString());
//}
//catch(DiscuzException d)
//{
//    if(d.ErrorCode==102)
//        Response.Redirect("/user/dntapihandler.aspx?next=pwd");
//}
////