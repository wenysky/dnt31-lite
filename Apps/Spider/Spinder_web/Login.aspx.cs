using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Discuz.Toolkit;
using Kernal;

namespace Spinder_web
{
    public partial class Login : System.Web.UI.Page
    {
        string api = "bd944d19dd425d7b842a6e7820b29fa1";
        string secret = "ed2cd183020c8b54a5148e46b4c1a9cc";
        string url = "http://localhost/";
        bool needlogin;
        DiscuzSession ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            VerfyUser();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string uname = txt_user.Text.Trim();
            //string pwd = txt_password.Text.Trim();

            //DiscuzSession ds = new DiscuzSession(api, secret, url);
            //int uid = ds.GetUserID(uname);
            //ds.Login(uid, ds.EncodePassword(pwd,true), false, 10, "");

            //Uri uri = ds.CreateToken();
            //Session["DS"] = ds;
            //Response.Redirect(uri.ToString());
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

            if (ds.session_info == null)
            {

                if (Request.QueryString["user_status"] != null && Request.QueryString["user_status"].ToString() == "1")
                {
                    //登录，成功后自动返回
                    Response.Redirect(ds.CreateToken().ToString());
                    return;
                }

                //提示用户登录、
                if (Util.GetQueryString("user_status") == "" ||Util.GetQueryString("user_status") == "0")
                {
                    needlogin = true;
                    return;
                }

                //提示用户登录、
                //Page.RegisterStartupScript("script","<script>alert('请先登录');</script>");
                Response.Redirect(url + "services/status.aspx?api_key=" + api);
                return;
            }

            if (ds.GetLoggedInUser().UId < 1)
            {
                ds.session_info = null;
                Response.Redirect(url + "services/status.aspx?api_key=" + api);
                needlogin = true;
                return;
            }

            if (ds.GetUserInfo(ds.GetLoggedInUser().UId).Adminid != 1)
            {
                ds.session_info = null;
                lblResult.Text = "<font color='red'><b>很抱歉，你没有使用此功能的权限！</b></font>";
                return;
            }
        }

        protected void btn_ok1_Click(object sender, EventArgs e)
        {
            VerfyUser();
           
            if (needlogin)
            {
                Response.Redirect(url + "login.aspx?api_key=" + api);
            }
            else 
            {
                //if (Request.QueryString["auth_token"] == null || Request.QueryString["auth_token"].ToString() == "")
                //    Response.Redirect("login.aspx");
                //Response.Redirect(ds.CreateToken().ToString());
                Response.Redirect("index.aspx");
            }
        }
    }
}
