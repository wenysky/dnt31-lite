using System;
using System.Web.UI;
using System.Collections;

using Discuz.Control;
using Discuz.Forum;
using Discuz.Config;
using Discuz.Common;
using System.Text;

namespace Discuz.Web.Admin
{
    /// <summary>
    /// ��������ʾ��ʽ����
    /// </summary>
    public partial class uiandshowstyle : AdminPage
    {
        /// <summary>
        /// ���õ���չ���������б�
        /// </summary>
        public string[] score;
        public string[] postleftarray,userfacearray;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadCustomauthorinfo();
            if (!Page.IsPostBack)
            {
                LoadConfigInfo();
                quickforward.Items[0].Attributes.Add("onclick", "setStatus(true)");
                quickforward.Items[1].Attributes.Add("onclick", "setStatus(false)");

                openshare.Items[0].Attributes.Add("onclick", "openShare(true)");
                openshare.Items[1].Attributes.Add("onclick", "openShare(false)");
            }
        }


        private void LoadCustomauthorinfo()
        {
            score = Scoresets.GetValidScoreName();
            GeneralConfigInfo configinfos = GeneralConfigs.GetConfig();
            string customauthorinfo =configinfos.Customauthorinfo;
            string postleft = Utils.SplitString(customauthorinfo, "|")[0];//�������Ҫ��ʾ���û���Ϣ��Ŀ
            string userface = Utils.SplitString(customauthorinfo, "|")[1];//ͷ���Ϸ�Ҫ��ʾ����Ŀ
            postleftarray = postleft.Split(',');
            userfacearray = userface.Split(',');
        }

        public void LoadConfigInfo()
        {
            #region ����������Ϣ
            //score = Scoresets.GetValidScoreName();
            templateid.Attributes.Add("onchange", "LoadImage(this.selectedIndex)");
            GeneralConfigInfo configInfo = GeneralConfigs.GetConfig();
            //string postleft = Utils.SplitString(configInfo.Customauthorinfo, "|")[0];
           // string userface = Utils.SplitString(configInfo.Customauthorinfo, "|")[1];
           // postleftarray = postleft.Split(',');
           // userfacearray = userface.Split(',');
            //templateid.SelectedValue = configInfo.Templateid.ToString();
            stylejump.SelectedValue = configInfo.Stylejump.ToString();
            browsecreatetemplate.SelectedValue = configInfo.BrowseCreateTemplate.ToString();
            templateid.AddTableData(Templates.GetValidTemplateList(), "name", "templateid");

            
            templateid.SelectedValue = configInfo.Templateid.ToString();

            templateid.Items.RemoveAt(0);
            string scriptstr = "<script type=\"text/javascript\">\r\n";
            scriptstr += "images = new Array();\r\n";
            for (int i = 0; i < templateid.Items.Count; i++)
            {
                scriptstr += "images[" + i + "]=\"../../templates/" + templateid.Items[i].Text + "/about.png\";\r\n";
            }
            scriptstr += "</script>";
            base.RegisterStartupScript("", scriptstr);
            preview.Src = "../../templates/" + templateid.SelectedItem.Text + "/about.png";
            isframeshow.SelectedValue = configInfo.Isframeshow.ToString();
            whosonlinestatus.SelectedValue = configInfo.Whosonlinestatus.ToString();
            maxonlinelist.Text = configInfo.Maxonlinelist.ToString();
            forumjump.SelectedValue = configInfo.Forumjump.ToString();
            if (configInfo.Onlinetimeout >= 0) showauthorstatusinpost.SelectedValue = "2";
            else showauthorstatusinpost.SelectedValue = "1";
            onlinetimeout.Text = Math.Abs(configInfo.Onlinetimeout).ToString();
            smileyinsert.SelectedValue = configInfo.Smileyinsert.ToString();
            visitedforums.Text = configInfo.Visitedforums.ToString();
            moddisplay.SelectedValue = configInfo.Moddisplay.ToString();
            showsignatures.SelectedValue = configInfo.Showsignatures.ToString();
            showavatars.SelectedValue = configInfo.Showavatars.ToString();
            showimages.SelectedValue = configInfo.Showimages.ToString();
            maxsigrows.Text = configInfo.Maxsigrows.ToString();
            smiliesmax.Text = configInfo.Smiliesmax.ToString();
            viewnewtopicminute.Text = configInfo.Viewnewtopicminute.ToString();
            whosonlinecontact.SelectedValue = configInfo.Whosonlinecontract.ToString();
            postnocustom.Text = configInfo.Postnocustom;
            quickforward.SelectedValue = configInfo.Quickforward.ToString();
            msgforwardlist.Text = configInfo.Msgforwardlist.Replace(",","\r\n");
            allowfloatwin.SelectedValue = configInfo.Allowfloatwin.ToString();
            openshare.SelectedValue = configInfo.Disableshare.ToString();
            shownewposticon.SelectedValue = configInfo.Shownewposticon.ToString();            
            #endregion
        }

