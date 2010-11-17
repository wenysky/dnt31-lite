using System;
using System.Xml.Serialization;
using Newtonsoft.Json;

namespace Discuz.TestConsole
{
    [XmlRoot("users_getLoggedInUser_response", Namespace = "http://nt.discuz.net/api/", IsNullable = false)]
    public class LoggedInUserResponse
    {
        [XmlText]
        public int Uid;
    }

    [XmlRoot("topics_getRecentReplies_response", Namespace = "http://nt.discuz.net/api/", IsNullable = false)]
    public class TopicGetRencentRepliesResponse
    {
        [XmlElement("count")]
        public int Count;

        [XmlElement("post")]
        public Post[] post_array;

        [JsonIgnore]
        public Post[] Posts
        {
            get { return post_array ?? new Post[0]; }
        }
        [JsonIgnore]
        [XmlAttribute("list")]
        public bool List;
    }
}
