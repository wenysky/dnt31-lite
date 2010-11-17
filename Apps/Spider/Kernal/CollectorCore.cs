using System;
using System.Collections.Generic;
using System.Text;
using Entity;
using System.ComponentModel;
using System.IO;
using System.Threading;
using System.Xml.Serialization;
using System.Web;
using OTC.Utility;
using System.Text.RegularExpressions;


namespace Kernal
{
    public sealed class CollectorCore
    {
        IList<URLConfig> _configlist = null;
        private HttpClient hc;
        //private string __root = HttpContext.Current.Server.MapPath("~/plugin/Spinder/Spinder_WEB/");//string.Empty;
        private string str_path = string.Empty;
        IList<Entity.Entity> _lkelist = new List<Entity.Entity>();
        private int _totalnumber = 0;
        private StringBuilder sb = null;

        public CollectorCore(string root)
        {
            hc = new HttpClient();
            sb = new StringBuilder();
            //UrlConfigManager ucm = new UrlConfigManager(__root);
            UrlConfigManager ucm = new UrlConfigManager();
            _configlist = ucm.GetUrlConfig();
        }

        public CollectorCore()
        {
            hc = new HttpClient();
            sb = new StringBuilder();
            //UrlConfigManager ucm = new UrlConfigManager(__root);
            UrlConfigManager ucm = new UrlConfigManager();
            _configlist = ucm.GetUrlConfig();
            
        }


