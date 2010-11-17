using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web;
using System.Xml;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Kernal;
using Entity;
using System.ComponentModel;
using System.Net;
using Discuz.Toolkit;
namespace Spinder_web
{
    public partial class UrlConfig : System.Web.UI.Page
    {
        string api = "bd944d19dd425d7b842a6e7820b29fa1";
        string secret = "ed2cd183020c8b54a5148e46b4c1a9cc";
        string url = "http://localhost/";
        //public string result = "<table cellspacing=\"0\" cellpadding=\"4\" border=\"0\"><tr><th>代理服务器地址</th><th>代理服务器端口</th><th >网站名称</th><th>网址</th><th>频道名称</th><th>网页编码</th><th>列表格式</th><th>列表开始页码</th><th>列表结束列表</th><th>下页格式</th><th>匹配组号</th><th>每页步长</th><th>列表页内容</th><th>列表内容匹配号</th><th>详细页链接</th><th>详细页标题</th><th>详细页标题匹配组号</th><th>详细页作者</th><th>详细页作者匹配组号</th><th>详细页日期</th><th>详细页日期匹配组号</th><th>详细页内容</th><th>详细页内容匹配组号</th><th>详细页列表</th><th>详细页列表匹配组号</th><th>详细页Tag</th><th>详细页Tag匹配组号</th><th>抓取最新时间</th><th>抓取时间间隔</th><th>抓取频率</th><th>编辑</th><th>删除</th></tr>";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (!Page.IsPostBack)
                {
                    //VerfyUser();
                }
                gvUrlConfig_Bind();

                //string str_url = Server.MapPath("/") + "URLConfig.xml";
                //UrlConfigManager configmager = new UrlConfigManager(str_url);
                //IList<Entity.URLConfig> list = configmager.GetUrlConfig();

                //for (int i = 0; i < list.Count; i++) 
                //{
                //    result += "<tr><th>" + list[i].Proxy + "</th><th>" + list[i].Port + "</th><th >" + list[i].Site + "</th><th >" + list[i].SiteUrl + "</th><th>" + list[i].Channel + "</th><th>" + list[i].Charset + "</th><th>" + list[i].ListFormat + "</th><th>" + list[i].StartPageNo + "</th><th>" + list[i].EndPageNo + "</th><th>" + list[i].ListNextPage + "</th><th>" + list[i].ListNextPageReplace + "</th><th>" + list[i].ListStep + "</th><th>" + list[i].ListContent + "</th><th>" + list[i].ListContentReplace + "</th><th>" + list[i].DetailLink + "</th><th>" + list[i].TitleDetail + "</th><th>" + list[i].TitleDetailReplace + "</th><th>" + list[i].AuthorDetail + "</th><th>" + list[i].AuthorDetailReplace + "</th><th>" + list[i].DateDetail + "</th><th>" + list[i].DateDetailReplace + "</th><th>" + list[i].ContentDetail + "</th><th>" + list[i].ContentDetailReplace + "</th><th>" + list[i].ContentList + "</th><th>" + list[i].ContentListReplace + "</th><th>" + list[i].TagDetail + "</th><th>" + list[i].TagDetailReplace + "</th><th>" + list[i].SnatchDate + "</th><th>" + list[i].SnatchInterval + "</th><th>" + list[i].SnatchFrequency + "</th><th><a href='UpdateConfig.aspx?site='" + list[i].Site + "siteurl=" + list[i].SiteUrl + "channel=" + list[i].Channel + "charset=" + list[i].Charset + "row=" + i + ">编辑</a></th><th>删除</th></tr>";
                //}

