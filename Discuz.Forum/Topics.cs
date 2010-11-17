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
    /// 主题操作类
    /// </summary>
    public class Topics
    {
        /// <summary>
        /// 按照用户Id获取其回复过的主题总数
        /// </summary>
        /// <param name="userId">用户Id</param>
        /// <param name="isReplyUid">true为回复用户的Uid, false为当前发帖人的uid</param>
        /// <returns>回复过的主题总数</returns>
        public static int GetTopicsCountbyUserId(int userId, bool isReplyUid)
        {
            if (isReplyUid)
                return Data.Topics.GetTopicReplyCountbByUserId(userId);
            else
                return Data.Topics.GetTopicCountByUserId(userId);
        }

        /// <summary>
        /// 创建新主题
        /// </summary>
        /// <param name="originalTopicInfo">主题信息</param>
        /// <returns>返回主题ID</returns>
        public static int CreateTopic(TopicInfo topicinfo)
        {
            return (topicinfo != null ? DatabaseProvider.GetInstance().CreateTopic(topicinfo) : 0);
        }

        //TODO:需要迁移至forums.cs
        /// <summary>
        /// 增加父版块的主题数
        /// </summary>
        /// <param name="fpidlist">父板块id列表</param>
        /// <param name="topics">主题数</param>   
        public static void AddParentForumTopics(string fpidlist, int topics)
        {
            if (Utils.IsNumericList(fpidlist) && topics > 0)
            {
                DatabaseProvider.GetInstance().AddParentForumTopics(fpidlist, topics);
            }
        }

        /// <summary>
        /// 获得主题信息
        /// </summary>
        /// <param name="tid">要获得的主题ID</param>
        public static TopicInfo GetTopicInfo(int tid)
        {
            return GetTopicInfo(tid, 0, 0);
        }

        /// <summary>
        /// 获得主题信息
        /// </summary>
        /// <param name="tid">要获得的主题ID</param>
        /// <param name="fid">版块ID</param>
        /// <param name="mode">上下主题或者对应ID主题</param>
        /// <returns></returns>
        public static TopicInfo GetTopicInfo(int tid, int fid, byte mode)
        {
            return Data.Topics.GetTopicInfo(tid, fid, mode);
        }


        /// <summary>
        /// 获得主题列表
        /// </summary>
        /// <param name="topiclist">主题id列表</param>
        /// <returns>主题列表</returns>
        public static DataTable GetTopicList(string topicList)
        {
            return Utils.IsNumericList(topicList) ? GetTopicList(topicList, -10) : null;
        }

        /// <summary>
        /// 获得指定的主题列表
        /// </summary>
        /// <param name="topiclist">主题ID列表</param>
        /// <param name="displayorder">order的下限( WHERE [displayorder]>此值)</param>
        /// <returns>主题列表</returns>
        public static DataTable GetTopicList(string topicList, int displayOrder)
        {
            return Utils.IsNumericList(topicList) ? Data.Topics.GetTopicList(topicList, displayOrder) : null;
        }

        /// <summary>
        /// 得到置顶主题信息
        /// </summary>
        /// <param name="fid">版块ID</param>
        /// <returns>置顶主题</returns>
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
        /// 列新主题的回复数
        /// </summary>
        /// <param name="tid">主题ID</param>
        public static void UpdateTopicReplyCount(int tid)
        {
            Data.Topics.UpdateTopicReplyCount(tid, Data.PostTables.GetPostTableId(tid));
        }

        /// <summary>
        /// 得到当前版块内正常(未关闭)主题总数
        /// </summary>
        /// <param name="fid">版块ID</param>
        /// <returns>主题总数</returns>
        public static int GetTopicCount(int fid)
        {
            return Data.Topics.GetTopicCount(fid);
        }


        /// <summary>
        /// 得到当前版块内主题总数
        /// </summary>
        /// <param name="fid">版块ID</param>
        /// <returns>主题总数</returns>
        public static int GetTopicCount(int fid, bool includeClosedTopic, string condition)
        {
            return Data.Topics.GetTopicCount(fid, includeClosedTopic, condition);
        }

        /// <summary>
        /// 得到符合条件的主题总数
        /// </summary>
        /// <param name="condition">条件</param>
        /// <returns>主题总数</returns>
        public static int GetTopicCount(string condition)
        {
            return Data.Topics.GetTopicCount(condition);
        }


        /// <summary>
        /// 更新主题为已被管理
        /// </summary>
        /// <param name="topiclist">主题id列表</param>
        /// <param name="moderated">管理操作id</param>
        /// <returns>成功返回1，否则返回0</returns>
        public static int UpdateTopicModerated(string topiclist, int moderated)
        {
            return Data.Topics.UpdateTopicModerated(topiclist, moderated);
        }

        /// <summary>
        /// 更新主题
        /// </summary>
        /// <param name="originalTopicInfo">主题信息</param>
        /// <returns>成功返回1，否则返回0</returns>
        public static int UpdateTopic(TopicInfo topicinfo)
        {
            return topicinfo != null ? Data.Topics.UpdateTopic(topicinfo) : 0;
        }

        /// <summary>
        /// 判断帖子列表是否都在当前板块
        /// </summary>
        /// <param name="topicidlist">主题序列</param>
        /// <param name="fid">板块ID</param>
        /// <returns>是则返回TREU,反则FLASH</returns>
        public static bool InSameForum(string topicidlist, int fid)
        {
            return Utils.SplitString(topicidlist, ",").Length == Data.Topics.GetTopicCountInForumAndTopicIdList(topicidlist, fid);
        }

        /// <summary>
        /// 将主题设置为隐藏主题
        /// </summary>
        /// <param name="tid">主题ID</param>
        /// <returns></returns>
        public static int UpdateTopicHide(int tid)
        {
            return Data.Topics.UpdateTopicHide(tid);
        }

        /// <summary>
        /// 获得主题列表
        /// </summary>
        /// <param name="forumid">板块ID</param>
        /// <param name="pageid">当前页数</param>
        /// <param name="tpp">每页主题数</param>
        /// <returns>主题列表</returns>
        public static DataTable GetTopicList(int forumid, int pageid, int tpp)
        {
            return Data.Topics.GetTopicList(forumid, pageid, tpp);
        }

        //将得到的主题列表中加入主题类型名称字段
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
        /// 按照用户Id获取其回复过的主题列表
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
        /// 获取需要审核的主题
        /// </summary>
        /// <param name="forumidlist">版块ID</param>
        /// <param name="tpp">每页主题数</param>
        /// <param name="pageid">页数</param>
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
        /// 获取需要关注的列表的数量
        /// </summary>
        /// <param name="fidlist">版块ID</param>
        /// <param name="keyword">搜索关键字</param>
        /// <returns></returns>
        public static int GetAttentionTopicCount(string fidlist, string keyword)
        {
            return Utils.IsNumericList(fidlist) ? Data.Topics.GetAttentionTopicCount(fidlist, keyword) : 0;
        }

        /// <summary>
        /// 获取需要审核的主题数量
        /// </summary>
        /// <param name="fidlist">版块ID</param>
        /// <returns></returns>
        public static int GetUnauditNewTopicCount(string fidlist, int filter)
        {
            return Utils.IsNumericList(fidlist) ? Data.Topics.GetUnauditNewTopicCount(fidlist, filter) : 0;
        }


        /// <summary>
        /// 按照用户Id获取主题列表
        /// </summary>
        /// <param name="userId">用户id</param>
        /// <param name="pageIndex">页码</param>
        /// <param name="pageSize">每页条数</param>
        /// <param name="newmin">新帖时效</param>
        /// <param name="hot">热帖基数</param>
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
        /// 获得置顶主题信息列表
        /// </summary>
        /// <param name="fid">版块ID</param>
        /// <param name="pageSize">每页显示主题数</param>
        /// <param name="pageIndex">当前页数</param>
        /// <param name="tids">主题id列表</param>
        /// <returns>主题信息列表</returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetTopTopicList(int fid, int pageSize, int pageIndex, string tids, int autocloseTime, int topicTypePrefix)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetTopTopicList(fid, pageSize, pageIndex, tids);

            LoadTopicListExtraInfo(autocloseTime, topicTypePrefix, list);

            return list;
        }

        /// <summary>
        /// 获得一般主题信息列表
        /// </summary>
        /// <param name="fid">版块ID</param>
        /// <param name="pageSize">每页显示主题数</param>
        /// <param name="pageIndex">当前页数</param>
        /// <param name="startNumber">置顶帖数量</param>
        /// <param name="newMinutes">最近多少分钟内的主题认为是新主题</param>
        /// <param name="hotReplyNumber">多少个帖子认为是热门主题</param>
        /// <param name="autocloseTime">自动关闭时间</param>
        /// <param name="topicTypePrefix">主题分类前缀</param>
        /// <param name="condition">查询条件</param>
        /// <returns>主题信息列表</returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetTopicList(int fid, int pageSize, int pageIndex, int startNumber, int newMinutes, int hotReplyNumber, int autocloseTime, int topicTypePrefix, string condition)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetTopicList(fid, pageSize, pageIndex, startNumber, condition);

            LoadTopicListExtraInfo(autocloseTime, topicTypePrefix, list);

            return list;
        }

        /// <summary>
        /// 获取主题列表
        /// </summary>
        /// <param name="fid">版块id</param>
        /// <param name="pagesize">每个分页的主题数</param>
        /// <param name="pageindex">分页页数</param>
        /// <param name="startnum">置顶帖数量</param>
        /// <param name="newmin">最近多少分钟内的主题认为是新主题</param>
        /// <param name="hot">多少个帖子认为是热门主题</param>
        /// <param name="condition">条件</param>
        /// <param name="orderby">排序</param>
        /// <param name="ascdesc">升/降序</param>
        /// <returns>主题列表</returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetTopicList(int fid, int pageSize, int pageIndex, int startNumber, int newMinutes, int hotReplyNumber, int autocloseTime, int topicTypePrefix, string condition, string orderby, int ascdesc)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetTopicList(fid, pageSize, pageIndex, startNumber, condition, orderby, ascdesc);

            LoadTopicListExtraInfo(autocloseTime, topicTypePrefix, newMinutes, hotReplyNumber, list);

            return list;
        }

        /// <summary>
        /// 对符合新帖,精华帖的页面显示进行查询的函数
        /// </summary>
        /// <param name="pagesize">每个分页的主题数</param>
        /// <param name="pageindex">分页页数</param>
        /// <param name="startnum">置顶帖数量</param>
        /// <param name="newmin">最近多少分钟内的主题认为是新主题</param>
        /// <param name="hot">多少个帖子认为是热门主题</param>
        /// <param name="condition">条件</param>
        /// <returns>主题列表</returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetTopicListByCondition(int pageSize, int pageIndex, int startNumber, int newMinutes, int hotReplyNumber, int autocloseTime, int topicTypePrefix, string condition, string orderby, int ascdesc)
        {
            if (pageIndex < 1)
                pageIndex = 1;

            Discuz.Common.Generic.List<TopicInfo> list = Data.Topics.GetTopicListByCondition(pageSize, pageIndex, startNumber, condition, orderby, ascdesc);

            LoadTopicListExtraInfo(autocloseTime, topicTypePrefix, newMinutes, hotReplyNumber, list);

            return list;
        }

        /// <summary>
        /// 输出htmltitle
        /// </summary>
        /// <param name="htmltitle">html标题</param>
        /// <param name="topicid">主题id</param>
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
        /// 获得相应的magic值
        /// </summary>
        /// <param name="magic">数据库中magic值</param>
        /// <param name="magicType">magic类型</param>
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
        /// 设置相应的magic值
        /// </summary>
        /// <param name="magic">原始magic值</param>
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
        /// 读取指定帖子的html标题
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
        /// 根据主题的Tag获取相关主题(游客可见级别的)
        /// </summary>
        /// <param name="topicid">主题Id</param>
        /// <returns></returns>
        public static Discuz.Common.Generic.List<TopicInfo> GetRelatedTopicList(int topicId, int count)
        {
            return topicId > 0 ? Data.TopicTagCaches.GetRelatedTopicList(topicId, count) : null;
        }

        /// <summary>
        /// 获取使用同一tag的主题列表
        /// </summary>
        /// <param name="tagid">TagId</param>
        /// <returns></returns>
        public static int GetTopicCountByTagId(int tagId)
        {
            return tagId > 0 ? Data.Topics.GetTopicCountByTagId(tagId) : 0;
        }

        /// <summary>
        /// 获取使用同一tag的主题列表
        /// </summary>
        /// <param name="tagid">TagId</param>
        /// <returns></returns>
        public static List<TopicInfo> GetTopicsWithSameTag(int tagid, int count)
        {
            return GetTopicListByTagId(tagid, 1, count);
        }

        /// <summary>
        /// 获取使用同一tag的主题列表
        /// </summary>
        /// <param name="tagid">TagId</param>
        /// <param name="pageindex">页码</param>
        /// <param name="pagesize">页大小</param>
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
        /// 整理相关主题表
        /// </summary>
        public static void NeatenRelateTopics()
        {
            Data.TopicTagCaches.NeatenRelateTopics();
        }

        /// <summary>
        /// 删除主题的相关主题记录
        /// </summary>
        /// <param name="topicid"></param>
        public static void DeleteRelatedTopics(int topicId)
        {
            Data.TopicTagCaches.DeleteRelatedTopics(topicId);
        }

        /// <summary>
        /// 增加辩论主题扩展信息
        /// </summary>
        /// <param name="debatetopic"></param>
        public static void CreateDebateTopic(DebateInfo debateTopic)
        {
            Data.Debates.CreateDebateTopic(debateTopic);
        }

        /// <summary>
        /// 通过待验证的主题
        /// </summary>
        /// <param name="tid"></param>
        public static void PassAuditNewTopic(string postTableId, string ignore, string validate, string delete, string fidlist)
        {
            if (!Utils.IsNumeric(postTableId))
                return;
            Data.Topics.PassAuditNewTopic(postTableId, ignore, validate, delete, fidlist);
        }

        /// <summary>
        /// 获取需要被关注的主题列表
        /// </summary>
        /// <param name="fidList">版块列表ID</param>
        /// <param name="tpp">分页数</param>
        /// <param name="pageIndex">当前页数</param>
        /// <param name="keyword">关键字</param>
        /// <returns></returns>
        public static List<TopicInfo> GetAttentionTopics(string fidList, int tpp, int pageIndex, string keyword)
        {
            return Data.Topics.GetAttentionTopics(fidList, tpp, pageIndex, keyword);
        }

        /// <summary>
        /// 批量更新关注列表
        /// </summary>
        /// <param name="tidList">主题列表</param>
        public static void UpdateTopicAttentionByTidList(string tidList, int attention)
        {
            Data.Topics.UpdateTopicAttentionByTidList(tidList, attention);
        }

        /// <summary>
        /// 批量更新关注列表
        /// </summary>
        /// <param name="fidlist">版块列表</param>
        /// <param name="datetime">时间段</param>
        public static void UpdateTopicAttentionByFidList(string fidList, int datetime)
        {
            Data.Topics.UpdateTopicAttentionByFidList(fidList, 0, DateTime.Now.AddDays(-datetime).ToString());
        }

        /// <summary>
        /// 标识主题为已读
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
        /// 获取主题数
        /// </summary>
        /// <param name="postName">分表名称</param>
        /// <param name="forumId">版块Id</param>
        /// <param name="posterList">作者列表</param>
        /// <param name="keyList">关键字列表</param>
        /// <param name="startDate">开始日期</param>
        /// <param name="endDate">结束日期</param>
        /// <returns></returns>
        public static int GetTopicListCount(string postName, int forumId, string posterList, string keyList, string startDate, string endDate)
        {
            return Data.Topics.GetTopicListCount(postName, forumId, posterList, keyList, startDate, endDate);
        }

        /// <summary>
        /// 获取聚合首页热帖数
        /// </summary>
        /// <returns></returns>
        public static int GetHotTopicsCount(int fid,int timeBetween)
        {
            return Data.Topics.GetHotTopicsCount(fid,timeBetween);
        }

        /// <summary>
        /// 获取主题列表
        /// </summary>
        /// <param name="postName">分表名称</param>
        /// <param name="forumId">版块Id</param>
        /// <param name="posterList">作者列表</param>
        /// <param name="keyList">关键字列表</param>
        /// <param name="startDate">开始日期</param>
        /// <param name="endDate">结束日期</param>
        /// <param name="pageSize">每页条数</param>
        /// <param name="currentPage">当前页号</param>
        /// <returns></returns>
        public static DataTable GetTopicList(string postName, int forumId, string posterList, string keyList, string startDate, string endDate, int pageSize, int currentPage)
        {
            return Data.Topics.GetTopicList(postName, forumId, posterList, keyList, startDate, endDate, pageSize, currentPage);
        }

        /// <summary>
        /// 获取聚合首页热列表
        /// </summary>
        /// <returns></returns>
        public static DataTable GetHotTopicsList(int pageSize, int pageIndex, int fid, string showType, int timeBetween)
        {
            return Data.Topics.GetHotTopicsList(pageSize, pageIndex, fid, showType,timeBetween);
        }


        /// <summary>
        /// 通过待验证的主题
        /// </summary>
        /// <param name="postTableId">当前帖子分表Id</param>
        /// <param name="tid">主题Id</param>
        public static void PassAuditNewTopic(string tidList)
        {
            string[] tidarray = tidList.Split(',');
            float[] values = null;
            ForumInfo forum = null;
            TopicInfo topic = null;
            int fid = -1;
            foreach (string tid in tidarray)
            {
                topic = Topics.GetTopicInfo(int.Parse(tid));    //获取主题信息
                if (fid != topic.Fid)    //当上一个和当前主题不在一个版块内时，重新读取版块的积分设置
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

                if (values != null) //使用版块内积分
                    UserCredits.UpdateUserCreditsByPostTopic(topic.Posterid, values);
                else //使用默认积分
                    UserCredits.UpdateUserCreditsByPostTopic(topic.Posterid);
            }

            Data.Topics.PassAuditNewTopic(PostTables.GetPostTableId(), tidList);
        }

        /// <summary>
        /// 更新我的主题
        /// </summary>
        public static void UpdateMyTopic()
        {
            Data.Topics.UpdateMyTopic();
        }


        /// <summary>
        /// 获取指定用户组和版信息下主题的DisplayOrder
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
        /// 按条件获取待审核主题列表
        /// </summary>
        /// <param name="condition"></param>
        /// <returns></returns>
        public static DataTable GetAuditTopicList(string condition)
        {
            return Data.Topics.GetAuditTopicList(condition);
        }

        /// <summary>
        /// 获取搜索主题条件
        /// </summary>
        /// <param name="fid">版块Id</param>
        /// <param name="keyWord">关键字</param>
        /// <param name="displayOrder">显示序号</param>
        /// <param name="digest">精华</param>
        /// <param name="attachment">附件</param>
        /// <param name="poster">作者</param>
        /// <param name="lowerUpper">是否区分大小写</param>
        /// <param name="viewsMin">最小查看数</param>
        /// <param name="viewsMax">最大查看数</param>
        /// <param name="repliesMax">最大回复数</param>
        /// <param name="repliesMin">最小回复数</param>
        /// <param name="rate">售价</param>
        /// <param name="lastPost">最后回复</param>
        /// <param name="postDateTimeStart">起始日期</param>
        /// <param name="postDateTimeEnd">结束日期</param>
        /// <returns></returns>
        public static string GetSearchTopicsCondition(int fid, string keyWord, string displayOrder, string digest, string attachment, string poster,
            bool lowerUpper, string viewsMin, string viewsMax, string repliesMax, string repliesMin, string rate, string lastPost,
            DateTime postDateTimeStart, DateTime postDateTimeEnd)
        {
            return Data.Topics.GetSearchTopicsCondition(fid, keyWord, displayOrder, digest, attachment, poster, lowerUpper,
                viewsMin, viewsMax, repliesMax, repliesMin, rate, lastPost, postDateTimeStart, postDateTimeEnd);
        }

        /// <summary>
        /// 获取一定范围内的主题
        /// </summary>
        /// <param name="tagname">标签名称</param>
        /// <param name="from">板块</param>
        /// <param name="end"></param>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public static DataTable GetTopicNumber(string tagname, int from, int end, int type)
        {
            return Data.Topics.GetTopicNumber(tagname, from, end, type);
        }

        /// <summary>
        /// 删除回收站过期的主题
        /// </summary>
        /// <param name="recycleDay">过期天数</param>
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
        /// 按条件获取主题
        /// </summary>
        /// <param name="condition">条件</param>
        /// <returns></returns>
        public static DataTable GetTopicsByCondition(string condition)
        {
            return Data.Topics.GetTopicsByCondition(condition);
        }

        #region  暂时抽出来的重构方法
        //TODO: 重构
        public static string GetTopicFilterCondition(string filter)
        {
            return DatabaseProvider.GetInstance().GetTopicFilterCondition(filter);
        }
        #endregion



        #region Private Methods
        /// <summary>
        /// 加载主题所在版块名称
        /// </summary>
        /// <param name="topicInfo"></param>
        private static void LoadTopicForumName(TopicInfo topicInfo)
        {
            ForumInfo forumInfo = Forums.GetForumInfo(topicInfo.Fid);
            topicInfo.Forumname = forumInfo == null ? "" : forumInfo.Name;
        }

        /// <summary>
        /// 加载主题图标信息
        /// </summary>
        /// <param name="autocloseTime">自动关闭时间(单位:小时)</param>
        /// <param name="newMinutes">新主题失效</param>
        /// <param name="hotReplyNumber">热帖基数</param>
        /// <param name="topicInfo">主题</param>
        private static void LoadTopicFolder(int autocloseTime, int newMinutes, int hotReplyNumber, TopicInfo topicInfo)
        {
            //处理关闭标记
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
        /// 加载主题分类信息
        /// </summary>
        /// <param name="topicTypePrefix"></param>
        /// <param name="topicTypeList"></param>
        /// <param name="topicinfo"></param>
        private static void LoadTopicType(int topicTypePrefix, SortedList<int, string> topicTypeList, TopicInfo topicinfo)
        {
            //扩展属性
            if (topicTypePrefix > 0 && topicinfo.Typeid > 0)
            {
                string typeName = "";
                topicTypeList.TryGetValue(topicinfo.Typeid, out typeName); 
                topicinfo.Topictypename = typeName.Trim();
            }
        }

        /// <summary>
        /// 加载主题列表附加信息
        /// </summary>
        /// <param name="fid">板块ID</param>
        /// <param name="autocloseTime">自动关闭时间</param>
        /// <param name="topicTypePrefix">主题分类前缀</param>
        /// <param name="list">主题列表</param>
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
        /// 加载主题列表附加信息
        /// </summary>
        /// <param name="fid">板块ID</param>
        /// <param name="autocloseTime">自动关闭时间</param>
        /// <param name="topicTypePrefix">主题分类前缀</param>
        /// <param name="list">主题列表</param>
        private static void LoadTopicListExtraInfo(int autocloseTime, int topicTypePrefix, Discuz.Common.Generic.List<TopicInfo> list)
        {
            LoadTopicListExtraInfo(autocloseTime, topicTypePrefix, 600, 0, list);
        }

        /// <summary>
        /// 按照displayorder排序
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
