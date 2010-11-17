<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.search" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:29.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:29. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	if (infloat!=1)
	{

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	templateBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	templateBuilder.Append("<head>\r\n");
	templateBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");

	if (pagetitle=="首页")
	{

	templateBuilder.Append("<title>");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append(" ");
	templateBuilder.Append(config.Seotitle.ToString().Trim());
	templateBuilder.Append(" - Powered by Discuz!NT</title>\r\n");

	}
	else
	{

	templateBuilder.Append("<title>");
	templateBuilder.Append(pagetitle.ToString());
	templateBuilder.Append(" - ");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append(" ");
	templateBuilder.Append(config.Seotitle.ToString().Trim());
	templateBuilder.Append(" - Powered by Discuz!NT</title>\r\n");

	}	//end if
	templateBuilder.Append(meta.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("<meta name=\"generator\" content=\"Discuz!NT 3.0.0\" />\r\n");
	templateBuilder.Append("<meta name=\"author\" content=\"Discuz!NT Team and Comsenz UI Team\" />\r\n");
	templateBuilder.Append("<meta name=\"copyright\" content=\"2001-2009 Comsenz Inc.\" />\r\n");
	templateBuilder.Append("<meta http-equiv=\"x-ua-compatible\" content=\"ie=7\" />\r\n");
	templateBuilder.Append("<link rel=\"icon\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("favicon.ico\" type=\"image/x-icon\" />\r\n");
	templateBuilder.Append("<link rel=\"shortcut icon\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("favicon.ico\" type=\"image/x-icon\" />\r\n");
	templateBuilder.Append("<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/dnt.css\" type=\"text/css\" media=\"all\" />\r\n");
	templateBuilder.Append("<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/float.css\" type=\"text/css\" />\r\n");
	templateBuilder.Append(link.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("javascript/common.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("javascript/template_report.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("javascript/template_utils.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var aspxrewrite = ");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("	var IMGDIR = '");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images'\r\n");
	templateBuilder.Append("    var allowfloatwin = ");
	templateBuilder.Append(config.Allowfloatwin.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("	var rooturl=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append(script.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("</head>\r\n");


	templateBuilder.Append("<body onkeydown=\"if(event.keyCode==27) return false;\">\r\n");
	templateBuilder.Append("<div id=\"append_parent\"></div><div id=\"ajaxwaitid\"></div>\r\n");
	templateBuilder.Append("<div id=\"submenu\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");

	if (usergroupinfo.Allowsearch>0)
	{


	templateBuilder.Append("	<form method=\"post\" action=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\" class=\"right\">\r\n");
	templateBuilder.Append("		<input type=\"hidden\" name=\"poster\" />\r\n");
	templateBuilder.Append("		<input type=\"hidden\" name=\"keyword\" />\r\n");
	templateBuilder.Append("		<input type=\"hidden\" name=\"type\" value=\"\" />\r\n");
	templateBuilder.Append("		<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\" />\r\n");
	templateBuilder.Append("		<a href=\"javascript:void(0);\" class=\"drop\" id=\"quicksearch\" onclick=\"showMenu(this.id, false);\" onmouseover=\"MouseCursor(this);\">快速搜索</a>\r\n");
	templateBuilder.Append("		<input type=\"text\" name=\"keywordf\" value=\"输入搜索关键字\" onblur=\"if(this.value=='')this.value=defaultValue\" onclick=\"if(this.value==this.defaultValue)this.value = ''\" onkeydown=\"if(this.value==this.defaultValue)this.value = ''\" class=\"txt\"/>\r\n");
	templateBuilder.Append("		<input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"btnsearch\"/>\r\n");
	templateBuilder.Append("	</form>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	    function bind_keyword(form)\r\n");
	templateBuilder.Append("	    {\r\n");
	templateBuilder.Append("	        if (form.keywordtype.value == '8')\r\n");
	templateBuilder.Append("	        {\r\n");
	templateBuilder.Append("	            form.keyword.value = '';\r\n");
	templateBuilder.Append("	            form.poster.value = form.keywordf.value;\r\n");
	templateBuilder.Append("	        }\r\n");
	templateBuilder.Append("	        else\r\n");
	templateBuilder.Append("	        {\r\n");
	templateBuilder.Append("	            form.poster.value = '';\r\n");
	templateBuilder.Append("	            form.keyword.value = form.keywordf.value;\r\n");
	templateBuilder.Append("	            if (form.keywordtype.value == '2')\r\n");
	templateBuilder.Append("	                form.type.value = 'spacepost';\r\n");
	templateBuilder.Append("	            if (form.keywordtype.value == '3')\r\n");
	templateBuilder.Append("	                form.type.value = 'album';\r\n");
	templateBuilder.Append("	        }\r\n");
	templateBuilder.Append("	    }\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");



	}	//end if

	templateBuilder.Append("	<span class=\"avataonline right\">\r\n");

	if (userid==-1)
	{

	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("login.aspx\" onClick=\"floatwin('open_login', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx', 600, 410);return false;\">[登录]</a>\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("register.aspx\" onClick=\"floatwin('open_register', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("register.aspx', 600, 410);return false;\">[注册]</a\r\n");
	templateBuilder.Append("		>\r\n");

	}
	else
	{

	templateBuilder.Append("		欢迎<a class=\"drop\" id=\"viewpro\" onMouseOver=\"showMenu(this.id)\">");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("		<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("\">退出</a>\r\n");
	templateBuilder.Append("		<span class=\"pipe\">|</span>\r\n");

	}	//end if

	templateBuilder.Append("	</span>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("	<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpinbox.aspx\" class=\"inbox\" title=\"");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append("条新短消息\">收件箱</a>\r\n");

	if (oluserinfo.Newpms>0)
	{

	templateBuilder.Append("<cite>");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append("</cite>\r\n");

	}	//end if

	templateBuilder.Append("	<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("	<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpnotice.aspx?filter=all\" class=\"notice\">通知</a>\r\n");

	if (oluserinfo.Newnotices>0)
	{

	templateBuilder.Append("<cite>");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append("</cite>\r\n");

	}	//end if

	templateBuilder.Append("	<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("	<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\" class=\"usercp\">用户中心</a>\r\n");
	templateBuilder.Append("	<span class=\"pipe\">|</span>\r\n");

	if (useradminid==1)
	{

	templateBuilder.Append("	<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("admin/index.aspx\" target=\"_blank\" class=\"systemmanage\">系统设置</a>\r\n");
	templateBuilder.Append("	<span class=\"pipe\">|</span>\r\n");

	}	//end if

	templateBuilder.Append("	<a href=\"javascript:void(0);\" class=\"drop\" id=\"mymenu\" onMouseOver=\"showMenu(this.id, false);\" >我的</a>\r\n");
	templateBuilder.Append("	<ul class=\"popupmenu_popup headermenu_popup\" id=\"mymenu_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("mytopics.aspx\">我的主题</a></li>\r\n");
	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("myposts.aspx\">我的帖子</a></li>\r\n");
	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx?posterid=current&type=digest\">我的精华</a></li>\r\n");
	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("myattachment.aspx\">我的附件</a></li>\r\n");
	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpsubscribe.aspx\">我的收藏</a></li>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("space/\">我的空间</a></li>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("\">我的相册</a></li>\r\n");

	}	//end if


	if (config.Enablemall==1)
	{

	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpmygoods.aspx\">我的商品</a></li>\r\n");

	}	//end if

	templateBuilder.Append("    </ul>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div id=\"header\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("		<h2><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("index.aspx\" title=\"Discuz!NT|BBS|论坛\"><img src=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/logo.gif\" alt=\"Discuz!NT|BBS|论坛\"/></a></h2>\r\n");

	if (headerad!="")
	{

	templateBuilder.Append("		<div id=\"ad_headerbanner\">");
	templateBuilder.Append(headerad.ToString());
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("		<ul id=\"menu\">\r\n");
	templateBuilder.Append("			");
	templateBuilder.Append(mainnavigation.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}
	else
	{


	Response.Clear();
	Response.ContentType = "Text/XML";
	Response.Expires = 0;
	Response.Cache.SetNoStore();
	
	templateBuilder.Append("<?xml version=\"1.0\" encoding=\"utf-8\"?><root><![CDATA[\r\n");

	}	//end if



	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <strong>搜索</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (page_err==0)
	{


	if (searchpost)
	{


	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main\">\r\n");
	templateBuilder.Append("	<div class=\"msgbox\">\r\n");
	templateBuilder.Append("		<h1>Discuz!NT Board 提示信息</h1>\r\n");
	templateBuilder.Append("		<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n");

	if (msgbox_url!="")
	{

	templateBuilder.Append("		<p><a href=\"");
	templateBuilder.Append(msgbox_url.ToString());
	templateBuilder.Append("\">如果浏览器没有转向, 请点击这里.</a></p>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");



	}
	else
	{

	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("	<div class=\"main\">\r\n");

	if (searchid==-1)
	{

	templateBuilder.Append("	<div id=\"options_item\">\r\n");
	templateBuilder.Append("	<div id=\"postoptions\">\r\n");
	templateBuilder.Append("		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" class=\"formtable\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"posttableid\">选择分表</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"posttableid\" id=\"posttableid\">\r\n");

	int table__loop__id=0;
	foreach(DataRow table in tablelist.Rows)
	{
		table__loop__id++;

	templateBuilder.Append("					<option value=\"" + table["id"].ToString().Trim() + "\">" + table["description"].ToString().Trim() + "\r\n");

	if (Utils.StrToInt(table__loop__id, 0)==1)
	{

	templateBuilder.Append("(当前使用)\r\n");

	}	//end if

	templateBuilder.Append("</option>\r\n");

	}	//end loop

	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"searchtime\">时间</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"searchtime\" id=\"searchtime\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected=\"selected\">全部时间</option>\r\n");
	templateBuilder.Append("				  <option value=\"-1\">1天前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-2\">2天前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-3\">3天前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-7\">1周前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-30\">1个月前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-90\">3个月前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-180\">半年前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-365\">1年前</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				  <input type=\"radio\" name=\"searchtimetype\" value=\"1\" />\r\n");
	templateBuilder.Append("				之前\r\n");
	templateBuilder.Append("				<input name=\"searchtimetype\" type=\"radio\" value=\"0\" checked />\r\n");
	templateBuilder.Append("				之后\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"resultorder\">结果排序</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"resultorder\" id=\"resultorder\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected=\"selected\">最后回复时间</option>\r\n");
	templateBuilder.Append("				  <option value=\"1\">发表时间</option>\r\n");
	templateBuilder.Append("				  <option value=\"2\">回复数量</option>\r\n");
	templateBuilder.Append("				  <option value=\"3\">查看次数</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"resultordertype\" value=\"1\" />\r\n");
	templateBuilder.Append("				升序\r\n");
	templateBuilder.Append("				<input name=\"resultordertype\" type=\"radio\" value=\"0\" checked />\r\n");
	templateBuilder.Append("				降序\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"searchforumid\">搜索范围</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"searchforumid\" size=\"12\" style=\"width:450px\" multiple=\"multiple\" id=\"searchforumid\">\r\n");
	templateBuilder.Append("				 <option selected value=\"\">---------- 所有版块(默认) ----------</option>\r\n");
	templateBuilder.Append("					<!--模版中所有版块的下拉框中一定要加入value=\"\"否则会提示没有选择版块-->\r\n");
	templateBuilder.Append("					");
	templateBuilder.Append(Caches.GetForumListBoxOptionsCache().ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				 </select>\r\n");
	templateBuilder.Append("				 <p>(按Ctrl或Shift键可以多选,不选择)</p>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("	<div id=\"spacepostoptions\">\r\n");
	templateBuilder.Append("		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\"  class=\"formtable\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"searchtime\">时间</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"searchtime\" id=\"searchtime\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected=\"selected\">全部时间</option>\r\n");
	templateBuilder.Append("				  <option value=\"-1\">1天前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-2\">2天前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-3\">3天前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-7\">1周前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-30\">1个月前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-90\">3个月前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-180\">半年前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-365\">1年前</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				  <input type=\"radio\" name=\"searchtimetype\" value=\"1\" />\r\n");
	templateBuilder.Append("				之前\r\n");
	templateBuilder.Append("				<input name=\"searchtimetype\" type=\"radio\" value=\"0\" checked />\r\n");
	templateBuilder.Append("				之后\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"resultorder\">结果排序</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"resultorder\" id=\"resultorder\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected=\"selected\">发表时间</option>\r\n");
	templateBuilder.Append("				  <option value=\"1\">回复数量</option>\r\n");
	templateBuilder.Append("				  <option value=\"2\">查看次数</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"resultordertype\" value=\"1\" />\r\n");
	templateBuilder.Append("				升序\r\n");
	templateBuilder.Append("				<input name=\"resultordertype\" type=\"radio\" value=\"0\" checked />\r\n");
	templateBuilder.Append("				降序\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"albumoptions\">\r\n");
	templateBuilder.Append("		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\"  class=\"formtable\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"searchtime\">时间</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"searchtime\" id=\"searchtime\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected=\"selected\">全部时间</option>\r\n");
	templateBuilder.Append("				  <option value=\"-1\">1天前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-2\">2天前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-3\">3天前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-7\">1周前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-30\">1个月前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-90\">3个月前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-180\">半年前</option>\r\n");
	templateBuilder.Append("				  <option value=\"-365\">1年前</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				  <input type=\"radio\" name=\"searchtimetype\" value=\"1\" />\r\n");
	templateBuilder.Append("				之前\r\n");
	templateBuilder.Append("				<input name=\"searchtimetype\" type=\"radio\" value=\"0\" checked />\r\n");
	templateBuilder.Append("				之后\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"resultorder\">结果排序</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"resultorder\" id=\"resultorder\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected=\"selected\">创建时间</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"resultordertype\" value=\"1\" />\r\n");
	templateBuilder.Append("				升序\r\n");
	templateBuilder.Append("				<input name=\"resultordertype\" type=\"radio\" value=\"0\" checked />\r\n");
	templateBuilder.Append("				降序\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<form id=\"postpm\" name=\"postpm\" method=\"post\" onsubmit=\"if(this.chkAuthor.checked)$('type').value='author';return true;\" action=\"\">\r\n");
	templateBuilder.Append("	<h1>搜索</h1>\r\n");
	templateBuilder.Append("	<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"搜索\"  class=\"formtable\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr id=\"divkeyword\">\r\n");
	templateBuilder.Append("			<th><label for=\"keyword\">关键词</label></th>\r\n");
	templateBuilder.Append("			<td><input name=\"keyword\" type=\"text\" id=\"keyword\" size=\"45\" class=\"txt\" />&nbsp;&nbsp;多个关键词间用英文空格分开</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"poster\">作者</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("			<input name=\"poster\" type=\"text\" id=\"poster\" size=\"45\" class=\"txt\" />\r\n");
	templateBuilder.Append("			<input type=\"checkbox\" value=\"1\" id=\"chkAuthor\" name=\"chkAuthor\" onclick=\"checkauthoroption(this);\" />搜索该作者所有帖子及相关内容\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("	<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"搜索选项\"  class=\"formtable\">\r\n");
	templateBuilder.Append("		<thead>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th id=\"divsearchoption\">搜索选项</th>\r\n");
	templateBuilder.Append("			<td>&nbsp;</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");
	templateBuilder.Append("		<tbody id=\"divsearchtype\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"poster\">搜索类型</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("			    <input type=\"hidden\" name=\"type\" value=\"post\" id=\"type\" />\r\n");
	templateBuilder.Append("				<input name=\"keywordtype\" type=\"radio\" value=\"0\" checked onclick=\"changeoption('post');\" />\r\n");
	templateBuilder.Append("				帖子标题搜索\r\n");

	if (usergroupinfo.Allowsearch==1)
	{

	templateBuilder.Append("					<input type=\"radio\" name=\"keywordtype\" value=\"1\" onclick=\"changeoption('post');\" />\r\n");
	templateBuilder.Append("				内容搜索\r\n");

	}	//end if


	if (config.Enablespace==1)
	{

	templateBuilder.Append("				<input type=\"radio\" name=\"keywordtype\" value=\"2\" onclick=\"changeoption('spacepost');\" />\r\n");
	templateBuilder.Append("				日志标题搜索\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("				<input type=\"radio\" name=\"keywordtype\" value=\"3\" onclick=\"changeoption('album');\"/>\r\n");
	templateBuilder.Append("				相册标题搜索\r\n");

	}	//end if

	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("	<div id=\"options\" style=\"margin-top:-1px;\"></div>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/template_search.js\"></");
	templateBuilder.Append("script>	\r\n");
	templateBuilder.Append("	<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"搜索类型\" class=\"formtable\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th> </th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				 <button name=\"submit\" type=\"submit\" id=\"submit\">执行搜索</button>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</form>\r\n");
	templateBuilder.Append("</div>\r\n");

	}
	else
	{


	if (type=="album")
	{

	templateBuilder.Append("	<div class=\"s_clear\" id=\"forumheader\">\r\n");
	templateBuilder.Append("		<h1>相册搜索结果</h1>\r\n");
	templateBuilder.Append("		<p class=\"channelinfo f_clear\">共搜索到");
	templateBuilder.Append(topiccount.ToString());
	templateBuilder.Append("个符合条件的相册</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"threadlist searchlist\">\r\n");
	templateBuilder.Append("	<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"搜索结果\">\r\n");
	templateBuilder.Append("	<thead class=\"category\">\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th style=\"padding:4px 0; text-align:center;\">标题</th>\r\n");
	templateBuilder.Append("		<td>所属分类</td>\r\n");
	templateBuilder.Append("		<td class=\"author\">作者</td>\r\n");
	templateBuilder.Append("		<td class=\"nums\">图片数</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</thead>\r\n");

	int album__loop__id=0;
	foreach(DataRow album in albumlist.Rows)
	{
		album__loop__id++;

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th class=\"subject\">\r\n");
	templateBuilder.Append("			<a href=\"showalbum.aspx?albumid=" + album["albumid"].ToString().Trim() + "\" target=\"_blank\">" + album["title"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("		</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<a href=\"showalbumlist.aspx?cate=" + album["albumcateid"].ToString().Trim() + "\" target=\"_parent\">" + album["categorytitle"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<td class=\"author\">\r\n");
	templateBuilder.Append("			<cite>\r\n");

	if (Utils.StrToInt(album["userid"].ToString().Trim(), 0)==-1)
	{

	templateBuilder.Append("				游客\r\n");

	}
	else
	{

	templateBuilder.Append("				<a href=\"showalbumlist.aspx?uid=" + album["userid"].ToString().Trim() + "\" target=\"_parent\">" + album["username"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("			<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(album["createdatetime"].ToString().Trim()).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<td class=\"nums\">" + album["imgcount"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if


	if (type=="spacepost")
	{

	templateBuilder.Append("	<div class=\"s_clear\" id=\"forumheader\">\r\n");
	templateBuilder.Append("		<h1>日志搜索结果</h1>\r\n");
	templateBuilder.Append("		<p class=\"channelinfo f_clear\">共搜索到");
	templateBuilder.Append(topiccount.ToString());
	templateBuilder.Append("篇符合条件的日志</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"threadlist searchlist\">\r\n");
	templateBuilder.Append("	<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"搜索结果\">\r\n");
	templateBuilder.Append("	<thead class=\"category\">\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th style=\"padding:4px 0; text-align:center;\">标题</th>\r\n");
	templateBuilder.Append("		<td>作者</td>\r\n");
	templateBuilder.Append("		<td class=\"nums\">回复 / 查看</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</thead>\r\n");

	int spacepost__loop__id=0;
	foreach(DataRow spacepost in spacepostlist.Rows)
	{
		spacepost__loop__id++;

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th class=\"subject\">\r\n");
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=" + spacepost["postid"].ToString().Trim() + "\" target=\"_blank\">" + spacepost["title"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("		</th>\r\n");
	templateBuilder.Append("		<td class=\"author\">\r\n");
	templateBuilder.Append("			<cite>\r\n");

	if (Utils.StrToInt(spacepost["uid"].ToString().Trim(), 0)==-1)
	{

	templateBuilder.Append("				游客\r\n");

	}
	else
	{

	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=" + spacepost["uid"].ToString().Trim() + "\" target=\"_parent\">" + spacepost["author"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("			<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(spacepost["postdatetime"].ToString().Trim()).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<td class=\"nums\">" + spacepost["commentcount"].ToString().Trim() + " / " + spacepost["views"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if


	if (type=="")
	{

	templateBuilder.Append("	<div class=\"s_clear\" id=\"forumheader\">\r\n");
	templateBuilder.Append("		<h1>搜索结果</h1>\r\n");
	templateBuilder.Append("		<p class=\"channelinfo f_clear\">共搜索到<em>");
	templateBuilder.Append(topiccount.ToString());
	templateBuilder.Append("</em>个符合条件的帖子</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"threadlist searchlist\">\r\n");
	templateBuilder.Append("	<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"搜索结果\">\r\n");
	templateBuilder.Append("		<thead class=\"category\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th style=\"padding:4px 0; text-align:center;\">标题</th>\r\n");
	templateBuilder.Append("			<td>所在版块</td>\r\n");
	templateBuilder.Append("			<td class=\"author\">作者</td>\r\n");
	templateBuilder.Append("			<td class=\"nums\">回复/查看</td>\r\n");
	templateBuilder.Append("			<td class=\"lastpost\"><cite>最后发表</cite></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");

	int topic__loop__id=0;
	foreach(DataRow topic in topiclist.Rows)
	{
		topic__loop__id++;

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th class=\"subject\">\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(topic["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">" + topic["title"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("			</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	 aspxrewriteurl = this.ShowForumAspxRewrite(topic["fid"].ToString().Trim(),0);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_parent\">" + topic["forumname"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td class=\"author\">\r\n");
	templateBuilder.Append("				<cite>\r\n");

	if (Utils.StrToInt(topic["posterid"].ToString().Trim(), 0)==-1)
	{

	templateBuilder.Append("					游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(topic["posterid"].ToString().Trim());
	
	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_parent\">" + topic["poster"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("				<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(topic["postdatetime"].ToString().Trim()).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td class=\"nums\">" + topic["replies"].ToString().Trim() + " / " + topic["views"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("			<td class=\"lastpost\">\r\n");
	templateBuilder.Append("				<em><a href=\"showtopic.aspx?topicid=" + topic["tid"].ToString().Trim() + "&page=end\" target=\"_blank\">\r\n");
	templateBuilder.Append(Convert.ToDateTime(topic["lastpost"].ToString().Trim()).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</a></em>\r\n");
	templateBuilder.Append("				<cite>\r\n");

	if (Utils.StrToInt(topic["posterid"].ToString().Trim(), 0)==-1)
	{

	templateBuilder.Append("					游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(topic["lastposterid"].ToString().Trim());
	
	templateBuilder.Append("					<a href=");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append(" target=\"_blank\">" + topic["lastposter"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("				</cite>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if


	if (type=="author")
	{

	templateBuilder.Append("	<div class=\"cm_header itemtitle s_clear\">\r\n");
	templateBuilder.Append("		<ul>\r\n");
	templateBuilder.Append("			<li id=\"result1\" class=\"current\" onmouseover=\"javascript:doClick_result(this)\"><a href=\"###\"><span>帖子搜索</span></a></li>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("			<li id=\"result2\" class=\"\" onmouseover=\"javascript:doClick_result(this)\"><a href=\"###\"><span>日志搜索</span></a></li>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("			<li id=\"result3\" class=\"\" onmouseover=\"javascript:doClick_result(this)\"><a href=\"###\"><span>相册搜索</span></a></li>\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"resultid1\" style=\"display:block;\">\r\n");
	templateBuilder.Append("		<div class=\"s_clear\" id=\"forumheader\">\r\n");

	if (config.Enablespace==1||config.Enablealbum==1)
	{

	templateBuilder.Append("			<h1>帖子搜索</h1>\r\n");

	}	//end if

	templateBuilder.Append("			<p class=\"channelinfo f_clear\">共搜索到<em>");
	templateBuilder.Append(topiccount.ToString());
	templateBuilder.Append("</em>个符合条件的帖子</p>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"threadlist searchlist\">\r\n");
	templateBuilder.Append("		<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"帖子搜索\">\r\n");
	templateBuilder.Append("		<thead class=\"category\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th style=\"padding:4px 0; text-align:center;\">标题</th>\r\n");
	templateBuilder.Append("			<td>所在版块</td>\r\n");
	templateBuilder.Append("			<td>作者</td>\r\n");
	templateBuilder.Append("			<td class=\"nums\">回复 / 查看</td>\r\n");
	templateBuilder.Append("			<td class=\"lastpost\"><cite>最后发表</cite></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");

	int topic__loop__id=0;
	foreach(DataRow topic in topiclist.Rows)
	{
		topic__loop__id++;

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th class=\"subject\">\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(topic["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">" + topic["title"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("			</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	 aspxrewriteurl = this.ShowForumAspxRewrite(topic["fid"].ToString().Trim(),0);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_parent\">" + topic["forumname"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td class=\"author\">\r\n");
	templateBuilder.Append("				<cite>\r\n");

	if (Utils.StrToInt(topic["posterid"].ToString().Trim(), 0)==-1)
	{

	templateBuilder.Append("					游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(topic["posterid"].ToString().Trim());
	
	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_parent\">" + topic["poster"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("				<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(topic["postdatetime"].ToString().Trim()).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td class=\"nums\">" + topic["replies"].ToString().Trim() + " / " + topic["views"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("			<td class=\"lastpost\">\r\n");
	templateBuilder.Append("				<em><a href=\"showtopic.aspx?topicid=" + topic["tid"].ToString().Trim() + "&page=end\" target=\"_blank\">\r\n");
	templateBuilder.Append(Convert.ToDateTime(topic["lastpost"].ToString().Trim()).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</a></em>\r\n");
	templateBuilder.Append("				<cite>\r\n");

	if (Utils.StrToInt(topic["posterid"].ToString().Trim(), 0)==-1)
	{

	templateBuilder.Append("					游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(topic["lastposterid"].ToString().Trim());
	
	templateBuilder.Append("			<a href=");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append(" target=\"_blank\">" + topic["lastposter"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("				</cite>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("			<div class=\"pages\">\r\n");
	templateBuilder.Append("				<em>");
	templateBuilder.Append(topicpageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(topicpagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(topicpagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("<div id=\"resultid2\" style=\"display:none;\">\r\n");
	templateBuilder.Append("	<div class=\"s_clear\" id=\"forumheader\">\r\n");
	templateBuilder.Append("		<h1>日志搜索</h1>\r\n");
	templateBuilder.Append("		<p class=\"channelinfo f_clear\">共搜索到<em>");
	templateBuilder.Append(blogcount.ToString());
	templateBuilder.Append("</em>个符合条件的日志</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"threadlist searchlist\">\r\n");
	templateBuilder.Append("	<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"日志搜索结果\">\r\n");
	templateBuilder.Append("		<thead class=\"category\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th style=\"padding:4px 0; text-align:center;\">标题</th>\r\n");
	templateBuilder.Append("			<th>作者</th>\r\n");
	templateBuilder.Append("			<td class=\"nums\">回复 / 查看</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");

	int spacepost__loop__id=0;
	foreach(DataRow spacepost in spacepostlist.Rows)
	{
		spacepost__loop__id++;

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th class=\"subject\">\r\n");
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=" + spacepost["postid"].ToString().Trim() + "\" target=\"_blank\">" + spacepost["title"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("			</th>\r\n");
	templateBuilder.Append("			<td class=\"author\">\r\n");
	templateBuilder.Append("				<cite>\r\n");

	if (Utils.StrToInt(spacepost["uid"].ToString().Trim(), 0)==-1)
	{

	templateBuilder.Append("					游客\r\n");

	}
	else
	{

	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=" + spacepost["uid"].ToString().Trim() + "\" target=\"_parent\">" + spacepost["author"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("				<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(spacepost["postdatetime"].ToString().Trim()).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td><em>" + spacepost["commentcount"].ToString().Trim() + "</em> / " + spacepost["views"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<em>");
	templateBuilder.Append(blogpageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(blogpagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(blogpagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("<div id=\"resultid3\" style=\"display:none;\">\r\n");
	templateBuilder.Append("	<div class=\"s_clear\" id=\"forumheader\">\r\n");
	templateBuilder.Append("		<h1>相册搜索</h1>\r\n");
	templateBuilder.Append("		<p class=\"channelinfo f_clear\">共搜索到<em>");
	templateBuilder.Append(albumcount.ToString());
	templateBuilder.Append("</em>个符合条件的相册</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"threadlist searchlist\">\r\n");
	templateBuilder.Append("	<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"相册搜索结果\">\r\n");
	templateBuilder.Append("		<thead class=\"category\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th style=\"padding:4px 0; text-align:center;\">标题</th>\r\n");
	templateBuilder.Append("			<th>所属分类</th>\r\n");
	templateBuilder.Append("			<th>作者</th>\r\n");
	templateBuilder.Append("			<th class=\"nums\">图片数</th>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");

	int album__loop__id=0;
	foreach(DataRow album in albumlist.Rows)
	{
		album__loop__id++;

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th class=\"subject\">\r\n");
	templateBuilder.Append("					<a href=\"showalbum.aspx?albumid=" + album["albumid"].ToString().Trim() + "\" target=\"_blank\">" + album["title"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("				</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<a href=\"showalbumlist.aspx?cate=" + album["albumcateid"].ToString().Trim() + "\" target=\"_parent\">" + album["categorytitle"].ToString().Trim() + "&nbsp;</a>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("				<td class=\"author\">\r\n");
	templateBuilder.Append("					<cite>\r\n");

	if (Utils.StrToInt(album["userid"].ToString().Trim(), 0)==-1)
	{

	templateBuilder.Append("						游客\r\n");

	}
	else
	{

	templateBuilder.Append("						<a href=\"showalbumlist.aspx?uid=" + album["userid"].ToString().Trim() + "\" target=\"_parent\">" + album["username"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("					<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(album["createdatetime"].ToString().Trim()).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("				<td class=\"nums\">" + album["imgcount"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<em>");
	templateBuilder.Append(albumpageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(albumpagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(albumpagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("switch (getQueryString('show'))\r\n");
	templateBuilder.Append("{	\r\n");
	templateBuilder.Append("	case 'album':\r\n");
	templateBuilder.Append("		doClick_result($('result3'));\r\n");
	templateBuilder.Append("		break;\r\n");
	templateBuilder.Append("	case 'blog':\r\n");
	templateBuilder.Append("		doClick_result($('result2'));\r\n");
	templateBuilder.Append("		break;\r\n");
	templateBuilder.Append("	case 'topic':\r\n");
	templateBuilder.Append("	default:\r\n");
	templateBuilder.Append("		doClick_result($('result1'));\r\n");
	templateBuilder.Append("		break;\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("function doClick_result(o){\r\n");
	templateBuilder.Append("	o.className=\"current\";\r\n");
	templateBuilder.Append("	var j;\r\n");
	templateBuilder.Append("	var id;\r\n");
	templateBuilder.Append("	var e;\r\n");
	templateBuilder.Append("	for(var i=1;i<=3;i++){\r\n");
	templateBuilder.Append("		id =\"result\"+i;\r\n");
	templateBuilder.Append("		j = $(id);\r\n");
	templateBuilder.Append("		e = $(\"resultid\"+i);\r\n");
	templateBuilder.Append("		if(id != o.id){\r\n");
	templateBuilder.Append("			try{ j.className=\"\"; } catch(e) { }\r\n");
	templateBuilder.Append("			if($(\"resultid\"+i)){\r\n");
	templateBuilder.Append("			e.style.display = \"none\";}\r\n");
	templateBuilder.Append("		}else{\r\n");
	templateBuilder.Append("		    if($(\"resultid\"+i)){\r\n");
	templateBuilder.Append("			e.style.display = \"block\";}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");

	}	//end if


	}	//end if


	}
	else
	{


	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main\">\r\n");
	templateBuilder.Append("	<div class=\"msgbox error_msg\">\r\n");
	templateBuilder.Append("		<h1>出现了");
	templateBuilder.Append(page_err.ToString());
	templateBuilder.Append("个错误</h1>\r\n");
	templateBuilder.Append("		<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n");
	templateBuilder.Append("		<p class=\"errorback\">\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				if(");
	templateBuilder.Append(msgbox_showbacklink.ToString());
	templateBuilder.Append(")\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					document.write(\"<a href=\\\"");
	templateBuilder.Append(msgbox_backlink.ToString());
	templateBuilder.Append("\\\">返回上一步</a> &nbsp; &nbsp;|&nbsp; &nbsp  \");\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("			</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			<a href=\"forumindex.aspx\">论坛首页</a>\r\n");

	if (usergroupid==7)
	{

	templateBuilder.Append("			 &nbsp; &nbsp|&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n");

	}	//end if

	templateBuilder.Append("		</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");



	}	//end if

	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");


	if (infloat!=1)
	{


	if (footerad!="")
	{

	templateBuilder.Append("<div id=\"ad_footerbanner\">");
	templateBuilder.Append(footerad.ToString());
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("<div id=\"footer\">\r\n");
	templateBuilder.Append("	<div class=\"wrap\">\r\n");
	templateBuilder.Append("		<div id=\"footlinks\">\r\n");
	templateBuilder.Append("			<p><a href=\"");
	templateBuilder.Append(config.Weburl.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(config.Webtitle.ToString().Trim());
	templateBuilder.Append("</a> - ");
	templateBuilder.Append(config.Linktext.ToString().Trim());
	templateBuilder.Append(" - <a target=\"_blank\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("stats.aspx\">统计</a> - \r\n");

	if (config.Sitemapstatus==1)
	{

	templateBuilder.Append("&nbsp;<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("tools/sitemap.aspx\" target=\"_blank\" title=\"百度论坛收录协议\">Sitemap</a>\r\n");

	}	//end if

	templateBuilder.Append("			");
	templateBuilder.Append(config.Statcode.ToString().Trim());
	templateBuilder.Append(config.Icp.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</p>\r\n");
	templateBuilder.Append("			<div>\r\n");
	templateBuilder.Append("				<a href=\"http://www.comsenz.com/\" target=\"_blank\">Comsenz Technology Ltd</a>\r\n");
	templateBuilder.Append("				- <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("archiver/index.aspx\" target=\"_blank\">简洁版本</a>\r\n");

	if (config.Stylejump==1)
	{


	if (userid!=-1 || config.Guestcachepagetimeout<=0)
	{

	templateBuilder.Append("				- <span id=\"styleswitcher\" class=\"drop\" onmouseover=\"showMenu(this.id)\" onclick=\"window.location.href='");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("showtemplate.aspx'\">界面风格</span>\r\n");
	templateBuilder.Append("				<ul id=\"styleswitcher_menu\" class=\"popupmenu_popup s_clear\" style=\"display: none;\">\r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(templatelistboxoptions.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				</ul>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("				- <span class=\"scrolltop\" onclick=\"window.scrollTo(0,0);\">TOP</span>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<a title=\"Powered by Discuz!NT\" target=\"_blank\" href=\"http://nt.discuz.net\"><img border=\"0\" alt=\"Discuz!NT\" src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/discuznt_logo.gif\"/></a>\r\n");
	templateBuilder.Append("		<p id=\"copyright\">\r\n");
	templateBuilder.Append("			Powered by <strong><a href=\"http://nt.discuz.net\" target=\"_blank\" title=\"Discuz!NT 3.0.0 (.NET Framework 2.0/3.x)\">Discuz!NT</a></strong> <em class=\"f_bold\">3.0.0</em>\r\n");

	if (config.Licensed==1)
	{

	templateBuilder.Append("				(<a href=\"\" onclick=\"this.href='http://nt.discuz.net/certificate/?host='+location.href.substring(0, location.href.lastIndexOf('/'))\" target=\"_blank\">Licensed</a>)\r\n");

	}	//end if

	templateBuilder.Append("				");
	templateBuilder.Append(config.Forumcopyright.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</p>\r\n");
	templateBuilder.Append("		<p id=\"debuginfo\" class=\"grayfont\">\r\n");

	if (config.Debug!=0)
	{

	templateBuilder.Append("			Processed in ");
	templateBuilder.Append(this.Processtime.ToString().Trim());
	templateBuilder.Append(" second(s)\r\n");

	if (isguestcachepage==1)
	{

	templateBuilder.Append("				(Cached).\r\n");

	}
	else if (querycount>1)
	{

	templateBuilder.Append("				 , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" queries.\r\n");

	}
	else
	{

	templateBuilder.Append("				        , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" query.\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("		</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<ul id=\"quicksearch_menu\" class=\"popupmenu_popup\" style=\"display: none;\">\r\n");
	templateBuilder.Append("	<li onclick=\"document.getElementById('keywordtype').value='0';document.getElementById('quicksearch').innerHTML='帖子标题';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">帖子标题</li>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("	<li onclick=\"document.getElementById('keywordtype').value='2';document.getElementById('quicksearch').innerHTML='空间日志';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">空间日志</li>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("	<li onclick=\"document.getElementById('keywordtype').value='3';document.getElementById('quicksearch').innerHTML='相册标题';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">相册标题</li>\r\n");

	}	//end if

	templateBuilder.Append("	<li onclick=\"document.getElementById('keywordtype').value='8';document.getElementById('quicksearch').innerHTML='作者';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">作者</li>\r\n");
	templateBuilder.Append("</ul>\r\n");
	templateBuilder.Append("<ul class=\"popupmenu_popup\" id=\"viewpro_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("	<li style=\"text-align:center;\"><img src=\"");
	templateBuilder.Append(useravatar.ToString());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/noavatar_small.gif';\" /></li>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(userid);
	
	templateBuilder.Append("	<li class=\"popuser\"><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">我的资料</a></li>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("	<li class=\"poplink\"><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/\">我的空间</a></li>\r\n");

	}	//end if

	templateBuilder.Append("</ul>\r\n");

	int prentid__loop__id=0;
	foreach(string prentid in mainnavigationhassub)
	{
		prentid__loop__id++;

	templateBuilder.Append("<ul class=\"popupmenu_popup headermenu_popup\" id=\"menu_");
	templateBuilder.Append(prentid.ToString());
	templateBuilder.Append("_menu\" style=\"display: none\">\r\n");

	int subnav__loop__id=0;
	foreach(DataRow subnav in subnavigation.Rows)
	{
		subnav__loop__id++;

	bool isoutput = false;
	

	if (subnav["parentid"].ToString().Trim()==prentid)
	{


	if (subnav["level"].ToString().Trim()=="0")
	{

	 isoutput = true;
	

	}
	else
	{


	if (subnav["level"].ToString().Trim()=="1" && userid!=-1)
	{

	 isoutput = true;
	

	}
	else
	{

	bool leveluseradmindi = true;
	
	 leveluseradmindi = (useradminid==3 || useradminid==1 || useradminid==2);
	

	if (subnav["level"].ToString().Trim()=="2" &&  leveluseradmindi)
	{

	 isoutput = true;
	

	}	//end if


	if (subnav["level"].ToString().Trim()=="3" && useradminid==1)
	{

	 isoutput = true;
	

	}	//end if


	}	//end if


	}	//end if


	}	//end if


	if (isoutput)
	{


	if (subnav["id"].ToString().Trim()=="11" || subnav["id"].ToString().Trim()=="12")
	{


	if (config.Statstatus==1)
	{

	templateBuilder.Append("	" + subnav["nav"].ToString().Trim() + "\r\n");
	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="18")
	{


	if (config.Oltimespan>0)
	{

	templateBuilder.Append("    " + subnav["nav"].ToString().Trim() + "\r\n");
	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="24")
	{


	if (config.Enablespace==1)
	{

	templateBuilder.Append("    " + subnav["nav"].ToString().Trim() + "\r\n");
	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="25")
	{


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("    " + subnav["nav"].ToString().Trim() + "\r\n");
	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if


	if (subnav["id"].ToString().Trim()=="26")
	{


	if (config.Enablemall>=1)
	{

	templateBuilder.Append("    " + subnav["nav"].ToString().Trim() + "\r\n");
	continue;


	}
	else
	{

	continue;


	}	//end if


	}	//end if

	templateBuilder.Append("    " + subnav["nav"].ToString().Trim() + "\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("</ul>\r\n");

	}	//end loop




	templateBuilder.Append("</body>\r\n");
	templateBuilder.Append("</html>\r\n");

	}
	else
	{

	templateBuilder.Append("]]></root>\r\n");

	}	//end if




	Response.Write(templateBuilder.ToString());
}
</script>
