using System;
using System.Data;
using System.Data.Common;

using Discuz.Common;
using Discuz.Data;
using Discuz.Forum;
using Discuz.Config;
using Discuz.Entity;
using Discuz.Common.Generic;
using System.Text;
using System.Web;

namespace Discuz.Forum
{
    /// <summary>
    /// UserCreditsFactory ��ժҪ˵����
    /// </summary>
    public class UserCredits
    {
        /// <summary>
        /// ���ϵͳ���õ��ܻ��ּ��㹫ʽ
        /// </summary>
        /// <returns>���㹫ʽ</returns>
        private static string GetCreditsArithmetic(int uid)
        {
            string ArithmeticStr = Scoresets.GetScoreCalFormula();

            if (Utils.StrIsNullOrEmpty(ArithmeticStr))
                return "0";

            ShortUserInfo shortUserInfo = Discuz.Data.Users.GetShortUserInfo(uid);
            if (shortUserInfo != null)
            {
                ArithmeticStr = ArithmeticStr.Replace("digestposts", shortUserInfo.Digestposts.ToString());
                ArithmeticStr = ArithmeticStr.Replace("posts", shortUserInfo.Posts.ToString());
                ArithmeticStr = ArithmeticStr.Replace("oltime", shortUserInfo.Oltime.ToString());
                ArithmeticStr = ArithmeticStr.Replace("pageviews", shortUserInfo.Pageviews.ToString());
                ArithmeticStr = ArithmeticStr.Replace("extcredits1", shortUserInfo.Extcredits1.ToString());
                ArithmeticStr = ArithmeticStr.Replace("extcredits2", shortUserInfo.Extcredits2.ToString());
                ArithmeticStr = ArithmeticStr.Replace("extcredits3", shortUserInfo.Extcredits3.ToString());
                ArithmeticStr = ArithmeticStr.Replace("extcredits4", shortUserInfo.Extcredits4.ToString());
                ArithmeticStr = ArithmeticStr.Replace("extcredits5", shortUserInfo.Extcredits5.ToString());
                ArithmeticStr = ArithmeticStr.Replace("extcredits6", shortUserInfo.Extcredits6.ToString());
                ArithmeticStr = ArithmeticStr.Replace("extcredits7", shortUserInfo.Extcredits7.ToString());
                ArithmeticStr = ArithmeticStr.Replace("extcredits8", shortUserInfo.Extcredits8.ToString());
            }
            return ArithmeticStr;
        }


        /// <summary>
        /// ���ݻ��ֹ�ʽ�����û�����,�����ܷ����䶯Ӱ���п��ܻ�����û��������û���
        /// <param name="uid">�û�ID</param>
        /// </summary>
        public static int UpdateUserCredits(int uid)
        {
            if (uid > 0)
            {
                Discuz.Data.UserCredits.UpdateUserCredits(uid);
                ShortUserInfo userInfo = Users.GetShortUserInfo(uid);
                UserGroupInfo tmpUserGroupInfo = UserGroups.GetUserGroupInfo(userInfo.Groupid);

                if (tmpUserGroupInfo != null && ((tmpUserGroupInfo.System == 0 && tmpUserGroupInfo.Radminid == 0)
                    || (tmpUserGroupInfo.Groupid == 7 && userInfo.Adminid == -1)))//���û�����ɾ�����������Աʱ����������Ӧ���֣������¸��û���������Ϣ
                {
                    tmpUserGroupInfo = GetCreditsUserGroupId(userInfo.Credits);
                    if (tmpUserGroupInfo.Groupid != userInfo.Groupid)//���û������鷢���仯ʱ
                    {
                        Discuz.Data.Users.UpdateUserGroup(userInfo.Uid.ToString(), tmpUserGroupInfo.Groupid);
                        Discuz.Data.OnlineUsers.UpdateGroupid(userInfo.Uid, tmpUserGroupInfo.Groupid);
                    }
                }
                return 1;

            }
            else
                return 0;
        }

