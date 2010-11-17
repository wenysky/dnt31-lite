using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSampleHelper;

namespace Discuz.Toolkit.WebSample
{
    public partial class MessageOp : System.Web.UI.Page
    {
        public string subject = "";
        public string from_id = "";
        public string to_ids = "";
        public string message = "";
        public string opmsg = "";
        public MessagesGetResponse mgr;
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
                Response.Redirect("SessionCreater.aspx?next=msgop");
            }
        }

        protected void SendMsg_Click(object sender, EventArgs e)
        {
            subject = Request.Form["subject"];
            from_id = Request.Form["fromid"];
            to_ids = Request.Form["toids"];
            message = Request.Form["message"];

            try
            {
                opmsg = "给ID为：" + ds.SendMessages(to_ids, from_id, subject, message).ToString() + " 的信息已经发送成功";
            }
            catch (DiscuzException de)
            {
                if (de.ErrorCode == 100)
                    opmsg = "数值的填入错误导致发送失败，请检查填写项";
                else if (de.ErrorCode == 3)
                    opmsg = de.ErrorMessage;
                else
                    throw de;
            }
        }

        protected void LoadUserMsgBox_Click(object sender, EventArgs e)
        {
            int uid=int.Parse(Request.Form["userid"]);
            int pageindex=int.Parse(Request.Form["msgpage"]);
            mgr = ds.GetUserMessages(uid, 10, pageindex);
        }
    }
}
