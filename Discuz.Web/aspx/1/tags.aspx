<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.tags" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:50.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:50. 
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



	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var aspxrewrite = ");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("	<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <a href=\"tags.aspx\">标签</a>\r\n");

	if (page_err==0 && tagid>0)
	{

	templateBuilder.Append(" &raquo; ");
	templateBuilder.Append(tag.Tagname.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (page_err==0)
	{

	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("	<div class=\"main\">\r\n");

	if (tagid>0)
	{

	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("		function changeTab(obj)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			if (obj.className == 'current')\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				obj.className = '';\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			else\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				obj.className = 'currentt';\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<div class=\"cm_header itemtitle s_clear\">\r\n");
	templateBuilder.Append("	<ul>\r\n");
	templateBuilder.Append("		<li id=\"tab_forum\" \r\n");

	if (listtype=="topic")
	{

	templateBuilder.Append("class=\"current\" \r\n");

	}
	else
	{

	templateBuilder.Append(" onmouseout=\"changeTab(this)\" onmouseover=\"changeTab(this)\" href=\"\r\n");

	if (config.Aspxrewrite==1)
	{

	templateBuilder.Append("topictag-");
	templateBuilder.Append(tagid.ToString());
	templateBuilder.Append(".aspx\r\n");

	}
	else
	{

	templateBuilder.Append("tags.aspx?tagid=");
	templateBuilder.Append(tagid.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"###\"><span>主题</span></a></li>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("		<li id=\"tab_space\" \r\n");

	if (listtype=="spacepost")
	{

	templateBuilder.Append("class=\"current\" \r\n");

	}
	else
	{

	templateBuilder.Append(" onmouseout=\"changeTab(this)\" onmouseover=\"changeTab(this)\" href=\"\r\n");

	if (config.Aspxrewrite==1)
	{

	templateBuilder.Append("spacetag-");
	templateBuilder.Append(tagid.ToString());
	templateBuilder.Append(".aspx\r\n");

	}
	else
	{

	templateBuilder.Append("tags.aspx?tagid=");
	templateBuilder.Append(tagid.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"###\"><span>空间</span></a></li>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("		<li id=\"tab_album\" \r\n");

	if (listtype=="photo")
	{

	templateBuilder.Append("class=\"current\" \r\n");

	}
	else
	{

	templateBuilder.Append(" onmouseout=\"changeTab(this)\" onmouseover=\"changeTab(this)\" href=\"\r\n");

	if (config.Aspxrewrite==1)
	{

	templateBuilder.Append("phototag-");
	templateBuilder.Append(tagid.ToString());
	templateBuilder.Append(".aspx\r\n");

	}
	else
	{

	templateBuilder.Append("tags.aspx?tagid=");
	templateBuilder.Append(tagid.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"###\"><span>相册</span></a></li>\r\n");

	}	//end if


	if (config.Enablemall==1)
	{

	templateBuilder.Append("		<li id=\"tab_mall\" \r\n");

	if (listtype=="mall")
	{

	templateBuilder.Append("class=\"current\" \r\n");

	}
	else
	{

	templateBuilder.Append(" onmouseout=\"changeTab(this)\" onmouseover=\"changeTab(this)\" href=\"\r\n");

	if (config.Aspxrewrite==1)
	{

	templateBuilder.Append("malltag-");
	templateBuilder.Append(tagid.ToString());
	templateBuilder.Append(".aspx\r\n");

	}
	else
	{

	templateBuilder.Append("tags.aspx?tagid=");
	templateBuilder.Append(tagid.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"###\"><span>商城</span></a></li>\r\n");

	}	//end if

	templateBuilder.Append("	</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");

	if (listtype=="topic")
	{


	if (topiccount==0)
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

	templateBuilder.Append("		<div class=\"threadlist taglist\">\r\n");
	templateBuilder.Append("		<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"主题标签\">\r\n");
	templateBuilder.Append("		<thead>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th style=\"padding:4px 0; text-align:center;\">标题</th>\r\n");
	templateBuilder.Append("			<th>所在版块</th>\r\n");
	templateBuilder.Append("			<td class=\"author\">作者</td>\r\n");
	templateBuilder.Append("			<td class=\"nums\">回复 / 查看</td>\r\n");
	templateBuilder.Append("			<td class=\"lastpost\"><cite>最后发表</cite></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");

	int topic__loop__id=0;
	foreach(TopicInfo topic in topiclist)
	{
		topic__loop__id++;

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th class=\"subject\">\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(topic.Tid,0);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("			</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	 aspxrewriteurl = this.ShowForumAspxRewrite(topic.Fid,0);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(topic.Forumname.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td class=\"author\">\r\n");
	templateBuilder.Append("				<cite>\r\n");

	if (Utils.StrToInt(topic.Posterid, 0)==-1)
	{

	templateBuilder.Append("					游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(topic.Posterid);
	
	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(topic.Poster.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("				<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(topic.Postdatetime).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td class=\"nums\">");
	templateBuilder.Append(topic.Replies.ToString().Trim());
	templateBuilder.Append(" / ");
	templateBuilder.Append(topic.Views.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("			<td class=\"lastpost\">\r\n");
	templateBuilder.Append("				<em><a href=\"showtopic.aspx?topicid=");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("&page=end\" target=\"_blank\">\r\n");
	templateBuilder.Append(Convert.ToDateTime(topic.Lastpost).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</a></em>\r\n");
	templateBuilder.Append("				<cite>by\r\n");

	if (topic.Lastposterid==-1)
	{

	templateBuilder.Append("					游客\r\n");

	}
	else
	{

	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(UserInfoAspxRewrite(topic.Lastposterid).ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(topic.Lastposter.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("				</cite>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("		</table>			\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("			<div class=\"pages\">\r\n");
	templateBuilder.Append("				<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if


	}
	else if (listtype=="spacepost")
	{


	if (spacepostcount==0)
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

	templateBuilder.Append("		<div class=\"threadlist taglist\">\r\n");
	templateBuilder.Append("		<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"日志标签结果\">\r\n");
	templateBuilder.Append("		<thead>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th style=\"padding:4px 0; text-align:center;\">标题</th>\r\n");
	templateBuilder.Append("			<td class=\"author\">作者</td>\r\n");
	templateBuilder.Append("			<td class=\"nums\">回复 / 查看</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");

	int post__loop__id=0;
	foreach(SpacePostInfo post in spacepostlist)
	{
		post__loop__id++;

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th class=\"subject\">\r\n");
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=");
	templateBuilder.Append(post.Postid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(post.Title.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("			</th>\r\n");
	templateBuilder.Append("			<td class=\"author\">\r\n");
	templateBuilder.Append("				<cite>\r\n");

	if (Utils.StrToInt(post.Uid, 0)==-1)
	{

	templateBuilder.Append("					游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(post.Uid);
	
	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(post.Author.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("				<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(post.Postdatetime).ToString("yyyy.MM.dd HH:mm"));
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td class=\"nums\"><em>");
	templateBuilder.Append(post.Commentcount.ToString().Trim());
	templateBuilder.Append("</em> / ");
	templateBuilder.Append(post.Views.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("			<div class=\"pages\">\r\n");
	templateBuilder.Append("				<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if


	}
	else if (listtype=="photo")
	{


	if (photocount==0)
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

	templateBuilder.Append("			<div class=\"albumbox\">\r\n");
	templateBuilder.Append("			<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"相册标签结果\">\r\n");
	int photoindex = 1;
	

	int photo__loop__id=0;
	foreach(PhotoInfo photo in photolist)
	{
		photo__loop__id++;


	if (photoindex==1)
	{

	templateBuilder.Append("			<tr>\r\n");

	}	//end if

	templateBuilder.Append("			<td style=\"width:25%; text-align:center;\">\r\n");
	templateBuilder.Append("				<div>\r\n");
	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(photo.Filename.ToString().Trim());
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\" title=\"");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\" /></a>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<p>\r\n");
	templateBuilder.Append("					<script language=\"javascript\" type=\"text/javascript\">\r\n");
	templateBuilder.Append("						ShowFormatBytesStr(");
	templateBuilder.Append(photo.Filesize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("					</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				</p>\r\n");
	templateBuilder.Append("				<p><a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("</a></p>\r\n");
	templateBuilder.Append("			</td>													\r\n");

	if (photoindex==4)
	{

	templateBuilder.Append("			</tr>\r\n");
	 photoindex = 1;
	

	}
	else
	{

	 photoindex = photoindex+1;
	

	}	//end if


	}	//end loop

	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("				<div class=\"pages\">\r\n");
	templateBuilder.Append("					<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end if


	}
	else if (listtype=="mall")
	{


	if (goodscount==0)
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

	templateBuilder.Append("				<div class=\"mallbox\">\r\n");
	templateBuilder.Append("				<table cellSpacing=\"0\" cellPadding=\"0\" summary=\"商品标签结果\">\r\n");
	templateBuilder.Append("					<thead>\r\n");
	templateBuilder.Append("					<tr>\r\n");
	templateBuilder.Append("						<th>&nbsp;</th>\r\n");
	templateBuilder.Append("						<th>商品名称/卖家</th>\r\n");
	templateBuilder.Append("						<th>价格</th>\r\n");
	templateBuilder.Append("						<th>运费</th>\r\n");
	templateBuilder.Append("						<th>所在地</th>\r\n");
	templateBuilder.Append("						<th>截至日期</th>\r\n");
	templateBuilder.Append("					</tr>\r\n");
	templateBuilder.Append("					</thead>\r\n");

	int goodsinfo__loop__id=0;
	foreach(Goodsinfo goodsinfo in goodslist)
	{
		goodsinfo__loop__id++;

	templateBuilder.Append("					<tbody>\r\n");
	templateBuilder.Append("					<tr>\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(goodsinfo.Goodsid);
	
	templateBuilder.Append("						<td class=\"shoppicture\">\r\n");
	templateBuilder.Append("							 <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");

	if (goodsinfo.Goodspic=="")
	{

	templateBuilder.Append("							<img width=\"80\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/NoPhoto.jpg\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("							<img width=\"80\" src=\"upload/");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}	//end if

	templateBuilder.Append("							</a>\r\n");
	templateBuilder.Append("						</td>		        \r\n");
	templateBuilder.Append("						<th>\r\n");
	templateBuilder.Append("							<h3><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodsinfo.Htmltitle.ToString().Trim());
	templateBuilder.Append("</a></h3>\r\n");
	templateBuilder.Append("							<p>卖家:\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(goodsinfo.Selleruid);
	
	templateBuilder.Append("								<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodsinfo.Seller.ToString().Trim());
	templateBuilder.Append("</a></p>\r\n");
	templateBuilder.Append("							<p><a class=\"submitbutton\" href=\"usercppostpm.aspx?msgtoid=");
	templateBuilder.Append(goodsinfo.Selleruid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"floatwin('open_postpm', this.href, 600, 410, '600,0');doane(event);\" target=\"_blank\">给我留言</a> <a class=\"selectall\" href=\"favorites.aspx?goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\">收藏</a></p>\r\n");
	templateBuilder.Append("						</th>\r\n");
	templateBuilder.Append("						<td><p class=\"price\">");
	templateBuilder.Append(goodsinfo.Price.ToString().Trim());
	templateBuilder.Append("</p></td>\r\n");
	templateBuilder.Append("						<td>");
	templateBuilder.Append(goodsinfo.Ordinaryfee.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("						<td>");
	templateBuilder.Append(goodsinfo.Locus.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("						<td>");
	templateBuilder.Append(goodsinfo.Expiration.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("					</tr>\r\n");
	templateBuilder.Append("					</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("				</table>			\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("					<div class=\"pages\">\r\n");
	templateBuilder.Append("						<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("				</div>\r\n");

	}	//end if


	}	//end if


	}
	else
	{

	templateBuilder.Append("		<script type=\"text/javascript\" src=\"cache/tag/closedtags.txt\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" src=\"cache/tag/colorfultags.txt\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" src=\"javascript/template_showtopic.js\"></");
	templateBuilder.Append("script>	\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" src=\"javascript/template_tags.js\"></");
	templateBuilder.Append("script>	\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<h3>论坛热门标签</h3>\r\n");
	templateBuilder.Append("		<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("		<ul id=\"forumhottags\" class=\"taglist\">\r\n");

	int tag__loop__id=0;
	foreach(TagInfo tag in taglist)
	{
		tag__loop__id++;

	templateBuilder.Append("				<li><a \r\n");

	if (config.Aspxrewrite==1)
	{

	templateBuilder.Append("				href=\"topictag-");
	templateBuilder.Append(tag.Tagid.ToString().Trim());
	templateBuilder.Append(".aspx\" \r\n");

	}
	else
	{

	templateBuilder.Append("				href=\"tags.aspx?t=topic&tagid=");
	templateBuilder.Append(tag.Tagid.ToString().Trim());
	templateBuilder.Append("\" \r\n");

	}	//end if


	if (tag.Color!="")
	{

	templateBuilder.Append("				style=\"color: #");
	templateBuilder.Append(tag.Color.ToString().Trim());
	templateBuilder.Append(";\"\r\n");

	}	//end if

	templateBuilder.Append("				title=\"");
	templateBuilder.Append(tag.Fcount.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(tag.Tagname.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("		<h3>空间热门标签</h3>\r\n");
	templateBuilder.Append("		<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("		<ul id=\"spacehottags\" class=\"taglist\"><script type=\"text/javascript\" src=\"cache/hottags_space_cache_jsonp.txt\" onerror=\"this.onerror=null;getajaxspacehottags();\"></");
	templateBuilder.Append("script></ul>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("		<h3>图片热门标签</h3>\r\n");
	templateBuilder.Append("		<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("		<ul id=\"photohottags\" class=\"taglist\"><script type=\"text/javascript\" src=\"cache/hottags_photo_cache_jsonp.txt\" onerror=\"this.onerror=null;getajaxphotohottags();\"></");
	templateBuilder.Append("script></ul>\r\n");

	}	//end if


	if (config.Enablemall==1)
	{

	templateBuilder.Append("		<h3>商城热门标签</h3>\r\n");
	templateBuilder.Append("		<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("		<ul id=\"mallhottags\" class=\"taglist\"><script type=\"text/javascript\" src=\"cache/hottags_mall_cache_jsonp.txt\" onerror=\"this.onerror=null;getajaxmallhottags();\"></");
	templateBuilder.Append("script></ul>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("</div>\r\n");

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