        /// <summary>
        /// ���ݻ��ֹ�ʽ�����û�����,�����ܷ����䶯Ӱ���п��ܻ�����û��������û���
        /// <param name="userInfo">�û���Ϣ</param>
        /// </summary
        public static int UpdateUserCredits(ShortUserInfo userInfo)
        {
            if (userInfo == null || userInfo.Uid < 1)
                return 0;

            Discuz.Data.UserCredits.UpdateUserCredits(userInfo.Uid);
            UserGroupInfo tmpUserGroupInfo = UserGroups.GetUserGroupInfo(userInfo.Groupid);

            if (tmpUserGroupInfo != null && ((tmpUserGroupInfo.System == 0 && tmpUserGroupInfo.Radminid == 0)
                || (tmpUserGroupInfo.Groupid == 7 && userInfo.Adminid == -1)))//���û�����ɾ�����������Աʱ����������Ӧ���֣������¸��û���������Ϣ
            {
                tmpUserGroupInfo = GetCreditsUserGroupId(userInfo.Credits);
                if (tmpUserGroupInfo.Groupid != userInfo.Groupid)//���û������鷢���仯ʱ
                {
                    Discuz.Data.Users.UpdateUserGroup(userInfo.Uid.ToString(), tmpUserGroupInfo.Groupid);
                    Discuz.Data.OnlineUsers.UpdateGroupid(userInfo.Uid, tmpUserGroupInfo.Groupid);
                }
            }
            return 1;
        }

        /// <summary>
        /// �����û�����(�����ڵ�������)
        /// </summary>
        /// <param name="uid">�û�ID</param>
        /// <param name="creditsOperationType">���ֲ�������,�緢����</param>
        /// <param name="pos">�ӻ����־(����Ϊ��,����Ϊ��,ͨ��������1����-1)</param>
        private static int UpdateUserExtCredits(int uid, CreditsOperationType creditsOperationType, int pos)
        {
            return UpdateUserExtCredits(uid, 1, creditsOperationType, pos);
        }

        /// <summary>
        /// �������ֶ�����COOKIE
        /// </summary>
        /// <param name="values">�����б�</param>
        public static void WriteUpdateUserExtCreditsCookies(float[] values)
        {
            StringBuilder creditsValue = new StringBuilder("");
            creditsValue.Append("0,");
            foreach (float s in values)
            {
                creditsValue.Append(s.ToString());
                creditsValue.Append(",");
            }

            HttpCookie cookie = HttpContext.Current.Request.Cookies["discuz_creditnotice"];
            if (cookie == null)
            {
                cookie = new HttpCookie("discuz_creditnotice");
            }
            cookie.Value = creditsValue.ToString().TrimEnd(',');
            cookie.Expires = DateTime.Now.AddMinutes(36000);
            cookie.Path = BaseConfigs.GetForumPath;
            HttpContext.Current.Response.AppendCookie(cookie);
            //Utils.WriteCookie("discuz_creditnotice", creditsValue.ToString().TrimEnd(','), 36000);
        }


        /// <summary>
        /// ͨ��ָ��ֵ�����û�����
        /// </summary>
        /// <param name="uid">�û�ID</param>
        /// <param name="values">���ֱ䶯ֵ,Ӧ��֤��һ������Ϊ8������,��Ӧ8����չ���ֵı䶯ֵ</param>
        /// <param name="allowMinus">�Ƿ������۳ɸ���,true����,false�������Ҳ����п۷ַ���-1</param>
        /// <returns></returns>
        public static int UpdateUserExtCredits(int uid, float[] values, bool allowMinus)
        {
            if (uid < 1 || Discuz.Data.Users.GetUserInfo(uid) == null)
                return 0;

            if (values.Length < 8)
                return -1;

            if (!allowMinus)//������۳ɸ���ʱҪ�����жϻ����Ƿ��㹻����
            {
                // ���Ҫ����չ����, �����ж���չ�����Ƿ��㹻����
                if (!Discuz.Data.UserCredits.CheckUserCreditsIsEnough(uid, values))
                    return -1;
            }

            Discuz.Data.UserCredits.UpdateUserExtCredits(uid, values);
            //��Ӧ��ͬ����չ����
            for (int i = 0; i < values.Length; i++)
            {
                if (values[i] != 0.0)
                {
                    Sync.UpdateCredits(uid, i + 1, values[i].ToString());
                }
            }
            ///�����û�����
            return 1;// UpdateUserCredits(uid);
        }

