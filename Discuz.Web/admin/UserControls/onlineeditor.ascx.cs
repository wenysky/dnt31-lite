using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;

using Discuz.Control;

namespace Discuz.Web.Admin
{
    /// <summary>
    ///	ÔÚÏß±à¼­¿Ø¼þ
    /// </summary>
    public partial class OnlineEditor : UserControl
    {
        public string controlname;
        public int postminchars = 0;
        public int postmaxchars = 200;

        public string Text
        {
            set { DataTextarea.InnerText = value; }
            get { return DataTextarea.InnerText.Replace("'", "''"); }
        }
    }
}