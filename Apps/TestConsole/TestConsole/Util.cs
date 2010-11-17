using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Xml.Serialization;
using System.Web;
using System.Text.RegularExpressions;

namespace Discuz.TestConsole
{
    public class Util
    {
        private const string LINE = "\r\n";

        private static Dictionary<int, XmlSerializer> serializer_dict = new Dictionary<int, XmlSerializer>();

        private string api_key;
        private string secret;
        private string url;
        private bool use_json;

        private static XmlSerializer ErrorSerializer
        {
            get
            {
                return GetSerializer(typeof(Error));
            }
        }

        public Util(string api_key, string secret, string url)
        {
            this.api_key = api_key;
            this.secret = secret;
            this.url = url;
        }

        public bool UseJson
        {
            get { return use_json; }
            set { use_json = value; }
        }

        internal string SharedSecret
        {
            get { return secret; }
            set { secret = value; }
        }

        internal string ApiKey
        {
            get { return api_key; }
        }

        internal string Url
        {
            get { return url; }
            set { url = value; }
        }

        public string GetResponse(string method_name, params DiscuzParam[] parameters)
        {

            DiscuzParam[] signed = Sign(method_name, parameters);

            StringBuilder builder = new StringBuilder();

            for (int i = 0; i < signed.Length; i++)
            {
                if (i > 0)
                    builder.Append("&");

                builder.Append(signed[i].ToEncodedString());
            }

            byte[] response_bytes = GetResponseBytes(Url, method_name, builder.ToString());

            return System.Text.Encoding.UTF8.GetString(response_bytes);
            //XmlSerializer response_serializer = GetSerializer(typeof(T));
            //try
            //{
            //    T response = (T)response_serializer.Deserialize(new MemoryStream(response_bytes));
            //    return response;
            //}
            //catch
            //{
            //    Error error = (Error)ErrorSerializer.Deserialize(new MemoryStream(response_bytes));
            //    throw new DiscuzException(error.ErrorCode, error.ErrorMsg);
            //}
        }
        public T GetXMLResponse<T>(string method_name, params DiscuzParam[] parameters)
        {

            DiscuzParam[] signed = SignWithoutCallback(method_name, parameters);

            StringBuilder builder = new StringBuilder();

            for (int i = 0; i < signed.Length; i++)
            {
                if (i > 0)
                    builder.Append("&");

                builder.Append(signed[i].ToEncodedString());
            }

            byte[] response_bytes = GetResponseBytes(Url, method_name, builder.ToString());

            //return response_bytes.ToString();
            XmlSerializer response_serializer = GetSerializer(typeof(T));
            try
            {
                T response = (T)response_serializer.Deserialize(new MemoryStream(response_bytes));
                return response;
            }
            catch
            {
                Error error = (Error)ErrorSerializer.Deserialize(new MemoryStream(response_bytes));
                throw new DiscuzException(error.ErrorCode, error.ErrorMsg);
            }
        }

        public static byte[] GetResponseBytes(string apiUrl, string method_name, string postData)
        {


            HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(apiUrl);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            request.ContentLength = postData.Length;
            request.Timeout = 20000;

            HttpWebResponse response = null;

            try
            {
                StreamWriter swRequestWriter = new StreamWriter(request.GetRequestStream());
                swRequestWriter.Write(postData);
                if (swRequestWriter != null)
                    swRequestWriter.Close();

                response = (HttpWebResponse)request.GetResponse();
                using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
                {
                    return Encoding.UTF8.GetBytes(reader.ReadToEnd());
                }
            }
            finally
            {
                if (response != null)
                    response.Close();
            }
        }

        private string FormatGetUrl(string method_name, params DiscuzParam[] parameters)
        {
            DiscuzParam[] signed = Sign(method_name, parameters);

            StringBuilder builder = new StringBuilder(Url);

            for (int i = 0; i < signed.Length; i++)
            {
                if (i > 0)
                    builder.Append("&");

                builder.Append(signed[i].ToString());
            }

            return builder.ToString();
        }