        /// <summary>
        /// ͨ��ָ��ֵ�����û�����(���ֲ���ʱ����,����-1)
        /// </summary>
        /// <param name="uid">�û�ID</param>
        /// <param name="values">���ֱ䶯ֵ,Ӧ��֤��һ������Ϊ8������,��Ӧ8����չ���ֵı䶯ֵ</param>
        public static int UpdateUserExtCredits(int uid, float[] values)
        {
            return UpdateUserExtCredits(uid, values, false);
        }

        /// <summary>
        /// ����û������Ƿ��㹻����(�����ڵ��û�, ������������)
        /// </summary>
        /// <param name="uid">�û�ID</param>
        /// <param name="mount">��������,�������ϴ�2�����������˲���,��ô�˲���ֵӦΪ2</param>
        /// <param name="creditsOperationType">���ֲ�������,�緢����</param>
        /// <param name="pos">�ӻ����־(����Ϊ��,����Ϊ��,ͨ��������1����-1)</param>
        /// <returns></returns>
        public static bool CheckUserCreditsIsEnough(int uid, int mount, CreditsOperationType creditsOperationType, int pos)
        {
            DataTable dt = Scoresets.GetScoreSet();

            dt.PrimaryKey = new DataColumn[1] { dt.Columns["id"] };
            float[] extCredits = GetUserExtCredits(dt.Rows[(int)creditsOperationType]);
            if (pos < 0)
            {
                for (int i = 0; i < 8; i++)
                {
                    if (Utils.StrToFloat(extCredits[i], 0) < 0)//ֻҪ�κ�һ��Ҫ�����,��ȥ���ݿ���
                        return Discuz.Data.UserCredits.CheckUserCreditsIsEnough(uid, extCredits, pos, mount);
                }
            }
            return true;
        }

        /// <summary>
        ///  ��ȡ�û���������Ӧ��չ����
        /// </summary>
        /// <param name="dr">��չ��������</param>
        /// <returns></returns>
        static float[] GetUserExtCredits(DataRow dr)
        {
            float[] extCredits = new float[8];
            for (int i = 0; i < 8; i++)
            {
                extCredits[i] = TypeConverter.ObjectToFloat(dr["extcredits" + (i + 1)]);
            }
            return extCredits;
        }

