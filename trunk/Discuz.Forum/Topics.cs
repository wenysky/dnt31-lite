using System;
using System.Data;
using System.Data.Common;
using System.Text.RegularExpressions;
using System.IO;

using System.Text;
using Discuz.Common;
using Discuz.Data;
using Discuz.Config;
using Discuz.Entity;
using Discuz.Common.Generic;

namespace Discuz.Forum
{
    /// <summary>
    /// ���������
    /// </summary>
    public class Topics
    {
        /// <summary>
        /// �����û�Id��ȡ��ظ�������������
        /// </summary>
        /// <param name="userId">�û�Id</param>
        /// <param name="isReplyUid">trueΪ�ظ��û���Uid, falseΪ��ǰ�����˵�uid</param>
        /// <returns>�ظ�������������</returns>
        public static int GetTopicsCountbyUserId(int userId, bool isReplyUid)
        {
            if (isReplyUid)
                return Data.Topics.GetTopicReplyCountbByUserId(userId);
            else
                return Data.Topics.GetTopicCountByUserId(userId);
        }

        /// <summary>
        /// ����������
        /// </summary>
        /// <param name="originalTopicInfo">������Ϣ</param>
        /// <returns>��������ID</returns>
        public static int CreateTopic(TopicInfo topicinfo)
        {
            return (topicinfo != null ? DatabaseProvider.GetInstance().CreateTopic(topicinfo) : 0);
        }

        //TODO:��ҪǨ����forums.cs
        /// <summary>
        /// ���Ӹ�����������
        /// </summary>
        /// <param name="fpidlist">�����id�б�</param>
        /// <param name="topics">������</param>   
        public static void AddParentForumTopics(string fpidlist, int topics)
        {
            if (Utils.IsNumericList(fpidlist) && topics > 0)
            {
                DatabaseProvider.GetInstance().AddParentForumTopics(fpidlist, topics);
            }
        }

        /// <summary>
        /// ���������Ϣ
        /// </summary>
        /// <param name="tid">Ҫ��õ�����ID</param>
        public static TopicInfo GetTopicInfo(int tid)
        {
            return GetTopicInfo(tid, 0, 0);
        }

        /// <summary>
        /// ���������Ϣ
        /// </summary>
        /// <param name="tid">Ҫ��õ�����ID</param>
        /// <param name="fid">���ID</param>
        /// <param name="mode">����������߶�ӦID����</param>
        /// <returns></returns>
        public static TopicInfo GetTopicInfo(int tid, int fid, byte mode)
        {
            return Data.Topics.GetTopicInfo(tid, fid, mode);
        }


        /// <summary>
        /// ��������б�
        /// </summary>
        /// <param name="topiclist">����id�б�</param>
        /// <returns>�����б�</returns>
        public static DataTable GetTopicList(string topicList)
        {
            return Utils.IsNumericList(topicList) ? GetTopicList(topicList, -10) : null;
        }

        /// <summary>
        /// ���ָ���������б�
        /// </summary>
        /// <param name="topiclist">����ID�б�</param>
        /// <param name="displayorder">order������( WHERE [displayorder]>��ֵ)</param>
        /// <returns>�����б�</returns>
        public static DataTable GetTopicList(string topicList, int displayOrder)
        {
            return Utils.IsNumericList(topicList) ? Data.Topics.GetTopicList(topicList, displayOrder) : null;
        }

