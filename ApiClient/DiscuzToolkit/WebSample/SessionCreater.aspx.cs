using System;
using System.Collections.Generic;
using System.Web;
using WebSampleHelper;

namespace Discuz.Toolkit.WebSample
{
    public partial class SessionCreater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateAuthToken();
        }
        private void UpdateAuthToken()
        {
            DiscuzSession ds = DiscuzSessionHelper.GetSession();
            int errorcode = 0;
            string next = null;
            try
            {
                next = Request.QueryString["next"].ToString();
                Session["AuthToken"] = Request.QueryString["auth_token"].ToString();
            }
            catch
            {
            }
            if (ValidateAuthToken(ds, ref errorcode))
            {
                RedirectPage(next);
            }
            else
            {
                GetAuthToken(next, ds);
            }
        }

        //获取AuthToken
        public void GetAuthToken(string n, DiscuzSession ds)
        {
            Response.Redirect(ds.CreateToken().ToString() + "&next=" + n);
        }

        //成功更新AuthToken后进行页面转向
        public void RedirectPage(string n)
        {
            switch (n)
            {
                case "default": Response.Redirect("default.aspx"); break;
                case "usermanage": Response.Redirect("usermanage.aspx"); break;
                case "topicmanage": Response.Redirect("topicsmanage.aspx"); break;
                case "msgop": Response.Redirect("messageop.aspx"); break;
                case "forummanage": Response.Redirect("forumManage.aspx"); break;
                default: break;
            }
        }

        //验证当前的AuthToken是否可用
        public bool ValidateAuthToken(DiscuzSession ds, ref int Errorcode)
        {
            try
            {
                ds.session_info = ds.GetSessionFromToken(Session["AuthToken"].ToString());
                Errorcode = 0;
                return true;
            }
            catch (DiscuzException d)
            {
                Errorcode = d.ErrorCode;
                return false;
            }
            catch (NullReferenceException)
            {
                Errorcode = 0;
                return false;
            }
        }
    }
}