        /// <summary>
        /// �����û�����(�����ڵ��û�,������������)
        /// </summary>
        /// <param name="uid">�û�ID</param>
        /// <param name="mount">��������,�������ϴ�2�����������˲���,��ô�˲���ֵӦΪ2</param>
        /// <param name="creditsOperationType">���ֲ�������,�緢����</param>
        /// <param name="pos">�ӻ����־(����Ϊ��,����Ϊ��,ͨ��������1����-1)</param>
        /// <param name="allowMinus">�Ƿ������۳ɸ���,true����,false�������Ҳ����п۷ַ���-1</param>
        /// <returns></returns>
        private static int UpdateUserExtCredits(int uid, int mount, CreditsOperationType creditsOperationType, int pos, bool allowMinus)
        {
            float[] extCredits = Scoresets.GetUserExtCredits(creditsOperationType);
            float extCredit = 0;

            foreach (float e in extCredits)//��ѭ������У�鵱ǰ���ֲ����Ƿ���Ҫ�����û�����
            {
                if (e != 0)
                    extCredit = e;
            }

            if (extCredit == 0)//�����������������ȫ��Ϊ0�������������֣���ֱ�ӷ���1
                return 1;

            if (uid == -1)//�����ǰ�û�Ϊ�οͣ���ֱ�ӷ���-1
                return -1;

            //return 0;

            //DataTable dt = Scoresets.GetScoreSet();

            //dt.PrimaryKey = new DataColumn[1] { dt.Columns["id"] };
            //float[] extCredits = GetUserExtCredits(dt.Rows[(int)creditsOperationType]);



            // ���Ҫ����չ����, �����ж���չ�����Ƿ��㹻����
            if (pos < 0)
            {
                //������ɾ�������ظ�ʱ
                if (creditsOperationType != CreditsOperationType.PostTopic && creditsOperationType != CreditsOperationType.PostReply)
                {
                    if (!allowMinus && !Discuz.Data.UserCredits.CheckUserCreditsIsEnough(uid, extCredits, pos, mount))
                        return -1;
                }
            }
            else
            {
                if (creditsOperationType == CreditsOperationType.DownloadAttachment)//��ʱ�Խ���û����ظ�������Ϊ���������⣬������ϵͳ�����¿���ʱ�����жϴ���ɸ���ʵ������õ�
                {
                    if (!allowMinus && !Discuz.Data.UserCredits.CheckUserCreditsIsEnough(uid, extCredits, -1, mount))
                        return -1;
                }

                if (creditsOperationType == CreditsOperationType.Search)//��ʱ�Խ���û������۷ֿ���Ϊ���������⣬������ϵͳ�����¿���ʱ�����жϴ���ɸ���ʵ������õ�
                {
                    if (!allowMinus && !Discuz.Data.UserCredits.CheckUserCreditsIsEnough(uid, extCredits, -1, mount))
                        return -1;
                }
            }

            Discuz.Data.UserCredits.UpdateUserExtCredits(uid, extCredits, pos, mount);

            for (int i = 0; i < extCredits.Length; i++)
            {
                if (extCredits[i] != 0.0)
                {
                    Sync.UpdateCredits(uid, i + 1, extCredits[i].ToString());
                }
            }

            ///�����û�����
            return 1;// UpdateUserCredits(uid);
        }


        /// <summary>
        /// �����û�����(���۷�ʱ,����û�ʣ���ֵ����,�򲻿�)
        /// </summary>
        /// <param name="uid">�û�ID</param>
        /// <param name="mount">��������,�������ϴ�2�����������˲���,��ô�˲���ֵӦΪ2</param>
        /// <param name="creditsOperationType">���ֲ�������,�緢����</param>
        /// <param name="pos">�ӻ����־(����Ϊ��,����Ϊ��,ͨ��������1����-1)</param>
        private static int UpdateUserExtCredits(int uid, int mount, CreditsOperationType creditsOperationType, int pos)
        {
            return UpdateUserExtCredits(uid, mount, creditsOperationType, pos, false);
        }



        /// <summary>
        /// �����û��б�,һ�θ��¶���û��Ļ���
        /// </summary>
        /// <param name="uidlist">�û�ID�б�</param>
        /// <param name="values">��չ����ֵ</param>
        public static int UpdateUserExtCredits(string uidlist, float[] values)
        {
            int reval = -1;
            if (Utils.IsNumericList(uidlist))
            {
                reval = 0;
                ///���ݹ�ʽ�����û����ܻ���,������	
                foreach (string uid in Utils.SplitString(uidlist, ","))
                {
                    if (TypeConverter.StrToInt(uid, 0) > 0)
                        reval = reval + UpdateUserExtCredits(TypeConverter.StrToInt(uid, 0), values, true);
                }
            }
            return reval;
        }



