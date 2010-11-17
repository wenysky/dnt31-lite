using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Serialization;

namespace Discuz.TestConsole
{
    public class Location
    {
        [XmlElement("street")]
        public string Street;

        [XmlElement("city")]
        public string City;

        [XmlElement("state")]
        public string State;

        [XmlElement("country")]
        public string Country;

        [XmlElement("zip")]
        public string Zip;
    }
}
