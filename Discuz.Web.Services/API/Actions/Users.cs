using Discuz.Common;
using Discuz.Entity;
using Discuz.Forum;
using Newtonsoft.Json;
using Discuz.Common.Generic;

namespace Discuz.Web.Services.API.Actions
{
    public class Users : ActionBase
    {
        /// <summary>
        /// 获取用户信息
        /// </summary>
        /// <returns></returns>
        public string GetInfo()
        {
            if (Signature != GetParam("sig").ToString())
            {
                ErrorCode = (int)ErrorType.API_EC_SIGNATURE;
                return "";
            }

            //如果是桌面程序则需要验证用户身份
            if (this.App.ApplicationType == (int)ApplicationType.DESKTOP)
            {
                if (Uid < 1)
                {
                    ErrorCode = (int)ErrorType.API_EC_SESSIONKEY;
                    return "";
                }
            }

            //if (Uid < 1)
            //{
            //    ErrorCode = (int)ErrorType.API_EC_SESSIONKEY;
            //    return "";
            //}

            if (CallId <= LastCallId)
            {
                ErrorCode = (int)ErrorType.API_EC_CALLID;
                return "";
            }

            if (!CheckRequiredParams("uids,fields"))
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return "";
            }

            if (!Utils.IsNumericArray(GetParam("uids").ToString().Split(',')))
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return "";
            }


            //if (GetParam("uids") == null || GetParam("fields") == null)
            //{
            //    ErrorCode = (int)ErrorType.API_EC_PARAM;
            //    return "";
            //}
            string[] uids = GetParam("uids").ToString().Split(',');