        /// <summary>
        /// �����û��б�,һ�θ��¶���û��Ļ���
        /// </summary>
        /// <param name="uidlist">�û�ID�б�</param>
        /// <param name="creditsOperationType">���ֲ�������,�緢����</param>
        /// <param name="pos">�ӻ����־(����Ϊ��,����Ϊ��,ͨ��������1����-1)</param>
        private static int UpdateUserCreditsAndExtCredits(string uidlist, CreditsOperationType creditsOperationType, int pos)
        {
            int reval = -1;
            if (Utils.IsNumericList(uidlist))
            {
                reval = 0;
                ///���ݹ�ʽ�����û����ܻ���,������	
                foreach (string uid in Utils.SplitString(uidlist, ","))
                {
                    if (TypeConverter.StrToInt(uid, 0) > 0)
                        reval = reval + UpdateUserExtCredits(TypeConverter.StrToInt(uid), 1, creditsOperationType, pos);

                    UserCredits.UpdateUserCredits(TypeConverter.StrToInt(uid));
                }
            }
            return reval;
        }


        /// <summary>
        /// �����û��б�,һ�θ��¶���û��Ļ���(�˷���ֻ��ɾ������ʱʹ�ù�)
        /// </summary>
        /// <param name="uidlist">�û�ID�б�</param>
        /// <param name="creditsOperationType">���ֲ�������,�緢����</param>
        /// <param name="pos">�ӻ����־(����Ϊ��,����Ϊ��,ͨ��������1����-1)</param>
        private static int UpdateUserCredits(int[] uidlist, CreditsOperationType creditsOperationType, int pos)
        {
            ///���ݹ�ʽ�����û����ܻ���,������
            int[] mountlist = new int[uidlist.Length];
            for (int i = 0; i < mountlist.Length; i++)
            {
                mountlist[i] = 1;
            }
            return UpdateUserCredits(uidlist, mountlist, creditsOperationType, pos);
        }

        /// <summary>
        /// �����û��б�,һ�θ��¶���û��Ļ���(�˷���ֻ��ɾ������ʱʹ�ù�)
        /// </summary>
        /// <param name="uidlist">�û�ID�б�</param>
        /// <param name="mountlist">�����Ĵ�����������¼�������ֵĴ���������ɾ����ɾһ�����ӣ�Ҳ����һ����������mountlistΪ1;ɾ���������ӣ��������ӷֱ�������������Ҳ�������β�����mountlistֵ��Ϊ2</param>
        /// <param name="creditsOperationType">���ֲ�������,�緢����</param>
        /// <param name="pos">�ӻ����־(����Ϊ��,����Ϊ��,ͨ��������1����-1)</param>
        private static int UpdateUserCredits(int[] uidlist, int[] mountlist, CreditsOperationType creditsOperationType, int pos)
        {
            ///���ݹ�ʽ�����û����ܻ���,������
            int reval = 0;
            for (int i = 0; i < uidlist.Length; i++)
            {
                if (uidlist[i] > 0)
                    reval = reval + UpdateUserExtCredits(uidlist[i], mountlist[i], creditsOperationType, pos, true);

                UserCredits.UpdateUserCredits(uidlist[i]);
            }
            return reval;
        }


        /// <summary>
        /// ���ݻ��ֻ�û����û�����Ӧ��ƥ����û������� (���û��ƥ������û��ǻ����û����򷵻�null)
        /// </summary>
        /// <param name="Credits">����</param>
        /// <returns>�û�������</returns>
        public static UserGroupInfo GetCreditsUserGroupId(float Credits)
        {
            List<UserGroupInfo> usergroupinfo = UserGroups.GetUserGroupList();
            UserGroupInfo tmpitem = null;

            UserGroupInfo maxCreditGroup = null;
            foreach (UserGroupInfo infoitem in usergroupinfo)
            {
                // �����û����������radminid����0
                if (infoitem.Radminid == 0 && infoitem.System == 0 && (Credits >= infoitem.Creditshigher && Credits <= infoitem.Creditslower))
                {
                    if (tmpitem == null || infoitem.Creditshigher > tmpitem.Creditshigher)
                        tmpitem = infoitem;
                }
                //���»���������ߵ��û���
                if (maxCreditGroup == null || maxCreditGroup.Creditshigher < infoitem.Creditshigher)
                    maxCreditGroup = infoitem;
            }

            if (maxCreditGroup != null && maxCreditGroup.Creditshigher < Credits)
                tmpitem = maxCreditGroup;

            return tmpitem == null ? new UserGroupInfo() : tmpitem;
        }



