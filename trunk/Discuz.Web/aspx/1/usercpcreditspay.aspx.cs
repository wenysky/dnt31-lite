using System;
using System.Data;
using System.Web;

using Discuz.Common;
using Discuz.Entity;
using Discuz.Forum;
using Discuz.Plugin.Payment;
using Discuz.Plugin.Payment.Alipay;
using Discuz.Web.UI;

namespace Discuz.Web
{
    /// <summary>
    /// 积分兑换
    /// </summary>
    public class usercpcreditspay : UserCpPage
    {
        #region 页面变量
        /// <summary>
        /// 积分交易税
        /// </summary>
        public float creditstax = Scoresets.GetCreditsTax();
        /// <summary>
        /// 积分计算器js脚本
        /// </summary>
        public string jscreditsratearray = "<script type=\"text/javascript\">\r\nvar creditsrate = new Array();\r\n{0}\r\n</script>";
        /// <summary>
        /// 交易积分
        /// </summary>
        public int creditstrans = Scoresets.GetCreditsTrans();
        /// <summary>
        /// 交易积分名称
        /// </summary>
        public string creditstransname = Scoresets.GetValidScoreName()[Scoresets.GetCreditsTrans()];
        /// <summary>
        /// 交易积分单位
        /// </summary>
        public string creditstransunit = Scoresets.GetValidScoreUnit()[Scoresets.GetCreditsTrans()];
        /// <summary>
        /// 购买的积分数量
        /// </summary>
        public int creditsamount = DNTRequest.GetInt("amount", 1);
        #endregion

        protected override void ShowPage()
        {
            pagetitle = "用户控制面板";

            string jsCreditsRateArray = "";
            foreach (DataRow dr in Scoresets.GetScorePaySet(0).Rows)
            {
                jsCreditsRateArray += "creditsrate[" + dr["id"] + "] = " + dr["rate"] + ";\r\n";
            }
            jscreditsratearray = string.Format(jscreditsratearray, jsCreditsRateArray);

            if (!IsLogin()) return;

            if (DNTRequest.IsPost())
            {
                if (ForumUtils.IsCrossSitePost())
                {
                    AddErrLine("您的请求来路不正确，无法提交。如果您安装了某种默认屏蔽来路信息的个人防火墙软件(如 Norton Internet Security)，请设置其不要禁止来路信息后再试。");
                    return;
                }
                if (Utils.MD5(DNTRequest.GetString("password")) != password)
                {
                    AddErrLine("密码错误");
                    return;
                }
                int paynum = DNTRequest.GetInt("paynum", 0);
                if (paynum <= 0)
                {
                    AddErrLine("数量必须是大于0的整数");
                    return;
                }
                if (DNTRequest.GetInt("extcredits1", 0) < 1 || DNTRequest.GetInt("extcredits2", 0) < 1 || DNTRequest.GetInt("extcredits1", 0) > 8 || DNTRequest.GetInt("extcredits2", 0) > 8)
                {
                    AddErrLine("请正确选择要兑换的积分类型!");
                    return;
                }
                if (DNTRequest.GetInt("extcredits1", 0) == DNTRequest.GetInt("extcredits2", 0))
                {
                    AddErrLine("不能兑换相同类型的积分");
                    return;
                }

                //对交易后的积分增减进行修改设置
                UserExtcreditsInfo extcredits1info = Scoresets.GetScoreSet(DNTRequest.GetInt("extcredits1", 0));
                UserExtcreditsInfo extcredits2info = Scoresets.GetScoreSet(DNTRequest.GetInt("extcredits2", 0));
                if (Utils.StrIsNullOrEmpty(extcredits1info.Name) || Utils.StrIsNullOrEmpty(extcredits2info.Name))
                {
                    AddErrLine("错误的输入!");
                    return;
                }
                if ((Users.GetUserExtCredits(userid, DNTRequest.GetInt("extcredits1", 0)) - paynum) < Scoresets.GetExchangeMinCredits())
                {
                    AddErrLine("抱歉, 您的 \"" + extcredits1info.Name + "\" 不足." + Scoresets.GetExchangeMinCredits());
                    return;
                }

                UserInfo __userinfo = Users.GetUserInfo(userid);

                float extcredit2paynum = (float)Math.Round(paynum * (extcredits1info.Rate / extcredits2info.Rate) * (1 - creditstax), 2);
                Users.UpdateUserExtCredits(userid, DNTRequest.GetInt("extcredits1", 0), paynum * -1);
                Users.UpdateUserExtCredits(userid, DNTRequest.GetInt("extcredits2", 0), extcredit2paynum);
                CreditsLogs.AddCreditsLog(userid, userid, DNTRequest.GetInt("extcredits1", 0), DNTRequest.GetInt("extcredits2", 0), paynum, extcredit2paynum, Utils.GetDateTime(), 1);

                SetUrl("usercpcreaditstransferlog.aspx");
                SetMetaRefresh();
                SetShowBackLink(false);
                AddMsgLine("积分兑换完毕, 正在返回积分兑换与转帐记录");
            }

            if (!string.IsNullOrEmpty(DNTRequest.GetString("redirect")))
            {
                switch (DNTRequest.GetString("redirect"))//根据该值判断操作类型
                {
                    case "alipay":
                        RedirectToAlipay();
                        break;
                    default:
                        return;
                }
            }
        }
        /// <summary>
        /// 定位到支付宝支付界面
        /// </summary>
        public void RedirectToAlipay()
        {
            DigitalTrade alipayTrade = new DigitalTrade();
            alipayTrade.Subject = string.Format("{0} 论坛积分充值({1}:{2}{3}),用户:{4}", config.Forumtitle, creditstransname, creditsamount, creditstransunit, username);
            if (Utils.IsValidEmail(config.Alipayaccout))//如果用户保存在配置文件里面的支付宝帐号格式是email的话
                alipayTrade.Seller_Email = config.Alipayaccout;
            else
                alipayTrade.Seller_Id = config.Alipayaccout;

            alipayTrade.Return_Url = Utils.GetRootUrl(forumpath) + "tools/notifypage.aspx";
            alipayTrade.Notify_Url = Utils.GetRootUrl(forumpath) + "tools/notifypage.aspx";
            alipayTrade.Quantity = 1;
            decimal price = decimal.Round(((decimal)creditsamount / (decimal)config.Cashtocreditrate), 2);
            alipayTrade.Price = price > 0.1M ? price : 0.1M;//限定每个订单的最低价格是0.1元
            alipayTrade.Payment_Type = 1;
            alipayTrade.PayMethod = "bankPay";//跳转到支付宝时默认支付类型是网上银行
            string payUrl = "";

            //if (config.Usealipaycustompartnerid == 1)
            //{
            alipayTrade.Partner = config.Alipaypartnerid;
            alipayTrade.Sign = config.Alipaypartnercheckkey;
            payUrl = StandardAliPayment.GetService().CreateDigitalGoodsTradeUrl(alipayTrade);
            //}
            //else
            //{
            //    payUrl = AliPayment.GetService().CreateDigitalGoodsTradeUrl(alipayTrade);
            //}

            CreditOrders.CreateCreditOrder(userid, username, creditstrans, creditsamount, 1, alipayTrade.Out_Trade_No);//创建积分充值订单
            HttpContext.Current.Response.Redirect(payUrl);//跳转到支付宝即时到帐支付页面
        }
    }
}