        /// <summary>
        /// 采集数据
        /// </summary>
        /// <param name="_configlist"></param>
        /// <returns></returns>
        //public IList<Entity.Entity> CollectingData(IList<URLConfig> _configlist)
        public IList<Entity.Entity> CollectingData()
        {
            string str_content = string.Empty;
            string str_path = string.Empty;
            int startindex = 0;
            int endindex = 0;
            int step = 1;
            int total = 0;//总共需要循环的次数
            int indexurl = 1;
            string str_url = string.Empty;
            string str_listnextpageurl = string.Empty;//列表下一页的连接地址
            bool haslistnextpage = true;

            if (!File.Exists(HttpContext.Current.Server.MapPath("Log.txt")))
            {
                File.Create(HttpContext.Current.Server.MapPath("Log.txt"));
            }

            string __path = HttpContext.Current.Server.MapPath("Log.txt");

            //记录成功日志
            File.AppendAllText(__path, "\r\n---------------------------【蜘蛛】开始运行 Execute time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "------------------------------------------\r\n");

            #region 循环抓取
            foreach (URLConfig urlconfig in _configlist)
            {
                try 
                {
                    startindex = Convert.ToInt32(urlconfig.StartPageNo);
                    endindex = Convert.ToInt32(urlconfig.EndPageNo);
                    step = Convert.ToInt32(urlconfig.ListStep);

                    total = _configlist.Count;

                    // 设置代理，如果为“127.0.0.1”，则不使用
                    if (!string.IsNullOrEmpty(urlconfig.Proxy) && !string.IsNullOrEmpty(urlconfig.Port))
                    {
                        hc.ProxyAddress = urlconfig.Proxy;
                        hc.Port = Convert.ToInt32(urlconfig.Port);
                    }

                    #region 列表页抓取
                    while (startindex <= endindex)
                    {
                        //如果是不规则的列表页，那么只能一页一页的获取数据
                        if (urlconfig.ListFormat.IndexOf("{0}") != -1)
                        {
                            str_url = urlconfig.SiteUrl + string.Format(urlconfig.ListFormat, startindex);
                        }
                        else
                        {
                            str_url = urlconfig.SiteUrl + urlconfig.ListFormat;
                        }

                        while (haslistnextpage)
                        {
                            #region haslistnextpage
                            hc.GetSrc(str_url, urlconfig.Charset, out str_content);

                            // 获取列表下一页的连接地址
                            if (!string.IsNullOrEmpty(urlconfig.ListNextPage))
                            {
                                str_listnextpageurl = ParserHtml(str_content, urlconfig.ListNextPage, urlconfig.ListNextPageReplace);

                                if (!string.IsNullOrEmpty(str_listnextpageurl))
                                {
                                    str_url = urlconfig.SiteUrl + str_listnextpageurl;
                                    haslistnextpage = true;
                                }
                                else
                                { 
                                    haslistnextpage = false; 
                                }
                            }
                            else
                            {
                                haslistnextpage = false;
                            }


                            //获取list内容
                            if (!string.IsNullOrEmpty(urlconfig.ListContent))
                            {
                                str_content = ParserHtml(str_content, urlconfig.ListContent, urlconfig.ListContentReplace);
                            }

                            //获取list页的详细页连接数组
                            string[] str_arr = RegExpHelper.GetMatchDictionary(str_content, urlconfig.DetailLink);

                            if (str_arr == null)
                            {
                                File.AppendAllText(__path, "Execute time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "Error:分析list页的详细连接数组出错！---列表地址：" + str_url + "------\r\n");
                                return _lkelist;
                            }

                            #region 循环获取详细页的内容
                            //循环获取详细页的内容
                            int urlindex = 1;
                            foreach (string url in str_arr)
                            {
                                string cur_url =RegExpHelper.GetMatchDictionary(url, @">([\w|\w\s|\w\W]+/archive/\d{4}/\d{2}/\d{2}/.*?.html)<")[0].Replace("<","").Replace(">","").Trim();

                                //if (!cur_url.Trim().StartsWith("/"))
                                //{
                                //    cur_url = "/" + cur_url;
                                //}

                                hc.GetSrc(urlconfig.SiteUrl + cur_url, urlconfig.Charset, out str_content);

                                Entity.Entity lke = new Entity.Entity();
                                lke.Source = urlconfig.Site;
                                lke.Channel = urlconfig.Channel;
                                lke.Url = urlconfig.SiteUrl + cur_url; //urlconfig.SiteUrl;
                                lke.Snaptime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

                                //获取详细页的标题
                                if (!string.IsNullOrEmpty(urlconfig.TitleDetail))
                                    lke.Title = ParserHtml(str_content, urlconfig.TitleDetail, urlconfig.TitleDetailReplace);

                                //获取详细页的作者
                                if (!string.IsNullOrEmpty(urlconfig.AuthorDetail))
                                    lke.Author = ParserHtml(str_content, urlconfig.AuthorDetail, urlconfig.AuthorDetailReplace);

                                //获取详细页的时间
                                if (!string.IsNullOrEmpty(urlconfig.DateDetail))
                                    lke.Inputdate = ParserHtml(str_content, urlconfig.DateDetail, urlconfig.DateDetailReplace);

                                //获取详细页的Tag
                                if (!string.IsNullOrEmpty(urlconfig.TagDetail))
                                {
                                    lke.Tags = string.Empty;
                                    string[] str_arrtag = RegExpHelper.GetMatchDictionary(str_content, urlconfig.TagDetail);
                                    if (str_arrtag != null)
                                    {
                                        lke.Tags = StringUtil.NoHTML(StringUtil.JoinArray<string>(str_arrtag, "|", ""));
                                    }
                                }

                                //获取详细页的内容
                                if (!string.IsNullOrEmpty(urlconfig.ContentDetail))
                                {
                                    lke.Content = RegExpHelper.GetMatchDictionary(str_content, urlconfig.ContentDetail)[0];
                                    //if (urlconfig.Site.Contains("博客园"))
                                    //{
                                    //    string posttitle = RegExpHelper.GetMatchDictionary(lke.Content, "(<a id=[\\w\\W]+ class=\"postTitle2\" href=(?<url>.+?)>(?<content>.+?)</a>)>")[0];
                                    //    lke.Content = lke.Content.Remove(lke.Content.IndexOf(posttitle), posttitle.Length);
                                    //    //if (str_content.Contains("EntryTag"))
                                    //    //    lke.Content = ParserHtml(str_content, "<div class = \"postTitle\">|<div class=\"postTitle\">([\\w\\W]+)<div id=\"EntryTag\">|<div id = \"EntryTag\">", "");
                                    //    //else
                                    //    //    lke.Content = ParserHtml(str_content, " <div class = \"postDesc\">|<div class=\"postDesc\">([\\w\\W]+阅读([\\d]+))阅读([\\d]+)", "");

                                    //    //lke.Content = ParserHtml(str_content, urlconfig.ContentDetail, urlconfig.ContentDetailReplace).Trim();
                                    //}
                                    //else
                                    //{
                                    //    lke.Content = ParserHtml(str_content, urlconfig.ContentDetail, urlconfig.ContentDetailReplace).Trim();
                                    //}

                                }
                                //获取详细页的分页列表
                                if (!string.IsNullOrEmpty(urlconfig.ContentList))
                                {
                                    //string[] str_arrcontent = RegExpHelper.GetMatchDictionary(str_content, urlconfig.ContentList);
                                    IList<string> _urllist = RegExpHelper.GetMatchDic(str_content, urlconfig.ContentList);
                                    int __index = 1;

                                    if (_urllist.Count > 0)
                                    {
                                        try
                                        {

                                            //记录成功日志
                                            File.AppendAllText(__path, "Execute time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "///////////////////--进入详细页面列表页--///////////////////////\r\n");

                                            #region 循环获取详细页的分页列表的内容
                                            foreach (string _listurl in _urllist)
                                            {
                                                hc.GetSrc(urlconfig.SiteUrl + _listurl, urlconfig.Charset, out str_content);

                                                sb.Append("<!-- Next Page Start -->");
                                                sb.Append(ParserHtml(str_content, urlconfig.ContentDetail, urlconfig.ContentDetailReplace));
                                                sb.Append("<!-- Next Page End -->");

                                                //记录成功日志
                                                File.AppendAllText(__path, "Execute time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "-----Successful Url:" + url + "---成功列表地址：" + _listurl + "\r\n");

                                                __index++;
                                                Thread.Sleep(int.Parse(urlconfig.SnatchInterval));
                                            }
                                            #endregion

                                            // 将下面的所有列表页内容合并
                                            if (!string.IsNullOrEmpty(sb.ToString()))
                                                lke.Content += sb.ToString();
                                            File.AppendAllText(__path, "Execute time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "///////////////////--退出详细页面列表页--///////////////////////\r\n");
                                        }
                                        catch (Exception ex)
                                        {
                                            File.AppendAllText(__path, "Execute time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "Error:抓取详细页列表的详细连接数组出错！---------------------------\r\n");
                                            File.AppendAllText(__path, @"\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Error:" + ex.StackTrace + "\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\r\n");
                                        }
                                    }
                                }

                                _lkelist.Add(lke);

                                //记录成功日志
                                File.AppendAllText(__path, "Execute time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "-----Successful Url:" + cur_url + "---成功列表地址：" + str_url + "\r\n");

                                Thread.Sleep(int.Parse(urlconfig.SnatchInterval));
                                urlindex++;
                                _totalnumber++;//记录采集的条数

                            }
                            #endregion

                           

                            #region 序列化xml 提供采集样本内容
                            if (indexurl == 1)
                            {
                                string cur_date = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString();
                                
                                if (!Directory.Exists(HttpContext.Current.Server.MapPath(cur_date)))
                                {
                                    Directory.CreateDirectory(HttpContext.Current.Server.MapPath(cur_date));
                                }

                                str_path = HttpContext.Current.Server.MapPath(cur_date + "/"+ cur_date +"XmlData.xml");

                                XmlSerializer xs = new XmlSerializer(_lkelist.GetType());

                                //Stream stream = new FileStream(str_path, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                                //_lkelist = (Entity.Entity)xs.Deserialize(stream);
                                //_lkelist.Add(entity);

                                try
                                {
                                    
                                    StreamWriter sw = new StreamWriter(str_path);
                                    xs.Serialize(sw, _lkelist);
                                    sw.Close();
                                    //记录成功日志
                                    File.AppendAllText(__path, "\r\n---------------------------【蜘蛛】 序列化成功，Execute time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "--------------\r\n");
                                    File.AppendAllText(__path, "//////////////////////查看xml文件地址：" + str_path + "///////////////////\r\n");
                                }
                                catch (Exception ex)
                                {
                                    //记录成功日志
                                    File.AppendAllText(__path, "\r\n---------------------------【蜘蛛】 序列化失败，Execute time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "---------------------------------------\r\n");
                                    throw new Exception(ex.Message);
                                }
                            }
                            #endregion
                            //_lkelist.Clear();//清楚所有的项

                            //记录目前成功采集数据
                            File.AppendAllText(__path, "\r\n////////////////////////////////--------【蜘蛛】 目前成功采集了[" + _totalnumber + "]条数据--------///////////////////////////////////////\r\n");

                            #endregion
                        }

                        startindex += step;
                      
                    }
                    indexurl++;
                  
                }
                catch(Exception ex)
                {
                    File.AppendAllText(__path, "Execute time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "Error:" + ex.Message + "----Error Url" + str_url + "\r\n");
                    File.AppendAllText(__path, "========================================Error Info==================================\r\n");
                    File.AppendAllText(__path, "Error Info " + ex.StackTrace + "\r\n");
                    File.AppendAllText(__path, "========================================Error Info==================================\r\n");
                }
                    #endregion
            }

            //记录成功日志
            File.AppendAllText(__path, "\r\n////////////////////////////////--------【蜘蛛】 最终成功采集了[" + _totalnumber + "]条数据--------///////////////////////////////////////\r\n");
            File.AppendAllText(__path, "\r\n---------------------------【蜘蛛】 停止运行 Stop time:" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "------------------------------------------\r\n");

            return _lkelist;
            #endregion
        }

        /// <summary>
        /// 转换处理的字符串
        /// </summary>
        /// <param name="str_content"></param>
        /// <param name="str_pattern"></param>
        /// <param name="str_replace"></param>
        /// <returns></returns>
        private string ParserHtml(string str_content, string str_pattern, string str_replace)
        {

            return RegExpHelper.Replace(str_content, str_pattern, str_replace);

            //return Regex.Replace(str_content, str_pattern, str_replace);
        }
     
    }
}
