<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.buygoods" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:48.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:48. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	templateBuilder.Append("<!--TheCurrent start-->\r\n");

	if (page_err==0)
	{


	if (ispost)
	{





	}
	else
	{

	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("		<a id=\"A1\" href=\"forumindex.aspx\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; ");
	templateBuilder.Append(goodscategoryinfo.Pathlist.ToString().Trim());
	templateBuilder.Append("  &raquo; <strong>购买商品</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>	\r\n");
	templateBuilder.Append("<script language=\"javascript\" src=\"javascript/template_trade.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("zoomstatus = parseInt(1);\r\n");
	templateBuilder.Append("var feevalue = 0;\r\n");
	templateBuilder.Append("var price = ");
	templateBuilder.Append(goodsinfo.Price.ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<form method=\"post\" id=\"tradepost\" name=\"tradepost\" action=\"buygoods.aspx?goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("<div class=\"box tradeinfo\">\r\n");
	templateBuilder.Append("	<h1>");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("</h1>\r\n");
	templateBuilder.Append("	<div class=\"imageviewer\" style=\"padding:20px 0;\">\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(goodsinfo.Goodsid);
	
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">\r\n");

	if (goodsinfo.Goodspic=="")
	{

	templateBuilder.Append("					<img id=\"goodspic\" style=\"width:80px;\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/mall/nogoods_small.gif\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  alt=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("					<img id=\"goodspic\" style=\"width:80px;\" src=\"upload/");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  alt=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}	//end if

	templateBuilder.Append("			</a>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"itemsummary\" style=\"margin-left:-40px;\">\r\n");
	templateBuilder.Append("		<ul id=\"priceinfo\">\r\n");
	templateBuilder.Append("			<li class=\"currentprice\" style=\"padding-bottom: 5px;\"><span style=\"margin-top: 5px;\">现价:</span><em>");
	templateBuilder.Append(goodsinfo.Price.ToString().Trim());
	templateBuilder.Append("</em>元</li>\r\n");
	templateBuilder.Append("			<li class=\"location\"><span>所在地:</span>");
	templateBuilder.Append(goodsinfo.Locus.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			<li><span>卖家:</span>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(goodsinfo.Selleruid);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodsinfo.Seller.ToString().Trim());
	templateBuilder.Append("</a> \r\n");

	if (goodsinfo.Tradetype==1)
	{

	templateBuilder.Append("					<a href=\"https://www.alipay.com/trade/i_credit.do?email=");
	templateBuilder.Append(goodsinfo.Account.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/alipaysmall.gif\" border=\"0\" />支付宝账户信用信息</a>\r\n");

	}	//end if

	templateBuilder.Append("			</li>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div class=\"mainbox\">\r\n");
	templateBuilder.Append("		<h3>\r\n");

	if (goodstradelog.Id<=0)
	{

	templateBuilder.Append("		   确认购买信息\r\n");

	}
	else
	{

	templateBuilder.Append("		   交易单  \r\n");

	}	//end if

	templateBuilder.Append("</h3>\r\n");
	templateBuilder.Append("		<table summary=\"确认购买信息\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>支付总额</th>\r\n");
	templateBuilder.Append("				<td><strong id=\"caculate\"></strong>&nbsp;元</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"number\">购买数量</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"text\" id=\"number\" name=\"number\" onkeyup=\"calcsum()\" value=\"1\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>物流方式</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				    <input type=\"hidden\" id=\"transport\" name=\"transport\" value=\"");
	templateBuilder.Append(goodsinfo.Transport.ToString().Trim());
	templateBuilder.Append("\" />\r\n");

	if (goodsinfo.Transport==0)
	{

	templateBuilder.Append("					    虚拟物品或无需邮递 \r\n");

	}	//end if


	if (goodsinfo.Transport==1)
	{

	templateBuilder.Append("					    卖家承担运费\r\n");

	}	//end if


	if (goodsinfo.Transport>1)
	{


	if (goodsinfo.Transport==2)
	{

	templateBuilder.Append("					        买家承担运费\r\n");

	}	//end if


	if (goodsinfo.Transport==3)
	{

	templateBuilder.Append("					        买家收到货物后直接支付给物流公司\r\n");

	}	//end if


	if (goodsinfo.Ordinaryfee>0)
	{

	templateBuilder.Append("	    				    <label><input class=\"radio\" type=\"radio\" id=\"postage_mail\" name=\"fee\" value=\"");
	templateBuilder.Append(goodsinfo.Ordinaryfee.ToString().Trim());
	templateBuilder.Append("\" checked=\"checked\" \r\n");

	if (goodsinfo.Transport==2)
	{

	templateBuilder.Append("onclick=\"$('transport').value = 1;feevalue = ");
	templateBuilder.Append(goodsinfo.Ordinaryfee.ToString().Trim());
	templateBuilder.Append(";calcsum();\"\r\n");

	}	//end if

	templateBuilder.Append(" /> 平邮 ");
	templateBuilder.Append(goodsinfo.Ordinaryfee.ToString().Trim());
	templateBuilder.Append(" 元</label>\r\n");
	templateBuilder.Append("	    				    <script type=\"text/javascript\">feevalue = ");
	templateBuilder.Append(goodsinfo.Ordinaryfee.ToString().Trim());
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	if (goodsinfo.Emsfee>0)
	{

	templateBuilder.Append("	    				    <label><input class=\"radio\" type=\"radio\" id=\"postage_ems\" name=\"fee\" value=\"");
	templateBuilder.Append(goodsinfo.Emsfee.ToString().Trim());
	templateBuilder.Append("\" checked=\"checked\" \r\n");

	if (goodsinfo.Transport==2)
	{

	templateBuilder.Append("onclick=\"$('transport').value = 2;feevalue = ");
	templateBuilder.Append(goodsinfo.Emsfee.ToString().Trim());
	templateBuilder.Append(";calcsum();\"\r\n");

	}	//end if

	templateBuilder.Append(" /> EMS ");
	templateBuilder.Append(goodsinfo.Emsfee.ToString().Trim());
	templateBuilder.Append(" 元</label>\r\n");
	templateBuilder.Append("	    				    <script type=\"text/javascript\">feevalue = ");
	templateBuilder.Append(goodsinfo.Emsfee.ToString().Trim());
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	if (goodsinfo.Expressfee>0)
	{

	templateBuilder.Append("	    				    <label><input class=\"radio\" type=\"radio\" id=\"postage_express\" name=\"fee\" value=\"");
	templateBuilder.Append(goodsinfo.Expressfee.ToString().Trim());
	templateBuilder.Append("\" checked=\"checked\" \r\n");

	if (goodsinfo.Transport==2)
	{

	templateBuilder.Append("onclick=\"$('transport').value = 3;feevalue = ");
	templateBuilder.Append(goodsinfo.Expressfee.ToString().Trim());
	templateBuilder.Append(";calcsum();\"\r\n");

	}	//end if

	templateBuilder.Append(" /> 快递 ");
	templateBuilder.Append(goodsinfo.Expressfee.ToString().Trim());
	templateBuilder.Append(" 元</label>\r\n");
	templateBuilder.Append("	    				    <script type=\"text/javascript\">feevalue = ");
	templateBuilder.Append(goodsinfo.Expressfee.ToString().Trim());
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>交易方式</th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (goodsinfo.Tradetype==1)
	{

	templateBuilder.Append("						<label><input type=\"radio\" class=\"radio\" name=\"offline\" value=\"0\" checked=\"checked\" /> 支付宝在线交易</label> <label><input type=\"radio\" class=\"radio\" name=\"offline\" value=\"1\" /> 线下交易</label>\r\n");

	}
	else
	{

	templateBuilder.Append("				        <label>线下交易<input type=\"hidden\" class=\"radio\" name=\"offline\" value=\"1\" /></label>\r\n");

	}	//end if

	templateBuilder.Append("    			</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyername\">收货人姓名</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"text\" id=\"buyername\" name=\"buyername\" maxlength=\"50\" value=\"");
	templateBuilder.Append(goodstradelog.Buyername.ToString().Trim());
	templateBuilder.Append("\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyercontact\">收货地址</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"text\" id=\"buyercontact\" name=\"buyercontact\" maxlength=\"100\" size=\"80\" value=\"");
	templateBuilder.Append(goodstradelog.Buyercontact.ToString().Trim());
	templateBuilder.Append("\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyerzip\">收货人邮编</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"text\" id=\"buyerzip\" name=\"buyerzip\" maxlength=\"10\" value=\"");
	templateBuilder.Append(goodstradelog.Buyerzip.ToString().Trim());
	templateBuilder.Append("\"\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyerphone\">收货人电话</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"text\" id=\"buyerphone\" name=\"buyerphone\" maxlength=\"20\" value=\"");
	templateBuilder.Append(goodstradelog.Buyerphone.ToString().Trim());
	templateBuilder.Append("\"\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyermobile\">收货人手机</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"text\" id=\"buyermobile\" name=\"buyermobile\" maxlength=\"20\" value=\"");
	templateBuilder.Append(goodstradelog.Buyermobile.ToString().Trim());
	templateBuilder.Append("\"\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"buyermsg\">备注信息</label><div class=\"tips\">200 字以内</div></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<textarea id=\"buyermsg\" name=\"buyermsg\" style=\"width: 95%\" rows=\"3\">");
	templateBuilder.Append(goodstradelog.Buyermsg.ToString().Trim());
	templateBuilder.Append("</textarea>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<button class=\"mallbutton\" type=\"submit\" name=\"tradesubmit\" value=\"true\">确认购买</button>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</form>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("function calcsum() {\r\n");
	templateBuilder.Append("	$('caculate').innerHTML = parseFloat(price * $('tradepost').number.value + feevalue).toFixed(2);\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("calcsum();\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


	}
	else
	{




	templateBuilder.Append("</div>\r\n");

	}	//end if








	Response.Write(templateBuilder.ToString());
}
</script>
