using System;
using System.Collections.Generic;
using System.Text;
using Discuz.Entity;

namespace Wysky.Plugin.Devtask
{
    public class DevtaskTopicInfo : TopicInfo
    {
        public int Status { get; set; }
        public int Taskuserid { get; set; }
        public DateTime Statuschangedate { get; set; }
        public string Pdstatus { get; set; }
        public string Rdstatus { get; set; }
        public string Uedstatus { get; set; }
        public string Qastatus { get; set; }
    }
}