        public static XmlSerializer GetSerializer(Type t)
        {
            int type_hash = t.GetHashCode();

            if (!serializer_dict.ContainsKey(type_hash))
                serializer_dict.Add(type_hash, new XmlSerializer(t));

            return serializer_dict[type_hash];
        }

        public class DiscuzParamComparer : IComparer<DiscuzParam>
        {

            #region IComparer<DiscuzParam> 成员

            public int Compare(DiscuzParam x, DiscuzParam y)
            {
                return x.Name.CompareTo(y.Name);
            }

            #endregion
        }

        internal DiscuzParam[] Sign(string method_name, DiscuzParam[] parameters)
        {
            List<DiscuzParam> list = new List<DiscuzParam>(parameters);
            list.Add(DiscuzParam.Create("method", method_name));
            list.Add(DiscuzParam.Create("api_key", api_key));
            if (GetFormString("callback").Trim() != string.Empty)
                list.Add(DiscuzParam.Create("callback", GetFormString("callback").Trim()));
            list.Sort(new DiscuzParamComparer());

            StringBuilder values = new StringBuilder();

            foreach (DiscuzParam param in list)
            {
                if (!string.IsNullOrEmpty(param.Value))
                    values.Append(param.ToString());
            }

            values.Append(secret);

            byte[] md5_result = MD5.Create().ComputeHash(Encoding.UTF8.GetBytes(values.ToString()));

            StringBuilder sig_builder = new StringBuilder();

            foreach (byte b in md5_result)
                sig_builder.Append(b.ToString("x2"));

            list.Add(DiscuzParam.Create("sig", sig_builder.ToString()));

            return list.ToArray();
        }

        internal DiscuzParam[] SignWithoutCallback(string method_name, DiscuzParam[] parameters)
        {
            List<DiscuzParam> list = new List<DiscuzParam>(parameters);
            list.Add(DiscuzParam.Create("method", method_name));
            list.Add(DiscuzParam.Create("api_key", api_key));
            list.Sort(new DiscuzParamComparer());

            StringBuilder values = new StringBuilder();

            foreach (DiscuzParam param in list)
            {
                if (!string.IsNullOrEmpty(param.Value))
                    values.Append(param.ToString());
            }

            values.Append(secret);

            byte[] md5_result = MD5.Create().ComputeHash(Encoding.UTF8.GetBytes(values.ToString()));

            StringBuilder sig_builder = new StringBuilder();

            foreach (byte b in md5_result)
                sig_builder.Append(b.ToString("x2"));

            list.Add(DiscuzParam.Create("sig", sig_builder.ToString()));

            return list.ToArray();
        }

        internal static int GetIntFromString(string input)
        {
            try
            {
                return int.Parse(input);
            }
            catch
            {
                return 0;
            }
        }

        internal static bool GetBoolFromString(string input)
        {
            try
            {
                return bool.Parse(input);
            }
            catch
            {
                return false;
            }

        }

        /// <summary>
        /// 检测是否有Sql危险字符
        /// </summary>
        /// <param name="str">要判断字符串</param>
        /// <returns>判断结果</returns>
        public static bool IsSafeSqlString(string str)
        {

            return !Regex.IsMatch(str, @"[-|;|,|\/|\(|\)|\[|\]|\}|\{|%|@|\*|!|\']");
        }

        /// <summary>
        /// 获得指定Url参数的值
        /// </summary>
        /// <param name="strName">Url参数</param>
        /// <returns>Url参数的值</returns>
        public static string GetQueryString(string strName)
        {
            return GetQueryString(strName, false);
        }

        /// <summary>
        /// 获得指定Url参数的值
        /// </summary> 
        /// <param name="strName">Url参数</param>
        /// <param name="sqlSafeCheck">是否进行SQL安全检查</param>
        /// <returns>Url参数的值</returns>
        public static string GetQueryString(string strName, bool sqlSafeCheck)
        {
            if (HttpContext.Current.Request.QueryString[strName] == null)
            {
                return "";
            }

            if (sqlSafeCheck && !IsSafeSqlString(HttpContext.Current.Request.QueryString[strName]))
            {
                return "unsafe string";
            }

            return HttpContext.Current.Request.QueryString[strName];
        }
        /// <summary>
        /// 获得指定表单参数的值
        /// </summary>
        /// <param name="strName">表单参数</param>
        /// <returns>表单参数的值</returns>
        public static string GetFormString(string strName)
        {
            return GetFormString(strName, false);
        }

