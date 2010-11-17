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
using System.Xml;
using Discuz.Toolkit;
using Discuz.Control;
using System.Collections.Generic;
using Kernal;
using Entity;

namespace Spinder_web
{
    public partial class AddConfig : System.Web.UI.Page
    {
        public string title = "添加新采集规则";
        private XmlDocument xmldoc = null;
        private XmlNode root = null;
        private string str_path = "";
        string api = "bd944d19dd425d7b842a6e7820b29fa1";
        string secret = "ed2cd183020c8b54a5148e46b4c1a9cc";
        string url = "http://localhost/";
        DiscuzSession ds; bool needlogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            str_path = Server.MapPath("~/URLConfig.xml");

            VerfyUser();

            if (!Page.IsPostBack)
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

                URLConfig uc = new URLConfig();

                uc.Site = Encode(Request.QueryString["site"].ToString().Trim());

                uc.SiteUrl = Encode(Request.QueryString["siteurl"].ToString().Trim());

                uc.Channel = Encode(Request.QueryString["channel"].ToString().Trim());

                uc.Charset = Encode(Request.QueryString["charset"].ToString().Trim());
             

                if (Request.QueryString["action"].ToString() == "update")
                {
                    txt_site.Text = uc.Site;
                    txt_siteurl.Text = uc.SiteUrl;
                    txt_channel.Text = uc.Channel;
                    txt_charset.Text = uc.Charset;
                   

                    UrlConfigManager ucm = new UrlConfigManager();

                    IList<URLConfig> configlist = ucm.GetUrlConfig();

                    foreach(URLConfig urlconfig in configlist)
                    {
                        if ((urlconfig.Site == uc.Site) && (urlconfig.SiteUrl == uc.SiteUrl) && (urlconfig.Channel == uc.Channel) && (urlconfig.Charset == uc.Charset))
                        {
                            #region
                            txt_proxy.Text = Encode(urlconfig.Proxy);
                            txt_port.Text = Encode(urlconfig.Port);
                            txt_listformat.Text = Encode(urlconfig.ListFormat);
                            txt_listnextpage.Text = Encode(urlconfig.ListNextPage);
                            txt_listnextpagereplace.Text = Encode(urlconfig.ListNextPageReplace);
                            txt_startno.Text = Encode(urlconfig.StartPageNo);
                            txt_endno.Text = Encode(urlconfig.EndPageNo);
                            txt_liststep.Text = Encode(urlconfig.ListStep);
                            txt_listcontent.Text = Encode(urlconfig.ListContent);
                            txt_listcontentreplace.Text = Encode(urlconfig.ListContentReplace);
                            txt_detaillink.Text = Encode(urlconfig.DetailLink);
                            txt_titledetail.Text = Encode(urlconfig.TitleDetail);
                            txt_titledetailreplace.Text = Encode(urlconfig.TitleDetailReplace);
                            txt_authordetail.Text = Encode(urlconfig.AuthorDetail);
                            txt_authordetailreplace.Text = Encode(urlconfig.AuthorDetailReplace);
                            txt_datedetail.Text = Encode(urlconfig.DateDetail);
                            txt_datedetailreplace.Text = Encode(urlconfig.DateDetailReplace);
                            txt_contentdetail.Text = Encode(urlconfig.ContentDetail);
                            txt_contentdetailreplace.Text = Encode(urlconfig.ContentDetailReplace);
                            txt_contentlist.Text = Encode(urlconfig.ContentList);
                            txt_contentlistreplace.Text = Encode(urlconfig.ContentListReplace);
                            txt_tagdetail.Text = Encode(urlconfig.TagDetail);
                            txt_tagdetailreplace.Text = Encode(urlconfig.TagDetailReplace);
                            txt_snatchdate.Text = Encode(urlconfig.SnatchDate);
                            txt_snatchinterval.Text = Encode(urlconfig.SnatchInterval);
                            txt_snatchfrequency.Text = Encode(urlconfig.SnatchFrequency);
                            #endregion
                        }
                    }
                   
                }
            }
        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["action"]!=null && Request.QueryString["action"].ToString() == "update")
            {
                title = "编辑采集规则";
                UpdateConfig();
              
            }

            if (Request.QueryString["action"]!=null && Request.QueryString["action"].ToString() == "add")
            {
                AddOneConfig(); 
            }

            Response.Redirect("index.aspx");
        }

        private void AddOneConfig()
        {
            #region 验证4个必填选项和action
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
            #endregion

            #region 添加配置文件
            XmlDocument xmldoc = new XmlDocument();
            xmldoc.Load(str_path);
            root = xmldoc.DocumentElement;
            XmlElement xe;

            // 根结点
            XmlElement xep = xmldoc.CreateElement("Site");
            xep.SetAttribute("Name", txt_site.Text);
            xep.SetAttribute("Url", txt_siteurl.Text);
            xep.SetAttribute("Channel", txt_channel.Text);
            xep.SetAttribute("Charset", txt_charset.Text);

            // 代理服务器设置的节点
            // 标题结点
            xe = xmldoc.CreateElement("Proxy");
            xe.SetAttribute("IP", txt_proxy.Text);
            xe.SetAttribute("Port", txt_port.Text);
            xep.AppendChild(xe);

            // 列表节点
            xe = xmldoc.CreateElement("List");
            xe.SetAttribute("Format", txt_listformat.Text);
            xe.SetAttribute("StartPageNo", txt_startno.Text);
            xe.SetAttribute("EndPageNo", txt_endno.Text);
            xe.SetAttribute("Pattern", txt_listcontent.Text);
            xe.SetAttribute("Replace", txt_listcontentreplace.Text);
            xe.SetAttribute("DetailLink", txt_detaillink.Text);
            xe.SetAttribute("ListStep", txt_liststep.Text);
            xep.AppendChild(xe);
            //列表下一页节点
            xe = xmldoc.CreateElement("ListNextPage");
            xe.SetAttribute("Pattern", txt_listnextpage.Text);
            xe.SetAttribute("Replace", txt_listnextpagereplace.Text);
            xep.AppendChild(xe);

            // 标题结点
            xe = xmldoc.CreateElement("Title");
            xe.SetAttribute("Pattern", txt_titledetail.Text);
            xe.SetAttribute("Replace", txt_titledetailreplace.Text);
            xep.AppendChild(xe);

            // 作者节点
            xe = xmldoc.CreateElement("Author");
            xe.SetAttribute("Pattern", txt_authordetail.Text);
            xe.SetAttribute("Replace", txt_authordetailreplace.Text);
            xep.AppendChild(xe);

            // 发表日期节点
            xe = xmldoc.CreateElement("Date");
            xe.SetAttribute("Pattern", txt_datedetail.Text);
            xe.SetAttribute("Replace", txt_datedetailreplace.Text);
            xep.AppendChild(xe);

            // 内容节点
            xe = xmldoc.CreateElement("Content");
            xe.SetAttribute("Pattern", txt_contentdetail.Text);
            xe.SetAttribute("Replace", txt_contentdetailreplace.Text);
            xep.AppendChild(xe);

            // 内容分页列表节点
            xe = xmldoc.CreateElement("ContentList");
            xe.SetAttribute("Pattern", txt_contentlist.Text);
            xe.SetAttribute("Replace", txt_contentlistreplace.Text);
            xep.AppendChild(xe);

            // Tag节点
            xe = xmldoc.CreateElement("Tag");
            xe.SetAttribute("Pattern", txt_tagdetail.Text);
            xe.SetAttribute("Replace", txt_tagdetailreplace.Text);
            xep.AppendChild(xe);

            // 抓取配置节点
            xe = xmldoc.CreateElement("Snatch");
            xe.SetAttribute("SnatchDate", txt_snatchdate.Text);
            xe.SetAttribute("SnatchInterval", txt_snatchinterval.Text);
            xe.SetAttribute("SnatchFrequency", txt_snatchfrequency.Text);
            xep.AppendChild(xe);

            root.AppendChild(xep);

            xmldoc.Save(str_path);
            #endregion
        }
        private void UpdateConfig()
        {
            #region 验证4个必填选项和action
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

            URLConfig urlconfig = new URLConfig();
            UrlConfigManager ucm = new UrlConfigManager();

            urlconfig.Site = Encode(Request.QueryString["site"].ToString().Trim());

            urlconfig.SiteUrl = Encode(Request.QueryString["siteurl"].ToString().Trim());

            urlconfig.Channel = Encode(Request.QueryString["channel"].ToString().Trim());

            urlconfig.Charset = Encode(Request.QueryString["charset"].ToString().Trim());

            ucm.RemoveChildNode(urlconfig);

            xmldoc = new XmlDocument();
            xmldoc.Load(str_path);

            root = xmldoc.SelectSingleNode("/URLConfig");

            URLConfig uc = new URLConfig();
            uc.Site = txt_site.Text ;
            uc.SiteUrl = txt_siteurl.Text;
            uc.Channel =  txt_channel.Text;
            uc.Charset =  txt_charset.Text ;
            
            uc.Proxy = Encode(txt_proxy.Text);
            uc.Port = Encode(txt_port.Text);
            uc.ListFormat = Encode(txt_listformat.Text);
            uc.ListNextPage = Encode(txt_listnextpage.Text);
            uc.ListNextPageReplace = Encode(txt_listnextpagereplace.Text);
            uc.StartPageNo = Encode(txt_startno.Text);
            uc.EndPageNo = Encode(txt_endno.Text);
            uc.ListStep = Encode(txt_liststep.Text);
            uc.ListContent = Encode(txt_listcontent.Text);
            uc.ListContentReplace = Encode(txt_listcontentreplace.Text);
            uc.DetailLink = Encode(txt_detaillink.Text);
            uc.TitleDetail = Encode(txt_titledetail.Text);
            uc.TitleDetailReplace = Encode(txt_titledetailreplace.Text);
            uc.AuthorDetail = Encode(txt_authordetail.Text);
            uc.AuthorDetailReplace = Encode(txt_authordetailreplace.Text);
            uc.DateDetail = Encode(txt_datedetail.Text);
            uc.DateDetailReplace = Encode(txt_datedetailreplace.Text);
            uc.ContentDetail = Encode(txt_contentdetail.Text);
            uc.ContentDetailReplace = Encode(txt_contentdetailreplace.Text);
            uc.ContentList = Encode(txt_contentlist.Text);
            uc.ContentListReplace = Encode(txt_contentlistreplace.Text);
            uc.TagDetail = Encode(txt_tagdetail.Text);
            uc.TagDetailReplace = Encode(txt_tagdetailreplace.Text);
            uc.SnatchDate = Encode(txt_snatchdate.Text);
            uc.SnatchInterval = Encode(txt_snatchinterval.Text);
            uc.SnatchFrequency = Encode(txt_snatchfrequency.Text);
            ucm.UpdateURLConfig(uc);
            #endregion
        }

        /// <summary>
        /// HTML encode
        /// </summary>
        /// <param name="str">string</param>
        /// <returns></returns>
        public string Encode(string str)
        {
            str = str.Replace("&", "&amp;");
            str = str.Replace("'", "''");
            str = str.Replace("\"", "&quot;");
            //str = str.Replace(" ", "&nbsp;");
            str = str.Replace("<", "&lt;");
            str = str.Replace(">", "&gt;");
            str = str.Replace("\n", "<br>");
            return str;
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
                if ((Request.QueryString["action"] != null && Request.QueryString["action"].ToString() == "login") || (Request.QueryString["user_status"] != null && Request.QueryString["user_status"].ToString() == "1"))
                {
                    //登录，成功后自动返回
                    Response.Redirect(ds.CreateToken().ToString());
                    return;
                }

                //提示用户登录、
                if (Request.QueryString["user_status"].ToString() == "0")
                {
                    needlogin = true;
                    return;
                }
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
    }
}
