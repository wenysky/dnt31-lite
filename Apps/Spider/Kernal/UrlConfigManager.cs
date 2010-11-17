using System;
using System.Collections.Generic;
using System.Text;
using Entity;
using System.Xml;
using System.Web;

namespace Kernal
{
    public class UrlConfigManager
    {
        private string str_path = HttpContext.Current.Server.MapPath("/plugin/Spinder/Spinder_web/URLConfig.xml");//string.Empty;
        private string str_format = "/URLConfig/Site[@Name='{0}' and @Url='{1}' and @Channel='{2}' and @Charset='{3}']";
        private XmlDocument xmldoc = null;
        private XmlNode root = null;


        public UrlConfigManager()
        {
            //this.str_path = str_path;
            xmldoc = new XmlDocument();

            xmldoc.Load(str_path);
            // 获取根结点
            root = xmldoc.SelectSingleNode("/URLConfig");
        }

        /// <summary>
        /// 更新配置文件
        /// </summary>
        /// <param name="urlconfig"></param>
        /// <param name="str_path"></param>
        public bool UpdateURLConfig(URLConfig urlconfig)
        {
            bool flag = false;
            try
            {

                if (CheckOperation(urlconfig).ToString() == "EDIT")
                {
                    flag = RemoveChild(urlconfig);

                    if (flag)
                        return flag;
                }

                #region 添加配置文件
                XmlElement xe;
                // 根结点
                XmlElement xep = xmldoc.CreateElement("Site");
                xep.SetAttribute("Name", urlconfig.Site);
                xep.SetAttribute("Url", urlconfig.SiteUrl);
                xep.SetAttribute("Channel", urlconfig.Channel);
                xep.SetAttribute("Charset", urlconfig.Charset);

                // 代理服务器设置的节点
                // 标题结点
                xe = xmldoc.CreateElement("Proxy");
                xe.SetAttribute("IP", urlconfig.Proxy);
                xe.SetAttribute("Port", urlconfig.Port);
                xep.AppendChild(xe);

                // 列表节点
                xe = xmldoc.CreateElement("List");
                xe.SetAttribute("Format", urlconfig.ListFormat);
                xe.SetAttribute("StartPageNo", urlconfig.StartPageNo);
                xe.SetAttribute("EndPageNo", urlconfig.EndPageNo);
                xe.SetAttribute("Pattern", urlconfig.ListContent);
                xe.SetAttribute("Replace", urlconfig.ListContentReplace);
                xe.SetAttribute("DetailLink", urlconfig.DetailLink);
                xe.SetAttribute("ListStep", urlconfig.ListStep);
                xep.AppendChild(xe);
                //列表下一页节点
                xe = xmldoc.CreateElement("ListNextPage");
                xe.SetAttribute("Pattern", urlconfig.ListNextPage);
                xe.SetAttribute("Replace", urlconfig.ListNextPageReplace);
                xep.AppendChild(xe);

                // 标题结点
                xe = xmldoc.CreateElement("Title");
                xe.SetAttribute("Pattern", urlconfig.TitleDetail);
                xe.SetAttribute("Replace", urlconfig.TitleDetailReplace);
                xep.AppendChild(xe);

                // 作者节点
                xe = xmldoc.CreateElement("Author");
                xe.SetAttribute("Pattern", urlconfig.AuthorDetail);
                xe.SetAttribute("Replace", urlconfig.AuthorDetailReplace);
                xep.AppendChild(xe);

                // 发表日期节点
                xe = xmldoc.CreateElement("Date");
                xe.SetAttribute("Pattern", urlconfig.DateDetail);
                xe.SetAttribute("Replace", urlconfig.DateDetailReplace);
                xep.AppendChild(xe);

                // 内容节点
                xe = xmldoc.CreateElement("Content");
                xe.SetAttribute("Pattern", urlconfig.ContentDetail);
                xe.SetAttribute("Replace", urlconfig.ContentDetailReplace);
                xep.AppendChild(xe);

                // 内容分页列表节点
                xe = xmldoc.CreateElement("ContentList");
                xe.SetAttribute("Pattern", urlconfig.ContentList);
                xe.SetAttribute("Replace", urlconfig.ContentListReplace);
                xep.AppendChild(xe);

                // Tag节点
                xe = xmldoc.CreateElement("Tag");
                xe.SetAttribute("Pattern", urlconfig.TagDetail);
                xe.SetAttribute("Replace", urlconfig.TagDetailReplace);
                xep.AppendChild(xe);

                // 抓取配置节点
                xe = xmldoc.CreateElement("Snatch");
                xe.SetAttribute("SnatchDate", urlconfig.SnatchDate);
                xe.SetAttribute("SnatchInterval", urlconfig.SnatchInterval);
                xe.SetAttribute("SnatchFrequency", urlconfig.SnatchFrequency);
                xep.AppendChild(xe);

                root.AppendChild(xep);

                xmldoc.Save(str_path);
                #endregion
            }
            catch (Exception ex)
            {
                return false;
            }

            return true;
        }


