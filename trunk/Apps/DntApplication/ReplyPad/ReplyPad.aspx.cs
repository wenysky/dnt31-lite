using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Discuz.Toolkit;

namespace ReplyPad
{
    public partial class ReplyPad : System.Web.UI.Page
    {
        public bool needlogin = false;
        public string api_key = "", secret = "", url = "", posts = "", title = "", pagelink = "", posturl = "#", replymsg = "";
        //posts:显示帖子的HTML;title:标题;pagelink:页码HTML;posturl:主题的原链接;replymsg:回复时的提示信息
        DiscuzSession ds;
        public int uid = 0, tid = 0, fid = 0, maxpostscount = 0, postsLength = 0, maxpageindex = 0;
        //uid:用户ID;tid:帖子id;fid:板块id;maxpostscount:每页显示最大帖数;postsLength:主题内帖子总数;maxpageindex:主题的最大页码数
        //部分变量赋值在aspx页面上的OnInit方法中


        protected void Page_Load(object sender, EventArgs e)
        {
            UserAuthrity();

            ReplyBtn.Attributes.Add("onclick", "");

            tid = Util.GetIntFromString(Request["tid"]);
            int pageIndex = Util.GetIntFromString(Request["pageindex"]);
            string[] next;
            if (Request["next"] != null)
            {
                next = Request["next"].Split(',');
                tid = Util.GetIntFromString(next[0]);
                pageIndex = Util.GetIntFromString(next[1]);
            }
            TopicGetResponse tgr = new TopicGetResponse();
            if (tid > 0 && pageIndex > 0)
            {
                tgr = ds.GetTopic(tid, pageIndex, maxpostscount);
                title = tgr.Title;
                posts = ShowPosts(tgr.Posts);
                posturl = tgr.Url;
                postsLength = tgr.ReplyCount + 1;
                maxpageindex = (postsLength / maxpostscount) + 1;
                pagelink = ShowPageLink(tid, maxpageindex, pageIndex);
            }
            fid = tgr.Fid;
        }

        private string ShowPosts(Post[] p)
        {
            string style = "<div id=\"postpanel{0}\" class=\"postpanel\"><table style=\"width: 100%\"><tbody><tr><td class=\"userpanel\"><ul><li>" +
            "<a href=\"#\"><img style=\" border:0\" src=\"" + url + "tools/avatar.aspx?uid={1}&size=small\" />" +
            "</a></li><li class=\"username\">{2}</li></ul></td><td class=\"contentpanel\"><div class=\"content\">{3}</div><div class=\"postdatetime\">" +
            "---发表于: {4}</div></td></tr></tbody></table></div><div class=\"cutline\"><div class=\"split_line\"></div></div>";
            string result = "";
            foreach (Post post in p)
            {
                string message = post.Message;
                if (post.Invisible == -2)
                    message = "-<>--该帖已经被论坛管理员屏蔽！--<>-";

                result += string.Format(style, post.Pid, post.PosterId, post.PosterName, ConvertHTML(message), post.PostDateTime);
            }
            return result;
        }

        public string ShowPageLink(int tid, int maxPageIndex, int pageIndex)
        {
            string linkstyle = "<a href=\"replypad.aspx?tid={0}&pageindex={1}\">[{2}]</a>";
            string unlinkstyle = "[{0}]";
            string lpagestyle = string.Format(linkstyle, tid, pageIndex - 1, "上一页");
            string rpagestyle = string.Format(linkstyle, tid, pageIndex + 1, "下一页");
            string firstpagestyle = string.Format(linkstyle, tid, 1, "第一页");
            string lastpagestyle = string.Format(linkstyle, tid, maxPageIndex, "最后一页");
            string str = "";

            int leftnum = 0;
            int rightnum = 0;
            if (maxPageIndex > 13)
            {
                if (pageIndex - 6 <= 1)
                {
                    leftnum = 1;
                    rightnum = leftnum + 12;
                }
                else if (pageIndex + 6 >= maxPageIndex)
                {
                    rightnum = maxPageIndex;
                    leftnum = maxPageIndex - 12;
                }
                else
                {
                    leftnum = pageIndex - 6;
                    rightnum = pageIndex + 6;
                }
            }
            else
            {
                leftnum = 1;
                rightnum = maxPageIndex;
            }
            for (int i = leftnum; i <= rightnum; i++)
            {
                if (i == pageIndex)
                {
                    str += string.Format(unlinkstyle, i);
                }
                else
                {
                    str += string.Format(linkstyle, tid, i, i);
                }
            }

            if (pageIndex > 1)
            {
                str = firstpagestyle + lpagestyle + str;
            }
            if (pageIndex < maxPageIndex)
            {
                str = str + rpagestyle + lastpagestyle;
            }
            return str;
        }

