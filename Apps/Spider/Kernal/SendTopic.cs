using System;
using System.Collections.Generic;
using System.Text;
using Discuz.Toolkit;
using System.IO;
using System.Data;
using System.Web;

namespace Kernal
{
    public class SendTopic
    {
        public SendTopic()
        {
            string api = "bd944d19dd425d7b842a6e7820b29fa1";
            string secret = "ed2cd183020c8b54a5148e46b4c1a9cc";
            string url = "http://localhost/";

            DataSet dataset;
            TopicCreateResponse tcr = null;
            string title = "", message = "";
            string sLine = "";

            string cur_date = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString();
            string str_path = HttpContext.Current.Server.MapPath("~/plugin/Spinder/Spinder_WEB/Users.txt"); //AppDomain.CurrentDomain.BaseDirectory + "Users.txt";
            StreamReader reader = new StreamReader(str_path);//fds,rd,fdfd,hj-用户名|131-fid\r\n

            sLine = reader.ReadToEnd().Trim();
            DiscuzSession ds = new DiscuzSession(api, secret, url);

            if (sLine.Length == 0)
            {
                dataset = new DataSet();
                string path = HttpContext.Current.Server.MapPath("~/plugin/Spinder/Spinder_WEB/"+ cur_date +"/" + cur_date +"XmlData.xml");//AppDomain.CurrentDomain.BaseDirectory +"XmlData.xml";
                dataset.ReadXml(path);
                for (int i = 0; i < dataset.Tables[0].Rows.Count; i++)
                {
                    title = dataset.Tables[0].Rows[i]["title"].ToString().Trim();
                    message = dataset.Tables[0].Rows[i]["content"].ToString().Trim();
                    if (title.Length > 60)
                    {
                        title = title.Substring(0, 58);
                    }
                    tcr = ds.CreateTopic(1, title, 162, message, 0, "");

                }
            }

            if (sLine.EndsWith("\r\n"))
            {
                sLine = sLine.Substring(sLine.Length - 4, sLine.Length).Trim();
            }

            string[] one_group = sLine.Split('|');
            int fid = Convert.ToInt32(one_group[1]) ;
            for (int j = 0; j < one_group.Length; j++)
            {   
                int random;
                string users = one_group[j].ToString().Split('|')[0];
                //int fid = Convert.ToInt32(one_group[j].ToString().Split('|')[1]);
                Random r = new Random();

                dataset = new DataSet();
                string path = HttpContext.Current.Server.MapPath("~/plugin/Spinder/Spinder_WEB/"+ cur_date +"/"+ cur_date +"XmlData.xml");//AppDomain.CurrentDomain.BaseDirectory +"XmlData.xml";
                dataset.ReadXml(path);
                for (int i = 0; i < dataset.Tables[0].Rows.Count; i++)
                {
                    random = r.Next(0, users.Split(',').Length);

                    title = dataset.Tables[0].Rows[i]["title"].ToString().Trim();
                    message = dataset.Tables[0].Rows[i]["content"].ToString().Trim();
                    if (title.Length > 60)
                    {
                        title = title.Substring(0, 58);
                    }
                    int curuid = ds.GetUserID(users.Split(',')[random].ToString());
                    if (curuid < 1)
                    {
                        continue;
                    }

                    tcr = ds.CreateTopic(curuid, title, fid, message, 0, "");
                    
                }
            }
        }
    }
}