        /// <summary>
        /// 返回配置文件的信息
        /// </summary>
        /// <returns></returns>
        public IList<URLConfig> GetUrlConfig()
        {
            IList<URLConfig> _configlist = new List<URLConfig>();

            XmlNodeList xnl = xmldoc.SelectSingleNode("/URLConfig").ChildNodes;

            foreach (XmlNode xnf in xnl)
            {
                URLConfig _urlconfig = new URLConfig();

                _urlconfig.Site = Decode(xnf.Attributes["Name"].Value);
                _urlconfig.SiteUrl = Decode(xnf.Attributes["Url"].Value);
                _urlconfig.Channel = Decode(xnf.Attributes["Channel"].Value);
                _urlconfig.Charset = Decode(xnf.Attributes["Charset"].Value);

                XmlElement xe = (XmlElement)xnf;

                XmlNodeList xnf1 = xe.ChildNodes;
                foreach (XmlNode xn2 in xnf1)
                {
                    switch (xn2.Name)
                    {
                        case "Proxy":
                            _urlconfig.Proxy = Decode(xn2.Attributes["IP"].Value);
                            _urlconfig.Port = Decode(xn2.Attributes["Port"].Value);
                            break;
                        case "List":
                            _urlconfig.ListFormat = Decode(xn2.Attributes["Format"].Value);
                            _urlconfig.StartPageNo = Decode(xn2.Attributes["StartPageNo"].Value);
                            _urlconfig.EndPageNo = Decode(xn2.Attributes["EndPageNo"].Value);
                            _urlconfig.ListContent = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.ListContentReplace = Decode(xn2.Attributes["Replace"].Value);
                            _urlconfig.DetailLink = Decode(xn2.Attributes["DetailLink"].Value);
                            _urlconfig.ListStep = Decode(xn2.Attributes["ListStep"].Value);
                            break;
                        case "ListNextPage":
                            _urlconfig.ListNextPage = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.ListNextPageReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Title":
                            _urlconfig.TitleDetail = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.TitleDetailReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Author":
                            _urlconfig.AuthorDetail = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.AuthorDetailReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Date":
                            _urlconfig.DateDetail = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.DateDetailReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Content":
                            _urlconfig.ContentDetail = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.ContentDetailReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "ContentList":
                            _urlconfig.ContentList = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.ContentListReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Tag":
                            _urlconfig.TagDetail = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.TagDetailReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Snatch":
                            _urlconfig.SnatchDate = Decode(xn2.Attributes["SnatchDate"].Value);
                            _urlconfig.SnatchInterval = Decode(xn2.Attributes["SnatchInterval"].Value);
                            _urlconfig.SnatchFrequency = Decode(xn2.Attributes["SnatchFrequency"].Value);
                            break;
                    }
                }

                _configlist.Add(_urlconfig);
            }


            return _configlist;
        }

