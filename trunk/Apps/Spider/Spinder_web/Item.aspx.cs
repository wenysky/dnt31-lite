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
    public partial class Item : System.Web.UI.Page
    {
        public string result = "<table width=\"75%\"  border=\"0\" cellpadding=\"0\" cellspacing=\"0\">";
        string api = "bd944d19dd425d7b842a6e7820b29fa1";
        string secret = "ed2cd183020c8b54a5148e46b4c1a9cc";
        string url = "http://localhost/";
        DiscuzSession ds; bool needlogin;
        protected void Page_Load(object sender, EventArgs e)
        {

            VerfyUser();

        
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

            if(Request.QueryString["action"].ToString() == "showitem")
            {

                UrlConfig_Bind();
                //if (ds.session_info.Secret == ds.GetSessionFromToken(Request.QueryString["auth_token"].ToString()).Secret)
                //{
                //    UrlConfig_Bind();
                //}
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

            if (ds.session_info == null)
            {

                if (Request.QueryString["user_status"] != null && Request.QueryString["user_status"].ToString() == "1")
                {
                    //登录，成功后自动返回
                    Response.Redirect(ds.CreateToken().ToString());
                    return;
                }

                //提示用户登录、
                if (Util.GetQueryString("user_status") == "0")
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
        }

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

        //    if (Request.QueryString["auth_token"] == null || Request.QueryString["auth_token"].ToString() == "")
        //    {
        //        Uri uri = ds.CreateToken();
        //        Response.Redirect(uri.ToString());
        //    }

        //    ds.session_info = ds.GetSessionFromToken(Request.QueryString["auth_token"].ToString());

        //}


        private void UrlConfig_Bind()
        {
            //string str_url = Server.MapPath("/") + "URLConfig.xml";
            UrlConfigManager configmager = new UrlConfigManager();
            IList<Entity.URLConfig> list = configmager.GetUrlConfig();

            if (list.Count == 0)
                result = " <tr><td colspan=\"32\" align=\"center\">您还没有配置抓取规则</td></tr>";

            for (int i = 0; i < list.Count; i++)
            {
                if((Request.QueryString["site"].ToString() == list[i].Site) && (Request.QueryString["siteurl"].ToString() == list[i].SiteUrl) && (Request.QueryString["channel"].ToString() == list[i].Channel) && (Request.QueryString["charset"].ToString() == list[i].Charset))
                {
                    result += "<tr><td width=\"30%\">网站名称</td><td width=\"70%\">" + list[i].SiteUrl + "</td></tr><tr><td>网址</td><td>" + list[i].SiteUrl + "</td></tr><tr><td>频道名称</td><td>" + list[i].Channel + "</td></tr><tr><td>列表格式</td><td>" + list[i].ListFormat + "</td></tr><tr><td>列表开始页码</td><td>" + list[i].StartPageNo + "</td></tr><tr><td>列表结束页码</td><td>" + list[i].EndPageNo + "</td></tr><tr><td>下页格式</td><td>" + list[i].ListNextPage + "</td></tr><tr><td>匹配组号</td><td>" + list[i].ListNextPageReplace + "</td></tr><tr><td>每页步长</td><td>" + list[i].ListStep + "</td></tr><tr><td>列表页内容</td><td>" + list[i].ListContent + "</td></tr><tr><td>列表内容匹配组号</td><td>" + list[i].ListContentReplace + "</td></tr><tr><td>详细页连接</td><td>" + list[i].DetailLink + "</td></tr><tr><td>详细页标题</td><td>" + list[i].TitleDetail + "</td></tr><tr><td>详细页标题匹配组号</td><td>" + list[i].TitleDetailReplace + "</td></tr><tr><td>详细页作者</td><td>" + list[i].AuthorDetail + "</td></tr><tr><td>详细页作者匹配组号</td><td>" + list[i].AuthorDetailReplace + "</td></tr><tr><td>详细页日期</td><td>" + list[i].DateDetail + "</td></tr><tr><td>详细页日期匹配组号</td><td>" + list[i].DateDetailReplace + "</td></tr><tr><td>详细页内容</td><td>" + list[i].ContentList + "</td></tr><tr><td>详细页内容匹配组号</td><td>" + list[i].ContentListReplace + "</td></tr><tr><td>详细页Tag</td><td>" + list[i].TagDetail + "</td></tr><tr><td>详细页Tag匹配组号</td><td>" + list[i].TagDetailReplace + "</td></tr><tr><td>抓取最新时间</td><td>" + list[i].SnatchDate + "</td></tr><tr><td>抓取间隔</td><td>" + list[i].SnatchInterval + "</td></tr><tr><td>抓取频率</td><td>" + list[i].SnatchFrequency + "</td></tr>";
                }
                
                //result += "<tr><td><a href=AddConfig.aspx?action=update&site=" + list[i].Site + "&siteurl=" + list[i].SiteUrl + "&channel=" + list[i].Channel + "&charset=" + list[i].Charset + ">编辑</a></td><td><a href=DeleteConfig.aspx?action=delete&site=" + list[i].Site + "&siteurl=" + list[i].SiteUrl + "&channel=" + list[i].Channel + "&charset=" + list[i].Charset + ">删除</a></td><td>" + list[i].Proxy + "</td><td>" + list[i].Port + "</td><td >" + list[i].Site + "</td><td >" + list[i].SiteUrl + "</td><td>" + list[i].Channel + "</td><td>" + list[i].Charset + "</td><td>" + list[i].ListFormat + "</td><td>" + list[i].StartPageNo + "</td><td>" + list[i].EndPageNo + "</td><td>" + list[i].ListNextPage + "</td><td>" + list[i].ListNextPageReplace + "</td><td>" + list[i].ListStep + "</td><td>" + list[i].ListContent + "</td><td>" + list[i].ListContentReplace + "</td><td>" + list[i].DetailLink + "</td><td>" + list[i].TitleDetail + "</td><td>" + list[i].TitleDetailReplace + "</td><td>" + list[i].AuthorDetail + "</td><td>" + list[i].AuthorDetailReplace + "</td><td>" + list[i].DateDetail + "</td><td>" + list[i].DateDetailReplace + "</td><td>" + list[i].ContentDetail + "</td><td>" + list[i].ContentDetailReplace + "</td><td>" + list[i].ContentList + "</td><td>" + list[i].ContentListReplace + "</td><td>" + list[i].TagDetail + "</td><td>" + list[i].TagDetailReplace + "</td><td>" + list[i].SnatchDate + "</td><td>" + list[i].SnatchInterval + "</td><td>" + list[i].SnatchFrequency + "</td></tr>";

                //result += "<tr><td><a href=UpdateConfig.aspx?action=update&entity=" + list[i] + ">编辑</a></td><td><a href=DeleteConfig.aspx?action=delete&entity=" + list[i] + ">删除</a></td><td>" + list[i].Proxy + "</td><td>" + list[i].Port + "</td><td >" + list[i].Site + "</td><td >" + list[i].SiteUrl + "</td><td>" + list[i].Channel + "</td><td>" + list[i].Charset + "</td><td>" + list[i].ListFormat + "</td><td>" + list[i].StartPageNo + "</td><td>" + list[i].EndPageNo + "</td><td>" + list[i].ListNextPage + "</td><td>" + list[i].ListNextPageReplace + "</td><td>" + list[i].ListStep + "</td><td>" + list[i].ListContent + "</td><td>" + list[i].ListContentReplace + "</td><td>" + list[i].DetailLink + "</td><td>" + list[i].TitleDetail + "</td><td>" + list[i].TitleDetailReplace + "</td><td>" + list[i].AuthorDetail + "</td><td>" + list[i].AuthorDetailReplace + "</td><td>" + list[i].DateDetail + "</td><td>" + list[i].DateDetailReplace + "</td><td>" + list[i].ContentDetail + "</td><td>" + list[i].ContentDetailReplace + "</td><td>" + list[i].ContentList + "</td><td>" + list[i].ContentListReplace + "</td><td>" + list[i].TagDetail + "</td><td>" + list[i].TagDetailReplace + "</td><td>" + list[i].SnatchDate + "</td><td>" + list[i].SnatchInterval + "</td><td>" + list[i].SnatchFrequency + "</td></tr>";

            }

            result += "</table>";

        }
    }
}

