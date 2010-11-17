<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Space.Pages.usercpspacepostblog" %>
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
	templateBuilder.Append("</a> &raquo; <a href=\"usercp.aspx\">用户中心</a> &raquo; <strong>发表日志</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div class=\"wrap with_side s_clear\" id=\"wrap\">\r\n");



	templateBuilder.Append("	<div class=\"cpmain\">\r\n");
	templateBuilder.Append("	<div class=\"cpcontent\">\r\n");
	templateBuilder.Append("	<h1>发表日志</h1>\r\n");


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

	templateBuilder.Append("	<form id=\"postform\" name=\"postpm\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"个人资料\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"title\">日志标题</label></th>\r\n");
	templateBuilder.Append("				<td><input name=\"title\" type=\"text\" id=\"title\" size=\"40\" maxlength=\"60\" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"category\">日志类别</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (categoryslist.Rows.Count!=0)
	{


	int rows__loop__id=0;
	foreach(DataRow rows in categoryslist.Rows)
	{
		rows__loop__id++;

	templateBuilder.Append("					<input type=\"checkbox\" name=\"category\" value=\"" + rows["categoryid"].ToString().Trim() + "\" >" + rows["title"].ToString().Trim() + "&nbsp;\r\n");

	}	//end loop

	templateBuilder.Append("					<a href=\"usercpspacecategoryadd.aspx\">新建日志类别</a>\r\n");

	}
	else
	{

	templateBuilder.Append("					 暂无日志类别,\r\n");
	templateBuilder.Append("					<a href=\"usercpspacecategoryadd.aspx\">新建日志类别</a>\r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"DataTextarea\">内容</label></th>\r\n");
	templateBuilder.Append("				<td><textarea name=\"DataTextarea\" id=\"DataTextarea\" cols=\"80\" rows=\"20\"></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"checkveriframe\">上传文件</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<iframe width=\"80%\" height=\"30px\" id=\"checkveriframe\" framespacing=\"0px\" frameborder=\"0px\" allowTransparency=\"true\" style=\"border-width: 0px; margin: 0px;\" noResize src=\"space/manage/uploadfile.aspx\" scrolling=\"no\"></iframe>\r\n");
	templateBuilder.Append("					<div id=\"postattachfile\" style=\"border:0px;display:block;\"></div>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	if (enabletag)
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"tags\">标签(Tags)</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("					<script type=\"text/javascript\" src=\"javascript/post_editor.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("					<input type=\"text\" name=\"tags\" id=\"tags\" value=\"\" size=\"55\" class=\"txt\" /><input type=\"button\" onclick=\"relatekw($('title').value, dntEditor.GetText());\" value=\"可用标签\" />(用空格隔开多个标签，最多可填写 5 个)\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"poststatus\">发布类型</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"radio\" name=\"poststatus\" value=\"1\" checked=\"checked\" />直接发布\r\n");
	templateBuilder.Append("					<input type=\"radio\" name=\"poststatus\" value=\"0\"/>放入草稿箱\r\n");
	templateBuilder.Append("					<input type=\"radio\" name=\"poststatus\" value=\"2\"/>私有\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"commentstatus\">评论类型</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<input type=\"radio\" name=\"commentstatus\" value=\"1\"  \r\n");

	if (spaceconfig.Commentpref==1)
	{

	templateBuilder.Append("checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append(" ID=\"Radio4\"/>不允许评论\r\n");
	templateBuilder.Append("					<input type=\"radio\" name=\"commentstatus\" value=\"0\"  \r\n");

	if (spaceconfig.Commentpref==0)
	{

	templateBuilder.Append("checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("ID=\"Radio5\"/>允许匿名评论\r\n");
	templateBuilder.Append("					<input name=\"commentstatus\" type=\"radio\" value=\"2\"  \r\n");

	if (spaceconfig.Commentpref==2)
	{

	templateBuilder.Append("checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("ID=\"Radio6\"/>仅允许注册用户评论\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th></th>\r\n");
	templateBuilder.Append("				<td><input type=\"submit\" name=\"Submit\" value=\"确定\" onclick=\"return checkBlog()\" id=\"postsubmit\"/>[完成后可按Ctrl+Enter提交]</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</form>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/dnteditor.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/post.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var dntEditor;\r\n");
	templateBuilder.Append("	function CreateEditor()\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		dntEditor = new DNTeditor('DataTextarea', '90%', '250', '');\r\n");
	templateBuilder.Append("		dntEditor.Style = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/editor.css\";\r\n");
	templateBuilder.Append("		dntEditor.BasePath = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("		dntEditor.ReplaceTextarea();\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function PrepareSave()\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		$('DataTextarea').value = dntEditor.GetHtml();\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function validate(theform)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("	   PrepareSave();\r\n");
	templateBuilder.Append("	   return true;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	CreateEditor();\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/template_spaceblog.js\"></");
	templateBuilder.Append("script>\r\n");

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