        /// <summary>
        /// �û���������ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        public static void UpdateUserCreditsByPostTopic(int uid)
        {
            UpdateUserExtCredits(uid, CreditsOperationType.PostTopic, 1);
            UserCredits.UpdateUserCredits(uid);
        }

        /// <summary>
        /// �û���������ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        /// <param name="values">���ֱ䶯ֵ,Ӧ��֤��һ������Ϊ8������,��Ӧ8����չ���ֵı䶯ֵ</param>
        public static void UpdateUserCreditsByPostTopic(int uid, float[] values)
        {
            UpdateUserExtCredits(uid, values);
            UserCredits.UpdateUserCredits(uid);
        }

        /// <summary>
        /// �û�����ظ�ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        public static void UpdateUserCreditsByPosts(int uid)
        {
            UpdateUserExtCredits(uid, CreditsOperationType.PostReply, 1);
            UserCredits.UpdateUserCredits(uid);
        }

        /// <summary>
        /// �û�����ظ�ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        /// <param name="values">�Զ������ֵ�б�</param>
        public static void UpdateUserCreditsByPosts(int uid, float[] values)
        {
            UpdateUserExtCredits(uid, values);
            UserCredits.UpdateUserCredits(uid);
        }


        /// <summary>
        /// �û�����ظ�ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        public static void UpdateUserCreditsByPosts(int uid, int pos)
        {
            UpdateUserExtCredits(uid, CreditsOperationType.PostReply, pos);
            UserCredits.UpdateUserCredits(uid);
        }

        /// <summary>
        /// �û����������������ӱ���Ϊ����ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        /// <param name="mount">����Ϊ�������������������</param>
        public static void UpdateUserCreditsByDigest(int uid, int mount)
        {
            UpdateUserExtCredits(uid, mount, CreditsOperationType.Digest, 1, true);
            UserCredits.UpdateUserCredits(uid);
        }

        /// <summary>
        /// �û����������������ӱ���Ϊ����ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uidlist">�û�id�б�</param>
        /// <param name="mount">����Ϊ�������������������</param>
        public static int UpdateUserCreditsAndExtCredits(string uidlist, int mount)
        {
            if (!Utils.StrIsNullOrEmpty(uidlist) && Utils.IsNumericList(uidlist))
                return UpdateUserCreditsAndExtCredits(uidlist, CreditsOperationType.Digest, 1);

            return 0;
        }


        /// <summary>
        /// �û����������������ӱ���Ϊ����ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        //public static int UpdateUserCreditsByDigest(int uid)
        //{
        //    return UpdateUserCreditsByUploadAttachment(uid, 1);
        //}

        /// <summary>
        /// �û��ϴ�����ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        /// <param name="mount">�ϴ���������</param>
        public static int UpdateUserExtCreditsByUploadAttachment(int uid, int mount)
        {
            if (uid > 0 && mount > 0)
                return UpdateUserExtCredits(uid, mount, CreditsOperationType.UploadAttachment, 1);
            else
                return 0;
        }

        /// <summary>
        /// �û��ϴ�����ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        //public static int UpdateUserCreditsByUploadAttachment(int uid)
        //{
        //    return UpdateUserCreditsByUploadAttachment(uid, 1);
        //}


