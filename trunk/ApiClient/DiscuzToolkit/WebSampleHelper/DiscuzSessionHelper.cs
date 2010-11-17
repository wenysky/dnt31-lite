using System;
using System.Collections.Generic;
using System.Text;
using Discuz.Toolkit;

namespace WebSampleHelper
{
    public class DiscuzSessionHelper
    {
        private static string apikey, secret, url;
        private static DiscuzSession ds;
        static DiscuzSessionHelper()
        {
            apikey = "9b65fc74182558a20ba076407dd928d9";
            secret = "85a7c5dfd12364ffcda8b24f3f8ee713";
            url = "http://localhost/";
            ds = new DiscuzSession(apikey, secret, url);
        }

        public static DiscuzSession GetSession()
        {
            return ds;
        }
    }
}
