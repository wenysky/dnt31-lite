using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Spinder_web
{
    public partial class deteuser : System.Web.UI.Page
    {
        string sLine = "";
        StreamReader reader;
        StreamWriter writer;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                #region
                if (Request.QueryString["id"] == null || Request.QueryString["id"].ToString() == "")
                {
                    return;
                }

                if (Request.QueryString["users"] == null || Request.QueryString["users"].ToString() == "")
                {
                    return;
                }

                if (Request.QueryString["fid"] == null || Request.QueryString["fid"].ToString() == "")
                {
                    return;
                }
                #endregion

                string id = "";
                int count = 0;
                int start = 0;
                string cur_group = Request.QueryString["id"].ToString() + "-" + Request.QueryString["users"].ToString() + "|" + Request.QueryString["fid"].ToString();
                //2-fanzjg,admin,bryan,i_am_tbag|161
                string str_path = HttpContext.Current.Server.MapPath("~/Users.txt");
                reader = new StreamReader(str_path);
                sLine = reader.ReadToEnd().Trim();
                string[] groups = sLine.Split('\n');
                for (int i = 0; i < groups.Length; i++)
                {
                    id = groups[i].Split('|')[0].Split('-')[0].ToString().Trim();
                    if (id == Request.QueryString["id"].ToString())
                    {
                        start = sLine.IndexOf(id);
                        count = cur_group.Length;
                    }
                }

                reader.Close();

                writer = new StreamWriter(str_path);
                sLine = sLine.Remove(start, count);
                writer.Write(sLine);
                writer.Close();

                Response.Redirect("setuser.aspx");
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            finally
            {
                reader.Close();
                writer.Close();
            }
        }
    }
}
