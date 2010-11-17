using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.IO;
using Discuz.Toolkit;
using Discuz.Control;

namespace Spinder_web
{
    public partial class SetUser : System.Web.UI.Page
    {
        public string result = "<table width=\"80%\" border=\"1\"><tr> <td>Id</td><td><div align=\"center\">论坛版块ID</div></td><td><div align=\"center\">设置用户</div></td><td><div align=\"center\"> 删除</div></td></tr>";
        string api = "bd944d19dd425d7b842a6e7820b29fa1";
        string secret = "ed2cd183020c8b54a5148e46b4c1a9cc";
        string url = "http://localhost/";
        DiscuzSession ds; bool needlogin;
        protected void Page_Load(object sender, EventArgs e)
        {
                VerfyUser();
                LoadUser();
        }

        #region
		 

        //private void VerfyUser()
        //{
        //    if (Session["DS"] != null)
        //    {
        //        ds = (DiscuzSession)Session["DS"];
        //    }
        //    else
        //    {
        //        ds = new DiscuzSession(api, secret, url);
        //    }

        //    if (ds.session_info.Secret == ds.GetSessionFromToken(Request.QueryString["auth_token"].ToString()).Secret)
        //    {
        //        Response.Redirect("login.aspx");
        //    }

         
        //}
        #endregion

        private void LoadUser()
        {
            string str_path = HttpContext.Current.Server.MapPath("~/Users.txt");
            StreamReader reader = new StreamReader(str_path);
            string sLine = reader.ReadToEnd().Trim();
            if (sLine.Length == 0)
            {
                result += "<tr><td colspan=\"4\"><div align=\"center\"></div><div align=\"center\"></div><div align=\"center\"></div><div align=\"center\">对不起，还没有设置用户</div></td></tr></table>";
                return;
            }
            //if (!sLine.EndsWith("\r\n"))
            //{
            //    sLine = sLine + "\r\n";
            //}
            string[] groups = sLine.Split('\n');

            for(int i=0;i<groups.Length;i++)//groups[i] aa,bb,cc|131
            {
                result += "<tr><td>" + groups[i].Split('|')[0].Split('-')[0] + "</td><td><div align=\"center\">" + groups[i].Split('|')[1] + "</div></td><td><div align=\"center\">" + groups[i].Split('|')[0].Split('-')[1] + "</div></td><td><div align=\"center\"><a href=deteuser.aspx?id=" + groups[i].Split('|')[0].Split('-')[0] + "&users=" + groups[i].Split('|')[0].Split('-')[1] + "&fid=" + groups[i].Split('|')[1] + ">删除</a></div></td></tr>";
            }

            result += "</table>";

            reader.Close();
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

        private void AddUser_Click(object sender, EventArgs e)
        {
            StreamWriter writer = null;
            string users = txt_Users.Text;
            string path = Server.MapPath("~/") + "Users.txt";

            if (!File.Exists(path))
            {
                File.Create(path);
            }

            writer = new StreamWriter(path);
            writer.WriteLine(users);
            writer.Close();
        }

        protected void btn_Ok_Click1(object sender, EventArgs e)
        {
            try
            {
                StreamWriter writer = null;
                string users = txt_Users.Text;
                string path = Server.MapPath("~/") + "Users.txt";

                if (!File.Exists(path))
                {
                    File.Create(path);
                }

                writer = new StreamWriter(path);
                writer.WriteLine(users);
                writer.Close();
            }
            catch (Exception ex)
            {

            }
        }
    }
}
