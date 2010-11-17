<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Space.Pages.usercpspacemanagecategory" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:05.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:05. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("        <a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <a href=\"usercp.aspx\">用户中心</a> &raquo; <strong>管理分类</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	function checkCheckBox(form,objtag)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		for(var i = 0; i < form.elements.length; i++) \r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			var e = form.elements[i];\r\n");
	templateBuilder.Append("			if(e.name == \"categoryid\") \r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				e.checked = objtag.checked;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		objtag.checked = !objtag.checked;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div class=\"wrap with_side s_clear\" id=\"wrap\">\r\n");



	templateBuilder.Append("	<div class=\"cpmain\">\r\n");
	templateBuilder.Append("	<div class=\"cpcontent datalist\">\r\n");
	templateBuilder.Append("		<h1>管理分类</h1>\r\n");


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

	templateBuilder.Append("			<form id=\"catelist\" name=\"catelist\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("			<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"datatable\">\r\n");
	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("				<tr class=\"colplural\">\r\n");
	templateBuilder.Append("					<th width=\"30%\">分类名称</th>\r\n");
	templateBuilder.Append("					<th width=\"40%\">分类描述</th>\r\n");
	templateBuilder.Append("					<th width=\"10%\">分类阅读数</th>\r\n");
	templateBuilder.Append("					<th width=\"10%\">序号</th>\r\n");
	templateBuilder.Append("					<th width=\"10%\">&nbsp;</th>\r\n");
	templateBuilder.Append("				</tr>\r\n");

	int currentcategory__loop__id=0;
	foreach(DataRow currentcategory in categorylist.Rows)
	{
		currentcategory__loop__id++;

	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<td class=\"datatitle\"><input name=\"categoryid\" type=\"checkbox\" id=\"categoryid" + currentcategory["categoryid"].ToString().Trim() + "\" value=\"" + currentcategory["categoryid"].ToString().Trim() + "\"/>" + currentcategory["title"].ToString().Trim() + " <a href=\"usercpspacecategoryedit.aspx?categoryid=" + currentcategory["categoryid"].ToString().Trim() + "\">[编辑]</a>\r\n");
	templateBuilder.Append("					</td>\r\n");
	templateBuilder.Append("					<td class=\"datatitle\">" + currentcategory["shortdescription"].ToString().Trim() + "&nbsp;</td>\r\n");
	templateBuilder.Append("					<td>" + currentcategory["categorycount"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("					<td>" + currentcategory["displayorder"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("					<td><a href=\"###\" onclick=\"$('categoryid" + currentcategory["categoryid"].ToString().Trim() + "').checked=true;$('catelist').submit();\">删除</a></td>\r\n");
	templateBuilder.Append("				</tr>\r\n");

	}	//end loop

	templateBuilder.Append("			</tbody>\r\n");
	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("			</form>\r\n");

	if (categorycount>0)
	{

	templateBuilder.Append("				<div class=\"cpbox s_clear\">\r\n");
	templateBuilder.Append("					<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("						<div class=\"pages\">\r\n");
	templateBuilder.Append("							");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append(" <em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em> \r\n");
	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("						<a href=\"javascript:;\"  onclick=\"checkCheckBox($('catelist'),this)\" class=\"selectall\">全选</a>\r\n");
	templateBuilder.Append("						<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("						<a href=\"###\" onclick=\"if(confirm('您确认要将所选的分类删除吗？')) $('catelist').submit()\" class=\"selectall\">删除</a>\r\n");
	templateBuilder.Append("						<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("						<a href=\"usercpspacecategoryadd.aspx\"><strong>增加日志分类</strong></a>\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("				</div>\r\n");

	}
	else
	{

	templateBuilder.Append("				<div class=\"zerothreads\">日志暂无分类</div>\r\n");

	}	//end if


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
