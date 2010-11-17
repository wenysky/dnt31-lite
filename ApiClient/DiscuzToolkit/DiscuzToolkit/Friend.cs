using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Serialization;

namespace Discuz.Toolkit
{
    /// <summary>
    /// 好友类
    /// </summary>
    public class Friend : SessionWrapper
    {
        [XmlElement("uid")]
        public long UId;

        public Friend(long UId, DiscuzSession session)
        {
            this.UId = UId;
            this.Session = session;
        }

        public Friend()
        { }

        public User GetUserInfo()
        {
            User[] users = Session.GetUserInfo(new long[] { UId }, User.FIELDS);

            return users[0];
        }
        /*
        public bool IsFriendsWith(Friend friend)
        {
            FriendInfo[] info = IsFriendsWith(new Friend[] { friend });
            return info[0].AreFriends;
        }

        public Group[] Groups
        {
            get { return Session.GetGroups(UId, null); }
        }

        public Event[] Events
        {
            get { return Session.GetEvents(UId, null, 0, 0, null); }
        }

        public FriendInfo[] IsFriendsWith(Friend[] friends)
        {
            long[] me = new long[friends.Length];
            for (int i = 0; i < me.Length; i++)
                me[i] = UId;

            long[] them = new long[friends.Length];
            for (int i = 0; i < friends.Length; i++)
            {
                them[i] = friends[i].UId;
            }

            return Session.AreFriends(me, them);
        }
        */
    }

    /// <summary>
    /// 当前用户类
    /// </summary>
    public class Me : Friend
    {
        public Me(long uid, DiscuzSession session)
            : base(uid, session)
        { }

        //public Notifications Notifications
        //{
        //    get { return Session.GetNotifications(); }
        //}
    }
}
