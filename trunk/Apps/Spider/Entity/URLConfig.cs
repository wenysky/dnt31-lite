using System;
using System.Collections.Generic;
using System.Text;

namespace Entity
{
    public class URLConfig
    {
        private string _site = string.Empty;

        /// <summary>
        /// 抓取的网站名称
        /// </summary>
        public string Site
        {
            get { return _site; }
            set { _site = value; }
        }
        private string _url = string.Empty;

        /// <summary>
        /// 抓取的网站url
        /// </summary>
        public string SiteUrl
        {
            get { return _url; }
            set { _url = value; }
        }
        private string _channel = string.Empty;

        /// <summary>
        /// 抓取的频道
        /// </summary>
        public string Channel
        {
            get { return _channel; }
            set { _channel = value; }
        }
        private string _charset = string.Empty;

        /// <summary>
        /// 抓取的网站编码，如gb2312、utf-8等
        /// </summary>
        public string Charset
        {
            get { return _charset; }
            set { _charset = value; }
        }

        private string _proxy = string.Empty;

        /// <summary>
        /// 代理服务器地址
        /// </summary>
        public string Proxy
        {
            get { return _proxy; }
            set { _proxy = value; }
        }

        private string _port = string.Empty;

        /// <summary>
        /// 代理服务器端口号
        /// </summary>
        public string Port
        {
            get { return _port; }
            set { _port = value; }
        }

        private string _listformat = string.Empty;

        /// <summary>
        /// 抓取列表格式
        /// </summary>
        public string ListFormat
        {
            get { return _listformat; }
            set { _listformat = value; }
        }

        private string _listnextpage = string.Empty;

        /// <summary>
        /// 抓取列表页下一页正则表达式
        /// </summary>
        public string ListNextPage
        {
            get { return _listnextpage; }
            set { _listnextpage = value; }
        }
        private string _listnextpagereplace = string.Empty;

        /// <summary>
        /// 抓取列表页下一页匹配的组号
        /// </summary>
        public string ListNextPageReplace
        {
            get { return _listnextpagereplace; }
            set { _listnextpagereplace = value; }
        }

        private string _startlist = string.Empty;

        /// <summary>
        /// 抓取开始列表页码
        /// </summary>
        public string StartPageNo
        {
            get { return _startlist; }
            set { _startlist = value; }
        }
        private string _endlist = string.Empty;

        /// <summary>
        /// 抓取结束列表页码
        /// </summary>
        public string EndPageNo
        {
            get { return _endlist; }
            set { _endlist = value; }
        }
        private string _liststep = string.Empty;

        /// <summary>
        /// 抓取列表页码步长。每次循环加的值
        /// </summary>
        public string ListStep
        {
            get { return _liststep; }
            set { _liststep = value; }
        }

        private string _listcontent = string.Empty;

        /// <summary>
        /// 抓取列表页内容正则表达式
        /// </summary>
        public string ListContent
        {
            get { return _listcontent; }
            set { _listcontent = value; }
        }
        private string _listcontentreplace = string.Empty;

        /// <summary>
        /// 抓取列表页内容匹配的组号
        /// </summary>
        public string ListContentReplace
        {
            get { return _listcontentreplace; }
            set { _listcontentreplace = value; }
        }


        private string _detaillink = string.Empty;

        /// <summary>
        /// 抓取详细页连接正则表达式
        /// </summary>
        public string DetailLink
        {
            get { return _detaillink; }
            set { _detaillink = value; }
        }


        private string _titledetail = string.Empty;

        /// <summary>
        /// 抓取详细页标题正则表达式
        /// </summary>
        public string TitleDetail
        {
            get { return _titledetail; }
            set { _titledetail = value; }
        }
        private string _titledetailreplace = string.Empty;

        /// <summary>
        /// 抓取详细页标题匹配的组号
        /// </summary>
        public string TitleDetailReplace
        {
            get { return _titledetailreplace; }
            set { _titledetailreplace = value; }
        }

        private string _authordetail = string.Empty;

        /// <summary>
        /// 抓取详细页作者正则表达式
        /// </summary>
        public string AuthorDetail
        {
            get { return _authordetail; }
            set { _authordetail = value; }
        }

        private string _authordetailreplace = string.Empty;

        /// <summary>
        /// 抓取详细页作者匹配的组号
        /// </summary>
        public string AuthorDetailReplace
        {
            get { return _authordetailreplace; }
            set { _authordetailreplace = value; }
        }
        private string _datedetail = string.Empty;

        /// <summary>
        /// 抓取详细页日期正则表达式
        /// </summary>
        public string DateDetail
        {
            get { return _datedetail; }
            set { _datedetail = value; }
        }
        private string _datedetailreplace = string.Empty;

        /// <summary>
        /// 抓取详细页日期匹配的组号
        /// </summary>
        public string DateDetailReplace
        {
            get { return _datedetailreplace; }
            set { _datedetailreplace = value; }
        }

        private string _contentdetail = string.Empty;

        /// <summary>
        /// 抓取详细页内容正则表达式
        /// </summary>
        public string ContentDetail
        {
            get { return _contentdetail; }
            set { _contentdetail = value; }
        }
        private string _contentdetailreplace = string.Empty;

        /// <summary>
        /// 抓取详细页内容匹配的组号
        /// </summary>
        public string ContentDetailReplace
        {
            get { return _contentdetailreplace; }
            set { _contentdetailreplace = value; }
        }

        private string _contentlist = string.Empty;

        /// <summary>
        /// 抓取内容分页列表的正则表达式
        /// </summary>
        public string ContentList
        {
            get { return _contentlist; }
            set { _contentlist = value; }
        }

        private string _contentlistreplace = string.Empty;

        /// <summary>
        ///  抓取内容分页列表匹配的组号
        /// </summary>
        public string ContentListReplace
        {
            get { return _contentlistreplace; }
            set { _contentlistreplace = value; }
        }


        private string _tagdetail = string.Empty;

        /// <summary>
        /// 抓取详细页Tag正则表达式
        /// </summary>
        public string TagDetail
        {
            get { return _tagdetail; }
            set { _tagdetail = value; }
        }
        private string _tagdetailreplace = string.Empty;

        /// <summary>
        /// 抓取详细页Tag匹配的组号
        /// </summary>
        public string TagDetailReplace
        {
            get { return _tagdetailreplace; }
            set { _tagdetailreplace = value; }
        }


        private string _snatchdate = string.Empty;

        /// <summary>
        /// 抓取的最新时间
        /// </summary>
        public string SnatchDate
        {
            get { return _snatchdate; }
            set { _snatchdate = value; }
        }
        private string _snatchinterval = string.Empty;

        /// <summary>
        /// 抓取的时间间隔
        /// </summary>
        public string SnatchInterval
        {
            get { return _snatchinterval; }
            set { _snatchinterval = value; }
        }
        private string _snatchfrequency = string.Empty;

        /// <summary>
        /// 抓取的频率
        /// </summary>
        public string SnatchFrequency
        {
            get { return _snatchfrequency; }
            set { _snatchfrequency = value; }
        }
    }
}
