using System;
using System.Web;
using System.Web.UI;
using System.Collections;
using System.IO;
using System.Web.UI.WebControls;

using Discuz.Control;
using Discuz.Forum;
using Discuz.Config;
using Discuz.Common;


namespace Discuz.Web.Admin
{
    /// <summary>
    /// ��ȫ����
    /// </summary>
    public partial class safecontrol : AdminPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadConfigInfo();
                seccodestatus.Attributes.Add("style", "line-height:16px");
            }
        }

        public void LoadConfigInfo()
        {
            #region ����������Ϣ
            //������֤�����ʾ
            string[] dllFiles = System.IO.Directory.GetFiles(HttpRuntime.BinDirectory, "Discuz.Plugin.VerifyImage.*.dll");
            foreach (string dllFile in dllFiles)
            {
                string filename = dllFile.ToString().Substring(dllFile.ToString().IndexOf("Discuz.Plugin.VerifyImage")).Replace("Discuz.Plugin.VerifyImage.", "").Replace(".dll", "");
                VerifyImage.Items.Add(filename);
            }
            GeneralConfigInfo configInfo = GeneralConfigs.GetConfig();
            maxonlines.Text = configInfo.Maxonlines.ToString();
            postinterval.Text = configInfo.Postinterval.ToString();
            searchctrl.Text = configInfo.Searchctrl.ToString();
            maxspm.Text = configInfo.Maxspm.ToString();
            seccodestatus.AddAttributes("readonly", "");
            seccodestatus.Attributes.Add("onfocus", "this.className='';");
            seccodestatus.Attributes.Add("onblur", "this.className='';");
            admintools.SelectedValue = configInfo.Admintools.ToString();
            VerifyImage.Items.Add(new ListItem("ϵͳĬ����֤��", ""));            
            seccodestatus.Text = configInfo.Seccodestatus.Replace(",", "\r\n");
            ViewState["Seccodestatus"] = configInfo.Seccodestatus.ToString();
            VerifyImage.SelectedValue = configInfo.VerifyImageAssemly;
            antispamusername.Text = configInfo.Antispamregisterusername;
            antispamemail.Text = configInfo.Antispamregisteremail;
            antispamtitle.Text = configInfo.Antispamposttitle;
            antispammessage.Text = configInfo.Antispampostmessage;
            
            try
            {
                secques.SelectedValue = configInfo.Secques.ToString();
            }
            catch
            {
                secques.SelectedValue = "1";
            }
            #endregion
        }

        private void SaveInfo_Click(object sender, EventArgs e)
        {
            #region ����������Ϣ

            if (this.CheckCookie())
            {
                Hashtable HT = new Hashtable();
                HT.Add("�����������", maxonlines.Text);
                HT.Add("������ˮԤ��", postinterval.Text);
                HT.Add("����ʱ������", searchctrl.Text);
                HT.Add("60 �������������", maxspm.Text);
                foreach (DictionaryEntry de in HT)
                {
                    if (!Utils.IsInt(de.Value.ToString()))
                    {
                        base.RegisterStartupScript("", "<script>alert('�������:" + de.Key.ToString().Trim() + ",ֻ����0����������');window.location.href='global_safecontrol.aspx';</script>");
                        return;
                    }
                }


                GeneralConfigInfo configInfo = GeneralConfigs.GetConfig();
                configInfo.VerifyImageAssemly = VerifyImage.SelectedValue;
                configInfo.Maxonlines = Convert.ToInt32(maxonlines.Text);
                configInfo.Postinterval = Convert.ToInt32(postinterval.Text);
                configInfo.Searchctrl = Convert.ToInt32(searchctrl.Text);
                configInfo.Seccodestatus = seccodestatus.Text.Trim().Replace("\r\n", ",");
                configInfo.Maxspm = Convert.ToInt32(maxspm.Text);
                configInfo.Secques = Convert.ToInt32(secques.SelectedValue);
                configInfo.Admintools = Convert.ToInt16(admintools.SelectedValue);
                configInfo.Antispamregisterusername = antispamusername.Text.Trim();
                configInfo.Antispamregisteremail = antispamemail.Text.Trim();
                configInfo.Antispamposttitle = antispamtitle.Text.Trim();
                configInfo.Antispampostmessage = antispammessage.Text.Trim();

                GeneralConfigs.Serialiaze(configInfo, Server.MapPath("../../config/general.config"));

                AdminVistLogs.InsertLog(this.userid, this.username, this.usergroupid, this.grouptitle, this.ip, "��ȫ��������", "");
                base.RegisterStartupScript( "PAGE","window.location.href='global_safecontrol.aspx';");
            }

            #endregion
        }

        #region Web ������������ɵĴ���

        protected override void OnInit(EventArgs e)
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