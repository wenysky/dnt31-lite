using System;
using System.Collections.Generic;
using System.Text;

namespace Entity
{
    public class Entity
    {
        private string _source = string.Empty;

        /// <summary>
        /// 来源
        /// </summary>
        public string Source
        {
            get { return _source; }
            set { _source = value; }
        }

        private string _url = string.Empty;

        /// <summary>
        /// 来源url
        /// </summary>
        public string Url
        {
            get { return _url; }
            set { _url = value; }
        }


        private string _channel = string.Empty;

        /// <summary>
        /// 频道
        /// </summary>
        public string Channel
        {
            get { return _channel; }
            set { _channel = value; }
        }

        private string _title = string.Empty;

        /// <summary>
        /// 标题
        /// </summary>
        public string Title
        {
            get { return _title; }
            set { _title = value; }
        }

        private string _author = string.Empty;

        /// <summary>
        /// 作者
        /// </summary>
        public string Author
        {
            get { return _author; }
            set { _author = value; }
        }

        /// <summary>
        /// 录入时间
        /// </summary>
        private string _inputdate = string.Empty;

        public string Inputdate
        {
            get { return _inputdate; }
            set { _inputdate = value; }
        }

        private string _content = string.Empty;

        /// <summary>
        /// 内容
        /// </summary>
        public string Content
        {
            get { return _content; }
            set { _content = value; }
        }

        private string _tags = string.Empty;

        /// <summary>
        /// Tags
        /// </summary>
        public string Tags
        {
            get { return _tags; }
            set { _tags = value; }
        }

        private string _snaptime = string.Empty;

        /// <summary>
        /// 抓取时间
        /// </summary>
        public string Snaptime
        {
            get { return _snaptime; }
            set { _snaptime = value; }
        }
    }
}
