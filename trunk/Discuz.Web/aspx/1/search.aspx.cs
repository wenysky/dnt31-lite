using System;
using System.Data;
using System.Data.SqlClient;
using Discuz.Common;
using Discuz.Forum;
using Discuz.Web.UI;
using Discuz.Entity;

namespace Discuz.Web
{
    /// <summary>
    /// 搜索页面
    /// </summary>
    public class search : PageBase
    {
        #region 页面变量
        /// <summary>
        /// 搜索缓存Id
        /// </summary>
        public int searchid = DNTRequest.GetInt("searchid", -1);
        /// <summary>
        /// 当前页码
        /// </summary>
        public int pageid = DNTRequest.GetInt("page", 1);
        /// <summary>
        /// 主题数量
        /// </summary>
        public int topiccount;
        /// <summary>
        /// 相册数量
        /// </summary>
        public int albumcount;
        /// <summary>
        /// 日志数量
        /// </summary>
        public int blogcount;
        /// <summary>
        /// 分页数量
        /// </summary>
        public int pagecount;
        /// <summary>
        /// 分页页码链接
        /// </summary>
        public string pagenumbers;
        /// <summary>
        /// 搜索结果数量
        /// </summary>
        public int searchresultcount = 0;
        /// <summary>
        /// 搜索出的主题列表
        /// </summary>
        public DataTable topiclist;
        /// <summary>
        /// 帖子分表列表
        /// </summary>
        public DataTable tablelist;
        /// <summary>
        /// 搜索出的日志列表
        /// </summary>
        public DataTable spacepostlist;
        /// <summary>
        /// 搜索出的相册列表
        /// </summary>
        public DataTable albumlist;
        /// <summary>
        /// 当此值为true时,显示搜索结果提示
        /// </summary>
        public bool searchpost = false;
        /// <summary>
        /// 搜索类型
        /// </summary>
        public string type = "post";
        /// <summary>
        /// 当前主题页码
        /// </summary>
        public int topicpageid = DNTRequest.GetInt("topicpage", 1);
        /// <summary>
        /// 主题分页总数
        /// </summary>
        public int topicpagecount;
        /// <summary>
        /// 主题分页页码链接
        /// </summary>
        public string topicpagenumbers;
        /// <summary>
        /// 当前日志分页页码
        /// </summary>
        public int blogpageid = DNTRequest.GetInt("blogpage", 1);
        /// <summary>
        /// 日志分页总数
        /// </summary>
        public int blogpagecount;
        /// <summary>
        /// 日志分页页码链接
        /// </summary>
        public string blogpagenumbers;
        /// <summary>
        /// 当前相册页码
        /// </summary>
        public int albumpageid = DNTRequest.GetInt("albumpage", 1);
        /// <summary>
        /// 相册分页总数
        /// </summary>
        public int albumpagecount;
        /// <summary>
        /// 相册分页页码链接
        /// </summary>
        public string albumpagenumbers;
        /// <summary>
        /// 
        /// </summary>
        string msg = "";
        #endregion