        /// <summary>
        /// 获得指定表单参数的值
        /// </summary>
        /// <param name="strName">表单参数</param>
        /// <param name="sqlSafeCheck">是否进行SQL安全检查</param>
        /// <returns>表单参数的值</returns>
        public static string GetFormString(string strName, bool sqlSafeCheck)
        {
            if (HttpContext.Current.Request.Form[strName] == null)
            {
                return "";
            }

            if (sqlSafeCheck && !IsSafeSqlString(HttpContext.Current.Request.Form[strName]))
            {
                return "unsafe string";
            }

            return HttpContext.Current.Request.Form[strName];
        }

        /// <summary>
        /// 获得Url或表单参数的值, 先判断Url参数是否为空字符串, 如为True则返回表单参数的值
        /// </summary>
        /// <param name="strName">参数</param>
        /// <returns>Url或表单参数的值</returns>
        public static string GetString(string strName)
        {
            return GetString(strName, false);
        }

        /// <summary>
        /// 获得Url或表单参数的值, 先判断Url参数是否为空字符串, 如为True则返回表单参数的值
        /// </summary>
        /// <param name="strName">参数</param>
        /// <param name="sqlSafeCheck">是否进行SQL安全检查</param>
        /// <returns>Url或表单参数的值</returns>
        public static string GetString(string strName, bool sqlSafeCheck)
        {
            if ("".Equals(GetQueryString(strName)))
            {
                return GetFormString(strName, sqlSafeCheck);
            }
            else
            {
                return GetQueryString(strName, sqlSafeCheck);
            }
        }


        /// <summary>
        /// 获得指定Url参数的int类型值
        /// </summary>
        /// <param name="strName">Url参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>Url参数的int类型值</returns>
        public static int GetQueryInt(string strName, int defValue)
        {
            return StrToInt(HttpContext.Current.Request.QueryString[strName], defValue);
        }


        /// <summary>
        /// 获得指定表单参数的int类型值
        /// </summary>
        /// <param name="strName">表单参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>表单参数的int类型值</returns>
        public static int GetFormInt(string strName, int defValue)
        {
            return StrToInt(HttpContext.Current.Request.Form[strName], defValue);
        }

        /// <summary>
        /// 获得指定Url或表单参数的int类型值, 先判断Url参数是否为缺省值, 如为True则返回表单参数的值
        /// </summary>
        /// <param name="strName">Url或表单参数</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>Url或表单参数的int类型值</returns>
        public static int GetInt(string strName, int defValue)
        {
            if (GetQueryInt(strName, defValue) == defValue)
            {
                return GetFormInt(strName, defValue);
            }
            else
            {
                return GetQueryInt(strName, defValue);
            }
        }
        /// <summary>
        /// 将对象转换为Int32类型
        /// </summary>
        /// <param name="expression">要转换的字符串</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>转换后的int类型结果</returns>
        public static int StrToInt(object expression, int defValue)
        {
            if (expression != null)
            {
                return StrToInt(expression.ToString(), defValue);
            }
            return defValue;
        }

        /// <summary>
        /// 将字符串转换为Int32类型
        /// </summary>
        /// <param name="expression">要转换的字符串</param>
        /// <param name="defValue">缺省值</param>
        /// <returns>转换后的int类型结果</returns>
        public static int StrToInt(string str, int defValue)
        {
            if (str == null)
                return defValue;
            if (str.Length > 0 && str.Length <= 11 && Regex.IsMatch(str, @"^[-]?[0-9]*$"))
            {
                if ((str.Length < 10) || (str.Length == 10 && str[0] == '1') || (str.Length == 11 && str[0] == '-' && str[1] == '1'))
                {
                    return Convert.ToInt32(str);
                }
            }
            return defValue;
        }


    }
}