        public URLConfig GetOneUrlConfig()
        {
            URLConfig _urlconfig = new URLConfig();

            XmlNodeList xnl = xmldoc.SelectSingleNode("/URLConfig").ChildNodes;

            foreach (XmlNode xnf in xnl)
            {
                _urlconfig.Site = Decode(xnf.Attributes["Name"].Value);
                _urlconfig.SiteUrl = Decode(xnf.Attributes["Url"].Value);
                _urlconfig.Channel = Decode(xnf.Attributes["Channel"].Value);
                _urlconfig.Charset = Decode(xnf.Attributes["Charset"].Value);

                XmlElement xe = (XmlElement)xnf;

                XmlNodeList xnf1 = xe.ChildNodes;
                foreach (XmlNode xn2 in xnf1)
                {
                    switch (xn2.Name)
                    {
                        case "Proxy":
                            _urlconfig.Proxy = Decode(xn2.Attributes["IP"].Value);
                            _urlconfig.Port = Decode(xn2.Attributes["Port"].Value);
                            break;
                        case "List":
                            _urlconfig.ListFormat = Decode(xn2.Attributes["Format"].Value);
                            _urlconfig.StartPageNo = Decode(xn2.Attributes["StartPageNo"].Value);
                            _urlconfig.EndPageNo = Decode(xn2.Attributes["EndPageNo"].Value);
                            _urlconfig.ListContent = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.ListContentReplace = Decode(xn2.Attributes["Replace"].Value);
                            _urlconfig.DetailLink = Decode(xn2.Attributes["DetailLink"].Value);
                            _urlconfig.ListStep = Decode(xn2.Attributes["ListStep"].Value);
                            break;
                        case "ListNextPage":
                            _urlconfig.ListNextPage = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.ListNextPageReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Title":
                            _urlconfig.TitleDetail = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.TitleDetailReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Author":
                            _urlconfig.AuthorDetail = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.AuthorDetailReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Date":
                            _urlconfig.DateDetail = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.DateDetailReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Content":
                            _urlconfig.ContentDetail = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.ContentDetailReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "ContentList":
                            _urlconfig.ContentList = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.ContentListReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Tag":
                            _urlconfig.TagDetail = Decode(xn2.Attributes["Pattern"].Value);
                            _urlconfig.TagDetailReplace = Decode(xn2.Attributes["Replace"].Value);
                            break;
                        case "Snatch":
                            _urlconfig.SnatchDate = Decode(xn2.Attributes["SnatchDate"].Value);
                            _urlconfig.SnatchInterval = Decode(xn2.Attributes["SnatchInterval"].Value);
                            _urlconfig.SnatchFrequency = Decode(xn2.Attributes["SnatchFrequency"].Value);
                            break;
                    }
                }
            }


            return _urlconfig;
        }

        public string Decode(string str)
        {
            str = str.Replace("<br>", "\n");
            str = str.Replace("&amp;", "&");
            str = str.Replace("&gt;", ">");
            str = str.Replace("&lt;", "<");
            //str = str.Replace("&nbsp;", " ");
            str = str.Replace("&quot;", "\"");

            return str;
        }

        /// <summary>
        /// 根据现有的ulrconfig对象来判断操作类型。存在就表示编辑，否则即添加
        /// </summary>
        /// <param name="urlconfig"></param>
        /// <returns></returns>
        public Operation CheckOperation(URLConfig urlconfig)
        {
            
            string xpath = string.Format(str_format, urlconfig.Site, urlconfig.SiteUrl, urlconfig.Channel, urlconfig.Charset);

            XmlNode xn = xmldoc.SelectSingleNode(xpath);

            if (xn is XmlNode)
            {
                return Operation.EDIT;
            }

            return Operation.ADD;
        }

        /// <summary>
        /// 删除指定的节点
        /// </summary>
        /// <param name="urlconfig"></param>
        /// <returns></returns>
        public bool RemoveChild(URLConfig urlconfig)
        {
            bool flag = false;

            try
            {
                string xpath = string.Format(str_format, urlconfig.Site, urlconfig.SiteUrl, urlconfig.Channel, urlconfig.Charset);
                XmlNode xn = xmldoc.SelectSingleNode(xpath);

                root.RemoveChild(xn);

                flag = true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return flag;
        }

        /// <summary>
        /// 删除指定的节点
        /// </summary>
        /// <param name="urlconfig"></param>
        /// <returns></returns>
        public bool RemoveChildNode(URLConfig urlconfig)
        {
            bool flag = false;

            try
            {
                string xpath = string.Format(str_format, urlconfig.Site, urlconfig.SiteUrl, urlconfig.Channel, urlconfig.Charset);
                XmlNode xn = xmldoc.SelectSingleNode(xpath);

                root.RemoveChild(xn);
                xmldoc.Save(str_path);
                flag = true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return flag;
        }

    }

    /// <summary>
    /// 操作枚举类型
    /// </summary>
    public enum Operation
    {
        ADD = 1,
        EDIT,
        DELETE,
        SELECT
    }
}
