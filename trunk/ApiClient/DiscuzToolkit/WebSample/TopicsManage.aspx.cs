using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSampleHelper;

namespace Discuz.Toolkit.WebSample
{
    public partial class TopicsManage : System.Web.UI.Page
    {
        public string title = "";
        public string message = "";
        public string fid = "";
        public string icon_id = "";
        public string tags = "";
        public string uid = "";
        public string tid = "";
        public string type_id = "";
        DiscuzSession ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            ds = DiscuzSessionHelper.GetSession();
            try
            {
                ds.session_info = ds.GetSessionFromToken(Session["AuthToken"].ToString());
            }
            catch
            {
                Response.Redirect("SessionCreater.aspx?next=topicmanage");
            }
            if (uid != null && uid.Trim() == "-1")
            {
                uid = "";
            }
        }

        protected void UploadTopicBtn_Click(object sender, EventArgs e)
        {
            if (Request.Form["tid"] != null)
            {
                tid = Request.Form["tid"];
                TopicGetResponse topic = ds.GetTopic(int.Parse(tid), 1, 1);
                title = topic.Title;
                message = topic.Posts[0].Message;
                tags = topic.Tags;
                fid = topic.Fid.ToString();
                icon_id = topic.Iconid.ToString();
                uid = topic.AuthorId.ToString();
                type_id = topic.TypeId.ToString();
            }
        }

        protected void UpdateTopicBtn_Click(object sender, EventArgs e)
        {
            Topic topic = new Topic();
            topic.Title = Request.Form["title"];
            topic.Message = Request.Form["message"];
            topic.Tags = Request.Form["tags"];
            int.TryParse(Request.Form["forumid"], out topic.Fid);
            int.TryParse(Request.Form["iconid"], out topic.Iconid);
            int.TryParse(Request.Form["typeid"], out topic.Typeid);
            if (Request.Form["uid"] != "")
                topic.UId = int.Parse(Request.Form["uid"]);
            if (Request.Form["tid"] != "")
            {
                int tid = int.Parse(Request.Form["tid"]);
                ds.EditTopic(tid, topic);
            }
            else
            {
                ds.CreateTopic(topic.Title, topic.Fid, topic.Message, topic.Iconid, topic.Tags, topic.Typeid);
            }
        }
    }
}