            if (Utils.StrToInt(uids[0], -1) < 1)
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return "";
            }

            List<string> fieldlist = new List<string>(GetParam("fields").ToString().Split(','));
            

            List<User> userlist = new List<User>();
            UserInfo userInfo;
            for (int i = 0; i < uids.Length; i++)
            {
                int userid = Utils.StrToInt(uids[i], -1);
                if (userid < 1)
                    continue;
                userInfo = Discuz.Forum.Users.GetUserInfo(userid);
                if (userInfo == null)
                    continue;

                User user = new User();
                if (fieldlist.Contains("access_masks"))
                {
                    user.AccessMasks = userInfo.Accessmasks;
                }
                else
                {
                    user.AccessMasks = null;
                }

                if (fieldlist.Contains("admin_id"))
                {
                    user.AdminId = userInfo.Adminid;
                }
                else
                {
                    user.AdminId = null;
                }

                //user.AvatarShowId = userinfo.Avatarshowid;

                if (fieldlist.Contains("birthday"))
                {
                    user.Birthday = userInfo.Bday.Trim();
                }
                else
                {
                    user.Birthday = null;
                }

                if (fieldlist.Contains("credits"))
                {
                    user.Credits = userInfo.Credits;
                }
                else
                {
                    user.Credits = null;
                }

                if (fieldlist.Contains("digest_post_count"))
                {
                    user.DigestPosts = userInfo.Digestposts;
                }
                else
                {
                    user.DigestPosts = null;
                }

                if (fieldlist.Contains("email"))
                {
                    user.Email = userInfo.Email.Trim();
                }
                else
                {
                    user.Email = null;
                }

                if (fieldlist.Contains("ext_credits_1"))
                {
                    user.ExtCredits1 = userInfo.Extcredits1;
                }
                else
                {
                    user.ExtCredits1 = null;
                }

                if (fieldlist.Contains("ext_credits_2"))
                {
                    user.ExtCredits2 = userInfo.Extcredits2;
                }
                else
                {
                    user.ExtCredits2 = null;
                }

                if (fieldlist.Contains("ext_credits_3"))
                {
                    user.ExtCredits3 = userInfo.Extcredits3;
                }
                else
                {
                    user.ExtCredits3 = null;
                }

                if (fieldlist.Contains("ext_credits_4"))
                {
                    user.ExtCredits4 = userInfo.Extcredits4;
                }
                else
                {
                    user.ExtCredits4 = null;
                }

                if (fieldlist.Contains("ext_credits_5"))
                {
                    user.ExtCredits5 = userInfo.Extcredits5;
                }
                else
                {
                    user.ExtCredits5 = null;    
                }

                if (fieldlist.Contains("ext_credits_6"))
                {
                    user.ExtCredits6 = userInfo.Extcredits6;
                }
                else
                {
                    user.ExtCredits6 = null;
                }

                if (fieldlist.Contains("ext_credits_7"))
                {
                    user.ExtCredits7 = userInfo.Extcredits7;
                }
                else
                {
                    user.ExtCredits7 = null;
                }

                if (fieldlist.Contains("ext_credits_8"))
                {
                    user.ExtCredits8 = userInfo.Extcredits8;
                }
                else
                {
                    user.ExtCredits8 = null;
                }

                if (fieldlist.Contains("ext_groupids"))
                {
                    user.ExtGroupids = userInfo.Extgroupids.Trim();
                }
                else
                {
                    user.ExtGroupids = null;
                }

                if (fieldlist.Contains("gender"))
                {
                    user.Gender = userInfo.Gender;
                }
                else
                {
                    user.Gender = null;
                }

                if (fieldlist.Contains("group_expiry"))
                {
                    user.GroupExpiry = userInfo.Groupexpiry;
                }
                else
                {
                    user.GroupExpiry = null;
                }

                if (fieldlist.Contains("group_id"))
                {
                    user.GroupId = userInfo.Groupid;
                }
                else
                {
                    user.GroupId = null;
                }

                if (fieldlist.Contains("invisible"))
                {
                    user.Invisible = userInfo.Invisible;
                }
                else
                {
                    user.Invisible = null;
                }

                if (fieldlist.Contains("join_date"))
                {
                    user.JoinDate = userInfo.Joindate;
                }
                else
                {
                    user.JoinDate = null;
                }

                if (fieldlist.Contains("last_activity"))
                {
                    user.LastActivity = userInfo.Lastactivity;
                }
                else
                {
                    user.LastActivity = null;
                }

                if (fieldlist.Contains("last_ip"))
                {
                    user.LastIp = userInfo.Lastip.Trim();
                }
                else
                {
                    user.LastIp = null;
                }

                if (fieldlist.Contains("last_post"))
                {
                    user.LastPost = userInfo.Lastpost;
                }
                else
                {
                    user.LastPost = null;
                }

                if (fieldlist.Contains("last_post_id"))
                {
                    user.LastPostid = userInfo.Lastpostid;
                }
                else
                {
                    user.LastPostid = null;
                }

                if (fieldlist.Contains("last_post_title"))
                {
                    user.LastPostTitle = userInfo.Lastposttitle;
                }
                else
                {
                    user.LastPostTitle = null;
                }

                if (fieldlist.Contains("last_visit"))
                {
                    user.LastVisit = userInfo.Lastvisit;
                }
                else
                {
                    user.LastVisit = null;
                }

                if (fieldlist.Contains("has_new_pm"))
                {
                    user.NewPm = userInfo.Newpm;
                }
                else
                {
                    user.NewPm = null;
                }

                if (fieldlist.Contains("new_pm_count"))
                {
                    user.NewPmCount = userInfo.Newpmcount;
                }
                else
                {
                    user.NewPmCount = null;
                }

                if (fieldlist.Contains("nick_name"))
                {
                    user.NickName = userInfo.Nickname;
                }
                else
                {
                    user.NickName = null;
                }

                if (fieldlist.Contains("online_state"))
                {
                    user.OnlineState = userInfo.Onlinestate;
                }
                else
                {
                    user.OnlineState = null;
                }

                if (fieldlist.Contains("online_time"))
                {
                    user.OnlineTime = userInfo.Oltime;
                }
                else
                {
                    user.OnlineTime = null;
                }

                if (fieldlist.Contains("page_view_count"))
                {
                    user.PageViews = userInfo.Pageviews;
                }
                else
                {
                    user.PageViews = null;
                }


                //if (Uid > 0 && userid == Uid)
                //{
                    if (fieldlist.Contains("password"))
                    {
                        user.Password = userInfo.Password;
                    }
                    else
                    {
                        user.Password = null;
                    }
                //}

                if (fieldlist.Contains("pm_sound"))
                {
                    user.PmSound = userInfo.Pmsound;
                }
                else
                {
                    user.PmSound = null;
                }

                if (fieldlist.Contains("post_count"))
                {
                    user.Posts = userInfo.Posts;
                }
                else
                {
                    user.Posts = null;
                }

                if (fieldlist.Contains("ppp"))
                {
                    user.Ppp = userInfo.Ppp;
                }
                else
                {
                    user.Ppp = null;
                }

                if (fieldlist.Contains("reg_ip"))
                {
                    user.RegIp = userInfo.Regip;
                }
                else
                {
                    user.RegIp = null;
                }

                if (fieldlist.Contains("secques"))
                {
                    user.Secques = userInfo.Secques;
                }
                else
                {
                    user.Secques = null;
                }

                if (fieldlist.Contains("show_email"))
                {
                    user.ShowEmail = userInfo.Showemail;
                }
                else
                {
                    user.ShowEmail = null;
                }

                //user.SigStatus = userinfo.Sigstatus;

                if (fieldlist.Contains("space_id"))
                {
                    user.SpaceId = userInfo.Spaceid;
                }
                else
                {
                    user.SpaceId = null;
                }

                if (fieldlist.Contains("template_id"))
                {
                    user.Templateid = userInfo.Templateid;
                }
                else
                {
                    user.Templateid = null;
                }

                if (fieldlist.Contains("tpp"))
                {
                    user.Tpp = userInfo.Tpp;
                }
                else
                {
                    user.Tpp = null;
                }

                if (fieldlist.Contains("uid"))
                {
                    user.Uid = userInfo.Uid;
                }
                else
                {
                    user.Uid = null;
                }

                if (fieldlist.Contains("user_name"))
                {
                    user.UserName = userInfo.Username;
                }
                else
                {
                    user.UserName = null;
                }

                if (fieldlist.Contains("custom_status"))
                {
                    user.CustomStatus = userInfo.Customstatus;	//自定义头衔
                }
                else
                {
                    user.CustomStatus = null;
                }


                if (fieldlist.Contains("avatar"))
                {
                    user.Avatar = Avatars.GetAvatarUrl(userInfo.Uid).TrimStart('/');
                }
                else
                {
                    user.Avatar = null;
                }

                //if (fieldlist.Contains("avatar_width"))
                //{
                //    user.AvatarWidth = userinfo.Avatarwidth;	//头像宽度
                //}
                //else
                //{
                //    user.AvatarWidth = null;
                //}

                //if (fieldlist.Contains("avatar_height"))
                //{
                //    user.AvatarHeight = userinfo.Avatarheight;	//头像高度
                //}
                //else
                //{
                //    user.AvatarHeight = null;
                //}

                if (fieldlist.Contains("medals"))
                {
                    user.Medals = userInfo.Medals; //勋章列表
                }
                else
                {
                    user.Medals = null;
                }

                //if没有sessionkey 就不显示个人信息

                if (fieldlist.Contains("web_site"))
                {
                    user.WebSite = userInfo.Website;	//网站
                }
                else
                {
                    user.WebSite = null;
                }

                if (fieldlist.Contains("icq"))
                {
                    user.Icq = userInfo.Icq;	//icq号码
                }
                else
                {
                    user.Icq = null;
                }

                if (fieldlist.Contains("qq"))
                {
                    user.Qq = userInfo.Qq;	//qq号码
                }
                else
                {
                    user.Qq = null;
                }

                if (fieldlist.Contains("yahoo"))
                {
                    user.Yahoo = userInfo.Yahoo;	//yahoo messenger帐号
                }
                else
                {
                    user.Yahoo = null;
                }

                if (fieldlist.Contains("msn"))
                {
                    user.Msn = userInfo.Msn;	//msn messenger帐号
                }
                else
                {
                    user.Msn = null;
                }

                if (fieldlist.Contains("skype"))
                {
                    user.Skype = userInfo.Skype;	//skype帐号
                }
                else
                {
                    user.Skype = null;
                }

                if (fieldlist.Contains("location"))
                {
                    user.Location = userInfo.Location;	//来自
                }
                else
                {
                    user.Location = null;
                }

                if (fieldlist.Contains("about_me"))
                {
                    user.Bio = userInfo.Bio;	//自我介绍
                }
                else
                {
                    user.Bio = null;
                }

                //if (Uid > 1)
                //{
                //    user.Signature = userinfo.Signature;	//签名
                //}

                if (fieldlist.Contains("signhtml"))
                {
                    user.Sightml = userInfo.Sightml;	//签名Html(自动转换得到)
                }
                else
                {
                    user.Sightml = null;
                }


                //user.AuthStr = userinfo.Authstr;	//验证码
                //user.AuthTime = userinfo.Authtime;	//验证码生成日期
                //user.AuthFlag = userinfo.Authflag;	//验证码使用标志(0 未使用,1 用户邮箱验证及用户信息激活, 2 用户密码找回)

                if (fieldlist.Contains("real_name"))
                {
                    user.RealName = userInfo.Realname;  //用户实名
                }
                else
                {
                    user.RealName = null;
                }

                if (fieldlist.Contains("id_card"))
                {
                    user.IdCard = userInfo.Idcard;    //用户身份证件号
                }
                else 
                {
                    user.IdCard = null;
                }

                if (fieldlist.Contains("mobile"))
                {
                    user.Mobile = userInfo.Mobile;    //用户移动电话
                }
                else
                {
                    user.Mobile = null;
                }

                if (fieldlist.Contains("telephone"))
                {
                    user.Phone = userInfo.Phone;     //用户固定电话
                }
                else
                {
                    user.Phone = null;
                }
                userlist.Add(user);
            }

            UserInfoResponse uir = new UserInfoResponse();
            uir.user_array = userlist.ToArray();
            uir.List = true;

            if (Format == FormatType.JSON)
            {
                return Util.RemoveJsonNull(JavaScriptConvert.SerializeObject(userlist.ToArray()));
            }
            if (userlist.Count < 1)
            {
                return SerializationHelper.Serialize(uir);
            }
            return Util.RemoveEmptyNodes(SerializationHelper.Serialize(uir), GetParam("fields").ToString()); 
        }

        /// <summary>
        /// 获得当前登录用户
        /// </summary>
        /// <returns></returns>
        public string GetLoggedInUser()
        {
            if (Signature != GetParam("sig").ToString())
            {
                ErrorCode = (int)ErrorType.API_EC_SIGNATURE;
                return "";
            }

            //如果是桌面程序则需要验证用户身份
            if (this.App.ApplicationType == (int)ApplicationType.DESKTOP)
            {
                if (Uid < 1)
                {
                    ErrorCode = (int)ErrorType.API_EC_SESSIONKEY;
                    return "";
                }
            }

            //if (Uid < 1)
            //{
            //    ErrorCode = (int)ErrorType.API_EC_SESSIONKEY;
            //    return "";
            //}

            //float callid = Utils.StrToFloat(GetParam("call_id"), -1);
            //if (callid <= LastCallId)
            //{
            //    ErrorCode = (int)ErrorType.API_EC_CALLID;
            //    return "";
            //}

            if (CallId <= LastCallId)
            {
                ErrorCode = (int)ErrorType.API_EC_CALLID;
                return "";
            }


            if (Format == FormatType.JSON)
                return string.Format("\"{0}\"", Uid);

            LoggedInUserResponse loggeduser = new LoggedInUserResponse();
            //loggeduser.List = true;
            loggeduser.Uid = Uid;

            return SerializationHelper.Serialize(loggeduser);
        }

        /// <summary>
        /// 设置用户资料
        /// </summary>
        /// <returns></returns>
        public string SetInfo()
        {
            if (Signature != GetParam("sig").ToString())
            {
                ErrorCode = (int)ErrorType.API_EC_SIGNATURE;
                return "";
            }

            //如果是桌面程序则需要验证用户身份
            if (this.App.ApplicationType == (int)ApplicationType.DESKTOP)
            {
                if (Uid < 1)
                {
                    ErrorCode = (int)ErrorType.API_EC_SESSIONKEY;
                    return "";
                }
            }

            //if (Uid < 1)
            //{
            //    ErrorCode = (int)ErrorType.API_EC_SESSIONKEY;
            //    return "";
            //}

            if (CallId <= LastCallId)
            {
                ErrorCode = (int)ErrorType.API_EC_CALLID;
                return "";
            }

            if (!this.CheckRequiredParams("uid,user_info"))
            {
                ErrorCode =(int)ErrorType.API_EC_PARAM;
                return "";
            }

            int uid = Utils.StrToInt(GetParam("uid").ToString(),0);

            if (uid <= 0)
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return "";
            }

            UserForEditing ufe;

            try
            {
                ufe = JavaScriptConvert.DeserializeObject<UserForEditing>(GetParam("user_info").ToString());
            }
            catch
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return "";
            }


            UserInfo userinfo = Discuz.Forum.Users.GetUserInfo(uid);

            if (!string.IsNullOrEmpty(ufe.Password))
            {
                userinfo.Password = ufe.Password;
            }

            if (ufe.Bio != null)
            {
               userinfo.Bio = ufe.Bio;
            }

            if (ufe.Birthday != null)
            {
               userinfo.Bday = ufe.Birthday;
            }

            if (!string.IsNullOrEmpty(ufe.Email) && userinfo.Email != ufe.Email && CheckEmail(ufe.Email))
            {
               userinfo.Email = ufe.Email;
            }

            if (!string.IsNullOrEmpty(ufe.ExtCredits1))
            {
               userinfo.Extcredits1 = Utils.StrToFloat(ufe.ExtCredits1,0);
            }

            if (!string.IsNullOrEmpty(ufe.ExtCredits2))
            {
                userinfo.Extcredits2 = Utils.StrToFloat(ufe.ExtCredits2, 0);
            }

            if (!string.IsNullOrEmpty(ufe.ExtCredits3))
            {
                userinfo.Extcredits3 = Utils.StrToFloat(ufe.ExtCredits3, 0);
            }

            if (!string.IsNullOrEmpty(ufe.ExtCredits4))
            {
                userinfo.Extcredits4 = Utils.StrToFloat(ufe.ExtCredits4, 0);
            }

            if (!string.IsNullOrEmpty(ufe.ExtCredits5))
            {
                userinfo.Extcredits5 = Utils.StrToFloat(ufe.ExtCredits5, 0);
            }

            if (!string.IsNullOrEmpty(ufe.ExtCredits6))
            {
                userinfo.Extcredits6 = Utils.StrToFloat(ufe.ExtCredits6, 0);
            }

            if (!string.IsNullOrEmpty(ufe.ExtCredits7))
            {
                userinfo.Extcredits7 = Utils.StrToFloat(ufe.ExtCredits7, 0);
            }

            if (!string.IsNullOrEmpty(ufe.ExtCredits8))
            {
               userinfo.Extcredits8 = Utils.StrToFloat(ufe.ExtCredits8, 0);
            }

            if (ufe.Gender != null)
            {
               userinfo.Gender = Utils.StrToInt(ufe.Gender, 0);
            }

            if (ufe.Icq != null)
            {
               userinfo.Icq = ufe.Icq;
            }

            if (ufe.IdCard != null)
            {
               userinfo.Idcard = ufe.IdCard;
            }

            if (ufe.Location != null)
            {
               userinfo.Location = ufe.Location;
            }

            if (ufe.Mobile != null)
            {
                userinfo.Mobile = ufe.Mobile;
            }

            if (ufe.Msn != null)
            {
                userinfo.Msn = ufe.Msn;
            }

            if (ufe.NickName != null)
            {
                userinfo.Nickname = ufe.NickName;
            }

            if (ufe.Phone != null)
            {
                userinfo.Phone = ufe.Phone; 
            }

            if (ufe.Qq != null)
            {
                userinfo.Qq = ufe.Qq;
            }

            if (ufe.RealName != null)
            {
                userinfo.Realname = ufe.RealName;
            }

            if (ufe.Skype != null)
            {
               userinfo.Skype = ufe.Skype;
            }

            if (!string.IsNullOrEmpty(ufe.SpaceId))
            {
                 userinfo.Spaceid = Utils.StrToInt(ufe.SpaceId,0);
            }

            if (ufe.WebSite != null)
            {
                userinfo.Website = ufe.WebSite;
            }

            if (ufe.Yahoo != null)
            {
                userinfo.Yahoo = ufe.Yahoo;
            }

            try
            {
                //Discuz.Forum.Users.UpdateUserProfile(userinfo);
                Discuz.Forum.Users.UpdateUser(userinfo);
            }
            catch 
            {
                ErrorCode = (int)ErrorType.API_EC_UNKNOWN;
                return "0";
            }

            if (Format == FormatType.JSON)
            {
                return "true";
            }

            SetInfoResponse sir = new SetInfoResponse();

            sir.Successfull = 1;

            return SerializationHelper.Serialize(sir);
        }

        public string SetExtCredits()
        {
            if (Signature != GetParam("sig").ToString())
            {
                ErrorCode = (int)ErrorType.API_EC_SIGNATURE;
                return "";
            }

            //如果是桌面程序则需要验证用户身份
            if (this.App.ApplicationType == (int)ApplicationType.DESKTOP)
            {
                if (Uid < 1)
                {
                    ErrorCode = (int)ErrorType.API_EC_SESSIONKEY;
                    return "";
                }

                if (Discuz.Forum.Users.GetShortUserInfo(Uid).Adminid != 1)
                {
                    ErrorCode = (int)ErrorType.API_EC_PERMISSION_DENIED;
                    return "";
                }
            }

            if (CallId <= LastCallId)
            {
                ErrorCode = (int)ErrorType.API_EC_CALLID;
                return "";
            }

            if (!this.CheckRequiredParams("uids,additional_values"))
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return "";
            }

            if (!Utils.IsNumericArray(GetParam("additional_values").ToString().Split(',')) || !Utils.IsNumericArray(GetParam("uids").ToString().Split(',')))
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return "";
            }

            string[] values = GetParam("additional_values").ToString().Split(',');
            if (values.Length != 8)
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return "";
            }

            List<float> list = new List<float>();
            for (int i = 0; i < values.Length; i++)
            {
                list.Add(Utils.StrToFloat(values[i], 0));
            }

            foreach (string uId in GetParam("uids").ToString().Split(','))
            {
                int id = TypeConverter.StrToInt(uId);
                if (id == 0)
                    continue;
                UserCredits.UpdateUserExtCredits(id, list.ToArray(), true);

                //向第三方应用同步积分
                for (int i = 0; i < list.Count; i++)
                {
                    if (list[i] != 0.0)
                    {
                        Sync.UpdateCredits(TypeConverter.StrToInt(uId), i + 1, list[i].ToString());
                    }
                }
            }

            int successful = 1;

            if (Format == FormatType.JSON)
            {
                return successful == 1 ? "true" : "false";
            }


            SetExtCreditsResponse secr = new SetExtCreditsResponse();

            secr.Successfull = successful;

            return SerializationHelper.Serialize(secr);
        }

        /// <summary>
        /// 根据用户名获得用户ID
        /// </summary>
        /// <returns></returns>
        public string GetID()
        {
            if (Signature != GetParam("sig").ToString())
            {
                ErrorCode = (int)ErrorType.API_EC_SIGNATURE;
                return "";
            }

            //如果是桌面程序则需要验证用户身份
            if (this.App.ApplicationType == (int)ApplicationType.DESKTOP)
            {
                if (Uid < 1)
                {
                    ErrorCode = (int)ErrorType.API_EC_SESSIONKEY;
                    return "";
                }
            }

            if (CallId <= LastCallId)
            {
                ErrorCode = (int)ErrorType.API_EC_CALLID;
                return "";
            }

            if (!this.CheckRequiredParams("user_name"))
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return "";
            }

            int uid = Discuz.Forum.Users.GetUserId(GetParam("user_name").ToString());
            if (Format == FormatType.JSON)
                return string.Format("\"{0}\"", uid);

            GetIDResponse gir = new GetIDResponse();
            gir.UId = uid;

            return SerializationHelper.Serialize(gir);
        }

        public string ChangePassword()
        {
            if (Signature != GetParam("sig").ToString())
            {
                ErrorCode = (int)ErrorType.API_EC_SIGNATURE;
                return "";
            }

            //如果是桌面程序则需要验证用户身份
            if (this.App.ApplicationType == (int)ApplicationType.DESKTOP)
            {
                if (Uid < 1)
                {
                    ErrorCode = (int)ErrorType.API_EC_SESSIONKEY;
                    return "";
                }
            }

            if (CallId <= LastCallId)
            {
                ErrorCode = (int)ErrorType.API_EC_CALLID;
                return "";
            }

            if (!this.CheckRequiredParams("uid,original_password,new_password,confirm_new_password"))
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return "";
            }

            int uid = TypeConverter.ObjectToInt(GetParam("uid"));
            //如果是桌面程序则需要验证用户身份
            if (this.App.ApplicationType == (int)ApplicationType.DESKTOP)
            {
                if (Uid != uid)
                {
                    ErrorCode = (int)ErrorType.API_EC_PERMISSION_DENIED;
                    return "";
                }
            }

            string originalPassword = GetParam("original_password").ToString();
            string newPassword = GetParam("new_password").ToString();
            string confirmNewPassword = GetParam("confirm_new_password").ToString();

            if (newPassword != confirmNewPassword)
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return string.Empty;
            }

            bool isMD5Passwd = GetParam("password_format") != null && GetParam("password_format").ToString() == "md5";

            ShortUserInfo user = Discuz.Forum.Users.GetShortUserInfo(uid);

            if (!isMD5Passwd)
            {
                originalPassword = Utils.MD5(originalPassword);
            }
            if (user.Password != originalPassword)
            {
                ErrorCode = (int)ErrorType.API_EC_PARAM;
                return string.Empty;
            }

            bool result = Discuz.Forum.Users.UpdateUserPassword(uid, newPassword, !isMD5Passwd);
            ChangePasswordResponse cpr = new ChangePasswordResponse();
            cpr.Successfull = result ? 1 : 0;
            if (Format == FormatType.JSON)
                return string.Format("\"{0}\"", result.ToString().ToLower());

            return SerializationHelper.Serialize(cpr);

        }

        /// <summary>
        /// 检测用户邮箱是否合法
        /// </summary>
        /// <param name="email"></param>
        /// <returns></returns>
        private bool CheckEmail(string email)
        {
            if (!Utils.IsValidEmail(email))
            {
                return false;
            }
            if (!Discuz.Forum.Users.ValidateEmail(email))
            {
                return false;
            }

            string emailhost = Utils.GetEmailHostName(email);
            // 允许名单规则优先于禁止名单规则
            if (Config.Accessemail.Trim() != "" && !Utils.InArray(emailhost, Config.Accessemail.Replace("\r\n", "\n"), "\n"))
            {
                return false;
            }
            if (Config.Censoremail.Trim() != "" && Utils.InArray(email, Config.Censoremail.Replace("\r\n", "\n"), "\n"))
            {
                return false;
            }
            return true;
        }


    }
}