        /// <summary>
        /// �õ��ö�������Ϣ
        /// </summary>
        /// <param name="fid">���ID</param>
        /// <returns>�ö�����</returns>
        public static DataRow GetTopTopicListID(int fid)
        {
            DataRow dr = null;
            string xmlPath = Utils.GetMapPath(BaseConfigs.GetForumPath + "cache/topic/" + fid + ".xml");
            if (Utils.FileExists(xmlPath))
            {
                DataSet ds = new DataSet();
                ds.ReadXml(@xmlPath, XmlReadMode.ReadSchema);
                if (ds.Tables.Count > 0)
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        dr = ds.Tables[0].Rows[0];
                        if (Utils.CutString(dr["tid"].ToString(), 0, 1) == ",")
                        {
                            dr["tid"] = Utils.CutString(dr["tid"].ToString(), 1);
                        }
                    }
                }
                ds.Dispose();
            }
            return dr;
        }


        /// <summary>
        /// ��������Ļظ���
        /// </summary>
        /// <param name="tid">����ID</param>
        public static void UpdateTopicReplyCount(int tid)
        {
            Data.Topics.UpdateTopicReplyCount(tid, Data.PostTables.GetPostTableId(tid));
        }

        /// <summary>
        /// �õ���ǰ���������(δ�ر�)��������
        /// </summary>
        /// <param name="fid">���ID</param>
        /// <returns>��������</returns>
        public static int GetTopicCount(int fid)
        {
            return Data.Topics.GetTopicCount(fid);
        }


        /// <summary>
        /// �õ���ǰ�������������
        /// </summary>
        /// <param name="fid">���ID</param>
        /// <returns>��������</returns>
        public static int GetTopicCount(int fid, bool includeClosedTopic, string condition)
        {
            return Data.Topics.GetTopicCount(fid, includeClosedTopic, condition);
        }

        /// <summary>
        /// �õ�������������������
        /// </summary>
        /// <param name="condition">����</param>
        /// <returns>��������</returns>
        public static int GetTopicCount(string condition)
        {
            return Data.Topics.GetTopicCount(condition);
        }


        /// <summary>
        /// ��������Ϊ�ѱ�����
        /// </summary>
        /// <param name="topiclist">����id�б�</param>
        /// <param name="moderated">�������id</param>
        /// <returns>�ɹ�����1�����򷵻�0</returns>
        public static int UpdateTopicModerated(string topiclist, int moderated)
        {
            return Data.Topics.UpdateTopicModerated(topiclist, moderated);
        }

        /// <summary>
        /// ��������
        /// </summary>
        /// <param name="originalTopicInfo">������Ϣ</param>
        /// <returns>�ɹ�����1�����򷵻�0</returns>
        public static int UpdateTopic(TopicInfo topicinfo)
        {
            return topicinfo != null ? Data.Topics.UpdateTopic(topicinfo) : 0;
        }

        /// <summary>
        /// �ж������б��Ƿ��ڵ�ǰ���
        /// </summary>
        /// <param name="topicidlist">��������</param>
        /// <param name="fid">���ID</param>
        /// <returns>���򷵻�TREU,����FLASH</returns>
        public static bool InSameForum(string topicidlist, int fid)
        {
            return Utils.SplitString(topicidlist, ",").Length == Data.Topics.GetTopicCountInForumAndTopicIdList(topicidlist, fid);
        }

        /// <summary>
        /// ����������Ϊ��������
        /// </summary>
        /// <param name="tid">����ID</param>
        /// <returns></returns>
        public static int UpdateTopicHide(int tid)
        {
            return Data.Topics.UpdateTopicHide(tid);
        }

        /// <summary>
        /// ��������б�
        /// </summary>
        /// <param name="forumid">���ID</param>
        /// <param name="pageid">��ǰҳ��</param>
        /// <param name="tpp">ÿҳ������</param>
        /// <returns>�����б�</returns>
        public static DataTable GetTopicList(int forumid, int pageid, int tpp)
        {
            return Data.Topics.GetTopicList(forumid, pageid, tpp);
        }

        //���õ��������б��м����������������ֶ�
        public static DataTable GetTopicTypeName(DataTable topiclist)
        {
            DataColumn dc = new DataColumn();
            dc.ColumnName = "topictypename";
            dc.DataType = Type.GetType("System.String");
            dc.DefaultValue = "";
            dc.AllowDBNull = true;
            topiclist.Columns.Add(dc);

            SortedList<int, string> topictypearray = Caches.GetTopicTypeArray();
            object typictypename = null;
            foreach (DataRow dr in topiclist.Rows)
            {
                typictypename = topictypearray[Int32.Parse(dr["typeid"].ToString())];
                dr["topictypename"] = (typictypename != null && typictypename.ToString().Trim() != "") ? "[" + typictypename.ToString().Trim() + "]" : "";
            }
            return topiclist;
        }

        /// <summary>
        /// �����û�Id��ȡ��ظ����������б�
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetTopicsByReplyUserId(int userId, int pageIndex, int pageSize, int newmin, int hot)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetTopicListByReplyUserId(userId, pageIndex, pageSize);
            foreach (TopicInfo topic in list)
            {
                LoadTopicForumName(topic);
                LoadTopicFolder(0, newmin, hot, topic);
                LoadTopicHighlightTitle(topic);
            }
            return list;
        }

        /// <summary>
        /// ��ȡ��Ҫ��˵�����
        /// </summary>
        /// <param name="forumidlist">���ID</param>
        /// <param name="tpp">ÿҳ������</param>
        /// <param name="pageid">ҳ��</param>
        /// <returns></returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetUnauditNewTopic(string forumidlist, int tpp, int pageid, int filter)
        {
            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetUnauditNewTopic(forumidlist, tpp, pageid, filter);
            foreach (TopicInfo info in list)
            {
                info.Forumname = Forums.GetForumInfo(info.Fid).Name;
            }

            return list;
        }

        /// <summary>
        /// ��ȡ��Ҫ��ע���б������
        /// </summary>
        /// <param name="fidlist">���ID</param>
        /// <param name="keyword">�����ؼ���</param>
        /// <returns></returns>
        public static int GetAttentionTopicCount(string fidlist, string keyword)
        {
            return Utils.IsNumericList(fidlist) ? Data.Topics.GetAttentionTopicCount(fidlist, keyword) : 0;
        }

        /// <summary>
        /// ��ȡ��Ҫ��˵���������
        /// </summary>
        /// <param name="fidlist">���ID</param>
        /// <returns></returns>
        public static int GetUnauditNewTopicCount(string fidlist, int filter)
        {
            return Utils.IsNumericList(fidlist) ? Data.Topics.GetUnauditNewTopicCount(fidlist, filter) : 0;
        }


        /// <summary>
        /// �����û�Id��ȡ�����б�
        /// </summary>
        /// <param name="userId">�û�id</param>
        /// <param name="pageIndex">ҳ��</param>
        /// <param name="pageSize">ÿҳ����</param>
        /// <param name="newmin">����ʱЧ</param>
        /// <param name="hot">��������</param>
        /// <returns></returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetTopicsByUserId(int userId, int pageIndex, int pageSize, int newmin, int hot)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetTopicsByUserId(userId, pageIndex, pageSize);
            foreach (TopicInfo topic in list)
            {
                LoadTopicForumName(topic);
                LoadTopicHighlightTitle(topic);
                LoadTopicFolder(0, newmin, hot, topic);
            }
            return list;
        }


        /// <summary>
        /// ����ö�������Ϣ�б�
        /// </summary>
        /// <param name="fid">���ID</param>
        /// <param name="pageSize">ÿҳ��ʾ������</param>
        /// <param name="pageIndex">��ǰҳ��</param>
        /// <param name="tids">����id�б�</param>
        /// <returns>������Ϣ�б�</returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetTopTopicList(int fid, int pageSize, int pageIndex, string tids, int autocloseTime, int topicTypePrefix)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetTopTopicList(fid, pageSize, pageIndex, tids);

            LoadTopicListExtraInfo(autocloseTime, topicTypePrefix, list);

            return list;
        }

        /// <summary>
        /// ���һ��������Ϣ�б�
        /// </summary>
        /// <param name="fid">���ID</param>
        /// <param name="pageSize">ÿҳ��ʾ������</param>
        /// <param name="pageIndex">��ǰҳ��</param>
        /// <param name="startNumber">�ö�������</param>
        /// <param name="newMinutes">������ٷ����ڵ�������Ϊ��������</param>
        /// <param name="hotReplyNumber">���ٸ�������Ϊ����������</param>
        /// <param name="autocloseTime">�Զ��ر�ʱ��</param>
        /// <param name="topicTypePrefix">�������ǰ׺</param>
        /// <param name="condition">��ѯ����</param>
        /// <returns>������Ϣ�б�</returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetTopicList(int fid, int pageSize, int pageIndex, int startNumber, int newMinutes, int hotReplyNumber, int autocloseTime, int topicTypePrefix, string condition)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetTopicList(fid, pageSize, pageIndex, startNumber, condition);

            LoadTopicListExtraInfo(autocloseTime, topicTypePrefix, list);

            return list;
        }

        /// <summary>
        /// ��ȡ�����б�
        /// </summary>
        /// <param name="fid">���id</param>
        /// <param name="pagesize">ÿ����ҳ��������</param>
        /// <param name="pageindex">��ҳҳ��</param>
        /// <param name="startnum">�ö�������</param>
        /// <param name="newmin">������ٷ����ڵ�������Ϊ��������</param>
        /// <param name="hot">���ٸ�������Ϊ����������</param>
        /// <param name="condition">����</param>
        /// <param name="orderby">����</param>
        /// <param name="ascdesc">��/����</param>
        /// <returns>�����б�</returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetTopicList(int fid, int pageSize, int pageIndex, int startNumber, int newMinutes, int hotReplyNumber, int autocloseTime, int topicTypePrefix, string condition, string orderby, int ascdesc)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetTopicList(fid, pageSize, pageIndex, startNumber, condition, orderby, ascdesc);

            LoadTopicListExtraInfo(autocloseTime, topicTypePrefix, newMinutes, hotReplyNumber, list);

            return list;
        }

        /// <summary>
        /// �Է�������,��������ҳ����ʾ���в�ѯ�ĺ���
        /// </summary>
        /// <param name="pagesize">ÿ����ҳ��������</param>
        /// <param name="pageindex">��ҳҳ��</param>
        /// <param name="startnum">�ö�������</param>
        /// <param name="newmin">������ٷ����ڵ�������Ϊ��������</param>
        /// <param name="hot">���ٸ�������Ϊ����������</param>
        /// <param name="condition">����</param>
        /// <returns>�����б�</returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetTopicListByCondition(int pageSize, int pageIndex, int startNumber, int newMinutes, int hotReplyNumber, int autocloseTime, int topicTypePrefix, string condition, string orderby, int ascdesc)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetTopicListByCondition(pageSize, pageIndex, startNumber, condition, orderby, ascdesc);

            LoadTopicListExtraInfo(autocloseTime, topicTypePrefix, newMinutes, hotReplyNumber, list);

            return list;
        }

        /// <summary>
        /// ���htmltitle
        /// </summary>
        /// <param name="htmltitle">html����</param>
        /// <param name="topicid">����id</param>
        public static void WriteHtmlTitleFile(string htmltitle, int topicid)
        {
            StringBuilder dir = new StringBuilder();
            dir.Append(BaseConfigs.GetForumPath);
            dir.Append("cache/topic/magic/");

            if (!Directory.Exists(Utils.GetMapPath(dir.ToString())))
                Utils.CreateDir(Utils.GetMapPath(dir.ToString()));

            dir.Append((topicid / 1000 + 1));
            dir.Append("/");

            if (!Directory.Exists(Utils.GetMapPath(dir.ToString())))
                Utils.CreateDir(Utils.GetMapPath(dir.ToString()));

            string filename = Utils.GetMapPath(dir.ToString() + topicid.ToString() + "_htmltitle.config");
            try
            {
                using (FileStream fs = new FileStream(filename, FileMode.Create, FileAccess.ReadWrite, FileShare.ReadWrite))
                {
                    Byte[] info = System.Text.Encoding.UTF8.GetBytes(Utils.RemoveUnsafeHtml(htmltitle));
                    fs.Write(info, 0, info.Length);
                    fs.Close();
                }
            }
            catch { }
        }

        /// <summary>
        /// �����Ӧ��magicֵ
        /// </summary>
        /// <param name="magic">���ݿ���magicֵ</param>
        /// <param name="magicType">magic����</param>
        /// <returns></returns>
        public static int GetMagicValue(int magic, MagicType magicType)
        {
            if (magic == 0)
                return 0;

            string m = magic.ToString();
            switch (magicType)
            {
                case MagicType.HtmlTitle:
                    if (m.Length >= 2)
                        return TypeConverter.ObjectToInt(m.Substring(1, 1));
                    break;
                case MagicType.MagicTopic:
                    if (m.Length >= 5)
                        return TypeConverter.ObjectToInt(m.Substring(2, 3));
                    break;
                case MagicType.TopicTag:
                    if (m.Length >= 6)
                        return TypeConverter.ObjectToInt(m.Substring(5, 1));
                    break;
            }
            return 0;

        }

        /// <summary>
        /// ������Ӧ��magicֵ
        /// </summary>
        /// <param name="magic">ԭʼmagicֵ</param>
        /// <param name="magicType"></param>
        /// <param name="bonusstat"></param>
        /// <returns></returns>
        public static int SetMagicValue(int magic, MagicType magicType, int newmagicvalue)
        {
            string[] m = Utils.SplitString(magic.ToString(), "");
            switch (magicType)
            {
                case MagicType.HtmlTitle:
                    if (m.Length >= 2)
                    {
                        m[1] = newmagicvalue.ToString().Substring(0, 1);
                        return TypeConverter.StrToInt(string.Join("", m), magic);
                    }
                    else
                    {
                        return TypeConverter.StrToInt(string.Format("1{0}", newmagicvalue.ToString().Substring(0, 1)), magic);
                    }
                case MagicType.MagicTopic:
                    if (m.Length >= 5)
                    {
                        string[] t = Utils.SplitString(newmagicvalue.ToString().PadLeft(3, '0'), "");
                        m[2] = t[0];
                        m[3] = t[1];
                        m[4] = t[2];
                        return TypeConverter.StrToInt(string.Join("", m), magic);
                    }
                    else
                    {
                        return TypeConverter.StrToInt(string.Format("1{0}{1}", GetMagicValue(magic, MagicType.HtmlTitle), newmagicvalue.ToString().PadLeft(3, '0').Substring(0, 3)), magic);
                    }
                case MagicType.TopicTag:
                    if (m.Length >= 6)
                    {
                        m[5] = newmagicvalue.ToString().Substring(0, 1);
                        return TypeConverter.StrToInt(string.Join("", m), magic);
                    }
                    else
                    {
                        return TypeConverter.StrToInt(string.Format("1{0}{1}{2}", GetMagicValue(magic, MagicType.HtmlTitle), GetMagicValue(magic, MagicType.MagicTopic).ToString("000"), newmagicvalue.ToString().Substring(0, 1)), magic);
                    }
            }
            return magic;
        }

        /// <summary>
        /// ��ȡָ�����ӵ�html����
        /// </summary>
        /// <param name="topicid"></param>
        /// <returns></returns>
        public static string GetHtmlTitle(int topicid)
        {
            StringBuilder dir = new StringBuilder();
            dir.Append(BaseConfigs.GetForumPath);
            dir.Append("cache/topic/magic/");
            dir.Append((topicid / 1000 + 1));
            dir.Append("/");
            string filename = Utils.GetMapPath(dir.ToString() + topicid.ToString() + "_htmltitle.config");
            if (!File.Exists(filename))
                return "";

            using (FileStream fs = new FileStream(filename, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
            {
                using (StreamReader sr = new StreamReader(fs, Encoding.UTF8))
                {
                    return sr.ReadToEnd();
                }
            }
        }

        /// <summary>
        /// ���������Tag��ȡ�������(�οͿɼ������)
        /// </summary>
        /// <param name="topicid">����Id</param>
        /// <returns></returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetRelatedTopicList(int topicId, int count)
        {
            return topicId > 0 ? Data.TopicTagCaches.GetRelatedTopicList(topicId, count) : null;
        }

        /// <summary>
        /// ��ȡʹ��ͬһtag�������б�
        /// </summary>
        /// <param name="tagid">TagId</param>
        /// <returns></returns>
        public static int GetTopicCountByTagId(int tagId)
        {
            return tagId > 0 ? Data.Topics.GetTopicCountByTagId(tagId) : 0;
        }

        /// <summary>
        /// ��ȡʹ��ͬһtag�������б�
        /// </summary>
        /// <param name="tagid">TagId</param>
        /// <returns></returns>
        public static List<TopicInfo> GetTopicsWithSameTag(int tagid, int count)
        {
            return GetTopicListByTagId(tagid, 1, count);
        }

        /// <summary>
        /// ��ȡʹ��ͬһtag�������б�
        /// </summary>
        /// <param name="tagid">TagId</param>
        /// <param name="pageindex">ҳ��</param>
        /// <param name="pagesize">ҳ��С</param>
        /// <returns></returns>
        public static List<TopicInfo> GetTopicListByTagId(int tagId, int pageIndex, int pageSize)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            List<TopicInfo> list = Data.Topics.GetTopicListByTagId(tagId, pageIndex, pageSize);
            foreach (TopicInfo topic in list)
            {
                LoadTopicForumName(topic);
            }
            return list;
        }

        /// <summary>
        /// ������������
        /// </summary>
        public static void NeatenRelateTopics()
        {
            Data.TopicTagCaches.NeatenRelateTopics();
        }

        /// <summary>
        /// ɾ���������������¼
        /// </summary>
        /// <param name="topicid"></param>
        public static void DeleteRelatedTopics(int topicId)
        {
            Data.TopicTagCaches.DeleteRelatedTopics(topicId);
        }

        /// <summary>
        /// ���ӱ���������չ��Ϣ
        /// </summary>
        /// <param name="debatetopic"></param>
        public static void CreateDebateTopic(DebateInfo debateTopic)
        {
            Data.Debates.CreateDebateTopic(debateTopic);
        }

        /// <summary>
        /// ͨ������֤������
        /// </summary>
        /// <param name="tid"></param>
        public static void PassAuditNewTopic(string postTableId, string ignore, string validate, string delete, string fidlist)
        {
            if (!Utils.IsNumeric(postTableId))
                return;
            Data.Topics.PassAuditNewTopic(postTableId, ignore, validate, delete, fidlist);
        }

        /// <summary>
        /// ��ȡ��Ҫ����ע�������б�
        /// </summary>
        /// <param name="fidList">����б�ID</param>
        /// <param name="tpp">��ҳ��</param>
        /// <param name="pageIndex">��ǰҳ��</param>
        /// <param name="keyword">�ؼ���</param>
        /// <returns></returns>
        public static List<TopicInfo> GetAttentionTopics(string fidList, int tpp, int pageIndex, string keyword)
        {
            return Data.Topics.GetAttentionTopics(fidList, tpp, pageIndex, keyword);
        }

        /// <summary>
        /// �������¹�ע�б�
        /// </summary>
        /// <param name="tidList">�����б�</param>
        public static void UpdateTopicAttentionByTidList(string tidList, int attention)
        {
            Data.Topics.UpdateTopicAttentionByTidList(tidList, attention);
        }

        /// <summary>
        /// �������¹�ע�б�
        /// </summary>
        /// <param name="fidlist">����б�</param>
        /// <param name="datetime">ʱ���</param>
        public static void UpdateTopicAttentionByFidList(string fidList, int datetime)
        {
            Data.Topics.UpdateTopicAttentionByFidList(fidList, 0, DateTime.Now.AddDays(-datetime).ToString());
        }

        /// <summary>
        /// ��ʶ����Ϊ�Ѷ�
        /// </summary>
        /// <param name="topic"></param>
        public static void MarkOldTopic(TopicInfo topic)
        {
            string oldtopic = ForumUtils.GetCookie("oldtopic") + "D";
            if (oldtopic.IndexOf("D" + topic.Tid.ToString() + "D") == -1 && DateTime.Now.AddMinutes(-1 * 600) < DateTime.Parse(topic.Lastpost))
            {
                oldtopic = "D" + topic.Tid.ToString() + Utils.CutString(oldtopic, 0, oldtopic.Length - 1);
                if (oldtopic.Length > 3000)
                {
                    oldtopic = Utils.CutString(oldtopic, 0, 3000);
                    oldtopic = Utils.CutString(oldtopic, 0, oldtopic.LastIndexOf("D"));
                }
                ForumUtils.WriteCookie("oldtopic", oldtopic);
            }
        }

        public static string GetTopicCountCondition(out string type, string gettype, int getnewtopic)
        {
            return Data.Topics.GetTopicCountCondition(out type, gettype, getnewtopic);
        }

        /// <summary>
        /// ��ȡ������
        /// </summary>
        /// <param name="postName">�ֱ�����</param>
        /// <param name="forumId">���Id</param>
        /// <param name="posterList">�����б�</param>
        /// <param name="keyList">�ؼ����б�</param>
        /// <param name="startDate">��ʼ����</param>
        /// <param name="endDate">��������</param>
        /// <returns></returns>
        public static int GetTopicListCount(string postName, int forumId, string posterList, string keyList, string startDate, string endDate)
        {
            return Data.Topics.GetTopicListCount(postName, forumId, posterList, keyList, startDate, endDate);
        }

        /// <summary>
        /// ��ȡ�ۺ���ҳ������
        /// </summary>
        /// <returns></returns>
        public static int GetHotTopicsCount(int fid,int timeBetween)
        {
            return Data.Topics.GetHotTopicsCount(fid,timeBetween);
        }

        /// <summary>
        /// ��ȡ�����б�
        /// </summary>
        /// <param name="postName">�ֱ�����</param>
        /// <param name="forumId">���Id</param>
        /// <param name="posterList">�����б�</param>
        /// <param name="keyList">�ؼ����б�</param>
        /// <param name="startDate">��ʼ����</param>
        /// <param name="endDate">��������</param>
        /// <param name="pageSize">ÿҳ����</param>
        /// <param name="currentPage">��ǰҳ��</param>
        /// <returns></returns>
        public static DataTable GetTopicList(string postName, int forumId, string posterList, string keyList, string startDate, string endDate, int pageSize, int currentPage)
        {
            return Data.Topics.GetTopicList(postName, forumId, posterList, keyList, startDate, endDate, pageSize, currentPage);
        }

        /// <summary>
        /// ��ȡ�ۺ���ҳ���б�
        /// </summary>
        /// <returns></returns>
        public static DataTable GetHotTopicsList(int pageSize, int pageIndex, int fid, string showType, int timeBetween)
        {
            return Data.Topics.GetHotTopicsList(pageSize, pageIndex, fid, showType,timeBetween);
        }


        /// <summary>
        /// ͨ������֤������
        /// </summary>
        /// <param name="postTableId">��ǰ���ӷֱ�Id</param>
        /// <param name="tid">����Id</param>
        public static void PassAuditNewTopic(string tidList)
        {
            string[] tidarray = tidList.Split(',');
            float[] values = null;
            ForumInfo forum = null;
            TopicInfo topic = null;
            int fid = -1;
            foreach (string tid in tidarray)
            {
                topic = Topics.GetTopicInfo(int.Parse(tid));    //��ȡ������Ϣ
                if (fid != topic.Fid)    //����һ���͵�ǰ���ⲻ��һ�������ʱ�����¶�ȡ���Ļ�������
                {
                    fid = topic.Fid;
                    forum = Discuz.Forum.Forums.GetForumInfo(fid);
                    if (!forum.Postcredits.Equals(""))
                    {
                        int index = 0;
                        float tempval = 0;
                        values = new float[8];
                        foreach (string ext in Utils.SplitString(forum.Postcredits, ","))
                        {
                            if (index == 0)
                            {
                                if (!ext.Equals("True"))
                                {
                                    values = null;
                                    break;
                                }
                                index++;
                                continue;
                            }
                            tempval = Utils.StrToFloat(ext, 0);
                            values[index - 1] = tempval;
                            index++;
                            if (index > 8)
                            {
                                break;
                            }
                        }
                    }
                }

                if (values != null) //ʹ�ð���ڻ���
                    UserCredits.UpdateUserCreditsByPostTopic(topic.Posterid, values);
                else //ʹ��Ĭ�ϻ���
                    UserCredits.UpdateUserCreditsByPostTopic(topic.Posterid);
            }

            Data.Topics.PassAuditNewTopic(PostTables.GetPostTableId(), tidList);
        }

        /// <summary>
        /// �����ҵ�����
        /// </summary>
        public static void UpdateMyTopic()
        {
            Data.Topics.UpdateMyTopic();
        }


        /// <summary>
        /// ��ȡָ���û���Ͱ���Ϣ�������DisplayOrder
        /// </summary>
        /// <param name="usergroupinfo"></param>
        /// <param name="useradminid"></param>
        /// <param name="forum"></param>
        /// <param name="topicInfo"></param>
        /// <param name="message"></param>
        /// <param name="disablepost"></param>
        /// <returns></returns>
        public static int GetTitleDisplayOrder(UserGroupInfo usergroupinfo, int useradminid, ForumInfo forum, TopicInfo topicInfo, string message, int disablepost)
        {
            int displayOrder = 0;
            if (forum.Modnewposts == 1 && useradminid != 1)
            {
                if (useradminid > 1)
                    displayOrder = disablepost == 1 ? 0 : -2;
                else
                    displayOrder = -2;
            }
            else
                displayOrder = 0;

            if (useradminid != 1)
            {
                if (Scoresets.BetweenTime(GeneralConfigs.GetConfig().Postmodperiods) || ForumUtils.HasAuditWord(topicInfo.Title) || ForumUtils.HasAuditWord(message))
                    displayOrder = -2;
            }
            return displayOrder;
        }

        /// <summary>
        /// ��������ȡ����������б�
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public static DataTable GetAuditTopicList(string condition)
        {
            return Data.Topics.GetAuditTopicList(condition);
        }

        /// <summary>
        /// ��ȡ������������
        /// </summary>
        /// <param name="fid">���Id</param>
        /// <param name="keyWord">�ؼ���</param>
        /// <param name="displayOrder">��ʾ���</param>
        /// <param name="digest">����</param>
        /// <param name="attachment">����</param>
        /// <param name="poster">����</param>
        /// <param name="lowerUpper">�Ƿ����ִ�Сд</param>
        /// <param name="viewsMin">��С�鿴��</param>
        /// <param name="viewsMax">���鿴��</param>
        /// <param name="repliesMax">���ظ���</param>
        /// <param name="repliesMin">��С�ظ���</param>
        /// <param name="rate">�ۼ�</param>
        /// <param name="lastPost">���ظ�</param>
        /// <param name="postDateTimeStart">��ʼ����</param>
        /// <param name="postDateTimeEnd">��������</param>
        /// <returns></returns>
        public static string GetSearchTopicsCondition(int fid, string keyWord, string displayOrder, string digest, string attachment, string poster,
            bool lowerUpper, string viewsMin, string viewsMax, string repliesMax, string repliesMin, string rate, string lastPost,
            DateTime postDateTimeStart, DateTime postDateTimeEnd)
        {
            return Data.Topics.GetSearchTopicsCondition(fid, keyWord, displayOrder, digest, attachment, poster, lowerUpper,
                viewsMin, viewsMax, repliesMax, repliesMin, rate, lastPost, postDateTimeStart, postDateTimeEnd);
        }

        /// <summary>
        /// ��ȡһ����Χ�ڵ�����
        /// </summary>
        /// <param name="tagname">��ǩ����</param>
        /// <param name="from">���</param>
        /// <param name="end"></param>
        /// <param name="type">����</param>
        /// <returns></returns>
        public static DataTable GetTopicNumber(string tagname, int from, int end, int type)
        {
            return Data.Topics.GetTopicNumber(tagname, from, end, type);
        }

        /// <summary>
        /// ɾ������վ���ڵ�����
        /// </summary>
        /// <param name="recycleDay">��������</param>
        public static void DeleteRecycleTopic(int recycleDay)
        {
            string topicList = "";
            DataTable dt = Data.Topics.GetTidForModeratorManageLogByPostDateTime(DateTime.Now.AddDays(-recycleDay));
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    topicList += dr["tid"].ToString() + ",";
                }
                TopicAdmins.DeleteTopics(topicList.Trim(','), 0, false);
            }
        }

        /// <summary>
        /// ��������ȡ����
        /// </summary>
        /// <param name="condition">����</param>
        /// <returns></returns>
        public static DataTable GetTopicsByCondition(string condition)
        {
            return Data.Topics.GetTopicsByCondition(condition);
        }

        #region  ��ʱ��������ع�����
        //TODO: �ع�
        public static string GetTopicFilterCondition(string filter)
        {
            return DatabaseProvider.GetInstance().GetTopicFilterCondition(filter);
        }
        #endregion



        #region Private Methods
        /// <summary>
        /// �����������ڰ������
        /// </summary>
        /// <param name="topicInfo"></param>
        private static void LoadTopicForumName(TopicInfo topicInfo)
        {
            ForumInfo forumInfo = Forums.GetForumInfo(topicInfo.Fid);
            topicInfo.Forumname = forumInfo == null ? "" : forumInfo.Name;
        }

        /// <summary>
        /// ��������ͼ����Ϣ
        /// </summary>
        /// <param name="autocloseTime">�Զ��ر�ʱ��(��λ:Сʱ)</param>
        /// <param name="newMinutes">������ʧЧ</param>
        /// <param name="hotReplyNumber">��������</param>
        /// <param name="topicInfo">����</param>
        private static void LoadTopicFolder(int autocloseTime, int newMinutes, int hotReplyNumber, TopicInfo topicInfo)
        {
            //����رձ��
            if (topicInfo.Closed == 0)
            {
                string oldtopic = ForumUtils.GetCookie("oldtopic") + "D";
                if (newMinutes > 0 && oldtopic.IndexOf("D" + topicInfo.Tid.ToString() + "D") == -1 && DateTime.Now.AddMinutes(-1 * newMinutes) < DateTime.Parse(topicInfo.Lastpost))
                    topicInfo.Folder = "new";
                else
                    topicInfo.Folder = "old";

                if (hotReplyNumber > 0 && topicInfo.Replies >= hotReplyNumber)
                    topicInfo.Folder += "hot";

                if (autocloseTime > 0 && Utils.StrDateDiffHours(topicInfo.Postdatetime, autocloseTime * 24) > 0)
                {
                    topicInfo.Closed = 1;
                    topicInfo.Folder = "closed";
                }
            }
            else
            {
                topicInfo.Folder = "closed";
                if (topicInfo.Closed > 1)
                {
                    topicInfo.Tid = topicInfo.Closed;
                    topicInfo.Folder = "move";
                }
            }
        }

        private static void LoadTopicHighlightTitle(TopicInfo topicInfo)
        {
            if (topicInfo.Highlight != "")
                topicInfo.Title = "<span style=\"" + topicInfo.Highlight + "\">" + topicInfo.Title + "</span>";
        }

      
        /// <summary>
        /// �������������Ϣ
        /// </summary>
        /// <param name="topicTypePrefix"></param>
        /// <param name="topicTypeList"></param>
        /// <param name="topicinfo"></param>
        private static void LoadTopicType(int topicTypePrefix, SortedList<int, string> topicTypeList, TopicInfo topicinfo)
        {
            //��չ����
            if (topicTypePrefix > 0 && topicinfo.Typeid > 0)
            {
                string typeName = "";
                topicTypeList.TryGetValue(topicinfo.Typeid, out typeName); 
                topicinfo.Topictypename = typeName.Trim();
            }
        }

        /// <summary>
        /// ���������б�����Ϣ
        /// </summary>
        /// <param name="fid">���ID</param>
        /// <param name="autocloseTime">�Զ��ر�ʱ��</param>
        /// <param name="topicTypePrefix">�������ǰ׺</param>
        /// <param name="list">�����б�</param>
        private static void LoadTopicListExtraInfo(int autocloseTime, int topicTypePrefix, int newMinutes, int hotReplyNumber, Discuz.Common.Generic.List<TopicInfo> list)
        {
            SortedList<int, string> topicTypeList = Caches.GetTopicTypeArray();
            StringBuilder closedIds = new StringBuilder();
            foreach (TopicInfo topic in list)
            {
                if (topic.Closed == 0 && autocloseTime > 0 && Utils.StrDateDiffHours(topic.Postdatetime, autocloseTime * 24) > 0)
                {
                    closedIds.Append(topic.Tid.ToString());
                    closedIds.Append(",");
                }
                LoadTopicFolder(autocloseTime, newMinutes, hotReplyNumber, topic);
                LoadTopicHighlightTitle(topic);
                LoadTopicType(topicTypePrefix, topicTypeList, topic);
            }
 
            if (closedIds.Length > 0)
                TopicAdmins.SetClose(closedIds.ToString().TrimEnd(','), 1);
        }

        /// <summary>
        /// ���������б�����Ϣ
        /// </summary>
        /// <param name="fid">���ID</param>
        /// <param name="autocloseTime">�Զ��ر�ʱ��</param>
        /// <param name="topicTypePrefix">�������ǰ׺</param>
        /// <param name="list">�����б�</param>
        private static void LoadTopicListExtraInfo(int autocloseTime, int topicTypePrefix, Discuz.Common.Generic.List<TopicInfo> list)
        {
            LoadTopicListExtraInfo(autocloseTime, topicTypePrefix, 600, 0, list);
        }

        /// <summary>
        /// ����displayorder����
        /// </summary>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <returns></returns>
        private static int CompareDisplayOrder(TopicInfo x, TopicInfo y)
        {
            return (new System.Collections.CaseInsensitiveComparer().Compare(x.Displayorder, y.Displayorder));
        }
        #endregion

    }
}
