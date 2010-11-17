using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;

namespace Kernal
{
    public class RegExpHelper
    {
        /// <summary>
        /// 获取匹配正则表达式的组内容
        /// </summary>
        /// <param name="str_content">内容</param>
        /// <param name="str_pattern">正则表达式</param>
        /// <returns></returns>
        public static string GetContent(string str_content, string str_pattern)
        {
            Regex reg = new Regex(str_pattern, RegexOptions.Compiled | RegexOptions.IgnoreCase | RegexOptions.Multiline);
            StringBuilder sb = new StringBuilder();
            if (reg.IsMatch(str_content))
            {
                MatchCollection match = reg.Matches(str_content);
                int index = 0;
                foreach (Match m in match)
                {
                    foreach (Group g in m.Groups)
                    {
                        sb.AppendFormat("index:{0} value:{1}\r\n", index, g.Value);
                        index++;
                    }
                }
            }
            else
            {
                sb.Append("false");
            }

            return sb.ToString();
        }

        /// <summary>
        /// 根据指定的正则表达式替换
        /// </summary>
        /// <param name="str_content">内容</param>
        /// <param name="str_pattern">正则表达式</param>
        /// <param name="str_replace">替换的字符串</param>
        /// <returns></returns>
        public static string Replace(string str_content, string str_pattern, string str_replace)
        {
            #region
            string strretval = string.Empty;
            Regex reg = new Regex(str_pattern, RegexOptions.Compiled | RegexOptions.IgnoreCase | RegexOptions.Multiline);

            try
            {
                if (reg.IsMatch(str_content))
                {
                    strretval = reg.Replace(str_content, str_replace);
                   
                    //reg.Replace(str_content, str_replace);
                }
            }
            catch (Exception ex) { }


            return strretval;
            #endregion

            //return Regex.Replace(str_content, str_pattern, str_replace,RegexOptions.Compiled|RegexOptions.IgnoreCase);

        }

        public static string[] GetMatchDictionary(string str_content, string str_pattern)
        {
            Regex reg = new Regex(str_pattern, RegexOptions.Compiled | RegexOptions.IgnoreCase | RegexOptions.Multiline);
            string[] str_arr = null;

            try
            {
                if (reg.IsMatch(str_content))
                {
                    MatchCollection match = reg.Matches(str_content);
                    int index = 0;
                    str_arr = new string[match.Count];
                    foreach (Match m in match)
                    {
                        str_arr[index] = m.Value;
                        index++;
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return str_arr;
        }

        public static IList<string> GetMatchDic(string str_content, string str_pattern)
        {
            IList<string> _ilist = new List<string>();


            string[] _arr = GetMatchDictionary(str_content, str_pattern);

            if (_arr != null)
            {
                foreach (string s in _arr)
                {
                    if (!_ilist.Contains(s))
                    {
                        _ilist.Add(s);
                    }
                }
            }

            return _ilist;
        }
    }
}
