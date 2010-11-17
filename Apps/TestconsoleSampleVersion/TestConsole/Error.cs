using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Serialization;
namespace Discuz.TestConsole
{
    [XmlRoot("error_response", Namespace = "http://nt.discuz.net/api/", IsNullable = false)]
    public class Error
    {
        [XmlElement("error_code")]
        public int ErrorCode;

        [XmlElement("error_msg")]
        public string ErrorMsg;

        [XmlElement("request_args", IsNullable = false)]
        public ArgResponse Args;
    }
}
