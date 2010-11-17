<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.modcp" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:23.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:23. 
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



	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("javascript/template_modcp.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("javascript/template_quickreply.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <strong>管理面板</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (page_err==0)
	{


	if (ispost && editusersubmit||banusersubmit||editannouncement||deleteannoucement)
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

	templateBuilder.Append("<div class=\"wrap with_side s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("	<div class=\"side\">\r\n");

	if (admingroupinfo.Allowpostannounce==1)
	{

	templateBuilder.Append("		<h2>公告管理</h2>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("			<ul class=\"tabs\">\r\n");
	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("					<a href=\"modcp.aspx?operation=addannouncements&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">添加公告</a>\r\n");
	templateBuilder.Append("				</li>\r\n");
	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("					<a href=\"modcp.aspx?operation=list&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">管理公告</a>\r\n");
	templateBuilder.Append("				</li>\r\n");
	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if

	templateBuilder.Append("		<h2>用户管理</h2>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("			<ul>\r\n");

	if (admingroupinfo.Allowedituser==1)
	{

	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("				<a href=\"modcp.aspx?operation=edituser&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">编辑用户</a>  \r\n");
	templateBuilder.Append("				</li>\r\n");

	}	//end if


	if (admingroupinfo.Allowbanuser==1)
	{

	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("				<a href=\"modcp.aspx?operation=banusersearch&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">禁止用户</a>\r\n");
	templateBuilder.Append("				</li>					\r\n");

	}	//end if

	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("				<a href=\"modcp.aspx?operation=forumaccesslist&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">用户权限</a> 				\r\n");
	templateBuilder.Append("				</li>\r\n");

	if (admingroupinfo.Allowbanip==1)
	{

	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("				<a href=\"modcp.aspx?operation=showbannedlist&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">禁止 IP</a>   \r\n");
	templateBuilder.Append("				</li>\r\n");

	}	//end if

	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<h2>版块管理</h2>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("			<ul>\r\n");
	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("					<a href=\"modcp.aspx?operation=editforum&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">版块编辑</a>  \r\n");
	templateBuilder.Append("				</li>\r\n");
	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<h2>主题管理</h2>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("			<ul>\r\n");

	if (admingroupinfo.Allowmodpost==1)
	{

	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("					<a href=\"modcp.aspx?operation=audittopic&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">审核主题</a> \r\n");
	templateBuilder.Append("				</li>\r\n");
	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("					<a href=\"modcp.aspx?operation=auditpost&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">审核回复</a>\r\n");
	templateBuilder.Append("				</li>\r\n");

	}	//end if


	if (useradminid==1 || useradminid==2)
	{

	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("					<a href=\"modcp.aspx?operation=attention&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">批量删帖</a>  \r\n");
	templateBuilder.Append("				</li>\r\n");

	}	//end if

	templateBuilder.Append("				<li>\r\n");
	templateBuilder.Append("					<a href=\"modcp.aspx?operation=attention&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">主题关注</a>  \r\n");
	templateBuilder.Append("				</li>\r\n");
	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<h2>其他</h2>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("			<ul>\r\n");

	if (admingroupinfo.Allowviewlog==1)
	{

	templateBuilder.Append("<li><a href=\"modcp.aspx?operation=logs&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">管理日志</a></li>\r\n");

	}	//end if

	templateBuilder.Append("				<li><a href=\"modcp.aspx?operation=userout&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">返回论坛</a></li>\r\n");
	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"cpmain\">\r\n");
	templateBuilder.Append("	<div class=\"cpcontent\">\r\n");

	if (operation=="login")
	{

	templateBuilder.Append("		<h1>管理登录</h1>\r\n");
	templateBuilder.Append("		<form action=\"\" method=\"post\">\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" name=\"operation\"/>\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"管理登录\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"cpname\">用户名</label></th><td><input type=\"text\" name=\"cpname\" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"cppwd\">密码</label></th><td><input type=\"password\" name=\"cppwd\" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th> </th><td><button type=\"submit\" id=\"Submit1\" name=\"Submit\">提交</button></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");
	templateBuilder.Append("		<div class=\"hintinfo\">当您首次进入管理面板或者长时间没有管理动作时，您需要输入密码才能进入。如果密码输入错误超过 3 次，管理面板将会锁定。30 分钟或者更长时间后，管理面板才能解除锁定。\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if

	templateBuilder.Append("	<!--批量删帖-->\r\n");

	if (operation=="deleteuserpost")
	{

	templateBuilder.Append("	<h1>批量删帖</h1>\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"管理登录\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				<form action=\"modcp.aspx?operation=deleteuserpost\" method=\"post\">\r\n");
	templateBuilder.Append("				<input type=\"hidden\" value=\"topics\" name=\"deletetype\"/>\r\n");
	templateBuilder.Append("				删除该用户<select name=\"delTopicDate\">\r\n");
	templateBuilder.Append("				                <option value=\"1\">1</option>\r\n");
	templateBuilder.Append("								<option value=\"2\">2</option>\r\n");
	templateBuilder.Append("								<option value=\"3\">3</option>\r\n");
	templateBuilder.Append("								<option value=\"4\">4</option>\r\n");
	templateBuilder.Append("								<option value=\"5\">5</option>\r\n");
	templateBuilder.Append("								<option value=\"6\">6</option>\r\n");
	templateBuilder.Append("								<option value=\"7\">7</option>\r\n");
	templateBuilder.Append("								<option value=\"8\">8</option>\r\n");
	templateBuilder.Append("								<option value=\"9\">9</option>\r\n");
	templateBuilder.Append("								<option value=\"10\">10</option>\r\n");
	templateBuilder.Append("                             </select>天内的主题<button type=\"submit\" id=\"Submit1\" name=\"Submit\">提交</button>\r\n");
	templateBuilder.Append("				</form>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("			    <form action=\"modcp.aspx?operation=deleteuserpost\" method=\"post\">\r\n");
	templateBuilder.Append("				<input type=\"hidden\" value=\"posts\" name=\"deletetype\"/>\r\n");
	templateBuilder.Append("				删除该用户<select name=\"delTopicDate\">\r\n");
	templateBuilder.Append("				                <option value=\"1\">1</option>\r\n");
	templateBuilder.Append("								<option value=\"2\">2</option>\r\n");
	templateBuilder.Append("								<option value=\"3\">3</option>\r\n");
	templateBuilder.Append("								<option value=\"4\">4</option>\r\n");
	templateBuilder.Append("								<option value=\"5\">5</option>\r\n");
	templateBuilder.Append("								<option value=\"6\">6</option>\r\n");
	templateBuilder.Append("								<option value=\"7\">7</option>\r\n");
	templateBuilder.Append("								<option value=\"8\">8</option>\r\n");
	templateBuilder.Append("								<option value=\"9\">9</option>\r\n");
	templateBuilder.Append("								<option value=\"10\">10</option>\r\n");
	templateBuilder.Append("                             </select>天内的回帖<button type=\"submit\" id=\"Submit1\" name=\"Submit\">提交</button>\r\n");
	templateBuilder.Append("				</form>			 \r\n");
	templateBuilder.Append("				</td>			 \r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	</form>\r\n");

	}	//end if

	templateBuilder.Append("	<!--添加公告-->\r\n");

	if (operation=="addannouncements" && admingroupinfo.Allowpostannounce==1)
	{

	templateBuilder.Append("		<h1>添加公告</h1>\r\n");
	templateBuilder.Append("		<form action=\"modcp.aspx?operation=add\" method=\"post\">\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" name=\"operation\"/>\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=\"0\" name=\"displayorder\"/>\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"添加公告\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>标题</th><td><input type=\"text\" size=\"80\" id=\"subject\" name=\"subject\" value=\"\" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>起始时间</th><td><input type=\"text\" style=\"cursor:default\" onClick=\"showcalendar(event, 'starttime', 'cal_startdate1', 'cal_enddate1', '");
	templateBuilder.Append(nowdatetime.ToString());
	templateBuilder.Append("');\" name=\"starttime\" value='");
	templateBuilder.Append(starttime.ToString());
	templateBuilder.Append("' id=\"starttime\" class=\"txt\"/>\r\n");
	templateBuilder.Append("					<input type=\"hidden\" name=\"cal_startdate1\" id=\"cal_startdate1\" size=\"10\"  value=\"1900-01-01\" />\r\n");
	templateBuilder.Append("					<input type=\"hidden\" name=\"cal_enddate1\" id=\"cal_enddate1\" size=\"10\"  value=\"2099-01-01\" />\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>结束时间</th><td><input type=\"text\" style=\"cursor:default\" onClick=\"showcalendar(event, 'endtime', 'cal_startdate2', 'cal_enddate2', 'nowdatetime');\" name=\"endtime\" value='");
	templateBuilder.Append(endtime.ToString());
	templateBuilder.Append("' id=\"endtime\" class=\"txt\"/>\r\n");
	templateBuilder.Append("				<input type=\"hidden\" name=\"cal_startdate2\" id=\"cal_startdate2\" size=\"10\"  value=\"1900-01-01\" />\r\n");
	templateBuilder.Append("				<input type=\"hidden\" name=\"cal_enddate2\" id=\"cal_enddate2\" size=\"10\"  value=\"2099-01-01\" />\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>内容</th><td><textarea cols=\"80\" rows=\"10\" id=\"message\" name=\"message\" class=\"txtarea\" ></textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th> </th><td><button type=\"submit\" id=\"addannouncement_Submit\" name=\"Submit\">提交</button></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" src=\"javascript/template_calendar.js\"></");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("	<!--编辑公告-->\r\n");

	if (operation=="editannouncements")
	{

	templateBuilder.Append("		<h1>编辑公告</h1>\r\n");
	templateBuilder.Append("		<form action=\"modcp.aspx?operation=updateannouncements\" method=\"post\">\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=");
	templateBuilder.Append(id.ToString());
	templateBuilder.Append(" name=\"id\"/>\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=");
	templateBuilder.Append(displayorder.ToString());
	templateBuilder.Append(" name=\"displayorder\"/>\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"编辑公告\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>标题</th><td><input type=\"text\" size=\"80\" id=\"subject\" name=\"subject\" value=");
	templateBuilder.Append(subject.ToString());
	templateBuilder.Append(" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("			<th>起始时间</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input type=\"text\" style=\"cursor:default\" onClick=\"showcalendar(event, 'starttime', 'cal_startdate1', 'cal_enddate1', '");
	templateBuilder.Append(nowdatetime.ToString());
	templateBuilder.Append("');\" name=\"starttime\" value=\"");
	templateBuilder.Append(starttime.ToString());
	templateBuilder.Append("\" id=\"starttime\" class=\"txt\"/>\r\n");
	templateBuilder.Append("				<input type=\"hidden\" name=\"cal_startdate1\" id=\"cal_startdate1\" size=\"10\"  value=\"1900-01-01\" />\r\n");
	templateBuilder.Append("				<input type=\"hidden\" name=\"cal_enddate1\" id=\"cal_enddate1\" size=\"10\"  value=\"2099-01-01\" />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>结束时间</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				<input type=\"text\" style=\"cursor:default\" onClick=\"showcalendar(event, 'endtime', 'cal_startdate2', 'cal_enddate2', 'nowdatetime');\" name=\"endtime\" value=\"");
	templateBuilder.Append(endtime.ToString());
	templateBuilder.Append("\" id=\"endtime\" class=\"txt\"/>\r\n");
	templateBuilder.Append("				<input type=\"hidden\" name=\"cal_startdate2\" id=\"cal_startdate2\" size=\"10\"  value=\"1900-01-01\" />\r\n");
	templateBuilder.Append("				<input type=\"hidden\" name=\"cal_enddate2\" id=\"cal_enddate2\" size=\"10\"  value=\"2099-01-01\" />\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>内容</th><td><textarea cols=\"80\" rows=\"10\" id=\"message\" name=\"message\" class=\"txtarea\" >");
	templateBuilder.Append(message.ToString());
	templateBuilder.Append("</textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th></th><td><button type=\"submit\" id=\"editannoucementsubmit\" name=\"editannoucementsubmit\">提交</button></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" src=\"javascript/template_calendar.js\"></");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("	<!--公告列表-->\r\n");

	if (operation=="list")
	{

	templateBuilder.Append("		<form action=\"modcp.aspx?operation=manage&op=delannouncements\" method=\"post\"  class=\"datalist\">\r\n");
	templateBuilder.Append("		<h1>公告列表</h1>\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append(" name=\"operation\"/>\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=");
	templateBuilder.Append(op.ToString());
	templateBuilder.Append(" name=\"op\"/>\r\n");
	templateBuilder.Append("		<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"datatable\">\r\n");
	templateBuilder.Append("		<thead>\r\n");
	templateBuilder.Append("		<tr class=\"colplural\">\r\n");
	templateBuilder.Append("			<th width=\"8%\"><input type=\"checkbox\" onclick=\"checkall(this.form)\" name=\"chkall\" id=\"chkall\"/>删除</th>\r\n");
	templateBuilder.Append("			<th width=\"5%\">顺序</th>\r\n");
	templateBuilder.Append("			<th width=\"12%\">作者</th>\r\n");
	templateBuilder.Append("			<th>标题</th>\r\n");
	templateBuilder.Append("			<th width=\"15%\">起始时间</th>\r\n");
	templateBuilder.Append("			<th width=\"15%\">结束时间</th>\r\n");
	templateBuilder.Append("			<th width=\"8%\">操作</th>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");

	if (counts<=0)
	{

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td colspan=\"7\">暂无公告</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}
	else
	{


	int announcement__loop__id=0;
	foreach(DataRow announcement in announcementlist.Rows)
	{
		announcement__loop__id++;

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (username=="admin"||username==announcement["poster"].ToString().Trim())
	{

	templateBuilder.Append("				<input type=\"checkbox\" name='aidlist' id='aidlist' value=\"" + announcement["id"].ToString().Trim() + "\" class=\"checkbox\"/>\r\n");

	}
	else
	{

	templateBuilder.Append("				<input type=\"checkbox\" name='aidlist' id='aidlist' disabled=\"disabled\" value=\"" + announcement["id"].ToString().Trim() + "\" class=\"checkbox\"/>	\r\n");

	}	//end if

	templateBuilder.Append("</td>	\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (username=="admin"||username==announcement["poster"].ToString().Trim())
	{

	templateBuilder.Append("				<input type=\"text\" size=\"3\" id=\"displayorder\" name=\"displayorder\" value=" + announcement["displayorder"].ToString().Trim() + "  class=\"txt\"/>\r\n");

	}
	else
	{

	templateBuilder.Append("<input type=\"text\" size=\"3\" readonly=\"readonly\" disabled id=\"displayorder\" name=\"displayorder\" value=" + announcement["displayorder"].ToString().Trim() + "  class=\"txt\"/>\r\n");

	}	//end if

	templateBuilder.Append("				<input type=\"hidden\" name=\"hid\" id=\"hid\" size=\"10\"  value=\"" + announcement["id"].ToString().Trim() + "\" />\r\n");
	templateBuilder.Append("				</td>						\r\n");
	templateBuilder.Append("				<td>" + announcement["poster"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("				<td class=\"datatitle\">" + announcement["title"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("				<td class=\"time\">" + announcement["starttime"].ToString().Trim() + " </td>\r\n");
	templateBuilder.Append("				<td class=\"time\">" + announcement["endtime"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (username=="admin"||(username==announcement["poster"].ToString().Trim()))
	{

	templateBuilder.Append("				<a href=\"modcp.aspx?operation=editannouncements&id=" + announcement["id"].ToString().Trim() + "\">编辑\r\n");

	}	//end if

	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end loop


	}	//end if

	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("			<div class=\"pages\">\r\n");
	templateBuilder.Append("			");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<span class=\"left\">\r\n");
	templateBuilder.Append("				<button type=\"submit\" name=\"operationsubmit\" id=\"operationsubmit\"  name=\"Submit\"/>提交</button>\r\n");
	templateBuilder.Append("			</span>\r\n");
	templateBuilder.Append("		</div>\r\n");

	if (tip=="add")
	{

	templateBuilder.Append("<div class=\"hintinfo\">公告添加完毕，请继续操作</div>\r\n");

	}	//end if


	if (tip=="delsuccessful")
	{

	templateBuilder.Append("<div class=\"hintinfo\">选定公告删除完毕，请继续操</div>\r\n");

	}	//end if

	templateBuilder.Append("		</form>\r\n");

	}	//end if

	templateBuilder.Append("	<!--编辑用户-->\r\n");

	if (operation=="edituser")
	{

	templateBuilder.Append("		<h1>编辑用户 - 搜索</h1>\r\n");
	templateBuilder.Append("		<form method=\"post\" action=\"modcp.aspx?operation=edituser&op=edit\">\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" name=\"operation\"/>\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=\"");
	templateBuilder.Append(op.ToString());
	templateBuilder.Append("\" name=\"op\"/>\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"编辑用户 - 搜索\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"username\">用户名</label></th><td><input name=\"username\" value=\"\" size=\"20\" type=\"text\" class=\"txt\" ></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"uid\">UID</label></th><td><input name=\"uid\" value=\"\" size=\"20\" type=\"text\" class=\"txt\"> [可选]</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th> </th><td><input type=\"submit\" id=\"editusersubmit\" value=\"提交\" name=\"editusersubmit\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");

	if (op!="edit")
	{

	templateBuilder.Append("		<div class=\"hintinfo\">\r\n");
	templateBuilder.Append("			请首先输入用户名或者 UID 搜索用户，然后进行下一步。搜索 UID 比搜索用户名速度更快且准确\r\n");
	templateBuilder.Append("		</div>\r\n");

	}
	else
	{


	if (op=="edit" &&uid>0)
	{

	templateBuilder.Append("			<h1>编辑用户 - ");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("</h1>\r\n");
	templateBuilder.Append("			<form method=\"post\" action=\"modcp.aspx?operation=updateuser\">\r\n");
	templateBuilder.Append("			<input type=\"hidden\" value=");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append(" name=\"operation\"/>\r\n");
	templateBuilder.Append("			<input type=\"hidden\" value=\"updateuser\" name=\"op\"/>\r\n");
	templateBuilder.Append("			<input type=\"hidden\" name=\"username\" value=");
	templateBuilder.Append(uname.ToString());
	templateBuilder.Append(">\r\n");
	templateBuilder.Append("			<input type=\"hidden\" name=\"uid\" value=");
	templateBuilder.Append(uid.ToString());
	templateBuilder.Append(">\r\n");
	templateBuilder.Append("			<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"编辑用户 - ");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("			    <tr>\r\n");
	templateBuilder.Append("			        <th></th>\r\n");
	templateBuilder.Append("			        <td>\r\n");
	string avatarurl = Avatars.GetAvatarUrl(uid);
	
	templateBuilder.Append("			            <img src=\"t");
	templateBuilder.Append(avatarurl.ToString());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/noavatar_medium.gif';\" />\r\n");

	if (allowdeleteavatar)
	{

	templateBuilder.Append("			            <input type=\"checkbox\" name=\"delavatar\" value=\"1\" onclick=\"if(this.checked) this.checked=confirm('您确认要在提交后删除该用户的头像吗?');\" />删除头像\r\n");

	}	//end if

	templateBuilder.Append("			        </td>\r\n");
	templateBuilder.Append("			    </tr>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<th><label for=\"username\">用户名</label></th>\r\n");
	templateBuilder.Append("					<td>");
	templateBuilder.Append(uname.ToString());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<th><label for=\"username\">Uid</label></th><td>");
	templateBuilder.Append(uid.ToString());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<th><label for=\"locationnew\">来自</label></th><td><input type=\"text\" name=\"locationnew\" value=\"");
	templateBuilder.Append(location.ToString());
	templateBuilder.Append("\" size=\"40\"></td>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<th><label for=\"bionew\">自我介绍</label></th><td><textarea name=\"bionew\" rows=\"4\" cols=\"80\">");
	templateBuilder.Append(bio.ToString());
	templateBuilder.Append("</textarea></td>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<th><label for=\"bionew\">签名</label></th><td><textarea name=\"signaturenew\" rows=\"4\" cols=\"80\">");
	templateBuilder.Append(signature.ToString());
	templateBuilder.Append("</textarea></td>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<th></th><td><button type=\"submit\" class=\"submit\" name=\"editsubmit\" id=\"editsubmit\" value=\"true\">提交</button></td>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("			</form>\r\n");

	}
	else
	{

	templateBuilder.Append("			<div class=\"hintinfo\">\r\n");
	templateBuilder.Append("			该用户不存在，请重新输入 \r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("	<!--禁止用户-->\r\n");

	if (operation=="banusersearch")
	{

	templateBuilder.Append("		<h1>禁止用户 - 搜索</h1>\r\n");
	templateBuilder.Append("		<form method=\"post\" action=\"modcp.aspx?operation=banusersearch&op=ban\">\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" name=\"operation\"/>\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=\"");
	templateBuilder.Append(op.ToString());
	templateBuilder.Append("\" name=\"op\"/>\r\n");
	templateBuilder.Append("			<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"禁止用户 - 搜索\">\r\n");
	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"username\">用户名</label></th><td><input name=\"username\" value=\"\" size=\"20\" type=\"text\" class=\"txt\"></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"Uid\">UID</label></th><td><input name=\"uid\" value=\"\" size=\"20\" type=\"text\" class=\"txt\"> [可选]</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th> </th><td><input type=\"submit\" id=\"Submit1\" value=\"提交\" name=\"Submit\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");

	if (op!="ban")
	{

	templateBuilder.Append("		<div class=\"hintinfo\">\r\n");
	templateBuilder.Append("			请首先输入用户名或者 UID 搜索用户，然后进行下一步。搜索 UID 比搜索用户名速度更快且准确\r\n");
	templateBuilder.Append("		</div>\r\n");

	}
	else
	{


	if (uid>0)
	{

	templateBuilder.Append("		<h3>禁止用户 - ");
	templateBuilder.Append(uname.ToString());
	templateBuilder.Append("</h3>\r\n");
	templateBuilder.Append("		<form method=\"post\" action=\"modcp.aspx?operation=banuser\">\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append(" name=\"operation\"/>\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=");
	templateBuilder.Append(uname.ToString());
	templateBuilder.Append(" name=\"username\" >\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=");
	templateBuilder.Append(uid.ToString());
	templateBuilder.Append(" name=\"uid\"/>\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"禁止用户 - ");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"uname\">用户名</label></th><td>");
	templateBuilder.Append(uname.ToString());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"Uid\">UID</label></th><td>");
	templateBuilder.Append(uid.ToString());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"curstatus\">当前状态</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (curstatus=="禁止发言"||curstatus=="禁止访问")
	{
	templateBuilder.Append(grouptitle.ToString());
	templateBuilder.Append(" (有效期至 ");
	templateBuilder.Append(groupexpiry.ToString());
	templateBuilder.Append(")\r\n");

	}
	else
	{

	templateBuilder.Append("正常状态\r\n");

	}	//end if

	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"bannew\">变更为</label></th><td>\r\n");

	if (grouptitle=="禁止发言")
	{

	templateBuilder.Append(" <input name=\"bannew\" value=\"4\" type=\"radio\" checked/> 禁止发言\r\n");

	}
	else
	{

	templateBuilder.Append("<input name=\"bannew\" value=\"4\" type=\"radio\"/>禁止发言\r\n");

	}	//end if


	if (grouptitle=="禁止访问")
	{

	templateBuilder.Append("<input name=\"bannew\" value=\"5\" type=\"radio\" checked/>禁止访问\r\n");

	}
	else
	{

	templateBuilder.Append("<input name=\"bannew\" value=\"5\" type=\"radio\"/>禁止访问\r\n");

	}	//end if

	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"banexpirynew\">期限</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("			<div class=\"float_typeid\">\r\n");
	templateBuilder.Append("				<select name=\"banexpirynew\" id=\"banexpirynew\">\r\n");
	templateBuilder.Append("					<option value=\"0\">永 久</option>\r\n");
	templateBuilder.Append("					<option value=\"1\">1天</option>\r\n");
	templateBuilder.Append("					<option value=\"3\">3天</option>\r\n");
	templateBuilder.Append("					<option value=\"5\">5天</option>\r\n");
	templateBuilder.Append("					<option value=\"7\">7天</option>\r\n");
	templateBuilder.Append("					<option value=\"14\">14天</option>\r\n");
	templateBuilder.Append("					<option value=\"30\">1个月</option>\r\n");
	templateBuilder.Append("					<option value=\"90\">3个月</option>\r\n");
	templateBuilder.Append("					<option value=\"180\">半年</option>\r\n");
	templateBuilder.Append("					<option value=\"365\">1年</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">loadselect(\"banexpirynew\");</");
	templateBuilder.Append("script>期限设置仅对禁止发言和禁止访问的操作有效\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"reason\">理由</label></th><td><textarea name=\"reason\" rows=\"4\" cols=\"80\" class=\"txtarea\">");
	templateBuilder.Append(reason.ToString());
	templateBuilder.Append("</textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th></th><td><button type=\"submit\" class=\"submit\" name=\"banusersubmit\" id=\"banusersubmit\">提交</button></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");

	}
	else
	{

	templateBuilder.Append("		<div class=\"hintinfo\">\r\n");
	templateBuilder.Append("		该用户不存在，请重新输入 \r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("	<!--用户权限-->\r\n");

	if (operation=="forumaccesslist")
	{

	templateBuilder.Append("		<h1>特殊用户</h1>\r\n");
	templateBuilder.Append("		<div class=\"datalist\">\r\n");
	templateBuilder.Append("		<table summary=\"\" cellpadding=\"0\" cellspacing=\"0\" class=\"datatable\">\r\n");
	templateBuilder.Append("		<thead>\r\n");
	templateBuilder.Append("		<tr class=\"colplural\">\r\n");
	templateBuilder.Append("			<td width=\"15%\">会员</td>\r\n");
	templateBuilder.Append("			<td width=\"15%\">版块</td>\r\n");
	templateBuilder.Append("			<th width=\"8%\">浏览主题</th>\r\n");
	templateBuilder.Append("			<th width=\"8%\">发表主题</th>\r\n");
	templateBuilder.Append("			<th width=\"8%\">回复主题</th>\r\n");
	templateBuilder.Append("			<th width=\"8%\">上传附件</th>\r\n");
	templateBuilder.Append("			<th width=\"8%\">下载附件</th>\r\n");
	templateBuilder.Append("			<td width=\"15%\">版主</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");

	if (foruminfolist.Count>0)
	{


	int filist__loop__id=0;
	foreach(ForumInfo filist in foruminfolist)
	{
		filist__loop__id++;


	int t__loop__id=0;
	foreach(string t in filist.Permuserlist.Split('|'))
	{
		t__loop__id++;

	templateBuilder.Append("			<tr>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(t.Split(',')[1].ToString().Trim());
	
	templateBuilder.Append("			<td><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">" + t.Split(',')[0].ToString().Trim() + "</a></td>\r\n");
	string aspxforumrewriteurl = this.ShowForumAspxRewrite(filist.Fid,0,filist.Rewritename);
	
	templateBuilder.Append("			<td><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxforumrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(filist.Name.ToString().Trim());
	templateBuilder.Append("</a></td>\r\n");
	int power = Convert.ToInt32(t.Split(',')[2].ToString().Trim());
	
	string viewpowerimg = GetPowerImg(power,Discuz.Entity.ForumSpecialUserPower.ViewByUser);
	
	templateBuilder.Append("			<td><img src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/");
	templateBuilder.Append(viewpowerimg.ToString());
	templateBuilder.Append("\" /></td>\r\n");
	string postpowerimg = GetPowerImg(power,Discuz.Entity.ForumSpecialUserPower.PostByUser);
	
	templateBuilder.Append("			<td><img src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/");
	templateBuilder.Append(postpowerimg.ToString());
	templateBuilder.Append("\" /></td>\r\n");
	string replypowerimg = GetPowerImg(power,Discuz.Entity.ForumSpecialUserPower.ReplyByUser);
	
	templateBuilder.Append("			<td><img src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/");
	templateBuilder.Append(replypowerimg.ToString());
	templateBuilder.Append("\" /></td>\r\n");
	string downloadpowerimg = GetPowerImg(power,Discuz.Entity.ForumSpecialUserPower.DownloadAttachByUser);
	
	templateBuilder.Append("			<td><img src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/");
	templateBuilder.Append(downloadpowerimg.ToString());
	templateBuilder.Append("\" /></td>\r\n");
	string postattachpowerimg = GetPowerImg(power,Discuz.Entity.ForumSpecialUserPower.PostAttachByUser);
	
	templateBuilder.Append("			<td><img src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/");
	templateBuilder.Append(postattachpowerimg.ToString());
	templateBuilder.Append("\" /></td>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(filist.Moderators.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end loop


	}	//end loop


	}
	else
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("			<td colspan=\"9\" align=\"left\">\r\n");
	templateBuilder.Append("			当前没有特殊权限用户\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if

	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td colspan=\"9\">\r\n");
	templateBuilder.Append("					<form method=\"post\" action=\"modcp.aspx?operation=forumaccesslist\" class=\"right\">\r\n");
	templateBuilder.Append("					<input name=\"formhash\" value=\"5ff4e742\" type=\"hidden\">\r\n");
	templateBuilder.Append("					用户名: <input name=\"suser\" value=\"\" onclick=\"this.value='';\" type=\"text\" class=\"txt\">\r\n");
	templateBuilder.Append("					<select name=\"forumid\">\r\n");
	templateBuilder.Append("						<option value=\"0\">全部</option>\r\n");
	templateBuilder.Append("						");
	templateBuilder.Append(forumliststr.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("					</select>\r\n");
	templateBuilder.Append("					&nbsp;\r\n");
	templateBuilder.Append("					<button type=\"submit\" id=\"Submit1\" name=\"Submit\">搜索</button>\r\n");
	templateBuilder.Append("					</form>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("		function chkallaccess(obj) {\r\n");
	templateBuilder.Append("			$('new_post').checked\r\n");
	templateBuilder.Append("				= $('new_post').disabled\r\n");
	templateBuilder.Append("				= $('new_reply').checked\r\n");
	templateBuilder.Append("				= $('new_reply').disabled\r\n");
	templateBuilder.Append("				= $('new_postattach').checked\r\n");
	templateBuilder.Append("				= $('new_postattach').disabled\r\n");
	templateBuilder.Append("				= $('new_getattach').checked\r\n");
	templateBuilder.Append("				= $('new_getattach').disabled\r\n");
	templateBuilder.Append("				= obj.checked;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		function disallaccess(obj) {\r\n");
	templateBuilder.Append("			$('new_view').checked\r\n");
	templateBuilder.Append("				= $('new_post').checked\r\n");
	templateBuilder.Append("				= $('new_post').checked\r\n");
	templateBuilder.Append("				= $('new_reply').checked\r\n");
	templateBuilder.Append("				= $('new_postattach').checked\r\n");
	templateBuilder.Append("				= $('new_getattach').checked\r\n");
	templateBuilder.Append("				= false;\r\n");
	templateBuilder.Append("			$('customaccess').disabled\r\n");
	templateBuilder.Append("				= $('new_view').disabled\r\n");
	templateBuilder.Append("				= $('new_view').disabled\r\n");
	templateBuilder.Append("				= $('new_post').disabled\r\n");
	templateBuilder.Append("				= $('new_post').disabled\r\n");
	templateBuilder.Append("				= $('new_reply').disabled\r\n");
	templateBuilder.Append("				= $('new_postattach').disabled\r\n");
	templateBuilder.Append("				= $('new_getattach').disabled\r\n");
	templateBuilder.Append("				= obj.checked;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<form method=\"post\" action=\"modcp.aspx?operation=forumaccessupdate\">\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" name=\"operation\"/>\r\n");
	templateBuilder.Append("		<h1>编辑用户权限</h1>\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"编辑用户权限\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"forumid\">版块选择</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				<select name=\"forumid\" id=\"forumid\">\r\n");
	templateBuilder.Append("					<option value=\"0\">全部</option>\r\n");
	templateBuilder.Append("					");
	templateBuilder.Append(forumliststr.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"new_user\">用户名</label></th>\r\n");
	templateBuilder.Append("				<td><input size=\"25\" value=\"\" id=\"new_user\" name=\"new_user\" type=\"text\" class=\"txt\"></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"deleteaccess\">权限变更</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<input value=\"0\" name=\"deleteaccess\" id=\"deleteaccess\" onclick=\"disallaccess(this)\" type=\"checkbox\"> 恢复默认\r\n");
	templateBuilder.Append("					<span id=\"customaccess\" style=\"border: 0px solid rgb(221, 221, 221); padding: 0px;\">\r\n");
	templateBuilder.Append("					<input value=\"1\" name=\"new_view\" id=\"new_view\" onclick=\"chkallaccess(this)\" type=\"checkbox\"> 禁止查看主题 \r\n");
	templateBuilder.Append("					<input value=\"2\" name=\"new_post\" id=\"new_post\" type=\"checkbox\"> 禁止发表主题\r\n");
	templateBuilder.Append("					<input value=\"4\" name=\"new_reply\" id=\"new_reply\" type=\"checkbox\"> 禁止发表回复\r\n");
	templateBuilder.Append("					<input value=\"8\" name=\"new_postattach\" id=\"new_postattach\" type=\"checkbox\"> 禁止上传附件\r\n");
	templateBuilder.Append("					<input value=\"16\" name=\"new_getattach\" id=\"new_getattach\" type=\"checkbox\"> 禁止下载附件\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th></th><td><input type=\"submit\" id=\"Submit1\" value=\"提交\" name=\"Submit\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th></th><td>\r\n");

	if (tip=="access_successful")
	{

	templateBuilder.Append("用户权限更新成功, 请继续操作\r\n");

	}	//end if

	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");
	templateBuilder.Append("		<div class=\"hintinfo\">\r\n");
	templateBuilder.Append("			通常情况下，用户在版块的权限是根据他的用户组决定的，此处您可以限制某个用户在某版块的权限。<br>注意: 看帖是基本权限，一旦禁止, 其他权限会同时进行禁止。<br>图例说明: <img src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/access_normal.gif\"> &nbsp; 默认权限&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/access_allow.gif\"> &nbsp;强制允许\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if

	templateBuilder.Append("	<!--禁止IP-->	\r\n");

	if (operation=="showbannedlist")
	{

	templateBuilder.Append("		<form method=\"post\" action=\"modcp.aspx?operation=ipban\" class=\"datalist\">\r\n");
	templateBuilder.Append("		<h1>禁止 IP</h1>\r\n");
	templateBuilder.Append("		<input type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" name=\"operation\"/>\r\n");
	templateBuilder.Append("		<table cellpadding=\"0\" cellspacing=\"0\" class=\"datatable\">\r\n");
	templateBuilder.Append("		<thead>\r\n");
	templateBuilder.Append("			<tr class=\"colplural\">\r\n");
	templateBuilder.Append("				<th width=\"8%\"><input class=\"checkbox\" id=\"chkall\" name=\"chkall\" onclick=\"checkall(this.form)\" type=\"checkbox\">删除</th>\r\n");
	templateBuilder.Append("				<th>IP 地址</th>\r\n");
	templateBuilder.Append("				<th width=\"20%\">地理位置</th>\r\n");
	templateBuilder.Append("				<th width=\"10%\">操作者</th>\r\n");
	templateBuilder.Append("				<th width=\"15%\">起始时间</th>\r\n");
	templateBuilder.Append("				<th width=\"15%\">结束时间</th>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");

	if (counts>0)
	{

	templateBuilder.Append("		<tbody>\r\n");

	int showbannedip__loop__id=0;
	foreach(IpInfo showbannedip in showbannediplist)
	{
		showbannedip__loop__id++;

	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td>\r\n");

	if (showbannedip.Username!=username)
	{

	templateBuilder.Append("<input class=\"checkbox\" id=\"chkbanip\" name=\"chkbanip\" disabled=\"disabled\" value=");
	templateBuilder.Append(showbannedip.Id.ToString().Trim());
	templateBuilder.Append(" type=\"checkbox\">\r\n");

	}
	else
	{

	templateBuilder.Append("<input class=\"checkbox\" id=\"chkbanip\" name=\"chkbanip\" value=");
	templateBuilder.Append(showbannedip.Id.ToString().Trim());
	templateBuilder.Append(" type=\"checkbox\">\r\n");

	}	//end if

	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			<td>");
	templateBuilder.Append(showbannedip.Ip1.ToString().Trim());
	templateBuilder.Append(".");
	templateBuilder.Append(showbannedip.Ip2.ToString().Trim());
	templateBuilder.Append(".");
	templateBuilder.Append(showbannedip.Ip3.ToString().Trim());
	templateBuilder.Append(".");
	templateBuilder.Append(showbannedip.Ip4.ToString().Trim());
	templateBuilder.Append("</th>\r\n");
	templateBuilder.Append("			<td>");
	templateBuilder.Append(showbannedip.Location.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			<td>");
	templateBuilder.Append(showbannedip.Username.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			<td class=\"time\">");
	templateBuilder.Append(showbannedip.Dateline.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			<td><input type=\"text\" name=\"expiration\" id=\"expiration\" size=\"15\" value=");
	templateBuilder.Append(showbannedip.Expiration.ToString().Trim());
	templateBuilder.Append("></input><input type=\"hidden\" name =\"hiddenexpiration\" id =\"hiddenexpiration\" value=");
	templateBuilder.Append(showbannedip.Expiration.ToString().Trim());
	templateBuilder.Append("><input type=\"hidden\" name =\"hiddenid\" id =\"hiddenid\" value=");
	templateBuilder.Append(showbannedip.Id.ToString().Trim());
	templateBuilder.Append("></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");

	}	//end loop

	templateBuilder.Append("		</tbody>\r\n");

	}	//end if

	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("			<div class=\"pages\">");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("		<h1>新增要禁止IP</h1>\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"新增要禁止IP\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>ip地址</th>\r\n");
	templateBuilder.Append("			<td><input name=\"ip1new\" value=\"\" size=\"1\" maxlength=\"10\" type=\"text\" class=\"txt\"> .\r\n");
	templateBuilder.Append("				<input name=\"ip2new\" value=\"\" size=\"1\" maxlength=\"10\" type=\"text\" class=\"txt\"> .\r\n");
	templateBuilder.Append("				<input name=\"ip3new\" value=\"\" size=\"1\" maxlength=\"10\" type=\"text\" class=\"txt\"> .\r\n");
	templateBuilder.Append("				<input name=\"ip4new\" value=\"\" size=\"1\" maxlength=\"10\" type=\"text\" class=\"txt\">\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<th>期限</th><td><input name=\"validitynew\" value=\"30\" size=\"3\" type=\"text\" class=\"txt\"> 天</td>\r\n");
	templateBuilder.Append("			<th> </th><td><input type=\"submit\" id=\"Submit1\" value=\"提交\" name=\"Submit\"/></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");

	}	//end if

	templateBuilder.Append("	<!--审核回复-->	\r\n");

	if (operation=="auditpost" && admingroupinfo.Allowmodpost==1)
	{

	templateBuilder.Append("		<h1>审核回复范围选择</h1>\r\n");
	templateBuilder.Append("		<form action=\"\" method=\"get\">\r\n");
	templateBuilder.Append("		<input name=\"operation\" type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"审核回复范围选择\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"forumid\">版块选择</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"forumid\" id=\"forumid\">\r\n");
	templateBuilder.Append("				<option value=\"0\">全部</option>\r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(forumliststr.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				<select name=\"tablelist\" id=\"tablelist\">\r\n");
	templateBuilder.Append("				<option value=\"\"></option>\r\n");

	int table__loop__id=0;
	foreach(DataRow table in posttablelist.Rows)
	{
		table__loop__id++;

	templateBuilder.Append("				<option value=\"" + table["id"].ToString().Trim() + "\" \r\n");

	if (tableid.ToString()==table["id"].ToString().Trim())
	{

	templateBuilder.Append("selected=\"selected\"\r\n");

	}	//end if

	templateBuilder.Append(">分表" + table["id"].ToString().Trim() + "</option>\r\n");

	}	//end loop

	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"filter\">帖子范围</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("			<div class=\"float_typeid\">\r\n");
	templateBuilder.Append("				<select name=\"filter\" id=\"filter\">\r\n");
	templateBuilder.Append("					<option value=\"1\" \r\n");

	if (filter==1)
	{

	templateBuilder.Append("selected=\"selected\"\r\n");

	}	//end if

	templateBuilder.Append(">未审核的回复</option>\r\n");
	templateBuilder.Append("					<option value=\"-3\" \r\n");

	if (filter==-3)
	{

	templateBuilder.Append("selected=\"selected\"\r\n");

	}	//end if

	templateBuilder.Append(">已忽略的回复</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">loadselect(\"filter\");</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th/><th><input type=\"submit\" value=\"提交\"/></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");

	if (counts!=0)
	{

	templateBuilder.Append("		<form action=\"\" method=\"post\" name=\"auditpost_form\" id=\"auditpost_form\">\r\n");
	templateBuilder.Append("		<input name=\"tableid\" type=\"hidden\" value=\"");
	templateBuilder.Append(tableid.ToString());
	templateBuilder.Append("\" />\r\n");

	int post__loop__id=0;
	foreach(PostInfo post in postlist)
	{
		post__loop__id++;

	templateBuilder.Append("		<input name=\"operation\" type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" />	\r\n");
	templateBuilder.Append("		<input name=\"pidlist\" type=\"hidden\" value=\"");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<input name=\"tidlist\" type=\"hidden\" value=\"");
	templateBuilder.Append(post.Tid.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<input name=\"fidlist\" type=\"hidden\" value=\"");
	templateBuilder.Append(post.Fid.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(post.Tid,0);
	
	string aspxuserrewriteurl = this.UserInfoAspxRewrite(post.Posterid);
	
	templateBuilder.Append("		<h1><span class=\"headactions\"><a href=\"");
	templateBuilder.Append(aspxuserrewriteurl.ToString());
	templateBuilder.Append("\" title=\"");
	templateBuilder.Append(post.Forumname.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(post.Poster.ToString().Trim());
	templateBuilder.Append("</a>  发表于 <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" title=\"");
	templateBuilder.Append(post.Forumname.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(post.Postdatetime.ToString().Trim());
	templateBuilder.Append("</a></span>");
	templateBuilder.Append(forumnav.ToString());
	templateBuilder.Append("»<b>");
	templateBuilder.Append(post.Title.ToString().Trim());
	templateBuilder.Append("</b></h1>\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"审核回复范围选择\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td colspan=\"2\">\r\n");
	templateBuilder.Append("				<div style=\"overflow-y: auto; overflow-x: hidden; height: 120px; width: 100%;\">");
	templateBuilder.Append(post.Message.ToString().Trim());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"pm_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\">理由</label></th><td><input type=\"text\" size=\"80\" value=\"\" name=\"pm_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" id=\"pm_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"mod_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\">操作</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("			<input type=\"radio\" id=\"mod_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" value=\"validate\" name=\"mod_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" class=\"radio\"/>通过\r\n");
	templateBuilder.Append("			<input type=\"radio\" class=\"radio\" value=\"ignore\" id=\"mod_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" name=\"mod_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" checked=\"\" />忽略\r\n");
	templateBuilder.Append("			<input type=\"radio\" id=\"mod_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" value=\"delete\" name=\"mod_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" class=\"radio\"/>删除\r\n");
	templateBuilder.Append("			<input value=\"单条操作\" id=\"modbutton_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" name=\"modbutton_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" class=\"submit\" type=\"button\" onclick=\"auditpost(");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append(",this.form.id,");
	templateBuilder.Append(post.Tid.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(tableid.ToString());
	templateBuilder.Append(")\">\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");

	}	//end loop

	templateBuilder.Append("		<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("			<div class=\"pages\">");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("			<span class=\"postbtn\"><input type=\"submit\" value=\"批量审核\" /></span>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		</form>		\r\n");

	}
	else
	{

	templateBuilder.Append("			<div class=\"hintinfo\">对不起，没有找到需要审核的回复。</div>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("<!--审核主题-->\r\n");

	if (operation=="audittopic" && admingroupinfo.Allowmodpost==1)
	{

	templateBuilder.Append("		<h1>审核主题范围选择</h1>\r\n");
	templateBuilder.Append("		<form action=\"\" method=\"get\">\r\n");
	templateBuilder.Append("		<input name=\"operation\" type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"审核主题范围选择\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"forumid\">版块选择</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"forumid\" id=\"forumid\">\r\n");
	templateBuilder.Append("					<option value=\"0\">全部</option>\r\n");
	templateBuilder.Append("					");
	templateBuilder.Append(forumliststr.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"filter\">帖子范围</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("			<div class=\"float_typeid\">\r\n");
	templateBuilder.Append("				<select name=\"filter\" id=\"filter\">\r\n");
	templateBuilder.Append("					<option value=\"-2\" \r\n");

	if (filter==-2)
	{

	templateBuilder.Append("selected=\"selected\"\r\n");

	}	//end if

	templateBuilder.Append(">未审核的主题</option>\r\n");
	templateBuilder.Append("					<option value=\"-3\" \r\n");

	if (filter==-3)
	{

	templateBuilder.Append("selected=\"selected\"\r\n");

	}	//end if

	templateBuilder.Append(">已忽略的主题</option>					    \r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">loadselect(\"filter\");</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		 </tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th/><th><input type=\"submit\" value=\"提交\"/></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");

	if (counts!=0)
	{

	templateBuilder.Append("		<form action=\"#\" method=\"post\" name=\"audittopic_form\" id=\"audittopic_form\">\r\n");
	templateBuilder.Append("		<input name=\"operation\" type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<h1><a href=\"");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(forumname.ToString());
	templateBuilder.Append("</a></h1>\r\n");
	templateBuilder.Append("		<div class=\"threadlist\">\r\n");
	templateBuilder.Append("			<table cellspacing=\"0\" cellpadding=\"0\" id=\"110\" summary=\"110\">\r\n");
	templateBuilder.Append("				<thead class=\"category\">\r\n");
	templateBuilder.Append("					<tr>\r\n");
	templateBuilder.Append("						<td>标题</td>\r\n");
	templateBuilder.Append("						<td class=\"author\">作者</td>\r\n");
	templateBuilder.Append("						<td class=\"nums\">回复/查看</td>\r\n");
	templateBuilder.Append("						<td class=\"lastpost\">最后发表</td>\r\n");
	templateBuilder.Append("					</tr>\r\n");
	templateBuilder.Append("				</thead>					\r\n");

	int topic__loop__id=0;
	foreach(TopicInfo topic in topiclist)
	{
		topic__loop__id++;

	templateBuilder.Append("				<tbody>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("				   <td class=\"common\">\r\n");
	templateBuilder.Append("						<input name=\"topicidlist\" type=\"hidden\" value=\"");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("						<input name=\"fidlist\" type=\"hidden\" value=\"");
	templateBuilder.Append(topic.Fid.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(topic.Tid,0);
	
	templateBuilder.Append("						<a href=\"javascript:void(0);\" onclick=\"getpostinfo(");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(")\" title=\"");
	templateBuilder.Append(topic.Forumname.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("					</td>\r\n");
	templateBuilder.Append("					<td class=\"author\">\r\n");
	templateBuilder.Append("						<cite>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(topic.Posterid);
	
	templateBuilder.Append("							<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(topic.Poster.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("						</cite>\r\n");
	templateBuilder.Append("						<em> ");
	templateBuilder.Append(topic.Postdatetime.ToString().Trim());
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("					</td>\r\n");
	templateBuilder.Append("					<td class=\"nums\"><strong>");
	templateBuilder.Append(topic.Replies.ToString().Trim());
	templateBuilder.Append("</strong> / <em>");
	templateBuilder.Append(topic.Views.ToString().Trim());
	templateBuilder.Append("</em></td>\r\n");
	templateBuilder.Append("					<td class=\"lastpost\">							\r\n");
	templateBuilder.Append("						<em>\r\n");
	templateBuilder.Append("						<a href=\"showtopic.aspx?topicid=");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("&page=end#lastpost\">");
	templateBuilder.Append(topic.Lastpost.ToString().Trim());
	templateBuilder.Append("</a></em>\r\n");
	templateBuilder.Append("						<cite>by\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(topic.Lastposterid);
	
	templateBuilder.Append("							<a target=\"_blank\" href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(topic.Lastposter.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("						</cite>\r\n");
	templateBuilder.Append("					</td>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("				</tbody>\r\n");
	templateBuilder.Append("				<tbody id=\"msgtbody_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" style=\"display:none\">\r\n");
	templateBuilder.Append("					<tr><td colspan=5><div id=\"msg_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\"></div></td></tr>\r\n");
	templateBuilder.Append("				</tbody>\r\n");
	templateBuilder.Append("				<tbody>\r\n");
	templateBuilder.Append("					<tr>\r\n");
	templateBuilder.Append("					  <td colspan=\"5\" style=\"padding:0;\">\r\n");
	templateBuilder.Append("						<div class=\"footoperation\" style=\"border: 0pt none; padding-left:4px;\">\r\n");
	templateBuilder.Append("							<b>理由: </b><input type=\"text\" name=\"pm_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" size=\"80\" id=\"pm_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" class=\"txt\"/>     \r\n");
	templateBuilder.Append("							<b>操作: </b><input type=\"radio\" class=\"radio\" value=\"validate\" id=\"mod_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" name=\"mod_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\"/>通过\r\n");
	templateBuilder.Append("							<input type=\"radio\" class=\"radio\" value=\"ignore\" id=\"mod_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" name=\"mod_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" checked=\"\"/>忽略\r\n");
	templateBuilder.Append("							<input type=\"radio\" class=\"radio\" name=\"mod_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" value=\"delete\" id=\"mod_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\"/>删除\r\n");
	templateBuilder.Append("							<input value=\"单条操作\" id=\"modbutton_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" name=\"modbutton_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" type=\"button\" onclick=\"javascript:audittopic(");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(",getradiovalue('mod_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("'),this.form.id,$('pm_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("').value)\">\r\n");
	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("					  </td>\r\n");
	templateBuilder.Append("					</tr>\r\n");
	templateBuilder.Append("				</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("		</div>		\r\n");
	templateBuilder.Append("		<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("			<div class=\"pages\">");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("			<span class=\"postbtn\"><input type=\"submit\" value=\"批量审核\" /></span>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		</form>\r\n");

	}
	else
	{

	templateBuilder.Append("		<div class=\"hintinfo\">对不起，没有找到需要审核的主题。</div>\r\n");

	}	//end if


	}	//end if


	if (operation=="editforum")
	{

	templateBuilder.Append("		<h1>论坛版块选择</h1>\r\n");
	templateBuilder.Append("		<form method=\"get\" action=\"\">\r\n");
	templateBuilder.Append("		<input name=\"operation\" type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"论坛版块选择\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>版块</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"forumid\" id=\"forumid\">\r\n");
	templateBuilder.Append("					<option value=\"0\">全部</option>\r\n");
	templateBuilder.Append("					");
	templateBuilder.Append(forumliststr.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td><input type=\"submit\" id=\"Submit1\" value=\"提交\"/></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");
	templateBuilder.Append("		<hr class=\"solidline\"/>\r\n");

	if (forumid!=0)
	{

	templateBuilder.Append("		<h1>版块编辑 - ");
	templateBuilder.Append(foruminfo.Name.ToString().Trim());
	templateBuilder.Append("</h1>\r\n");
	templateBuilder.Append("		<form method=\"post\" action=\"?operation=updateforum\">\r\n");
	templateBuilder.Append("		<input name=\"forumid\" type=\"hidden\" value=\"");
	templateBuilder.Append(foruminfo.Fid.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"版块编辑\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	 aspxrewriteurl = this.ShowForumAspxRewrite(foruminfo.Fid,0);
	
	templateBuilder.Append("				<th>版块</th><td>");
	templateBuilder.Append(foruminfo.Name.ToString().Trim());
	templateBuilder.Append(" [<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">查看</a>]</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>版块描述<br>\r\n");
	templateBuilder.Append("				<br>Html 代码 <b>支持</b><br>不支持自定义 Discuz! 代码<br><br>\r\n");
	templateBuilder.Append("				<a href=\"###\" onclick=\"javascript:$('descpreview').innerHTML=$('descnew').value\">预览</a>\r\n");
	templateBuilder.Append("				</th>\r\n");
	templateBuilder.Append("				<td><div id=\"descpreview\"></div><textarea id=\"descnew\" name=\"descnew\" rows=\"8\" cols=\"80\" class=\"txtarea\">");
	templateBuilder.Append(foruminfo.Description.ToString().Trim());
	templateBuilder.Append("</textarea>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>本版规则<br><br>Html 代码 <b>支持</b><br>不支持自定义 Discuz! 代码<br><br><a href=\"###\" onclick=\"javascript:$('rulespreview').innerHTML=$('rulesnew').value\">预览</a></th>\r\n");
	templateBuilder.Append("				<td><div id=\"rulespreview\"></div>\r\n");

	if (alloweditrules)
	{

	templateBuilder.Append("				<textarea id=\"rulesnew\" name=\"rulesnew\" rows=\"8\" cols=\"80\" class=\"txtarea\">\r\n");

	}
	else
	{

	templateBuilder.Append("				<textarea id=\"rulesnew\" name=\"rulesnew\" rows=\"8\" cols=\"80\" disabled readonly class=\"txtarea\">\r\n");

	}	//end if
	templateBuilder.Append(foruminfo.Rules.ToString().Trim());
	templateBuilder.Append("</textarea></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th></th><td><button type=\"submit\" id=\"Submit1\">提交</button></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");

	}	//end if


	}	//end if


	if (operation=="logs" && admingroupinfo.Allowviewlog==1)
	{

	templateBuilder.Append("		<h1>管理日志搜索</h1>\r\n");
	templateBuilder.Append("		<form method=\"get\" action=\"\">\r\n");
	templateBuilder.Append("		<input name=\"operation\" type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"版块编辑\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("			<th>关键字</label>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"keyword\" value=\"\" size=\"60\" type=\"text\" class=\"txt\">每页显示条数\r\n");
	templateBuilder.Append("				<input name=\"lpp\" value=\"20\" size=\"4\" type=\"text\" class=\"txt\">\r\n");
	templateBuilder.Append("				<button type=\"submit\" id=\"searchsubmit\" value=\"true\">提交</button>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");
	templateBuilder.Append("		<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("		<h1>管理日志列表</h1>\r\n");
	templateBuilder.Append("		<div class=\"datalist\">\r\n");
	templateBuilder.Append("		<table summary=\"\" cellpadding=\"0\" cellspacing=\"0\" class=\"datatable\">\r\n");
	templateBuilder.Append("		<thead>\r\n");
	templateBuilder.Append("		<tr class=\"colplural\">\r\n");
	templateBuilder.Append("			<th width=\"15%\">时间</th>\r\n");
	templateBuilder.Append("			<th width=\"15%\">用户名</th>\r\n");
	templateBuilder.Append("			<th width=\"10%\">管理组</th>\r\n");
	templateBuilder.Append("			<td width=\"10%\">IP</td>\r\n");
	templateBuilder.Append("			<th width=\"10%\">操作</th>\r\n");
	templateBuilder.Append("			<td width=\"15%\">版块</td>\r\n");
	templateBuilder.Append("			<td width=\"5%\">其他</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");
	templateBuilder.Append("		<tbody>\r\n");

	int logs__loop__id=0;
	foreach(DataRow logs in moderatorLogs.Rows)
	{
		logs__loop__id++;

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td class=\"time\">" + logs["postdatetime"].ToString().Trim() + "</td>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(logs["moderatoruid"].ToString().Trim());
	
	templateBuilder.Append("				<td><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\"><b>" + logs["moderatorname"].ToString().Trim() + "</b></a></td>\r\n");
	templateBuilder.Append("				<td>" + logs["grouptitle"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("				<td>" + logs["ip"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("				<td>" + logs["actions"].ToString().Trim() + "</td>\r\n");
	 aspxrewriteurl = this.ShowForumAspxRewrite(logs["fid"].ToString().Trim(),0);
	
	templateBuilder.Append("				<td><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">" + logs["fname"].ToString().Trim() + "</a></td>\r\n");
	templateBuilder.Append("				<td><a href=\"###\" \r\n");

	if (logs["reason"].ToString().Trim()!="")
	{

	templateBuilder.Append("onmouseover=\"showMenu(this.id)\"\r\n");

	}	//end if

	templateBuilder.Append(" id=\"" + logs__loop__id.ToString() + "\">详情</a></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<div id=\"" + logs__loop__id.ToString() + "_menu\" class=\"popupmenu_popup\" style=\"display: none;\">\r\n");
	templateBuilder.Append("			<ul>\r\n");
	templateBuilder.Append("				" + logs["reason"].ToString().Trim() + "\r\n");
	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end loop

	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("			<div class=\"pages\">\r\n");
	templateBuilder.Append("			");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if

	templateBuilder.Append("		<!--主题关注-->\r\n");

	if (operation=="attention")
	{

	templateBuilder.Append("		<h1>论坛版块选择</h1>\r\n");
	templateBuilder.Append("		<form action=\"\" method=\"get\">\r\n");
	templateBuilder.Append("		<input name=\"operation\" type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"keyword\">关键字</label></th><td><input name=\"keyword\" value=\"\" size=\"45\" type=\"text\" class=\"txt\"></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"forumid\">版块选择</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("			<select name=\"forumid\" id=\"forumid\">\r\n");
	templateBuilder.Append("				<option value=\"0\">全部</option>\r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(forumliststr.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</select>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th> </th><td><button type=\"submit\" value=\"提交\">提交</button></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");

	if (counts>0)
	{

	templateBuilder.Append("		<form action=\"\" method=\"post\">\r\n");
	templateBuilder.Append("		<h1>主题关注列表</h1>\r\n");
	templateBuilder.Append("		<input name=\"forumid\" type=\"hidden\" value=\"");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<input name=\"operation\" type=\"hidden\" value=\"");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<div class=\"datalist\">\r\n");
	templateBuilder.Append("		<table summary=\"\" cellpadding=\"0\" cellspacing=\"0\" class=\"datatable\">\r\n");
	templateBuilder.Append("		<thead>\r\n");
	templateBuilder.Append("		<tr class=\"colplural\">\r\n");
	templateBuilder.Append("			<th style=\"text-align:left;\"><input type=\"checkbox\" name=\"chkall\" onclick=\"checkall(this.form, 'topicid')\"/>标题</th>\r\n");
	templateBuilder.Append("			<th width=\"10%\">作者</th>\r\n");
	templateBuilder.Append("			<th width=\"20%\">发布时间</th>\r\n");
	templateBuilder.Append("			<td width=\"20%\">最后发表</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");
	templateBuilder.Append("		<tbody>\r\n");

	int topic__loop__id=0;
	foreach(TopicInfo topic in topiclist)
	{
		topic__loop__id++;

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td class=\"datatitle\">\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(topic.Tid,0);
	
	templateBuilder.Append("				<input type=\"checkbox\" id=\"topicid\" name=\"topicid\" value=\"");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\"/><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("</a></td>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(topic.Posterid);
	
	templateBuilder.Append("				<td><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(topic.Poster.ToString().Trim());
	templateBuilder.Append("</a></td>\r\n");
	templateBuilder.Append("				<td class=\"time\">");
	templateBuilder.Append(topic.Postdatetime.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("				<td class=\"time\">");
	templateBuilder.Append(topic.Lastpost.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end loop

	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("			<div class=\"pages\">\r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"float_typeid\">\r\n");
	templateBuilder.Append("				<select name=\"disattentiontype\" id=\"disattentiontype\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected=\"selected\">所选主题</option>\r\n");
	templateBuilder.Append("				  <option value=\"7\">一星期前</option>\r\n");
	templateBuilder.Append("				  <option value=\"30\">一月前</option>\r\n");
	templateBuilder.Append("				  <option value=\"365\">一年前</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">loadselect(\"disattentiontype\");</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			<input type=\"submit\" value=\"取消关注\">\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		</form>	\r\n");

	}
	else
	{

	templateBuilder.Append("		<div class=\"hintinfo\">对不起，没有找到需要关注的主题。</div>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

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