        private string ConvertHTML(string msg)
        {
            msg = msg.Replace("&lt;", "<");
            msg = msg.Replace("&gt;", ">");
            msg = msg.Replace("/editor/images/smilies/default", url + "editor/images/smilies/default");
            return msg;
        }

        private void UserAuthrity()
        {
            ds = new DiscuzSession(api_key, secret, url);
            int errorcode = 0;
            string next = "";
            try
            {
                if (Request["tid"] != null && Request["pageindex"] != null)
                    next = Request["tid"] + "," + Request["pageindex"];
                Session["AuthToken"] = Request.QueryString["auth_token"].ToString();
            }
            catch
            {
            }
            if (!ValidateAuthToken(ds, ref errorcode))
            {
                GetAuthToken(next, ds);
            }
        }

        //获取AuthToken
        public void GetAuthToken(string n, DiscuzSession ds)
        {
            Response.Redirect(ds.CreateToken().ToString() + "&next=" + n);
        }

        //验证当前的AuthToken是否可用
        public bool ValidateAuthToken(DiscuzSession ds, ref int Errorcode)
        {
            try
            {
                if (Request.Cookies["dnt"] != null)
                {
                    ds.session_info = ds.GetSessionFromToken(Session["AuthToken"].ToString());
                }
                else
                {
                    needlogin = true;
                }
                Errorcode = 0;
                return true;
            }
            catch (DiscuzException d)
            {
                Errorcode = d.ErrorCode;
                return false;
            }
            catch (NullReferenceException)
            {
                Errorcode = 0;
                return false;
            }
        }
        protected void ReplyBtn_Click(object sender, EventArgs e)
        {
            if (Session["lastposttime"] != null)
            {
                if (StrDateDiffSeconds(Session["lastposttime"].ToString(), 15) < 0)
                {
                    replymsg = "您发帖太过频繁了，请等待15秒";
                    return;
                }
            }
            Reply r = new Reply();
            r.Fid = fid;
            r.Tid = tid;
            r.Title = "";
            r.Message = Util.RemoveUnsafeHtml(Request.Form["replytext"]);
            if (r.Message.Length < 5)
                replymsg = "message length is short!please send more";
            else
            {
                TopicReplyResponse trr = ds.TopicReply(r);
                Session["lastposttime"] = DateTime.Now;
                if ((postsLength + 1) / maxpostscount >= maxpageindex)
                {
                    Response.Redirect("replypad.aspx?tid=" + tid + "&pageindex=" + (maxpageindex + 1));
                }
                else
                {
                    Response.Redirect("replypad.aspx?tid=" + tid + "&pageindex=" + maxpageindex);
                }
            }
        }

        /// <summary>
        /// 返回相差的秒数
        /// </summary>
        /// <param name="Time"></param>
        /// <param name="Sec"></param>
        /// <returns></returns>
        public int StrDateDiffSeconds(string Time, int Sec)
        {
            TimeSpan ts = DateTime.Now - DateTime.Parse(Time).AddSeconds(Sec);
            if (ts.TotalSeconds > int.MaxValue)
                return int.MaxValue;

            else if (ts.TotalSeconds < int.MinValue)
                return int.MinValue;

            return (int)ts.TotalSeconds;
        }
    }
}