                //result += "</table>";
            }
        }

        private void VerfyUser()
        {
            DiscuzSession ds = new DiscuzSession(api, secret, url);
            try
            {
                ds.GetSessionFromToken(Request.QueryString["auth_token"]);
            }
            catch (DiscuzException de)
            {
                if (de.ErrorCode == 102)
                {
                    Uri uri = ds.CreateToken();
                    Response.Redirect(uri.ToString());
                }
                else
                {
                    throw de;
                }
            }
            User user = ds.GetUserInfo(ds.GetLoggedInUser().UId);
            if (user.GroupId != 1)//不是管理员
            {
                Response.Redirect("UrlConfig.aspx");
            }
        }

        private void gvUrlConfig_Bind()
        {
            //string str_url = Server.MapPath("/") + "URLConfig.xml";
            UrlConfigManager configmager = new UrlConfigManager();
            IList<Entity.URLConfig> list = configmager.GetUrlConfig();

            GridView1.DataSource = configmager.GetUrlConfig();
            GridView1.DataBind();
        }

     
        /// <summary>
        /// 初始化站点配置的TextBox的值
        /// </summary>
        /// <param name="_urlconfig"></param>
        private void InitTextBox(URLConfig _urlconfig)
        {
            //tbSite.Text = _urlconfig.Site;
            //tbSiteUrl.Text = _urlconfig.SiteUrl;
            //tbChannel.Text = _urlconfig.Channel;
            //tbCharset.Text = _urlconfig.Charset;
            //tbProxy.Text = _urlconfig.Proxy;
            //tbPort.Text = _urlconfig.Port;
            //tbListFormat.Text = _urlconfig.ListFormat;
            //tbNextPage.Text = _urlconfig.ListNextPage;
            //tbNextPageReplace.Text = _urlconfig.ListNextPageReplace;
            //tbStartPageNo.Text = _urlconfig.StartPageNo;
            //tbEndPageNo.Text = _urlconfig.EndPageNo;
            //tbListStep.Text = _urlconfig.ListStep;
            //tbListContent.Text = _urlconfig.ListContent;
            //tbListContentReplace.Text = _urlconfig.ListContentReplace;
            //tbDetailLink.Text = _urlconfig.DetailLink;
            //tbTitleDetail.Text = _urlconfig.TitleDetail;
            //tbTitleDetailReplace.Text = _urlconfig.TitleDetailReplace;
            //tbAuthorDetail.Text = _urlconfig.AuthorDetail;
            //tbAuthorDetailReplace.Text = _urlconfig.AuthorDetailReplace;
            //tbDateDetail.Text = _urlconfig.DateDetail;
            //tbDateDetailReplace.Text = _urlconfig.DateDetailReplace;
            //tbContentDetail.Text = _urlconfig.ContentDetail;
            //tbContentDetailReplace.Text = _urlconfig.ContentDetailReplace;
            //tbContentList.Text = _urlconfig.ContentList;
            //tbContentListReplace.Text = _urlconfig.ContentListReplace;
            //tbTagDetail.Text = _urlconfig.TagDetail;
            //tbTagDetailReplace.Text = _urlconfig.TagDetailReplace;
            //tbSnatchDate.Text = _urlconfig.SnatchDate;
            //tbSnatchInterval.Text = _urlconfig.SnatchInterval;
            //tbSnatchFrequency.Text = _urlconfig.SnatchFrequency;

            //tabConrol1.SelectedIndex = 1;
        }

        /// <summary>
        /// 将DataGridViewRow转换成UrlConfig对象的属性值
        /// </summary>
        /// <param name="_urlconfig"></param>
        /// <param name="_row"></param>
        private void GridViewRowToUrlConfig(URLConfig _urlconfig, GridViewRow row)
        {
            _urlconfig.Site = ((TextBox)row.Cells[2].Controls[0]).Text;
            _urlconfig.SiteUrl = ((TextBox)row.Cells[3].Controls[0]).Text;
            _urlconfig.Channel = ((TextBox)row.Cells[4].Controls[0]).Text; ;
            _urlconfig.Charset = ((TextBox)row.Cells[5].Controls[0]).Text; ;
            _urlconfig.Proxy = ((TextBox)row.Cells[0].Controls[0]).Text;
            _urlconfig.Port = ((TextBox)row.Cells[1].Controls[0]).Text;
            _urlconfig.ListFormat = ((TextBox)row.Cells[6].Controls[0]).Text;
            _urlconfig.ListNextPage = ((TextBox)row.Cells[7].Controls[0]).Text;
            _urlconfig.ListNextPageReplace = ((TextBox)row.Cells[8].Controls[0]).Text;
            _urlconfig.StartPageNo = ((TextBox)row.Cells[9].Controls[0]).Text;
            _urlconfig.EndPageNo = ((TextBox)row.Cells[10].Controls[0]).Text;
            _urlconfig.ListStep = ((TextBox)row.Cells[10].Controls[0]).Text;
            _urlconfig.ListContent = ((TextBox)row.Cells[11].Controls[0]).Text;
            _urlconfig.ListContentReplace = ((TextBox)row.Cells[12].Controls[0]).Text;
            _urlconfig.DetailLink = ((TextBox)row.Cells[13].Controls[0]).Text;
            _urlconfig.TitleDetail = ((TextBox)row.Cells[14].Controls[0]).Text;
            _urlconfig.TitleDetailReplace = ((TextBox)row.Cells[15].Controls[0]).Text;
            _urlconfig.AuthorDetail = ((TextBox)row.Cells[16].Controls[0]).Text;
            _urlconfig.AuthorDetailReplace = ((TextBox)row.Cells[17].Controls[0]).Text;
            _urlconfig.DateDetail = ((TextBox)row.Cells[18].Controls[0]).Text;
            _urlconfig.DateDetailReplace = ((TextBox)row.Cells[19].Controls[0]).Text;
            _urlconfig.ContentDetail = ((TextBox)row.Cells[20].Controls[0]).Text;
            _urlconfig.ContentDetailReplace = ((TextBox)row.Cells[21].Controls[0]).Text;
            _urlconfig.ContentList = ((TextBox)row.Cells[22].Controls[0]).Text;
            _urlconfig.ContentListReplace = ((TextBox)row.Cells[23].Controls[0]).Text;
            _urlconfig.TagDetail = ((TextBox)row.Cells[24].Controls[0]).Text;
            _urlconfig.TagDetailReplace = ((TextBox)row.Cells[25].Controls[0]).Text;
            _urlconfig.SnatchDate = ((TextBox)row.Cells[26].Controls[0]).Text;
            _urlconfig.SnatchInterval = ((TextBox)row.Cells[27].Controls[0]).Text;
            _urlconfig.SnatchFrequency = ((TextBox)row.Cells[28].Controls[0]).Text;
        }

        #region Ignore
        //private DataSet UpdateRow(GridViewRow row, DataSet ds, int row_num)
        //{
        //    string str_url = Server.MapPath("/") + "URLConfig.xml";
        //    UrlConfigManager configmager = new UrlConfigManager(str_url);
        //    IList<Entity.URLConfig> list = configmager.GetUrlConfig();
            
        //    DataTable dt = new DataTable("getgridview");

        //    dt = getDt(list);


        //#region Ignore
        //string xmlpath = Server.MapPath("/") + "URLConfig.xml";
        //DataSet dataset = new DataSet();
        //DataTable dt = new DataTable("getgridview");
        //dataset.ReadXml(xmlpath); 

        //dt.Columns.Add(new DataColumn("Site", typeof(String)));
        //dt.Columns.Add(new DataColumn("SiteUrl", typeof(String)));
        //dt.Columns.Add(new DataColumn("Channel", typeof(String)));
        //dt.Columns.Add(new DataColumn("Charset", typeof(String)));
        //dt.Columns.Add(new DataColumn("Proxy", typeof(String)));
        //dt.Columns.Add(new DataColumn("Port", typeof(String)));
        //dt.Columns.Add(new DataColumn("ListFormat", typeof(String)));
        //dt.Columns.Add(new DataColumn("ListNextPage", typeof(String)));
        //dt.Columns.Add(new DataColumn("ListNextPageReplace", typeof(String)));
        //dt.Columns.Add(new DataColumn("StartPageNo", typeof(String)));
        //dt.Columns.Add(new DataColumn("EndPageNo", typeof(String)));
        //dt.Columns.Add(new DataColumn("ListStep", typeof(String)));
        //dt.Columns.Add(new DataColumn("ListContent", typeof(String)));
        //dt.Columns.Add(new DataColumn("ListContentReplace", typeof(String)));
        //dt.Columns.Add(new DataColumn("DetailLink", typeof(String)));
        //dt.Columns.Add(new DataColumn("TitleDetail", typeof(String)));
        //dt.Columns.Add(new DataColumn("TitleDetailReplace", typeof(String)));
        //dt.Columns.Add(new DataColumn("AuthorDetail", typeof(String)));
        //dt.Columns.Add(new DataColumn("AuthorDetailReplace", typeof(String)));
        //dt.Columns.Add(new DataColumn("DateDetail", typeof(String)));
        //dt.Columns.Add(new DataColumn("DateDetailReplace", typeof(String)));
        //dt.Columns.Add(new DataColumn("ContentDetail", typeof(String)));
        //dt.Columns.Add(new DataColumn("ContentDetailReplace", typeof(String)));
        //dt.Columns.Add(new DataColumn("ContentList", typeof(String)));
        //dt.Columns.Add(new DataColumn("ContentListReplace", typeof(String)));
        //dt.Columns.Add(new DataColumn("TagDetail", typeof(String)));
        //dt.Columns.Add(new DataColumn("TagDetailReplace", typeof(String)));
        //dt.Columns.Add(new DataColumn("SnatchDate", typeof(String)));
        //dt.Columns.Add(new DataColumn("SnatchInterval", typeof(String)));
        //dt.Columns.Add(new DataColumn("SnatchFrequency", typeof(String)));


        //if (ds.Tables[0].Rows.Count > 0)
        //{

        //    DataRow dr = dt.NewRow();

        //    ds.Tables[0].Rows.Remove(ds.Tables[0].Rows[row_num]);

        //    dr["Site"] = ((TextBox)row.Cells[2].Controls[0]).Text;
        //    dr["SiteUrl"] = ((TextBox)row.Cells[3].Controls[0]).Text;
        //    dr["Channel"] = ((TextBox)row.Cells[4].Controls[0]).Text; ;
        //    dr["Charset"] = ((TextBox)row.Cells[5].Controls[0]).Text; ;
        //    dr["Proxy"] = ((TextBox)row.Cells[0].Controls[0]).Text;
        //    dr["Port"] = ((TextBox)row.Cells[1].Controls[0]).Text;
        //    dr["ListFormat"] = ((TextBox)row.Cells[6].Controls[0]).Text;
        //    dr["ListNextPage"] = ((TextBox)row.Cells[7].Controls[0]).Text;
        //    dr["ListNextPageReplace"] = ((TextBox)row.Cells[8].Controls[0]).Text;
        //    dr["StartPageNo"] = ((TextBox)row.Cells[9].Controls[0]).Text;
        //    dr["EndPageNo"] = ((TextBox)row.Cells[10].Controls[0]).Text;
        //    dr["ListStep"] = ((TextBox)row.Cells[10].Controls[0]).Text;
        //    dr["ListContent"] = ((TextBox)row.Cells[11].Controls[0]).Text;
        //    dr["ListContentReplace"] = ((TextBox)row.Cells[12].Controls[0]).Text;
        //    dr["DetailLink"] = ((TextBox)row.Cells[13].Controls[0]).Text;
        //    dr["TitleDetail"] = ((TextBox)row.Cells[14].Controls[0]).Text;
        //    dr["TitleDetailReplace"] = ((TextBox)row.Cells[15].Controls[0]).Text;
        //    dr["AuthorDetail"] = ((TextBox)row.Cells[16].Controls[0]).Text;
        //    dr["AuthorDetailReplace"] = ((TextBox)row.Cells[17].Controls[0]).Text;
        //    dr["DateDetail"] = ((TextBox)row.Cells[18].Controls[0]).Text;
        //    dr["DateDetailReplace"] = ((TextBox)row.Cells[19].Controls[0]).Text;
        //    dr["ContentDetail"] = ((TextBox)row.Cells[20].Controls[0]).Text;
        //    dr["ContentDetailReplace"] = ((TextBox)row.Cells[21].Controls[0]).Text;
        //    dr["ContentList"] = ((TextBox)row.Cells[22].Controls[0]).Text;
        //    dr["ContentListReplace"] = ((TextBox)row.Cells[23].Controls[0]).Text;
        //    dr["TagDetail"] = ((TextBox)row.Cells[24].Controls[0]).Text;
        //    dr["TagDetailReplace"] = ((TextBox)row.Cells[25].Controls[0]).Text;
        //    dr["SnatchDate"] = ((TextBox)row.Cells[26].Controls[0]).Text;
        //    dr["SnatchInterval"] = ((TextBox)row.Cells[27].Controls[0]).Text;
        //    dr["SnatchFrequency"] = ((TextBox)row.Cells[28].Controls[0]).Text;

        //    dt.Rows.Add(dr);
        //    dt.Rows.RemoveAt(row_num);
        //}
        //ds.Tables.Add(dt);
        //return ds;

        //    #endregion
        //}


        //private DataTable getDt(IList<Entity.URLConfig> list)
        //{
        //    DataTable dt = new DataTable("geturlconfig");

        //    DataRow dr;
        //    dt.Columns.Add(new DataColumn("Site", typeof(String)));
        //    dt.Columns.Add(new DataColumn("SiteUrl", typeof(String)));
        //    dt.Columns.Add(new DataColumn("Channel", typeof(String)));
        //    dt.Columns.Add(new DataColumn("Charset", typeof(String)));
        //    dt.Columns.Add(new DataColumn("Proxy", typeof(String)));
        //    dt.Columns.Add(new DataColumn("Port", typeof(String)));
        //    dt.Columns.Add(new DataColumn("ListFormat", typeof(String)));
        //    dt.Columns.Add(new DataColumn("ListNextPage", typeof(String)));
        //    dt.Columns.Add(new DataColumn("ListNextPageReplace", typeof(String)));
        //    dt.Columns.Add(new DataColumn("StartPageNo", typeof(String)));
        //    dt.Columns.Add(new DataColumn("EndPageNo", typeof(String)));
        //    dt.Columns.Add(new DataColumn("ListStep", typeof(String)));
        //    dt.Columns.Add(new DataColumn("ListContent", typeof(String)));
        //    dt.Columns.Add(new DataColumn("ListContentReplace", typeof(String)));
        //    dt.Columns.Add(new DataColumn("DetailLink", typeof(String)));
        //    dt.Columns.Add(new DataColumn("TitleDetail", typeof(String)));
        //    dt.Columns.Add(new DataColumn("TitleDetailReplace", typeof(String)));
        //    dt.Columns.Add(new DataColumn("AuthorDetail", typeof(String)));
        //    dt.Columns.Add(new DataColumn("AuthorDetailReplace", typeof(String)));
        //    dt.Columns.Add(new DataColumn("DateDetail", typeof(String)));
        //    dt.Columns.Add(new DataColumn("DateDetailReplace", typeof(String)));
        //    dt.Columns.Add(new DataColumn("ContentDetail", typeof(String)));
        //    dt.Columns.Add(new DataColumn("ContentDetailReplace", typeof(String)));
        //    dt.Columns.Add(new DataColumn("ContentList", typeof(String)));
        //    dt.Columns.Add(new DataColumn("ContentListReplace", typeof(String)));
        //    dt.Columns.Add(new DataColumn("TagDetail", typeof(String)));
        //    dt.Columns.Add(new DataColumn("TagDetailReplace", typeof(String)));
        //    dt.Columns.Add(new DataColumn("SnatchDate", typeof(String)));
        //    dt.Columns.Add(new DataColumn("SnatchInterval", typeof(String)));
        //    dt.Columns.Add(new DataColumn("SnatchFrequency", typeof(String)));
        //    if (list.Count > 0)
        //    {

        //        foreach (Entity.URLConfig urlconfig in list)
        //        {
        //            dr = dt.NewRow();
        //            dr["Site"] = urlconfig.Site;
        //            dr["SiteUrl"] = urlconfig.SiteUrl;
        //            dr["Channel"] = urlconfig.Channel;
        //            dr["Charset"] = urlconfig.Charset;
        //            dr["Proxy"] = urlconfig.Proxy;
        //            dr["Port"] = urlconfig.Port;
        //            dr["ListFormat"] = urlconfig.ListFormat;
        //            dr["ListNextPage"] = urlconfig.ListNextPage;
        //            dr["ListNextPageReplace"] = urlconfig.ListNextPageReplace;
        //            dr["StartPageNo"] = urlconfig.StartPageNo;
        //            dr["EndPageNo"] = urlconfig.EndPageNo;
        //            dr["ListStep"] = urlconfig.ListStep;
        //            dr["ListContent"] = urlconfig.ListContent;
        //            dr["ListContentReplace"] = urlconfig.ListContentReplace;
        //            dr["DetailLink"] = urlconfig.DetailLink;
        //            dr["TitleDetail"] = urlconfig.TitleDetail;
        //            dr["TitleDetailReplace"] = urlconfig.TitleDetailReplace;
        //            dr["AuthorDetail"] = urlconfig.AuthorDetail;
        //            dr["AuthorDetailReplace"] = urlconfig.AuthorDetailReplace;
        //            dr["DateDetail"] = urlconfig.DateDetail;
        //            dr["DateDetailReplace"] = urlconfig.DateDetailReplace;
        //            dr["ContentDetail"] = urlconfig.ContentDetail;
        //            dr["ContentDetailReplace"] = urlconfig.ContentDetailReplace;
        //            dr["ContentList"] = urlconfig.ContentList;
        //            dr["ContentListReplace"] = urlconfig.ContentListReplace;
        //            dr["TagDetail"] = urlconfig.TagDetail;
        //            dr["TagDetailReplace"] = urlconfig.TagDetailReplace;
        //            dr["SnatchDate"] = urlconfig.SnatchDate;
        //            dr["SnatchInterval"] = urlconfig.SnatchInterval;
        //            dr["SnatchFrequency"] = urlconfig.SnatchFrequency;
        //            dt.Rows.Add(dr);
        //        }
        //    }

        //    return dt;
        //}
        #endregion
  
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            #region 配置urlconfig

            //URLConfig _urlconfig = new URLConfig();
            //GridViewRow row = GridView1.Rows[e.NewEditIndex];
            //((TextBox)row.Cells[0].Controls[0]).Text = _urlconfig.Site;
            //_urlconfig.SiteUrl = Encode(((TextBox)row.Cells[3].Controls[0]).Text);
            //_urlconfig.Channel = Encode(((TextBox)row.Cells[4].Controls[0]).Text);
            //_urlconfig.Charset = Encode(((TextBox)row.Cells[5].Controls[0]).Text);
            //_urlconfig.Proxy = Encode(((TextBox)row.Cells[0].Controls[0]).Text);
            //_urlconfig.Port = Encode(((TextBox)row.Cells[1].Controls[0]).Text);
            //_urlconfig.ListFormat = Encode(((TextBox)row.Cells[6].Controls[0]).Text);
            //_urlconfig.ListNextPage = Encode(((TextBox)row.Cells[7].Controls[0]).Text);
            //_urlconfig.ListNextPageReplace = Encode(((TextBox)row.Cells[8].Controls[0]).Text);
            //_urlconfig.StartPageNo = Encode(((TextBox)row.Cells[9].Controls[0]).Text);
            //_urlconfig.EndPageNo = Encode(((TextBox)row.Cells[10].Controls[0]).Text);
            //_urlconfig.ListStep = Encode(((TextBox)row.Cells[10].Controls[0]).Text);
            //_urlconfig.ListContent = Encode(((TextBox)row.Cells[11].Controls[0]).Text);
            //_urlconfig.ListContentReplace = Encode(((TextBox)row.Cells[12].Controls[0]).Text);
            //_urlconfig.DetailLink = Encode(((TextBox)row.Cells[13].Controls[0]).Text);
            //_urlconfig.TitleDetail = Encode(((TextBox)row.Cells[14].Controls[0]).Text);
            //_urlconfig.TitleDetailReplace = Encode(((TextBox)row.Cells[15].Controls[0]).Text);
            //_urlconfig.AuthorDetail = Encode(((TextBox)row.Cells[16].Controls[0]).Text);
            //_urlconfig.AuthorDetailReplace = Encode(((TextBox)row.Cells[17].Controls[0]).Text);
            //_urlconfig.DateDetail = Encode(((TextBox)row.Cells[18].Controls[0]).Text);
            //_urlconfig.DateDetailReplace = Encode(((TextBox)row.Cells[19].Controls[0]).Text);
            //_urlconfig.ContentDetail = Encode(((TextBox)row.Cells[20].Controls[0]).Text);
            //_urlconfig.ContentDetailReplace = Encode(((TextBox)row.Cells[21].Controls[0]).Text);
            //_urlconfig.ContentList = Encode(((TextBox)row.Cells[22].Controls[0]).Text);
            //_urlconfig.ContentListReplace = Encode(((TextBox)row.Cells[23].Controls[0]).Text);
            //_urlconfig.TagDetail = Encode(((TextBox)row.Cells[24].Controls[0]).Text);
            //_urlconfig.TagDetailReplace = Encode(((TextBox)row.Cells[25].Controls[0]).Text);
            //_urlconfig.SnatchDate = Encode(((TextBox)row.Cells[26].Controls[0]).Text);
            //_urlconfig.SnatchInterval = Encode(((TextBox)row.Cells[27].Controls[0]).Text);
            //_urlconfig.SnatchFrequency = Encode(((TextBox)row.Cells[28].Controls[0]).Text);

            #endregion

            GridView1.EditIndex = e.NewEditIndex;
            gvUrlConfig_Bind();//gvUrlConfig_Bind().Tables[0];
           
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            URLConfig _urlconfig = new URLConfig();
            string str_url = Server.MapPath("/") + "URLConfig.xml";
            UrlConfigManager configmager = new UrlConfigManager();
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int currentRow = (int)row.DataItemIndex;
            DataSet dataset = new DataSet();
            dataset.ReadXml(str_url);
            DataRow dr;
            dr = dataset.Tables[0].Rows[currentRow];

           
            _urlconfig.Site = Encode(dr.ItemArray[1].ToString());
            _urlconfig.SiteUrl =Encode(dr.ItemArray[2].ToString());
            _urlconfig.Channel = Encode(dr.ItemArray[3].ToString());
            _urlconfig.Charset = Encode(dr.ItemArray[4].ToString()); 


            #region Ignore
            //_urlconfig.Site = Encode(dr["Site"].ToString());
            //_urlconfig.SiteUrl =Encode(dr["SiteUrl"].ToString());
            //_urlconfig.Channel = Encode(dr["Channel"].ToString());
            //_urlconfig.Charset = Encode(dr["Charset"].ToString());
            //_urlconfig.Proxy = Encode(dr["Proxy"].ToString()); 
            //_urlconfig.Port = Encode(dr["Port"].ToString()); 
            //_urlconfig.ListFormat = Encode(dr["ListFormat"].ToString());
            //_urlconfig.ListNextPage = Encode(dr["ListNextPage"].ToString()); 
            //_urlconfig.ListNextPageReplace = Encode(dr["ListNextPageReplace"].ToString());
            //_urlconfig.StartPageNo = Encode(dr["StartPageNo"].ToString());
            //_urlconfig.EndPageNo =Encode(dr["EndPageNo"].ToString());
            //_urlconfig.ListStep = Encode(dr["ListStep"].ToString());
            //_urlconfig.ListContent = Encode(dr["ListContent"].ToString());
            //_urlconfig.ListContentReplace = Encode(dr["ListContentReplace"].ToString());
            //_urlconfig.DetailLink = Encode(dr["DetailLink"].ToString());
            //_urlconfig.TitleDetail = Encode(dr["TitleDetail"].ToString());
            //_urlconfig.TitleDetailReplace = Encode(dr["TitleDetailReplace"].ToString()); 
            //_urlconfig.AuthorDetail = Encode(dr["AuthorDetail"].ToString());
            //_urlconfig.AuthorDetailReplace = Encode(dr["AuthorDetailReplace"].ToString());
            //_urlconfig.DateDetail = Encode(dr["DateDetail"].ToString());
            //_urlconfig.DateDetailReplace = Encode(dr["DateDetailReplace"].ToString());
            //_urlconfig.ContentDetail = Encode(dr["ContentDetail"].ToString());
            //_urlconfig.ContentDetailReplace =Encode(dr["ContentDetailReplace"].ToString()); 
            //_urlconfig.ContentList= Encode(dr["ContentList"].ToString());
            //_urlconfig.ContentListReplace =Encode(dr["ContentListReplace"].ToString()); 
            //_urlconfig.TagDetail=Encode(dr["TagDetail"].ToString());
            //_urlconfig.TagDetailReplace=Encode(dr["TagDetailReplace"].ToString()); 
            //_urlconfig.SnatchDate=Encode(dr["SnatchDate"].ToString());
            //_urlconfig.SnatchInterval=Encode(dr["SnatchInterval"].ToString());
            //_urlconfig.SnatchFrequency = Encode(dr["SnatchFrequency"].ToString());
            #endregion

            if (configmager.UpdateURLConfig(_urlconfig))
            {
                #region 配置urlconfig
                _urlconfig.Proxy = Encode(((TextBox)row.Cells[0].Controls[0]).Text);
                _urlconfig.Port = Encode(((TextBox)row.Cells[1].Controls[0]).Text);
                _urlconfig.Site = Encode(((TextBox)row.Cells[2].Controls[0]).Text);
                _urlconfig.SiteUrl = Encode(((TextBox)row.Cells[3].Controls[0]).Text);
                _urlconfig.Channel = Encode(((TextBox)row.Cells[4].Controls[0]).Text);
                _urlconfig.Charset = Encode(((TextBox)row.Cells[5].Controls[0]).Text);
                _urlconfig.ListFormat = Encode(((TextBox)row.Cells[6].Controls[0]).Text);
                _urlconfig.StartPageNo = Encode(((TextBox)row.Cells[7].Controls[0]).Text);
                _urlconfig.EndPageNo = Encode(((TextBox)row.Cells[8].Controls[0]).Text);
                _urlconfig.ListNextPage = Encode(((TextBox)row.Cells[9].Controls[0]).Text);
                _urlconfig.ListNextPageReplace = Encode(((TextBox)row.Cells[10].Controls[0]).Text);
                _urlconfig.ListStep = Encode(((TextBox)row.Cells[11].Controls[0]).Text);
                _urlconfig.ListContent = Encode(((TextBox)row.Cells[12].Controls[0]).Text);
                _urlconfig.ListContentReplace = Encode(((TextBox)row.Cells[13].Controls[0]).Text);
                _urlconfig.DetailLink = Encode(((TextBox)row.Cells[14].Controls[0]).Text);
                _urlconfig.TitleDetail = Encode(((TextBox)row.Cells[15].Controls[0]).Text);
                _urlconfig.TitleDetailReplace = Encode(((TextBox)row.Cells[16].Controls[0]).Text);
                _urlconfig.AuthorDetail = Encode(((TextBox)row.Cells[17].Controls[0]).Text);
                _urlconfig.AuthorDetailReplace = Encode(((TextBox)row.Cells[18].Controls[0]).Text);
                _urlconfig.DateDetail = Encode(((TextBox)row.Cells[19].Controls[0]).Text);
                _urlconfig.DateDetailReplace = Encode(((TextBox)row.Cells[20].Controls[0]).Text);
                _urlconfig.ContentDetail = Encode(((TextBox)row.Cells[21].Controls[0]).Text);
                _urlconfig.ContentDetailReplace = Encode(((TextBox)row.Cells[22].Controls[0]).Text);
                _urlconfig.ContentList = Encode(((TextBox)row.Cells[23].Controls[0]).Text);
                _urlconfig.ContentListReplace = Encode(((TextBox)row.Cells[24].Controls[0]).Text);
                _urlconfig.TagDetail = Encode(((TextBox)row.Cells[25].Controls[0]).Text);
                _urlconfig.TagDetailReplace = Encode(((TextBox)row.Cells[26].Controls[0]).Text);
                _urlconfig.SnatchDate = Encode(((TextBox)row.Cells[27].Controls[0]).Text);
                _urlconfig.SnatchInterval = Encode(((TextBox)row.Cells[28].Controls[0]).Text);
                _urlconfig.SnatchFrequency = Encode(((TextBox)row.Cells[29].Controls[0]).Text);

                #endregion
           
                //DataSet dataset = new DataSet();
                //dataset.ReadXml(str_url);
                //DataRow dr;
                //dr = dataset.Tables[0].Rows[currentRow];
                //dataset.Tables[0].Rows.Remove(dr);
                //dataset.WriteXml(str_url);

                configmager.UpdateURLConfig(_urlconfig);

                lbResult.Text = "更新成功";
            }
            else
            {
                lbResult.Text = "更新失败";
            }

            GridView1.EditIndex = -1;

            gvUrlConfig_Bind();

        }

        /// <summary>
        /// HTML encode
        /// </summary>
        /// <param name="str">string</param>
        /// <returns></returns>
        public static string Encode(string str)
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


        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;

            gvUrlConfig_Bind();// gvUrlConfig_Bind().Tables[0].DefaultView;
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            #region Ignore
            //GridViewRow row = GridView1.Rows[e.RowIndex];
            //URLConfig _urlconfig = new URLConfig();

            //GridViewRowToUrlConfig(_urlconfig, row);
            //string str_url = Server.MapPath("/") + "URLConfig.xml";
            //UrlConfigManager _urlconfigmanager = new UrlConfigManager(str_url);
            //_urlconfigmanager.RemoveChildNode(_urlconfig);
            //GridView1.DataSource = gvUrlConfig_Bind().Tables[0].DefaultView; ;
            //GridView1.DataBind();
            #endregion

            GridViewRow row = GridView1.Rows[e.RowIndex];
            int cur_row = row.RowIndex;
            DataSet dss = new DataSet();
            string xmlpath = Server.MapPath("/") + "URLConfig.xml";
            dss.ReadXml(xmlpath);
            DataRow dr = dss.Tables[0].Rows[cur_row];
            dr.Delete();
            dss.WriteXml(xmlpath);

            gvUrlConfig_Bind();
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str_url = Server.MapPath("/") + "URLConfig.xml";
            BackgroundWorker bgwWorker=new BackgroundWorker();
            CollectorCore cc = new CollectorCore(Server.MapPath("/"));
            //cc.CollectingData((new UrlConfigManager(str_url)).GetUrlConfig());
            cc.CollectingData();
           
        }

       
    }
}
