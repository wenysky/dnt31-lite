<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Space.Pages.usercpspaceset" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:06.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:06. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("        <a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <a href=\"usercp.aspx\">用户中心</a> &raquo; <strong>个人空间基本设置</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div class=\"wrap with_side s_clear\" id=\"wrap\">\r\n");



	templateBuilder.Append("	<div class=\"cpmain\">\r\n");
	templateBuilder.Append("	<div class=\"cpcontent\">\r\n");
	templateBuilder.Append("		<h1>个人空间基本设置</h1>\r\n");


	if (config.Enablespace==1)
	{

	templateBuilder.Append("<div class=\"cm_header itemtitle s_clear\">\r\n");

	if (userid>0 && user.Spaceid>0)
	{

	templateBuilder.Append("	<ul>\r\n");
	templateBuilder.Append("		<li \r\n");

	if (pagename=="usercpspacepostblog.aspx"||pagename=="usercpspacemanageblog.aspx"||pagename=="usercpspaceeditblog.aspx")
	{

	templateBuilder.Append("class=\"current\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"usercpspacemanageblog.aspx\"><span>管理日志</span></a></li>\r\n");
	templateBuilder.Append("		<li \r\n");

	if (pagename=="usercpspacelinklist.aspx"||pagename=="usercpspacelinkadd.aspx"||pagename=="usercpspacelinkedit.aspx")
	{

	templateBuilder.Append("class=\"current\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"usercpspacelinklist.aspx\"><span>友情链接</span></a></li>\r\n");
	templateBuilder.Append("		<li \r\n");

	if (pagename=="usercpspacecomment.aspx")
	{

	templateBuilder.Append("class=\"current\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"usercpspacecomment.aspx\"><span>管理评论</span></a></li>\r\n");
	templateBuilder.Append("		<li  \r\n");

	if (pagename=="usercpspacemanagecategory.aspx"||pagename=="usercpspacecategoryadd.aspx"||pagename=="usercpspacecategoryedit.aspx")
	{

	templateBuilder.Append("class=\"current\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"usercpspacemanagecategory.aspx\"><span>管理分类</span></a></li>\r\n");
	templateBuilder.Append("		<li \r\n");

	if (pagename=="usercpspacemanageattachment.aspx")
	{

	templateBuilder.Append("class=\"current\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"usercpspacemanageattachment.aspx\"><span>管理附件</span></a></li>\r\n");
	templateBuilder.Append("		<li \r\n");

	if (pagename=="usercpspaceset.aspx")
	{

	templateBuilder.Append("class=\"current\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"usercpspaceset.aspx\"><span>基本设置</span></a></li>\r\n");
	templateBuilder.Append("	</ul>\r\n");

	}	//end if

	templateBuilder.Append("</div>	\r\n");

	}	//end if




	if (page_err==0)
	{


	if (ispost)
	{





	}
	else
	{

	templateBuilder.Append("		<form id=\"postspaceconfig\" name=\"postspaceconfig\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"添加日志分类\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"spacetitle\">个人空间标题</label></th>\r\n");
	templateBuilder.Append("				<td><input name=\"spacetitle\" type=\"text\" id=\"spacetitle\" value=\"");
	templateBuilder.Append(spaceconfiginfo.Spacetitle.ToString().Trim());
	templateBuilder.Append("\" size=\"40\" maxlength=\"100\" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"_description\">描述</label></th>\r\n");
	templateBuilder.Append("				<td><textarea name=\"_description\" cols=\"50\" rows=\"6\" id=\"_description\" maxlength=\"200\" class=\"txtarea\">");
	templateBuilder.Append(spaceconfiginfo.Description.ToString().Trim());
	templateBuilder.Append("</textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"blogdispmode\">日志显示模式</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"radio\" name=\"blogdispmode\" value=\"0\"\r\n");

	if (spaceconfiginfo.BlogDispMode==0)
	{

	templateBuilder.Append("							 checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("							 ID=\"Radio1\"/>\r\n");
	templateBuilder.Append("							摘要\r\n");
	templateBuilder.Append("							<input type=\"radio\" name=\"blogdispmode\" value=\"1\"\r\n");

	if (spaceconfiginfo.BlogDispMode==1)
	{

	templateBuilder.Append("							 checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("							 ID=\"Radio2\"/>\r\n");
	templateBuilder.Append("							全文\r\n");
	templateBuilder.Append("							<input name=\"blogdispmode\" type=\"radio\" value=\"2\"\r\n");

	if (spaceconfiginfo.BlogDispMode==2)
	{

	templateBuilder.Append("							 checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("							 ID=\"Radio3\"/>\r\n");
	templateBuilder.Append("							只显示标题\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"bpp\">显示日志篇数</label></th>\r\n");
	templateBuilder.Append("				<td><input name=\"bpp\" type=\"text\" id=\"bpp\"  value=\"");
	templateBuilder.Append(spaceconfiginfo.Bpp.ToString().Trim());
	templateBuilder.Append("\" size=\"4\" maxlength=\"3\" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	if (spaceactiveconfig.Enablespacerewrite==1)
	{


	if (spaceconfiginfo.Rewritename=="")
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"rewritename\">个性域名</label></th>\r\n");
	templateBuilder.Append("				<td><input name=\"rewritename\" type=\"text\" id=\"rewritename\" onblur=\"checkrewritename(this.value);\" value=\"\" size=\"30\" class=\"txt\" /><span id=\"checkresult\"></span>\r\n");
	templateBuilder.Append("				<p>设置此项后您将可以用 http://论坛地址/space/个性域名形式的地址访问您的空间,设置之后将不可更改</p>\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				function checkrewritename(rewritename)\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					if (rewritename.length > 0)\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						ajaxRead(\"tools/ajax.aspx?t=checkrewritename&rewritename=\" + escape(rewritename), \"showcheckresult(obj,'\" + rewritename + \"');\");\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						$(\"checkresult\").innerHTML = \"\";\r\n");
	templateBuilder.Append("						$('submitspaceconfig').disabled = false;\r\n");
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
	templateBuilder.Append("						$('submitspaceconfig').disabled = true;\r\n");
	templateBuilder.Append("						resContainer.innerHTML = \"<font color='#009900'>对不起，您输入的个性化名称 \\\"\" + rewritename + \"\\\" 中含有非法字符或被禁用，请选择其他名字后再试。</font>\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else if (result == \"2\")\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						$('submitspaceconfig').disabled = true;\r\n");
	templateBuilder.Append("						resContainer.innerHTML = \"<font color='#009900'>个性化名称只能为字母、数字、下划线、减号的组合\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else if (result == \"3\")\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						$('submitspaceconfig').disabled = true;\r\n");
	templateBuilder.Append("						resContainer.innerHTML = \"<font color='#009900'>对不起，您输入的个性化名称 \\\"\" + rewritename + \"\\\" 已经被其他会员使用，请选择其他名字后再试。\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						$('submitspaceconfig').disabled = false;\r\n");
	templateBuilder.Append("						resContainer.innerHTML = \"可用\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}
	else
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"bpp\">个性域名</label></th>\r\n");
	templateBuilder.Append("				<td><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/");
	templateBuilder.Append(spaceconfiginfo.Rewritename.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\"><script type=\"text/javascript\">document.write(window.location.toString().replace('usercpspaceset.aspx',''))</");
	templateBuilder.Append("script>space/");
	templateBuilder.Append(spaceconfiginfo.Rewritename.ToString().Trim());
	templateBuilder.Append("</a></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"commentpref\">默认评论权限</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<input type=\"radio\" name=\"commentpref\" value=\"0\"\r\n");

	if (spaceconfiginfo.Commentpref==0)
	{

	templateBuilder.Append("					 checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("					/>\r\n");
	templateBuilder.Append("					允许匿名评论\r\n");
	templateBuilder.Append("					<input type=\"radio\" name=\"commentpref\" value=\"1\"\r\n");

	if (spaceconfiginfo.Commentpref==1)
	{

	templateBuilder.Append("					 checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("					 ID=\"Radio4\"/>\r\n");
	templateBuilder.Append("					不允许评论\r\n");
	templateBuilder.Append("					<input name=\"commentpref\" type=\"radio\" value=\"2\"\r\n");

	if (spaceconfiginfo.Commentpref==2)
	{

	templateBuilder.Append("					 checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("					 ID=\"Radio5\"/>\r\n");
	templateBuilder.Append("					仅允许注册用户评论\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"messagepref\">留言设置</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"radio\" name=\"messagepref\" value=\"0\"\r\n");

	if (spaceconfiginfo.MessagePref==0)
	{

	templateBuilder.Append("					 checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("					 />\r\n");
	templateBuilder.Append("					全部允许\r\n");
	templateBuilder.Append("					<input type=\"radio\" name=\"messagepref\" value=\"1\"\r\n");

	if (spaceconfiginfo.MessagePref==1)
	{

	templateBuilder.Append("					 checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("					 ID=\"Radio6\"/>\r\n");
	templateBuilder.Append("					全部禁止\r\n");
	templateBuilder.Append("					<input name=\"messagepref\" type=\"radio\" value=\"2\"\r\n");

	if (spaceconfiginfo.MessagePref==2)
	{

	templateBuilder.Append("					 checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("					 ID=\"Radio7\"/>\r\n");
	templateBuilder.Append("					只允许已登录用户\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<input id=\"submitspaceconfig\" name=\"submitspaceconfig\" onclick=\"if ($('_description').value.length > 200) {alert('个人空间描述长度最大为200字'); return false;}\" type=\"submit\" value=\"确定\" />\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");

	}	//end if


	}
	else
	{





	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");







	Response.Write(templateBuilder.ToString());
}
</script>
