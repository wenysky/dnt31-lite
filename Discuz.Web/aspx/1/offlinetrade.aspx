<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.offlinetrade" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:52.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:52. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;




	if (page_err==0)
	{

	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("			<p><a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <strong>线下交易</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (ispost)
	{





	}
	else
	{


	if (ispay)
	{





	}
	else
	{

	templateBuilder.Append("<script language=\"javascript\" src=\"javascript/template_trade.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("zoomstatus = parseInt(1);\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<form method=\"post\" id=\"tradepost\" name=\"tradepost\" action=\"offlinetrade.aspx?goodstradelogid=");
	templateBuilder.Append(goodstradelogid.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("	<div class=\"mainbox\">\r\n");
	templateBuilder.Append("		<h3>线下交易</h3>\r\n");
	templateBuilder.Append("		<table summary=\"交易单\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	templateBuilder.Append("		    <tr>\r\n");
	templateBuilder.Append("				<th>状态</th>\r\n");
	templateBuilder.Append("				<td> \r\n");

	if (goodstradelog.Status<=0)
	{

	templateBuilder.Append("				    未生效的交易\r\n");

	}	//end if


	if (goodstradelog.Status==1)
	{

	templateBuilder.Append("				    等待买家付款\r\n");

	}	//end if


	if (goodstradelog.Status==2)
	{

	templateBuilder.Append("				    交易已创建, 等待卖家确认\r\n");

	}	//end if


	if (goodstradelog.Status==3)
	{

	templateBuilder.Append("				    确认买家付款中,暂勿发货\r\n");

	}	//end if


	if (goodstradelog.Status==4)
	{

	templateBuilder.Append("				    买家已付款,等待卖家发货\r\n");

	}	//end if


	if (goodstradelog.Status==5)
	{

	templateBuilder.Append("				    卖家已发货,买家确认中\r\n");

	}	//end if


	if (goodstradelog.Status==6)
	{

	templateBuilder.Append("				    买家确认收到货,等待支付宝打款给卖家\r\n");

	}	//end if


	if (goodstradelog.Status==7)
	{

	templateBuilder.Append("				    交易成功结束\r\n");

	}	//end if


	if (goodstradelog.Status==8)
	{

	templateBuilder.Append("				    交易中途关闭(未完成)\r\n");

	}	//end if


	if (goodstradelog.Status==10)
	{

	templateBuilder.Append("				    等待卖家同意退款\r\n");

	}	//end if


	if (goodstradelog.Status==11)
	{

	templateBuilder.Append("				    卖家拒绝买家条件，等待买家修改条件\r\n");

	}	//end if


	if (goodstradelog.Status==12)
	{

	templateBuilder.Append("				    卖家同意退款，等待买家退货\r\n");

	}	//end if


	if (goodstradelog.Status==13)
	{

	templateBuilder.Append("				    等待卖家收货\r\n");

	}	//end if


	if (goodstradelog.Status==17)
	{

	templateBuilder.Append("				    退款成功\r\n");

	}	//end if

	templateBuilder.Append("				(");
	templateBuilder.Append(goodstradelog.Lastupdate.ToString().Trim());
	templateBuilder.Append(")\r\n");
	templateBuilder.Append("				<input id=\"status\" name=\"status\" type=\"hidden\" value=\"\" />	\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	if (goodstradelog.Status<=0)
	{

	templateBuilder.Append("		 	<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"password\">论坛登录密码</label></th>\r\n");
	templateBuilder.Append("				<td><input id=\"password\" name=\"password\" type=\"password\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"message\">留言</label><div class=\"tips\">可输入付款方式、银行账号等信息<br /> 200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td><textarea id=\"message\" name=\"message\" style=\"width: 95%\" rows=\"3\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (isbuyer)
	{

	templateBuilder.Append("		            <button type=\"button\" onclick=\"$('status').value = '4';$('offlinesubmit').click();\">我已付款，等待卖家发货</button>&nbsp;<button type=\"button\" onclick=\"$('status').value = '8';$('offlinesubmit').click();\">取消此次交易</button>\r\n");

	}	//end if


	if (isseller)
	{

	templateBuilder.Append("			        <button type=\"button\" onclick=\"$('status').value = '1';$('offlinesubmit').click();\">交易单生效</button>&nbsp;<button type=\"button\" onclick=\"$('status').value = '8';$('offlinesubmit').click();\">取消此次交易</button>\r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	if (goodstradelog.Status==1)
	{


	if (isbuyer)
	{

	templateBuilder.Append("		 	<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"password\">论坛登录密码</label></th>\r\n");
	templateBuilder.Append("				<td><input id=\"password1\" name=\"password\" type=\"password\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"message\">留言</label><div class=\"tips\">可输入付款方式、银行账号等信息<br /> 200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td><textarea id=\"Textarea1\" name=\"message\" style=\"width: 95%\" rows=\"3\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td>					\r\n");
	templateBuilder.Append("		            <button type=\"button\" onclick=\"$('status').value = '4';$('offlinesubmit').click();\">我已付款，等待卖家发货</button>&nbsp;<button type=\"button\" onclick=\"$('status').value = '8';$('offlinesubmit').click();\">取消此次交易</button>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	}	//end if


	if (goodstradelog.Status==4)
	{


	if (isseller)
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"password\">论坛登录密码</label></th>\r\n");
	templateBuilder.Append("				<td><input id=\"password6\" name=\"password\" type=\"password\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"message\">留言</label><div class=\"tips\">可输入付款方式、银行账号等信息<br /> 200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td><textarea id=\"message\" name=\"message\" style=\"width: 95%\" rows=\"3\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td><button type=\"button\" onclick=\"$('status').value = '5';$('offlinesubmit').click();\">我已发货</button>&nbsp;<button type=\"button\" onclick=\"$('status').value = '8';$('offlinesubmit').click();\">取消此次交易</button>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	}	//end if


	if (goodstradelog.Status==5)
	{


	if (isbuyer)
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"password\">论坛登录密码</label></th>\r\n");
	templateBuilder.Append("				<td><input id=\"password\" name=\"password\" type=\"password\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>留言<div class=\"tips\">可输入付款方式、银行账号等信息<br /> 200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td><textarea id=\"message\" name=\"message\" style=\"width: 95%\" rows=\"3\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td><button class=\"mallbutton\" type=\"button\" onclick=\"$('status').value = '7';$('offlinesubmit').click();\">我收到货，交易成功结束</button>&nbsp;<button type=\"button\" onclick=\"$('status').value = '10';$('offlinesubmit').click();\">我要退货，等待卖家同意退款</button>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	}	//end if


	if (goodstradelog.Status==7)
	{

	templateBuilder.Append("		    <tr>\r\n");
	templateBuilder.Append("				<th>\r\n");

	if (goodstradelog.Ratestatus==3)
	{

	templateBuilder.Append("双方已评\r\n");

	}
	else
	{

	templateBuilder.Append("&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("</th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (!israted)
	{

	templateBuilder.Append("				    <button type=\"button\" onclick=\"window.open('goodsrate.aspx?goodstradelogid=");
	templateBuilder.Append(goodstradelog.Id.ToString().Trim());
	templateBuilder.Append("', '', '')\">评价</button>\r\n");

	}
	else
	{

	templateBuilder.Append("                    &nbsp;				    \r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	if (goodstradelog.Status==17)
	{

	templateBuilder.Append("		    <tr>\r\n");
	templateBuilder.Append("				<th>\r\n");

	if (goodstradelog.Ratestatus==3)
	{

	templateBuilder.Append("双方已评\r\n");

	}
	else
	{

	templateBuilder.Append("&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("</th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (!israted)
	{

	templateBuilder.Append("				    <button type=\"button\" onclick=\"window.open('goodsrate.aspx?goodstradelogid=");
	templateBuilder.Append(goodstradelog.Id.ToString().Trim());
	templateBuilder.Append("', '', '')\">评价</button>\r\n");

	}
	else
	{

	templateBuilder.Append("                    &nbsp;				    \r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	if (goodstradelog.Status==8)
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>论坛登录密码</th>\r\n");
	templateBuilder.Append("				<td><input id=\"password\" name=\"password\" type=\"password\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"message\">留言</label><div class=\"tips\">可输入付款方式、银行账号等信息<br /> 200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td><textarea id=\"message\" name=\"message\" style=\"width: 95%\" rows=\"3\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (isbuyer)
	{

	templateBuilder.Append("				        <button type=\"button\" onclick=\"$('status').value = '1';$('offlinesubmit').click();\">交易单生效</button>&nbsp;<button type=\"button\" onclick=\"$('status').value = '4';$('offlinesubmit').click();\">我已付款，等待卖家发货</button>\r\n");

	}	//end if


	if (isseller)
	{

	templateBuilder.Append("				        <button type=\"button\" onclick=\"$('status').value = '1';$('offlinesubmit').click();\">交易单生效</button>&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	if (goodstradelog.Status==10)
	{


	if (isseller)
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"password\">论坛登录密码</label></th>\r\n");
	templateBuilder.Append("				<td><input id=\"password\" name=\"password\" type=\"password\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"message\">留言</label><div class=\"tips\">可输入付款方式、银行账号等信息<br /> 200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td><textarea id=\"message\" name=\"message\" style=\"width: 95%\" rows=\"3\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				<button type=\"button\" onclick=\"$('status').value = '12';$('offlinesubmit').click();\">卖家同意退款</button>&nbsp;<button type=\"button\" onclick=\"$('status').value = '11';$('offlinesubmit').click();\">卖家拒绝退款</button>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	}	//end if


	if (goodstradelog.Status==11)
	{


	if (isbuyer)
	{

	templateBuilder.Append("		    <tr>\r\n");
	templateBuilder.Append("				<th><label for=\"password\">论坛登录密码</label></th>\r\n");
	templateBuilder.Append("				<td><input id=\"password\" name=\"password\" type=\"password\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"message\">留言</label><div class=\"tips\">可输入付款方式、银行账号等信息<br /> 200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td><textarea id=\"message\" name=\"message\" style=\"width: 95%\" rows=\"3\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				  <button type=\"button\" onclick=\"$('status').value = '10';$('offlinesubmit').click();\">我要退货，等待卖家同意退款</button>&nbsp;<button type=\"button\" onclick=\"$('status').value = '7';$('offlinesubmit').click();\">我收到货，交易成功结束</button>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	}	//end if


	if (goodstradelog.Status==12)
	{


	if (isbuyer)
	{

	templateBuilder.Append("		    <tr>\r\n");
	templateBuilder.Append("				<th><label for=\"password\">论坛登录密码</label></th>\r\n");
	templateBuilder.Append("				<td><input id=\"password\" name=\"password\" type=\"password\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"message\">留言</label><div class=\"tips\">可输入付款方式、银行账号等信息<br /> 200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td><textarea id=\"message\" name=\"message\" style=\"width: 95%\" rows=\"3\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				    <button type=\"button\" onclick=\"$('status').value = '13';$('offlinesubmit').click();\">我已退货</button>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	}	//end if


	if (goodstradelog.Status==13)
	{


	if (isseller)
	{

	templateBuilder.Append("		    <tr>\r\n");
	templateBuilder.Append("				<th><label for=\"password\">论坛登录密码</label></th>\r\n");
	templateBuilder.Append("				<td><input id=\"password\" name=\"password\" type=\"password\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"message\">留言</label><div class=\"tips\">可输入付款方式、银行账号等信息<br /> 200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td><textarea  id=\"message\" name=\"message\" style=\"width: 95%\" rows=\"3\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				  <button type=\"button\" onclick=\"$('status').value = '17';$('offlinesubmit').click();\">卖家收到退货, 已退款</button>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"mainbox\">\r\n");
	templateBuilder.Append("		<h3>交易单</h3>\r\n");
	templateBuilder.Append("		<table summary=\"确认购买信息\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>支付总额</th>\r\n");
	templateBuilder.Append("				<td><strong id=\"caculate\"></strong>&nbsp;元</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	if (isseller)
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>买家</th>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(goodstradelog.Buyerid);
	
	templateBuilder.Append("				<td><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodstradelog.Buyer.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("				&nbsp;<a href=\"usercppostpm.aspx?msgtoid=");
	templateBuilder.Append(goodstradelog.Buyerid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">[发短消息]</a></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>卖家</th>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(goodstradelog.Sellerid);
	
	templateBuilder.Append("				<td><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodstradelog.Seller.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("				 <a href=\"https://www.alipay.com/trade/i_credit.do?email=");
	templateBuilder.Append(goodstradelog.Selleraccount.ToString().Trim());
	templateBuilder.Append("\" style=\"vertical-align: middle;\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/alipaysmall.gif\" border=\"0\" alt=\"支付宝账户信用信息\" /></a>										</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>商品名称</th>\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(goodstradelog.Goodsid);
	
	templateBuilder.Append("				<td><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodstradelog.Subject.ToString().Trim());
	templateBuilder.Append("</a></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"newprice\">商品现价</label></th>\r\n");
	templateBuilder.Append("				<td>");
	templateBuilder.Append(goodstradelog.Price.ToString().Trim());
	templateBuilder.Append(" 元</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"newnumber\">购买数量</label></th>\r\n");
	templateBuilder.Append("				<td>");
	templateBuilder.Append(goodstradelog.Number.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>物流方式</th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (goodstradelog.Transportpay==0)
	{

	templateBuilder.Append("						虚拟物品或无需邮递 \r\n");

	}	//end if


	if (goodstradelog.Transportpay==1)
	{

	templateBuilder.Append("						卖家承担运费\r\n");

	}	//end if


	if (goodstradelog.Transportpay==2)
	{

	templateBuilder.Append("						买家承担运费\r\n");

	}	//end if


	if (goodstradelog.Transportpay==3)
	{

	templateBuilder.Append("						买家收到货物后直接支付给物流公司\r\n");

	}	//end if


	if (goodstradelog.Sellerid==userid)
	{

	templateBuilder.Append("						运费 \r\n");

	if (goodstradelog.Status<=0)
	{

	templateBuilder.Append("							<input type=\"text\" id=\"fee\" name=\"fee\"  value=\"");
	templateBuilder.Append(goodstradelog.Transportfee.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("							");
	templateBuilder.Append(goodstradelog.Transportfee.ToString().Trim());
	templateBuilder.Append("  \r\n");

	}	//end if

	templateBuilder.Append("						元\r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"newbuyername\">收货人姓名</label></th>\r\n");
	templateBuilder.Append("				<td>");
	templateBuilder.Append(goodstradelog.Buyername.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"newbuyercontact\">收货地址</label></th>\r\n");
	templateBuilder.Append("				<td>");
	templateBuilder.Append(goodstradelog.Buyercontact.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"newbuyerzip\">收货人邮编</label></th>\r\n");
	templateBuilder.Append("				<td>");
	templateBuilder.Append(goodstradelog.Buyerzip.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"newbuyerphone\">收货人电话</label></th>\r\n");
	templateBuilder.Append("				<td>");
	templateBuilder.Append(goodstradelog.Buyerphone.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"newbuyermobile\">收货人手机</label></th>\r\n");
	templateBuilder.Append("				<td>");
	templateBuilder.Append(goodstradelog.Buyermobile.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"newbuyermsg\">备注信息</label></th>\r\n");
	templateBuilder.Append("				<td>");
	templateBuilder.Append(goodstradelog.Buyermsg.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	if (isbuyer)
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>买家</th>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(goodstradelog.Buyerid);
	
	templateBuilder.Append("				<td><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodstradelog.Buyer.ToString().Trim());
	templateBuilder.Append("</a></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>卖家</th>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(goodstradelog.Sellerid);
	
	templateBuilder.Append("				<td><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodstradelog.Seller.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("				 &nbsp;<a href=\"usercppostpm.aspx?msgtoid=");
	templateBuilder.Append(goodstradelog.Sellerid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">[发短消息]</a>					\r\n");
	templateBuilder.Append("				 <a href=\"https://www.alipay.com/trade/i_credit.do?email=");
	templateBuilder.Append(goodstradelog.Selleraccount.ToString().Trim());
	templateBuilder.Append("\" style=\"vertical-align: middle;\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/alipaysmall.gif\" border=\"0\" alt=\"支付宝账户信用信息\" /></a>\r\n");
	templateBuilder.Append("				 </td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>商品名称</th>\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(goodstradelog.Goodsid);
	
	templateBuilder.Append("				<td><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodstradelog.Subject.ToString().Trim());
	templateBuilder.Append("</a></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"newprice\">商品现价</label></th>\r\n");
	templateBuilder.Append("				<td>");
	templateBuilder.Append(goodstradelog.Price.ToString().Trim());
	templateBuilder.Append(" 元</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"number\">购买数量</label></th>\r\n");
	templateBuilder.Append("				<td>");
	templateBuilder.Append(goodstradelog.Number.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>物流方式</th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (goodstradelog.Transportpay==0)
	{

	templateBuilder.Append("						虚拟物品或无需邮递 \r\n");

	}	//end if


	if (goodstradelog.Transportpay==1)
	{

	templateBuilder.Append("						卖家承担运费\r\n");

	}	//end if


	if (goodstradelog.Transportpay==2)
	{

	templateBuilder.Append("						买家承担运费\r\n");

	}	//end if


	if (goodstradelog.Transportpay==3)
	{

	templateBuilder.Append("						买家收到货物后直接支付给物流公司\r\n");

	}	//end if

	templateBuilder.Append("					运费 ");
	templateBuilder.Append(goodstradelog.Transportfee.ToString().Trim());
	templateBuilder.Append("  元\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyername\">收货人姓名</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (goodstradelog.Status<=0)
	{

	templateBuilder.Append("					<input type=\"text\" id=\"buyername\" name=\"buyername\" maxlength=\"50\" value=\"");
	templateBuilder.Append(goodstradelog.Buyername.ToString().Trim());
	templateBuilder.Append("\" />\r\n");

	}
	else
	{

	templateBuilder.Append("					");
	templateBuilder.Append(goodstradelog.Buyername.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyercontact\">收货地址</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (goodstradelog.Status<=0)
	{

	templateBuilder.Append("					<input type=\"text\" id=\"buyercontact\" name=\"buyercontact\" maxlength=\"100\" size=\"80\" value=\"");
	templateBuilder.Append(goodstradelog.Buyercontact.ToString().Trim());
	templateBuilder.Append("\" />\r\n");

	}
	else
	{

	templateBuilder.Append("					");
	templateBuilder.Append(goodstradelog.Buyercontact.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyerzip\">收货人邮编</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (goodstradelog.Status<=0)
	{

	templateBuilder.Append("				<input type=\"text\" id=\"buyerzip\" name=\"buyerzip\" maxlength=\"10\" value=\"");
	templateBuilder.Append(goodstradelog.Buyerzip.ToString().Trim());
	templateBuilder.Append("\" />\r\n");

	}
	else
	{

	templateBuilder.Append("					");
	templateBuilder.Append(goodstradelog.Buyercontact.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("				</td>    \r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyerphone\">收货人电话</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (goodstradelog.Status<=0)
	{

	templateBuilder.Append("				<input type=\"text\" id=\"buyerphone\" name=\"buyerphone\" maxlength=\"20\" value=\"");
	templateBuilder.Append(goodstradelog.Buyerphone.ToString().Trim());
	templateBuilder.Append("\" />\r\n");

	}
	else
	{

	templateBuilder.Append("					");
	templateBuilder.Append(goodstradelog.Buyercontact.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyermobile\">收货人手机</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (goodstradelog.Status<=0)
	{

	templateBuilder.Append("				<input type=\"text\" id=\"buyermobile\" name=\"buyermobile\" maxlength=\"20\" value=\"");
	templateBuilder.Append(goodstradelog.Buyermobile.ToString().Trim());
	templateBuilder.Append("\" />\r\n");

	}
	else
	{

	templateBuilder.Append("					");
	templateBuilder.Append(goodstradelog.Buyercontact.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyermsg\">备注信息</label><div class=\"tips\">200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (goodstradelog.Status<=0)
	{

	templateBuilder.Append("				<textarea id=\"buyermsg\" name=\"buyermsg\" style=\"width: 95%\" rows=\"3\">");
	templateBuilder.Append(goodstradelog.Buyermsg.ToString().Trim());
	templateBuilder.Append("</textarea>\r\n");

	}
	else
	{

	templateBuilder.Append("					");
	templateBuilder.Append(goodstradelog.Buyercontact.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	if (goodstradelog.Status==0)
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				<button type=\"submit\" name=\"tradesubmit\" value=\"true\"  onclick=\"$('status').value = '0';$('offlinesubmit').click();\">更新交易单</button>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if

	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	    </div>\r\n");

	if (goodsleavewordlist.Count>0)
	{

	templateBuilder.Append("	    <div class=\"mainbox\">\r\n");
	templateBuilder.Append("			<h3>留言</h3>\r\n");
	templateBuilder.Append("			<table summary=\"交易单\" border=\"0\"  cellspacing=\"0\" cellpadding=\"0\">\r\n");

	int leavewordinfo__loop__id=0;
	foreach(Goodsleavewordinfo leavewordinfo in goodsleavewordlist)
	{
		leavewordinfo__loop__id++;

	templateBuilder.Append("				<tr>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(leavewordinfo.Uid);
	
	templateBuilder.Append("					<th><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(leavewordinfo.Username.ToString().Trim());
	templateBuilder.Append("</a><br /></th>\r\n");
	templateBuilder.Append("					<td>");
	templateBuilder.Append(leavewordinfo.Message.ToString().Trim());
	templateBuilder.Append("<BR /><div class=\"tips\">[");
	templateBuilder.Append(leavewordinfo.Postdatetime.ToString().Trim());
	templateBuilder.Append("]</div></td>\r\n");
	templateBuilder.Append("				</tr>\r\n");

	}	//end loop

	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if

	templateBuilder.Append("		<input type=\"submit\" id=\"offlinesubmit\" name=\"offlinesubmit\" style=\"display: none\" />\r\n");
	templateBuilder.Append("</form>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("function calcsum() {\r\n");
	templateBuilder.Append("	$('caculate').innerHTML = parseFloat(");
	templateBuilder.Append(goodstradelog.Number.ToString().Trim());
	templateBuilder.Append(" * ");
	templateBuilder.Append(goodstradelog.Price.ToString().Trim());
	templateBuilder.Append(" \r\n");

	if (goodstradelog.Transportpay==2)
	{

	templateBuilder.Append(" + ");
	templateBuilder.Append(goodstradelog.Transportfee.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append(").toFixed(2);\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("calcsum();\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


	}	//end if


	}
	else
	{




	templateBuilder.Append("</div>\r\n");

	}	//end if








	Response.Write(templateBuilder.ToString());
}
</script>
