<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Space.Pages.usercpspacecomment" %>
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
	templateBuilder.Append("</a> &raquo; <a href=\"usercp.aspx\">用户中心</a> &raquo; <strong>管理评论</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	function checkCheckBox(form,objtag)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		for(var i = 0; i < form.elements.length; i++) \r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			var e = form.elements[i];\r\n");
	templateBuilder.Append("			if(e.name == \"commentid\") \r\n");
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
	templateBuilder.Append("		<h1>管理评论</h1>\r\n");


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

	templateBuilder.Append("			<form id=\"commentlist\" name=\"commentlist\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("			<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"datatable\">\r\n");
	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("				<tr class=\"colplural\">\r\n");
	templateBuilder.Append("					<th width=\"80%\" style=\"text-align:left;\">评论标题</th>\r\n");
	templateBuilder.Append("					<th>发表日期</th>\r\n");
	templateBuilder.Append("				</tr>\r\n");

	int currentcomment__loop__id=0;
	foreach(DataRow currentcomment in commentlist.Rows)
	{
		currentcomment__loop__id++;

	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<td class=\"datatitle\"><input type=\"checkbox\" name=\"commentid\" id=\"commentid" + currentcomment["commentid"].ToString().Trim() + "\" value=\"" + currentcomment["commentid"].ToString().Trim() + "\" />\r\n");
	templateBuilder.Append("				" + currentcomment["author"].ToString().Trim() + " 对 <a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=" + currentcomment["postid"].ToString().Trim() + "\" target=\"_blank\">" + currentcomment["posttitle"].ToString().Trim() + "</a> 发表评论</td>\r\n");
	templateBuilder.Append("					<td>" + currentcomment["postdatetime"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<td colspan=\"2\" style=\"text-align:left;\">" + currentcomment["content"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("				</tr>\r\n");

	}	//end loop

	templateBuilder.Append("			</tbody>\r\n");
	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("			</form>\r\n");
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
	templateBuilder.Append("						<a href=\"javascript:;\"  onclick=\"checkCheckBox($('commentlist'),this)\" checked=\"true\">全选</a>\r\n");
	templateBuilder.Append("						<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("						<a href=\"###\" onclick=\"$('commentlist').submit()\">删除</a> \r\n");
	templateBuilder.Append("						<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("						<a href=\"usercpspacepostblog.aspx\"><strong>发表日志</strong></a>\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"zerothreads\">暂无评论</div>\r\n");

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