        private void SaveInfo_Click(object sender, EventArgs e)
        {
            #region ����������Ϣ

            if (this.CheckCookie())
            {
                SortedList sl = new SortedList();
                sl.Add("�޶�������ʱ��", onlinetimeout.Text);
                sl.Add("���ǩ���߶�", maxsigrows.Text);
                sl.Add("��ʾ���������̳����", visitedforums.Text);
                sl.Add("������ͬһ��������ֵ�������", smiliesmax.Text);
                string[] postleft = Utils.SplitString(DNTRequest.GetFormString("postleft"), ",");
                string[] userface = Utils.SplitString(DNTRequest.GetFormString("userface"), ",");
                string postleftstr = "", userfacestr = "";
                foreach (DictionaryEntry s in sl)
                {
                    if (!Utils.IsInt(s.Value.ToString()))
                    {
                        base.RegisterStartupScript("", "<script>alert('�������:" + s.Key.ToString() + ",ֻ����0����������');window.location.href='forum_uisetting.aspx';</script>");
                        return;
                    }
                }

                if (Convert.ToInt32(onlinetimeout.Text) <= 0)
                {
                    base.RegisterStartupScript("", "<script>alert('�޶�������ʱ��������0');</script>");
                    return;
                }
                if (Convert.ToInt16(maxsigrows.Text) > 9999 || (Convert.ToInt16(maxsigrows.Text) < 0))
                {
                    base.RegisterStartupScript("", "<script>alert('���ǩ���߶�ֻ����0-9999֮��');window.location.href='.aspx';</script>");
                    return;
                }


                if (Convert.ToInt16(visitedforums.Text) > 9999 || (Convert.ToInt16(visitedforums.Text) < 0))
                {
                    base.RegisterStartupScript("", "<script>alert('��ʾ���������̳����ֻ����0-9999֮��');window.location.href='forum_uisetting.aspx';</script>");
                    return;
                }


                if (Convert.ToInt16(smiliesmax.Text) > 1000 || (Convert.ToInt16(smiliesmax.Text) < 0))
                {
                    base.RegisterStartupScript("", "<script>alert('������ͬһ��������ֵ�������ֻ����0-1000֮��');window.location.href='forum_uisetting.aspx';</script>");
                    return;
                }

                if (Convert.ToInt16(viewnewtopicminute.Text) > 14400 || (Convert.ToInt16(viewnewtopicminute.Text) < 5))
                {
                    base.RegisterStartupScript("", "<script>alert('�鿴���������ñ�����5-14400֮��');window.location.href='forum_uisetting.aspx';</script>");
                    return;
                }

                foreach (string left in postleft)
                {
                    postleftstr += left;
                    postleftstr += ",";
                }

                foreach (string face in userface)
                {
                    userfacestr += face;
                    userfacestr += ",";
                }


                GeneralConfigInfo configInfo = GeneralConfigs.GetConfig();

                configInfo.Customauthorinfo = postleftstr.TrimEnd(',') + "|" + userfacestr.TrimEnd(',');
                configInfo.Templateid = Convert.ToInt16(templateid.SelectedValue);
                configInfo.Subforumsindex = 1;
                configInfo.Stylejump = Convert.ToInt16(stylejump.SelectedValue);
                configInfo.BrowseCreateTemplate = Convert.ToInt32(browsecreatetemplate.SelectedValue);
                configInfo.Isframeshow = Convert.ToInt16(isframeshow.SelectedValue);
                configInfo.Whosonlinestatus = Convert.ToInt16(whosonlinestatus.SelectedValue);

                if (showauthorstatusinpost.SelectedValue == "1") configInfo.Onlinetimeout = 0 - Convert.ToInt32(onlinetimeout.Text);
                else configInfo.Onlinetimeout = Convert.ToInt16(onlinetimeout.Text);

                configInfo.Maxonlinelist = Convert.ToInt16(maxonlinelist.Text);
                configInfo.Forumjump = Convert.ToInt16(forumjump.SelectedValue);
                configInfo.Smileyinsert = Convert.ToInt16(smileyinsert.SelectedValue);
                configInfo.Visitedforums = Convert.ToInt16(visitedforums.Text);
                configInfo.Moddisplay = Convert.ToInt16(moddisplay.SelectedValue);
                configInfo.Showsignatures = Convert.ToInt16(showsignatures.SelectedValue);
                configInfo.Showavatars = Convert.ToInt16(showavatars.SelectedValue);
                configInfo.Showimages = Convert.ToInt16(showimages.SelectedValue);
                configInfo.Smiliesmax = Convert.ToInt16(smiliesmax.Text);
                configInfo.Maxsigrows = Convert.ToInt16(maxsigrows.Text);
                configInfo.Viewnewtopicminute = Convert.ToInt16(viewnewtopicminute.Text);
                configInfo.Whosonlinecontract = Convert.ToInt16(whosonlinecontact.SelectedValue);
                configInfo.Postnocustom = postnocustom.Text;
                configInfo.Quickforward = Convert.ToInt16(quickforward.SelectedValue);
                configInfo.Msgforwardlist = msgforwardlist.Text.Replace("\r\n",",");
                configInfo.Allowfloatwin = Convert.ToInt16(allowfloatwin.SelectedValue);
                configInfo.Disableshare = TypeConverter.StrToInt(openshare.SelectedValue);
                configInfo.Shownewposticon = TypeConverter.StrToInt(shownewposticon.SelectedValue);
                GeneralConfigs.Serialiaze(configInfo, Server.MapPath("../../config/general.config"));
                AdminVistLogs.InsertLog(this.userid, this.username, this.usergroupid, this.grouptitle, this.ip, "��������ʾ��ʽ����", "");
                base.RegisterStartupScript("PAGE", "window.location.href='global_uiandshowstyle.aspx';");
            }

            #endregion
        }

        #region Web ������������ɵĴ���

        override protected void OnInit(EventArgs e)
        {
            InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent()
        {
            this.SaveInfo.Click += new EventHandler(this.SaveInfo_Click);
        }

        #endregion

    }
}