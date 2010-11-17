<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Space.Pages.spaceregister" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:03.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:03. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("        <a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <strong>申请个人空间</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (page_err==0)
	{

	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	function validatefrom()\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		if(document.getElementById(\"spacetitle\").value == \"\")\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			alert(\"个人空间名称不能为空！\");\r\n");
	templateBuilder.Append("			document.getElementById(\"spacetitle\").focus();\r\n");
	templateBuilder.Append("			return false;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		if(document.getElementById('spacedescription').value.length > 200)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			alert('个人空间描述长度最大为200字');\r\n");
	templateBuilder.Append("			return false;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		if(!(/^\\d+$/.test(document.getElementById(\"bpp\").value)))\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			alert(\"显示日志篇数必须是数值！\");\r\n");
	templateBuilder.Append("			document.getElementById(\"bpp\").focus();\r\n");
	templateBuilder.Append("			return false;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	if (ispost)
	{





	}
	else
	{

	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("	<div class=\"main\">\r\n");
	templateBuilder.Append("	<h1>申请个人空间</h1>\r\n");
	templateBuilder.Append("	<form id=\"regspace\" name=\"regspace\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("	<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" class=\"formtable\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>个人空间名称</th>\r\n");
	templateBuilder.Append("			<td><input name=\"spacetitle\" type=\"text\" id=\"spacetitle\"  size=\"40\" maxlength=\"100\" class=\"txt\"/>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>个人空间描述</th>\r\n");
	templateBuilder.Append("			<td><textarea name=\"description\" cols=\"50\" rows=\"6\" id=\"spacedescription\" class=\"txtarea\"></textarea>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>日志显示模式</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"blogdispmode\" value=\"0\"  class=\"radioinput\" checked=\"checked\"/>摘要\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"blogdispmode\" value=\"1\"  class=\"radioinput\"/>全文\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"blogdispmode\" value=\"2\"  class=\"radioinput\"/>只显示标题\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>显示日志篇数</th>\r\n");
	templateBuilder.Append("			<td><input name=\"bpp\" type=\"text\" size=\"30\" maxlength=\"3\" class=\"txt\" /></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");

	if (spaceactiveconfig.Enablespacerewrite==1)
	{

	templateBuilder.Append("		<tbody>	\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>个性域名</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"rewritename\" type=\"text\" id=\"rewritename\" onblur=\"checkrewritename(this.value);\" value=\"\" size=\"30\" class=\"txt\" /><span id=\"checkresult\" style=\"line-height: 25px;\"></span>\r\n");
	templateBuilder.Append("				<p>设置此项后您将可以用 http://论坛地址/space/个性域名 形式的地址访问您的个人空间, 设置之后将不可更改</p>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				function checkrewritename(rewritename)\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					if (rewritename.length > 0)\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						ajaxRead(\"tools/ajax.aspx?t=checkrewritename&rewritename=\" + escape(rewritename), \"showcheckresult(obj,'\" + rewritename + \"');\");\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						$(\"checkresult\").innerHTML = \"\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function showcheckresult(obj, rewritename)\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					var res = obj.getElementsByTagName('result');\r\n");
	templateBuilder.Append("					var resContainer = $(\"checkresult\");\r\n");
	templateBuilder.Append("					var result = \"\";\r\n");
	templateBuilder.Append("					if (res[0] != null && res[0] != undefined)\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						if (res[0].childNodes.length > 1) {\r\n");
	templateBuilder.Append("							result = res[0].childNodes[1].nodeValue;\r\n");
	templateBuilder.Append("						} else {\r\n");
	templateBuilder.Append("							result = res[0].firstChild.nodeValue;    		\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					if (result == \"1\")\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						resContainer.innerHTML = \"<font color='#009900'>对不起，您输入的个性化名称 \\\"\" + rewritename + \"\\\" 中含有非法字符或被禁用，请选择其他名字后再试。</font>\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else if (result == \"2\")\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						resContainer.innerHTML = \"<font color='#009900'>个性化名称只能为字母、数字、下划线、减号的组合\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else if (result == \"3\")\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						resContainer.innerHTML = \"<font color='#009900'>对不起，您输入的个性化名称 \\\"\" + rewritename + \"\\\" 已经被其他会员使用，请选择其他名字后再试。\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						resContainer.innerHTML = \"可用\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("			</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if

	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>默认评论权限</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"commentpref\" value=\"0\"  class=\"radioinput\" checked=\"checked\" />允许所有人\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"commentpref\" value=\"1\"  class=\"radioinput\"/>禁止所有人\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"commentpref\" value=\"2\"  class=\"radioinput\"/>只有登录用户						\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>留言设置</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"messagepref\" value=\"0\"  class=\"radioinput\" checked=\"checked\"/>允许所有人\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"messagepref\" value=\"1\"  class=\"radioinput\"/>禁止所有人\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"messagepref\" value=\"2\"  class=\"radioinput\"/>只有登录用户													\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>&nbsp;</th>\r\n");
	templateBuilder.Append("			<td><input type=\"submit\" name=\"Submit\" value=\"确定\" onclick=\"return validatefrom()\" /></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</form>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if


	}
	else
	{





	}	//end if








	Response.Write(templateBuilder.ToString());
}
</script>