        /// <summary>
        /// �û����ظ���ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        /// <param name="mount">���ظ�������</param>
        public static int UpdateUserExtCreditsByDownloadAttachment(int uid, int mount)
        {
            if (uid > 0 && mount > 0)
            {
                return UpdateUserExtCredits(uid, mount, CreditsOperationType.DownloadAttachment, 1);
            }
            else
                return -1;
        }

        /// <summary>
        /// �û����ظ���ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        //public static int UpdateUserCreditsByDownloadAttachment(int uid)
        //{
        //    return UpdateUserCreditsByDownloadAttachment(uid, 1);
        //}


        /// <summary>
        /// �û����Ͷ���Ϣʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        public static int UpdateUserCreditsBySendpms(int uid)
        {
            if (uid > 0)
            {
                int result = UpdateUserExtCredits(uid, CreditsOperationType.SendMessage, 1);
                UserCredits.UpdateUserCredits(uid);
                return result;
            }
            else
                return -1;
        }


        /// <summary>
        /// �û�����ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        public static int UpdateUserCreditsBySearch(int uid)
        {
            //if (uid > 0)
            //{
            int result = UpdateUserExtCredits(uid, CreditsOperationType.Search, 1);
            UserCredits.UpdateUserCredits(uid);
            return result;
            //}
            //else
            //    return -1;

        }



        /// <summary>
        /// �û����׳ɹ�ʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        public static int UpdateUserCreditsByTradefinished(int userid)
        {
            if (userid > 0)
            {
                UpdateUserExtCredits(userid, CreditsOperationType.TradeSucceed, 1);
                return UserCredits.UpdateUserCredits(userid);
            }
            else
                return 0;
        }

        /// <summary>
        /// �û�����ͶƱʱ�����û��Ļ���
        /// </summary>
        /// <param name="uid">�û�id</param>
        public static void UpdateUserCreditsByVotepoll(int userid)
        {
            if (userid > 0)
            {
                UpdateUserExtCredits(userid, CreditsOperationType.Vote, 1);
                UpdateUserCredits(userid);
            }
        }

        /// <summary>
        /// �û�����ע������û��Ļ���
        /// </summary>
        /// <param name="userid"></param>
        /// <param name="mount"></param>
        public static void UpdateUserCreditsByInvite(int userid, int mount)
        {
            if (userid > 0)
            {
                UpdateUserExtCredits(userid, mount, CreditsOperationType.Invite, 1);
                UpdateUserCredits(userid);
            }
        }

        /// <summary>
        /// ����ɾ����̳����
        /// </summary>
        /// <param name="tuidlist">Ҫɾ���������û�id</param>
        /// <param name="auidlist">Ҫɾ���������Ӧ�ĵĸ�������,Ӧ��tuidlist������ͬ</param>
        public static int UpdateUserCreditsByDeleteTopic(int[] tUidList, int[] pUidlist, int[,] attUidCount, int pos)
        {
            int[] tuidlist = new int[attUidCount.GetLength(0)];
            int[] attcountlist = new int[attUidCount.GetLength(0)];
            for (int i = 0; i < attUidCount.GetLength(0); i++)
            {
                tuidlist[i] = attUidCount[i, 0];
                attcountlist[i] = attUidCount[i, 1];
            }
            return UpdateUserCredits(tUidList, CreditsOperationType.PostTopic, pos) + UpdateUserCredits(pUidlist, CreditsOperationType.PostReply, pos) + UpdateUserCredits(tuidlist, attcountlist, CreditsOperationType.UploadAttachment, pos);
        }

        /// <summary>
        /// �����û�Id��ȡ�û�����
        /// </summary>
        /// <param name="uid">�û�id</param>
        /// <returns>�û�����</returns>
        public static int GetUserCreditsByUid(int uid)
        {
            ///���ݹ�ʽ�����û����ܻ���,������
            object expression = Arithmetic.ComputeExpression(GetCreditsArithmetic(uid));

            return Utils.StrToInt(Math.Floor(Utils.StrToFloat(expression, 0)), 0);
        }
    } // end class
}
