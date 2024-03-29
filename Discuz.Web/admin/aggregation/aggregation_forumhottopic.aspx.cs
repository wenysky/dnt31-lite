using System;
using System.Data;
using System.Web.UI;
using System.Xml;
using System.Web.UI.WebControls;

using Discuz.Control;
using Discuz.Forum;
using Discuz.Config;
using Discuz.Entity;
using Discuz.Common;
using Discuz.Common.Xml;
using Discuz.Aggregation;
using System.IO;

namespace Discuz.Web.Admin
{
    /// <summary>
    /// 查找要审核的主题 
    /// </summary>
    public partial class forumhottopic : AdminPage
    {
        private string configPath;
        protected string fid = "";
        public int forumid = DNTRequest.GetInt("forumid", 0);
        public string showtype = DNTRequest.GetString("showtype") == "" ? "replies" : DNTRequest.GetString("showtype");
        public int timebetween = DNTRequest.GetInt("timebetween", 7);
        protected void Page_Load(object sender, EventArgs e)
        {
            fid = DNTRequest.GetString("fid");
            if (!IsPostBack)
            {
                if(File.Exists(configPath))
                    LoadWebSiteConfig();
                //LoadPostTableList();
            }
        }

        /// <summary>
        /// 装载WebSite信息
        /// </summary>
       private void LoadWebSiteConfig()
       {
           #region 装载主题信息
           XmlDocumentExtender doc = new XmlDocumentExtender();
            doc.Load(configPath);
            XmlNodeList topiclistNode = doc.SelectNodes("/Aggregationinfo/Data/Hottopiclist/Topic");
            XmlNodeList website_spacelistnode = doc.SelectNodes("/Aggregationinfo/Forum/Hottopiclist/Topic");
            XmlNodeInnerTextVisitor topicvisitor = new XmlNodeInnerTextVisitor();
            XmlNodeInnerTextVisitor pagetopicvisitor = new XmlNodeInnerTextVisitor();
            forumlist.Text = "";
            int i = 0;
            foreach (XmlNode topic in topiclistNode)
            {
                topicvisitor.SetNode(topic);
                bool isCheck = false;
                foreach (XmlNode index in website_spacelistnode)
                {
                    pagetopicvisitor.SetNode(index);
                    if (topicvisitor["tid"].ToString() == pagetopicvisitor["tid"].ToString())
                    {
                        isCheck = true;
                        break;
                    }
                }
                forumlist.Text += "<div class='mo' id='m" + i + "' flag='f" + i + "'><h1><input type='checkbox' name='tid' " + (isCheck ? "checked" : "") + " value='" + topicvisitor["tid"] + "'>" + topicvisitor["title"] + "</h1></div>\n";
                i++;
            }
           #endregion
        }

        /// <summary>
        /// 保存信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void SaveTopic_Click(object sender, EventArgs e)
        {
            #region 保存信息
            string tidlist = DNTRequest.GetString("forumtopicstatus");
            //当未选择主题时，则清除所有选择
            if (tidlist == "")
            {
                if (File.Exists(configPath))
                {
                    XmlDocumentExtender doc = new XmlDocumentExtender();
                    doc.Load(configPath);
                    doc.RemoveNodeAndChildNode("/Aggregationinfo/Data/Hottopiclist");
                    doc.RemoveNodeAndChildNode("/Aggregationinfo/Forum/Hottopiclist");
                    doc.Save(configPath);
                    Discuz.Cache.DNTCache.GetCacheService().RemoveObject("/Aggregation/Hottopiclist");
                }
                Response.Redirect("aggregation_forumhottopic.aspx");
                return;
            }
            else
            {
                //得到所选择帖子信息
                Posts.WriteAggregationHotTopicsData(tidlist, configPath,
                    "/Aggregationinfo/Data/Hottopiclist",
                    "/Aggregationinfo/Forum/Hottopiclist");
                Discuz.Cache.DNTCache.GetCacheService().RemoveObject("/Aggregation/Hottopiclist");
                Response.Redirect("aggregation_edithottopic.aspx");
            }
            #endregion
        }

        /// <summary>
        /// 保存主题显示
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        //protected void SaveTopicDisplay_Click(object sender, EventArgs e)
        //{
        //    #region 保存主题显示
        //    XmlDocumentExtender doc = new XmlDocumentExtender();
        //    doc.Load(configPath);
        //    //doc.RemoveNodeAndChildNode("/Aggregationinfo/Aggregationpage/Website/Forum/Bbs");
        //    doc.InitializeNode("/Aggregationinfo/Aggregationpage/Website/Forum");

        //    XmlElement BBS = doc.CreateElement("Bbs");
        //    doc.SelectSingleNode("/Aggregationinfo/Aggregationpage/Website/Forum").AppendChild(BBS);
        //    doc.Save(configPath);
        //    #endregion
        //}

        #region Web 窗体设计器生成的代码

        protected override void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent()
        {
            this.SaveTopic.Click += new EventHandler(this.SaveTopic_Click);
            this.SaveTopic.ValidateForm = true;
            configPath = Server.MapPath(BaseConfigs.GetForumPath + "config/agg_hottopics.config");
        }

        #endregion

    }
}