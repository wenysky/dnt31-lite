using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebSampleHelper;

namespace Discuz.Toolkit.WebSample
{
    public partial class UserManage : System.Web.UI.Page
    {
        DiscuzSession ds;
        public string avatarUrl = "";
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            ds = DiscuzSessionHelper.GetSession();
            if (!IsPostBack)
            {
                User user;
                try
                {
                    ds.session_info = ds.GetSessionFromToken(Session["AuthToken"].ToString());
                }
                catch
                {
                    Response.Redirect("SessionCreater.aspx?next=usermanage");
                }
                if (ds.session_info.UId <= 0)
                    Response.Redirect("default.aspx");

                user = ds.GetLoggedInUser().GetUserInfo();
                IDLabel.Text = user.UId.ToString();
                RealNameBox.Text = user.RealName;
                IDNumBox.Text = user.IdCard;
                MobileBox.Text = user.Mobile;
                TelphoneBox.Text = user.Phone;
                GenderBox.Text = user.Gender.ToString();
                NickNameBox.Text = user.NickName;
                EmailBox.Text = user.Email;
                UserIndexBox.Text = user.WebSite;
                LocationBox.Text = user.Location;
                avatarUrl = user.Avatar;
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            UserForEditing ufe = new UserForEditing();
            ufe.RealName = RealNameBox.Text;
            ufe.IdCard = IDNumBox.Text;
            ufe.Mobile = MobileBox.Text;
            ufe.Phone = TelphoneBox.Text;
            ufe.Gender = GenderBox.Text;
            ufe.NickName = NickNameBox.Text;
            ufe.Email = EmailBox.Text;
            ufe.WebSite = UserIndexBox.Text;
            ufe.Location = LocationBox.Text;
            ds.SetUserInfo(int.Parse(IDLabel.Text), ufe);
            msg = "修改成功";
        }

        protected void ReadBtn_Click(object sender, EventArgs e)
        {
            User user = ds.GetUserInfo(long.Parse(IDBox.Text));
            if (user == null)
            {
                msg = "用户不存在";
                return;
            }
            IDLabel.Text = user.UId.ToString();
            RealNameBox.Text = user.RealName;
            IDNumBox.Text = user.IdCard;
            MobileBox.Text = user.Mobile;
            TelphoneBox.Text = user.Phone;
            GenderBox.Text = user.Gender.ToString();
            NickNameBox.Text = user.NickName;
            EmailBox.Text = user.Email;
            UserIndexBox.Text = user.WebSite;
            LocationBox.Text = user.Location;
            avatarUrl = user.Avatar;
        }

        protected void ChangePwdBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (ds.ChangeUserPassword(long.Parse(IDLabel.Text), OriginalPwdBox.Text, NewPwdBox.Text, ConfirmPwdBox.Text, ""))
                {
                    msg = "密码修改成功";
                    OriginalPwdBox.Text = "";
                    NewPwdBox.Text = "";
                    ConfirmPwdBox.Text = "";
                }
                else
                {
                    msg = "信息有误导致密码修改失败";
                }
            }
            catch (DiscuzException de)
            {
                if (de.ErrorCode == 100)
                {
                    msg = "内部出现错误";
                }
            }
        }
    }
}
