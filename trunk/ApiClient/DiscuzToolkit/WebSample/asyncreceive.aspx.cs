using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSampleHelper;

namespace Discuz.Toolkit.WebSample
{
    public partial class asyncreceive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DiscuzSession ds = DiscuzSessionHelper.GetSession();
            Dictionary<string, string> dic = ds.GetQueryString();
            if (dic.ContainsKey("action"))
            {
                switch (dic["action"])
                {
                    case "login": AsyncHelper.WriteAsyncLog("login"); break;
                    case "logout": AsyncHelper.WriteAsyncLog("logout"); break;
                    case "deleteuser": AsyncHelper.WriteAsyncLog("deleteuser"); break;
                    case "renameuser": AsyncHelper.WriteAsyncLog("renameuser"); break;
                    case "updatepwd": AsyncHelper.WriteAsyncLog("updatepwd"); break;
                    case "updatecredits": AsyncHelper.WriteAsyncLog("updatecredits"); break;
                    case "updatesignature": AsyncHelper.WriteAsyncLog("updatesignature"); break;
                    case "newtopic": AsyncHelper.WriteAsyncLog("newtopic"); break;
                    case "reply": AsyncHelper.WriteAsyncLog("reply"); break;
                    default: break;
                }
            }
        }
    }
}