        protected override void ShowPage()
        {
            pagetitle = "搜索";

            if (!UserAuthority.Search(usergroupinfo, ref msg))
            {
                AddErrLine(msg);
                return;
            }

            if (!ispost)
                tablelist = Posts.GetAllPostTableName();

            int posttableid = DNTRequest.GetInt("posttableid", 0);

            if (DNTRequest.IsPost() || !Utils.StrIsNullOrEmpty(DNTRequest.GetString("posterid")))
            {
                searchpost = true;
                if (!UserAuthority.Search(userid, lastsearchtime, useradminid, usergroupinfo, ref msg))
                {
                    AddErrLine(msg);
                    return;
                }

                string searchforumid = DNTRequest.GetString("searchforumid").Trim();
                int posterid = CheckSearchInfo(searchforumid);
                if (IsErr()) return;

                type = DNTRequest.GetString("type").ToLower();
                int keywordtype = (type == "author" ? 8 : DNTRequest.GetInt("keywordtype", 0));

                if (Utils.StrIsNullOrEmpty(DNTRequest.GetString("keyword")) && posterid > 0 && Utils.StrIsNullOrEmpty(type))
                {
                    type = "author";
                    keywordtype = 8;
                }

                if (type != "" && !Utils.InArray(type, "post,digest,spacepost,album,author"))
                {
                    AddErrLine("非法的参数信息");
                    return;
                }

                switch (keywordtype)
                {
                    case 2: 
                        type = "spacepost"; 
                        break;
                    case 3: 
                        type = "album"; 
                        break;
                    case 8: 
                        type = "author"; 
                        break;
                    //default: type = ""; break;
                }

                searchid = Searches.Search(posttableid, userid, usergroupid, DNTRequest.GetString("keyword").Trim(), posterid, type, searchforumid, keywordtype, DNTRequest.GetInt("searchtime", 0), DNTRequest.GetInt("searchtimetype", 0), DNTRequest.GetInt("resultorder", 0), DNTRequest.GetInt("resultordertype", 0));
                if (searchid > 0)
                {
                    SetUrl("search.aspx?type=" + type + "&searchid=" + searchid);
                    SetMetaRefresh();
                    SetShowBackLink(false);
                    MsgForward("search_succeed");
                    AddMsgLine("搜索完毕, 稍后将转到搜索结果页面");
                }
                else
                    AddErrLine("抱歉, 没有搜索到符合要求的记录");
            }
            else
            {
                if (searchid > 0)
                {
                    type = DNTRequest.GetString("type").ToLower();
                    if (type != "" && !Utils.InArray(type, "topic,post,spacepost,album,author,digest"))
                    {
                        AddErrLine("非法的参数信息");
                        return;
                    }

                    switch (type)
                    {
                        case "spacepost":
                            spacepostlist = Searches.GetSearchCacheList(posttableid, searchid, 16, pageid, out topiccount, type);
                            break;
                        case "album":
                            albumlist = Searches.GetSearchCacheList(posttableid, searchid, 16, pageid, out topiccount, type);
                            break;
                        case "author":
                            spacepostlist = Searches.GetSearchCacheList(posttableid, searchid, 16, blogpageid, out blogcount, "spacepost");
                            albumlist = Searches.GetSearchCacheList(posttableid, searchid, 16, albumpageid, out albumcount, "album");
                            topiclist = Searches.GetSearchCacheList(posttableid, searchid, 16, topicpageid, out topiccount, "");

                            blogpageid = CalculateCurrentPage(blogcount, blogpageid, out blogpagecount);
                            albumpageid = CalculateCurrentPage(albumcount, albumpageid, out albumpagecount);
                            topicpageid = CalculateCurrentPage(topiccount, topicpageid, out topicpagecount);

                            topicpagenumbers = Utils.GetPageNumbers(topicpageid, topicpagecount, "search.aspx?show=topic&type=" + type + "&searchid=" + searchid.ToString() + "&blogpage=" + blogpageid.ToString() + "&albumpage=" + albumpageid.ToString(), 8, "topicpage", "#1");
                            albumpagenumbers = Utils.GetPageNumbers(albumpageid, albumpagecount, "search.aspx?show=album&type=" + type + "&searchid=" + searchid.ToString() + "&blogpage=" + blogpageid.ToString() + "&topicpage=" + topicpageid.ToString(), 8, "albumpage", "#3");
                            blogpagenumbers = Utils.GetPageNumbers(blogpageid, blogpagecount, "search.aspx?show=blog&type=" + type + "&searchid=" + searchid.ToString() + "&topicpage=" + topicpageid.ToString() + "&albumpage=" + albumpageid.ToString(), 8, "blogpage", "#2");
                            return;
                        default: 
                            type = "";
                            topiclist = Searches.GetSearchCacheList(posttableid, searchid, 16, pageid, out topiccount, type);
                            break;
                    }

                    if (topiccount == 0)
                    {
                        AddErrLine("不存在的searchid");
                        return;
                    }
                    CalculateCurrentPage();
                    //得到页码链接
                    pagenumbers = Utils.GetPageNumbers(pageid, pagecount, "search.aspx?type=" + type + "&searchid=" + searchid.ToString(), 8);
                }
            }
        }

        /// <summary>
        /// 分页信息
        /// </summary>
        private void CalculateCurrentPage()
        {
            //获取总页数
            pagecount = topiccount % 16 == 0 ? topiccount / 16 : topiccount / 16 + 1;
            pagecount = (pagecount == 0 ? 1 : pagecount);
            //修正请求页数中可能的错误
            pageid = (pageid < 1 ? 1 : pageid);
            pageid = (pageid > pagecount ? pagecount : pageid);
        }

        /// <summary>
        /// 分页信息
        /// </summary>
        private int CalculateCurrentPage(int listcount, int pageid, out int pagecount)
        {
            //获取总页数
            pagecount = listcount % 16 == 0 ? listcount / 16 : listcount / 16 + 1;
            pagecount = (pagecount == 0 ? 1 : pagecount);
            //修正请求页数中可能的错误
            pageid = (pageid < 1 ? 1 : pageid);
            pageid = (pageid > pagecount ? pagecount : pageid);
            return pageid;
        }

        private int CheckSearchInfo(string searchforumid)
        {
            int posterid = DNTRequest.GetString("posterid").ToLower().Trim() == "current" ? userid : DNTRequest.GetInt("posterid", -1);
            string[] forumidlist = Utils.SplitString(searchforumid, ",");

            if (Utils.StrIsNullOrEmpty(DNTRequest.GetString("keyword")) && Utils.StrIsNullOrEmpty(DNTRequest.GetString("poster")) && Utils.StrIsNullOrEmpty(DNTRequest.GetString("posterid")))
            {
                AddErrLine("关键字和用户名不能同时为空");
                return posterid;
            }

            if (posterid > 0 && Users.GetShortUserInfo(posterid) == null)
            {
                AddErrLine("指定的用户ID不存在");
                return posterid;
            }
            else if (!Utils.StrIsNullOrEmpty(DNTRequest.GetString("poster")))
            {
                posterid = Users.GetUserId(DNTRequest.GetString("poster"));
                if (posterid == -1)
                {
                    AddErrLine("搜索用户名不存在");
                    return posterid;
                }
            }
            if (!Utils.StrIsNullOrEmpty(searchforumid))
            {
                foreach (string strid in forumidlist)
                {
                    if (!Utils.IsNumeric(strid))
                    {
                        AddErrLine("非法的搜索版块ID");
                        return posterid;
                    }
                }
            }
            return posterid;
        }
    }
}
