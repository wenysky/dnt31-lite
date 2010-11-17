using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Serialization;

namespace Discuz.TestConsole
{
    /// <summary>
    /// Session信息类
    /// </summary>
    [XmlRoot("auth_getSession_response", Namespace = "http://nt.discuz.net/api/", IsNullable = false)]
    public class SessionInfo
    {
        [XmlElement("session_key")]
        public string SessionKey;

        [XmlElement("uid")]
        public long UId;

        [XmlIgnore]
        public string Secret;

        [XmlElement("user_name")]
        public string UserName;

        [XmlElement("expires")]
        public long Expires;

        public SessionInfo()
        { }

        // use this if you want to create a session based on infinite session
        // credentials
        public SessionInfo(string session_key, long uid, string secret, string rest_url)
        {
            this.SessionKey = session_key;
            this.UId = uid;
            this.Secret = secret;
            this.Expires = 0;
        }
    }
}
