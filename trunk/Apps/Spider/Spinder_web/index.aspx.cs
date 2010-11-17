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
    public partial class index : System.Web.UI.Page
    {
        public string result = "";
        string api = "bd944d19dd425d7b842a6e7820b29fa1";
        string secret = "ed2cd183020c8b54a5148e46b4c1a9cc";
        string url = "http://localhost/";
        bool needlogin; 
        DiscuzSession ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            VerfyUser();

            if (needlogin)
            {
                Response.Redirect(url + "login.aspx?api_key=" + api);
            }
            else
            {
                UrlConfig_Bind();
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
                    ds.session_info = ds.GetSessionFromToken(Request.QueryString["auth_token"].ToString());
                    Session["DS"] = ds;

                }
                catch
                { }
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

          
        }

        private void UrlConfig_Bind()
        {
            //string str_url = Server.MapPath("/") + "URLConfig.xml";
            UrlConfigManager configmager = new UrlConfigManager();
            IList<Entity.URLConfig> list = configmager.GetUrlConfig();

            if (list.Count == 0)
                result = " <tr><td colspan=\"32\" align=\"center\">您还没有配置抓取规则</td></tr>";

            for (int i = 0; i < list.Count; i++)
            {
                if (list[i].Proxy == "")
                {
                    list[i].Proxy = "暂无填写";
                }

                if (list[i].Port == "")
                {
                    list[i].Port = "暂无填写";
                }

                result += "<tr><td>" + list[i].Proxy + "</td><td>" + list[i].Port + "</td><td >" + list[i].Site + "</td><td >" + list[i].SiteUrl + "</td><td>" + list[i].Channel + "</td><td>" + list[i].Charset + "</td><td><a href=Item.aspx?action=showitem&site=" + list[i].Site + "&siteurl=" + list[i].SiteUrl + "&channel=" + list[i].Channel + "&charset=" + list[i].Charset + ">详细信息</a></td><td><a href=AddConfig.aspx?action=update&site=" + list[i].Site + "&siteurl=" + list[i].SiteUrl + "&channel=" + list[i].Channel + "&charset=" + list[i].Charset + ">编辑</a></td><td><a href=DeleteConfig.aspx?action=delete&site=" + list[i].Site + "&siteurl=" + list[i].SiteUrl + "&channel=" + list[i].Channel + "&charset=" + list[i].Charset + " onclick='javascript:return p_del();'>删除</a></td><td><a href=setuser.aspx>添加发贴用户</a><td><a href=addconfig.aspx?action=add>添加规则</a></td></tr>";

                //result += "<tr><td><a href=UpdateConfig.aspx?action=update&entity=" + list[i] + ">编辑</a></td><td><a href=DeleteConfig.aspx?action=delete&entity=" + list[i] + ">删除</a></td><td>" + list[i].Proxy + "</td><td>" + list[i].Port + "</td><td >" + list[i].Site + "</td><td >" + list[i].SiteUrl + "</td><td>" + list[i].Channel + "</td><td>" + list[i].Charset + "</td><td>" + list[i].ListFormat + "</td><td>" + list[i].StartPageNo + "</td><td>" + list[i].EndPageNo + "</td><td>" + list[i].ListNextPage + "</td><td>" + list[i].ListNextPageReplace + "</td><td>" + list[i].ListStep + "</td><td>" + list[i].ListContent + "</td><td>" + list[i].ListContentReplace + "</td><td>" + list[i].DetailLink + "</td><td>" + list[i].TitleDetail + "</td><td>" + list[i].TitleDetailReplace + "</td><td>" + list[i].AuthorDetail + "</td><td>" + list[i].AuthorDetailReplace + "</td><td>" + list[i].DateDetail + "</td><td>" + list[i].DateDetailReplace + "</td><td>" + list[i].ContentDetail + "</td><td>" + list[i].ContentDetailReplace + "</td><td>" + list[i].ContentList + "</td><td>" + list[i].ContentListReplace + "</td><td>" + list[i].TagDetail + "</td><td>" + list[i].TagDetailReplace + "</td><td>" + list[i].SnatchDate + "</td><td>" + list[i].SnatchInterval + "</td><td>" + list[i].SnatchFrequency + "</td></tr>";
                
            }

        }
    }


}
