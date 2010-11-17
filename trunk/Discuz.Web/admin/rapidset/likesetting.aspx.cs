using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Xml;

using Discuz.Common.Xml;

namespace Discuz.Web.Admin
{
    public partial class likesetting : AdminPage
    {
		protected System.Web.UI.HtmlControls.HtmlForm form1;
		protected Discuz.Control.RadioButtonList showhelp;
		protected Discuz.Control.Button saveinfo;
		protected Discuz.Control.Hint Hint1;

        protected void Page_Load(object sender, EventArgs e)
        {
            string configPath = Page.Server.MapPath("../xml/user_" + this.userid + ".config");
            if (!IsPostBack)
            {
                if (System.IO.File.Exists(configPath))
                {
                    XmlDocumentExtender doc = new XmlDocumentExtender();
                    doc.Load(configPath);
                    showhelp.SelectedValue = doc.SelectSingleNode("/UserConfig/ShowInfo").InnerText;
                }
                else
                {
                    showhelp.SelectedValue = "1";
                }
            }
        }

        protected void saveinfo_Click(object sender, EventArgs e)
        {
			string configPath = Page.Server.MapPath("../xml/user_" + this.userid + ".config");
            XmlDocumentExtender doc = new XmlDocumentExtender();
            if (System.IO.File.Exists(configPath))
            {
                if (doc.SelectSingleNode("/UserConfig/ShowInfo") == null)
                {
                    XmlNode userconfig = doc.CreateElement("UserConfig");
                    doc.AppendChild(userconfig);
                    XmlNode showinfo = doc.CreateElement("ShowInfo");
                    showinfo.InnerText = showhelp.SelectedValue.ToString();
                    userconfig.AppendChild(showinfo);
                }
                else
                {
                    XmlNode showinfo = doc.SelectSingleNode("/UserConfig/ShowInfo");
                    showinfo.InnerText = showhelp.SelectedValue.ToString();
                }
            }
            else
            {
                XmlElement userconfig = doc.CreateElement("UserConfig");
                XmlElement showinfo = doc.CreateElement("ShowInfo");
                showinfo.InnerText = showhelp.SelectedValue.ToString();
                userconfig.AppendChild(showinfo);
                doc.AppendChild(userconfig);
            }
            doc.Save(configPath);
            this.RegisterStartupScript("PAGE", "window.location='likesetting.aspx'");
        }
    }
}
