using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Discuz.Toolkit.WebSample
{
    public partial class ForumManage : System.Web.UI.Page
    {
        public string CHECKED = " checked=\"checked\"";
        public string allowsmilies = "";
        public string allowbbcode = "";
        public string allowimg = "";
        public string modnewposts = "";
        public string status = "";
        public string msg = "";
        public DiscuzSession ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            ds = WebSampleHelper.DiscuzSessionHelper.GetSession();
            try
            {
                ds.session_info = ds.GetSessionFromToken(Session["AuthToken"].ToString());
            }
            catch
            {
                Response.Redirect("SessionCreater.aspx?next=forummanage");
            }
            status = CHECKED;
            if (IsPostBack)
                initCheck();
        }

        private void initCheck()
        {
            if (Request.Form["allowsmilies"] == "on")
                allowsmilies = CHECKED;
            if (Request.Form["allowbbcode"] == "on")
                allowbbcode = CHECKED;
            if (Request.Form["allowimg"] == "on")
                allowimg = CHECKED;
            if (Request.Form["modnewposts"] == "on")
                modnewposts = CHECKED;
            if (Request.Form["status"] == "on")
                status = CHECKED;
        }

        protected void CreateForumBtn_Click(object sender, EventArgs e)
        {
            Forum forum = new Forum();
            forum.Name = Request.Form["forumname"];
            forum.ParentId = Util.GetIntFromString(Request.Form["parentid"]);
            forum.RewriteName = Request.Form["rewritename"];
            forum.AllowBbcode = (Request.Form["allowbbcode"] == "on") ? 1 : 0;
            forum.AllowImgcode = (Request.Form["allowimg"] == "on") ? 1 : 0;
            forum.AllowSmilies = (Request.Form["allowsmilies"] == "on") ? 1 : 0;
            forum.Description = Request.Form["forumdescription"];
            forum.Moderators = Request.Form["moderlist"];
            forum.ModNewPosts = (Request.Form["modnewposts"] == "on") ? 1 : 0;
            forum.SeoKeywords = Request.Form["seokey"];
            forum.Status = (Request.Form["status"] == "on") ? 1 : 0;
            ds.ForumCreate(forum);
            msg = "创建成功!";
        }
    }
}
