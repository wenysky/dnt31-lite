<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.eccredit" %>
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

	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_eccredit.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("zoomstatus = parseInt(1);\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("		<a id=\"A1\"  href=\"forumindex.aspx\" >");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <strong>");
	templateBuilder.Append(userinfo.Username.ToString().Trim());
	templateBuilder.Append(" 的信用评价</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"headsearch\">\r\n");
	templateBuilder.Append("		<div id=\"search\">\r\n");

	if (usergroupinfo.Allowsearch>0)
	{





	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>	\r\n");
	templateBuilder.Append("<div class=\"mainbox viewthread\">\r\n");
	templateBuilder.Append("    <h1><strong>");
	templateBuilder.Append(userinfo.Username.ToString().Trim());
	templateBuilder.Append(" 的信用评价</strong></h1>\r\n");
	templateBuilder.Append("    <table cellspacing=\"0\" cellpadding=\"0\" summary=\"\">\r\n");
	templateBuilder.Append("        <tr>\r\n");
	templateBuilder.Append("           <td class=\"postcontent creditbox\">\r\n");
	templateBuilder.Append("                <h2>卖家信用</h2>\r\n");
	templateBuilder.Append("                <div id=\"sellercredit\" class=\"creditdetail\"></div>\r\n");
	templateBuilder.Append("                <h2>买家信用</h2>\r\n");
	templateBuilder.Append("                <div id=\"buyercredit\" class=\"creditdetail\"></div>\r\n");
	templateBuilder.Append("            </td>\r\n");
	templateBuilder.Append("           <td class=\"postauthor\">\r\n");
	templateBuilder.Append("                <dl>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(userinfo.Uid);
	
	templateBuilder.Append("                    <dt>发起人</dt><dd><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(userinfo.Username.ToString().Trim());
	templateBuilder.Append("</a></dd>\r\n");
	templateBuilder.Append("                    <dt>卖家信用</dt><dd><span id=\"sellercreditnum\"></span></dd>\r\n");
	templateBuilder.Append("                    <dt>买家信用</dt><dd><span id=\"buyercreditnum\"></span></dd>\r\n");
	templateBuilder.Append("                    <dt>卖家好评率</dt><dd><span id=\"sellergoodrate\"></span></dd>\r\n");
	templateBuilder.Append("                    <dt>买家好评率</dt><dd><span id=\"buyergoodrate\"></span></dd>\r\n");
	templateBuilder.Append("                    <dt>注册时间</dt><dd>");
	templateBuilder.Append(joindate.ToString());
	templateBuilder.Append("</dd>\r\n");
	templateBuilder.Append("                </dl>\r\n");
	templateBuilder.Append("            </td>\r\n");
	templateBuilder.Append("        </tr>\r\n");
	templateBuilder.Append("    </table>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div class=\"mainbox othergoodsinfo\">\r\n");
	templateBuilder.Append("    <ul class=\"tabs\">\r\n");
	templateBuilder.Append("        <li id=\"recentrate\" style=\"display:none;\"></li>\r\n");
	templateBuilder.Append("        <li id=\"fromall\" class=\"current\"><a href=\"#\" onclick=\"ajaxgetrate(");
	templateBuilder.Append(userinfo.Uid.ToString().Trim());
	templateBuilder.Append(", 0, 0, '', 'fromall');\">收到的所有评价</a></li>\r\n");
	templateBuilder.Append("        <li id=\"fromseller\" ><a href=\"#\" onclick=\"ajaxgetrate(");
	templateBuilder.Append(userinfo.Uid.ToString().Trim());
	templateBuilder.Append(", 1, 0, '', 'fromseller');\">来自卖家的评价</a></li>\r\n");
	templateBuilder.Append("        <li id=\"frombuyer\"><a href=\"#\" onclick=\"ajaxgetrate(");
	templateBuilder.Append(userinfo.Uid.ToString().Trim());
	templateBuilder.Append(", 2, 0, '', 'frombuyer');\">来自买家的评价</a></li>\r\n");
	templateBuilder.Append("        <li id=\"toothers\"><a href=\"#\" onclick=\"ajaxgetrate(");
	templateBuilder.Append(userinfo.Uid.ToString().Trim());
	templateBuilder.Append(", 3, 0, '', 'toothers');\">给他人的评价</a></li>\r\n");
	templateBuilder.Append("    </ul>\r\n");
	templateBuilder.Append("    <div id=\"ratelist_html\" class=\"creditmessage\"></div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var creditrulesjsondata = ");
	templateBuilder.Append(creditrulesjsondata.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("var templatepath = '");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("var usercredit_data = ");
	templateBuilder.Append(sb_usercredit.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("var uid = ");
	templateBuilder.Append(userinfo.Uid.ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("gettradecredit(usercredit_data[0].sixmonth + usercredit_data[0].sixmonthago, true, 'sellercreditnum'); //卖家信用\r\n");
	templateBuilder.Append("gettradecredit(usercredit_data[3].sixmonth + usercredit_data[3].sixmonthago, false, 'buyercreditnum'); //买家信用\r\n");
	templateBuilder.Append("loadratedata(0,3,'sellercredit','sellergoodrate');   \r\n");
	templateBuilder.Append("loadratedata(3,6,'buyercredit','buyergoodrate');   \r\n");
	templateBuilder.Append("ajaxgetrate(uid, 0, 0, '', 'fromall');\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script> \r\n");

	}	//end if


	}
	else
	{




	templateBuilder.Append("</div>\r\n");

	}	//end if








	Response.Write(templateBuilder.ToString());
}
</script>
