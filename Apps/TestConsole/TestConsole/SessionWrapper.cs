using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Serialization;

namespace Discuz.TestConsole
{
    public class SessionWrapper
    {
        [XmlIgnore()]
        internal DiscuzSession Session;
    }
}
