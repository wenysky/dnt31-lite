using System;
using System.Collections.Generic;
using System.Text;

namespace Wysky.Plugin.Devtask.Entities
{
    public class WTypes
    {
        public static int Getidtype(int uid)
        {
            List<int> leader = new List<int>();
            List<int> pd = new List<int>();
            List<int> rd = new List<int>();
            List<int> ued = new List<int>();
            List<int> qa = new List<int>();

            leader.Add(9);
            pd.Add(1);
            rd.Add(2);
            ued.Add(3);
            qa.Add(4);
            

            if (pd.Contains(uid))
            {
                return 1;
            }
            if (rd.Contains(uid))
            {
                return 2;
            }
            if (ued.Contains(uid))
            {
                return 3;
            }
            if (qa.Contains(uid))
            {
                return 4;
            }
            if (leader.Contains(uid))
            {
                return 9;
            }
            return 0;
        }

        public static string GetStatusName(int statusid)
        {
            string name;
            switch (statusid)
            {
                case 0:
                    name = "新建";
                    break;
                case 1:
                    name = "公认（暂不解决）";
                    break;
                case 2:
                    name = "打回（不存在此问题）";
                    break;
                case 3:
                    name = "已分派";
                    break;
                case 4:
                    name = "已解决（转派给测试）";
                    break;
                case 5:
                    name = "已关闭（告一段落）";
                    break;
                default:
                    name = "whoareyou";
                    break;
            }
            return name;
        }
    }
}
