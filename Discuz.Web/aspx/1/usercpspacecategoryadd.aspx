<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Space.Pages.usercpspacecategoryadd" %>
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
	templateBuilder.Append("</a> &raquo; <a href=\"usercp.aspx\">用户中心</a> &raquo; <strong>添加日志分类</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("function checkform()\r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("	if(document.getElementById(\"title\").value == \"\")\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		alert(\"分类名称为空\");\r\n");
	templateBuilder.Append("		document.getElementById(\"title\").focus();\r\n");
	templateBuilder.Append("		return false;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	if(document.getElementById(\"categorydescription\").value.length > 1000)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		alert(\"分类描述长度最大为1000字\"); \r\n");
	templateBuilder.Append("		return false;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	if(!(/^\\d+$/.test(document.getElementById(\"displayorder\").value)))\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		alert(\"分类序号必须是整数\");\r\n");
	templateBuilder.Append("		document.getElementById(\"displayorder\").focus();\r\n");
	templateBuilder.Append("		return false;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	return true;\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div class=\"wrap with_side s_clear\" id=\"wrap\">\r\n");



	templateBuilder.Append("	<div class=\"cpmain\">\r\n");
	templateBuilder.Append("	<div class=\"cpcontent\">\r\n");
	templateBuilder.Append("		<h1>添加日志分类</h1>\r\n");


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

	templateBuilder.Append("			<form id=\"postpm\" name=\"postpm\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("			<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"添加日志分类\">\r\n");
	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"title\">分类名称</label></th>\r\n");
	templateBuilder.Append("				<td><input name=\"title\" type=\"text\" id=\"title\" value=\"\" size=\"40\" maxlength=\"50\" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"description\">分类描述</label></th>\r\n");
	templateBuilder.Append("				<td><textarea name=\"description\" cols=\"50\" rows=\"6\" id=\"categorydescription\" class=\"txtarea\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"displayorder\">分类序号</label></th>\r\n");
	templateBuilder.Append("				<td><input name=\"displayorder\" type=\"text\" id=\"displayorder\" value=\"0\" size=\"2\" maxlength=\"2\" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<input type=\"submit\" name=\"Submit\" value=\"确定\" onclick=\"return checkform();\" ID=\"Submit1\"/>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			</tbody>\r\n");
	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("			</form>\r\n");

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
