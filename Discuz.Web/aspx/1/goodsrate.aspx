<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.goodsrate" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:50.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:50. 
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
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"home\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <strong>");
	templateBuilder.Append(goodstradelog.Subject.ToString().Trim());
	templateBuilder.Append("</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"headsearch\">\r\n");
	templateBuilder.Append("		<div id=\"search\">\r\n");

	if (usergroupinfo.Allowsearch>0)
	{





	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_trade.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("zoomstatus = parseInt(1);\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div class=\"mainbox\">\r\n");
	templateBuilder.Append("<form method=\"post\" id=\"tradepost\" name=\"tradepost\" action=\"goodsrate.aspx?goodstradelogid=");
	templateBuilder.Append(goodstradelog.Id.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("   <h3>发表评价</h3>\r\n");
	templateBuilder.Append("	<table summary=\"发表评价\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>被评价人</th>\r\n");
	templateBuilder.Append("			<td>\r\n");

	if (goodstradelog.Sellerid!=userid)
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(goodstradelog.Sellerid);
	
	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodstradelog.Seller.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(goodstradelog.Buyerid);
	
	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodstradelog.Buyer.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("       <tr>\r\n");
	templateBuilder.Append("            <th>相关商品</th>\r\n");
	templateBuilder.Append("            <td>\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(goodstradelog.Goodsid);
	
	templateBuilder.Append("                <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodstradelog.Subject.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("        </tr>\r\n");
	templateBuilder.Append("       <tr>\r\n");
	templateBuilder.Append("            <th>评分</th>\r\n");
	templateBuilder.Append("            <td>\r\n");
	templateBuilder.Append("                <input name=\"ratetype\" value=\"1\" type=\"radio\" class=\"radio\" checked />\r\n");
	templateBuilder.Append("                <font color=\"#ff0000\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/good.gif\" border=\"0\" width=\"14\" height=\"16\"><strong>好评</strong></font>&nbsp;&nbsp;\r\n");
	templateBuilder.Append("                <input name=\"ratetype\" value=\"2\" type=\"radio\" class=\"radio\">\r\n");
	templateBuilder.Append("                <font color=\"green\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/soso.gif\" border=\"0\" width=\"14\" height=\"16\"><strong>中评</strong></font>&nbsp;&nbsp;\r\n");
	templateBuilder.Append("                <input name=\"ratetype\" value=\"3\" type=\"radio\" class=\"radio\">\r\n");
	templateBuilder.Append("                <img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/bad.gif\" border=\"0\" width=\"14\" height=\"16\"><strong>差评</strong>&nbsp;&nbsp;(线下交易的评分不计入信用评价)\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("        </tr>\r\n");
	templateBuilder.Append("       <tr>\r\n");
	templateBuilder.Append("            <th>评价</th>\r\n");
	templateBuilder.Append("            <td>\r\n");
	templateBuilder.Append("                <textarea id=\"message\" name=\"message\" cols=\"10\" rows=\"7\" class=\"autosave\" id=\"message\" tabindex=\"2\"  onkeydown=\"quickpost(event, this.form);\" maxlength=\"200\"></textarea>\r\n");
	templateBuilder.Append("            </td>\r\n");
	templateBuilder.Append("        </tr>\r\n");
	templateBuilder.Append("       <tr>\r\n");
	templateBuilder.Append("            <th>&nbsp;</th>\r\n");
	templateBuilder.Append("            <td>\r\n");
	templateBuilder.Append("                <button type=\"submit\" id=\"postsubmit\" name=\"ratesubmit\" value=\"true\"> 提交</button>[完成后可按 Ctrl+Enter 发布]\r\n");
	templateBuilder.Append("            </td>\r\n");
	templateBuilder.Append("        </tr>\r\n");
	templateBuilder.Append("    </table>\r\n");
	templateBuilder.Append("</form>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var postSubmited = false;\r\n");
	templateBuilder.Append("function quickpost(event, theform) {\r\n");
	templateBuilder.Append("	if(postSubmited == false && (event.ctrlKey && event.keyCode == 13) || (event.altKey && event.keyCode == 83)) {\r\n");
	templateBuilder.Append("		if (!$(\"postsubmit\").disabled) {\r\n");
	templateBuilder.Append("		    if(validateform(theform, false,false)){\r\n");
	templateBuilder.Append("			    theform.submit();\r\n");
	templateBuilder.Append("			    $(\"postsubmit\").disabled = true\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else {\r\n");
	templateBuilder.Append("			alert('正在提交, 请稍候...');\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("function validateform(theform, previewpost, switcheditormode) {\r\n");
	templateBuilder.Append("	var message = theform.message.value;\r\n");
	templateBuilder.Append("	if (message == \"\") {\r\n");
	templateBuilder.Append("		alert(\"请完成内容栏。\");\r\n");
	templateBuilder.Append("		$(\"postsubmit\").disabled = false;\r\n");
	templateBuilder.Append("		return false;\r\n");
	templateBuilder.Append("	} \r\n");
	templateBuilder.Append("	if(mb_strlen(message) < 1 || mb_strlen(message) > 200) {\r\n");
	templateBuilder.Append("		alert(\"您的帖子长度不符合要求。\\n\\n当前长度: \" + mb_strlen(message) + \" 字节\\n系统限制: 1 到 200 字节\");\r\n");
	templateBuilder.Append("		return false;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	if (!switcheditormode && !previewpost) {\r\n");
	templateBuilder.Append("		$(\"postsubmit\").disabled = true;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	theform.message.value = message;\r\n");
	templateBuilder.Append("	return true;\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	}
	else
	{




	templateBuilder.Append("</div>\r\n");

	}	//end if








	Response.Write(templateBuilder.ToString());
}
</script>
