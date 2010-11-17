using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Kernal;
using Entity;
using Discuz.Toolkit;

namespace Spinder_web
{
    public partial class DeleteConfig : System.Web.UI.Page
    {
        string api = "bd944d19dd425d7b842a6e7820b29fa1";
        string secret = "ed2cd183020c8b54a5148e46b4c1a9cc";
        string url = "http://localhost/";
        DiscuzSession ds;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["action"] == null || Request.QueryString["action"].ToString() == "")
            {
                return;
            }

            if (Request.QueryString["site"] == null || Request.QueryString["site"].ToString() == "")
            {
                return;
            }

            if (Request.QueryString["siteurl"] == null || Request.QueryString["siteurl"].ToString() == "")
            {
                return;
            }


            if (Request.QueryString["channel"] == null || Request.QueryString["channel"].ToString() == "")
            {
                return;
            }

            if (Request.QueryString["charset"] == null || Request.QueryString["charset"].ToString() == "")
            {
                return;
            }


            if (Request.QueryString["action"].ToString() == "delete")
            {
                URLConfig uc = new URLConfig();

                uc.Site = Request.QueryString["site"].ToString().Trim();

                uc.SiteUrl = Request.QueryString["siteurl"].ToString().Trim();

                uc.Channel = Request.QueryString["channel"].ToString().Trim();

                uc.Charset = Request.QueryString["charset"].ToString().Trim();

                UrlConfigManager ucm = new UrlConfigManager();

                ucm.RemoveChildNode(uc);

                Response.Redirect("index.aspx");
            }
        }


        private void VerfyUser()
        {
            if (Session["DS"] != null)
            {
                ds = (DiscuzSession)Session["DS"];
            }
            else
            {
                ds = new DiscuzSession(api, secret, url);
            }

            if (Request.QueryString["auth_token"] != null && Request.QueryString["auth_token"].ToString() != "")
            {
                //登录，成功后自动返回
                try
                {
                    //if (ds.GetUserInfo(ds.GetLoggedInUser().UId).GroupId != 1) 
                    //{
                    //    lblResult.Text = "您不是管理员或管理组成员！";
                    //    return;
                    //}
                    ds.session_info = ds.GetSessionFromToken(Request.QueryString["auth_token"].ToString());

                    Session["DS"] = ds;

                }
                catch
                { }

                //告诉用户登录成功
                //Page.RegisterStartupScript("script", "<script>alert('登录成功');</script>");
            }
        }
    }
}