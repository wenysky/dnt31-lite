<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.showdebate" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:35.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:35. 
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
	templateBuilder.Append("var templatepath = \"");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("var postminchars = parseInt(");
	templateBuilder.Append(config.Minpostsize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("var postmaxchars = parseInt(");
	templateBuilder.Append(config.Maxpostsize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("var disablepostctrl = parseInt(");
	templateBuilder.Append(disablepostctrl.ToString());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("var forumpath = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("var ismoder = ");
	templateBuilder.Append(ismoder.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("var userid = parseInt('");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var forumallowhtml =true;\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	if (enabletag)
	{

	templateBuilder.Append("<script type=\"text/javascript\" src=\"cache/tag/closedtags.txt\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"cache/tag/colorfultags.txt\"></");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_showtopic.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/bbcode.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/post.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_debate.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/post_editor.js\"></");
	templateBuilder.Append("script>\r\n");

	if (page_err==0)
	{

	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("		<a id=\"forumlist\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\" \r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("onmouseover=\"showMenu(this.id);\" onmouseout=\"showMenu(this.id);\"\r\n");

	}	//end if

	templateBuilder.Append(" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; ");
	templateBuilder.Append(ShowForumAspxRewrite(forum.Pathlist.Trim(),forumid,forumpageid).ToString().Trim());
	templateBuilder.Append("\r\n");
	int ishtmltitle = Topics.GetMagicValue(topic.Magic, MagicType.HtmlTitle);
	

	if (ishtmltitle==1)
	{

	templateBuilder.Append("		  &raquo; <strong>");
	templateBuilder.Append(Topics.GetHtmlTitle(topic.Tid).ToString().Trim());
	templateBuilder.Append("</strong>\r\n");

	}
	else
	{

	templateBuilder.Append("		  &raquo; <strong>");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("</strong>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("	");
	templateBuilder.Append(Caches.GetForumListMenuDivCache(usergroupid,userid,config.Extname).ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("<div class=\"wrap s_clear thread\" id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main viewthread\">\r\n");
	templateBuilder.Append("	<div id=\"forumheader\" class=\"s_clear\">\r\n");
	templateBuilder.Append("		<h1>\r\n");

	if (forum.Applytopictype==1 && forum.Topictypeprefix==1)
	{

	templateBuilder.Append("				");
	templateBuilder.Append(topictypes.ToString());
	templateBuilder.Append(" \r\n");

	}	//end if

	templateBuilder.Append("辩论主题\r\n");
	templateBuilder.Append("		</h1>\r\n");
	templateBuilder.Append("		<p class=\"channelinfo f_clear\">开始时间 <em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(debatepost.Postdatetime).ToString(" yyyy-MM-dd HH:mm"));
	templateBuilder.Append("</em> -- 结束时间 <em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(debateexpand.Terminaltime).ToString(" yyyy-MM-dd HH:mm"));
	templateBuilder.Append("</em></p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"postsContainer\">\r\n");
	templateBuilder.Append("	<table cellspacing=\"0\" cellpadding=\"0\" summary=\"辩论主题\"  class=\"topic_table\">	\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("		<td class=\"postauthor\">\r\n");

	if (debatepost.Posterid!=-1)
	{

	templateBuilder.Append("			<!-- member menu -->\r\n");
	templateBuilder.Append("			<div class=\"popupmenu_popup userinfopanel\" id=\"");
	templateBuilder.Append(debatepost.Posterid.ToString().Trim());
	templateBuilder.Append("\" style=\"display:none; clip: rect(auto auto auto auto); position absolute;\" initialized ctrlkey=\"userinfo2\">\r\n");
	templateBuilder.Append("				<div class=\"popavatar\">\r\n");
	templateBuilder.Append("					<div id=\"");
	templateBuilder.Append(debatepost.Posterid.ToString().Trim());
	templateBuilder.Append("_ma\"></div>\r\n");
	templateBuilder.Append("					<ul class=\"profile_side\">\r\n");
	templateBuilder.Append("						<li class=\"post_pm\"><a href=\"usercppostpm.aspx?msgtoid=");
	templateBuilder.Append(debatepost.Posterid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"floatwin('open_postpm', this.href, 600, 410, '600,0');doane(event);\" target=\"_blank\">发送短消息</a></li>\r\n");
	templateBuilder.Append("					</ul>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"popuserinfo\">\r\n");
	templateBuilder.Append("					<dl class=\"s_clear\">\r\n");
	templateBuilder.Append("						<dt>UID</dt><dd>");
	templateBuilder.Append(debatepost.Posterid.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");
	templateBuilder.Append("						<dt>精华</dt><dd>\r\n");

	if (debatepost.Digestposts>0)
	{

	templateBuilder.Append("<a href=\"search.aspx?posterid=");
	templateBuilder.Append(debatepost.Posterid.ToString().Trim());
	templateBuilder.Append("&type=digest\">");
	templateBuilder.Append(debatepost.Digestposts.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else
	{
	templateBuilder.Append(debatepost.Digestposts.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("</dd>\r\n");

	if (score[1].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[1].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(debatepost.Extcredits1.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[1].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[2].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[2].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(debatepost.Extcredits2.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[2].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[3].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[3].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(debatepost.Extcredits3.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[3].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[4].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[4].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(debatepost.Extcredits4.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[4].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[5].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[5].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(debatepost.Extcredits5.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[5].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[6].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[6].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(debatepost.Extcredits6.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[6].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[7].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[7].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(debatepost.Extcredits7.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[7].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[8].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[8].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(debatepost.Extcredits8.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[8].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (debatepost.Location!="")
	{

	templateBuilder.Append("						<dt>来自</dt><dd>");
	templateBuilder.Append(debatepost.Location.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");

	}	//end if

	templateBuilder.Append("					</dl>\r\n");
	templateBuilder.Append("					<div class=\"imicons s_clear\">\r\n");

	if (debatepost.Msn!="")
	{

	templateBuilder.Append("						<a href=\"mailto:");
	templateBuilder.Append(debatepost.Msn.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\" class=\"msn\">");
	templateBuilder.Append(debatepost.Msn.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	if (debatepost.Skype!="")
	{

	templateBuilder.Append("						<a href=\"skype:");
	templateBuilder.Append(debatepost.Skype.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\" class=\"skype\">");
	templateBuilder.Append(debatepost.Skype.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	if (debatepost.Icq!="")
	{

	templateBuilder.Append("						<a href=\"http://wwp.icq.com/scripts/search.dll?to=");
	templateBuilder.Append(debatepost.Icq.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\" class=\"icq\">");
	templateBuilder.Append(debatepost.Icq.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	if (debatepost.Qq!="")
	{

	templateBuilder.Append("						<a href=\"http://wpa.qq.com/msgrd?V=1&Uin=");
	templateBuilder.Append(debatepost.Qq.ToString().Trim());
	templateBuilder.Append("&Site=");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("&Menu=yes\" target=\"_blank\" class=\"qq\">");
	templateBuilder.Append(debatepost.Qq.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	if (debatepost.Yahoo!="")
	{

	templateBuilder.Append("						<a href=\"http://edit.yahoo.com/config/send_webmesg?.target=");
	templateBuilder.Append(debatepost.Yahoo.ToString().Trim());
	templateBuilder.Append("&.src=pg\" target=\"_blank\" class=\"yahoo\">");
	templateBuilder.Append(debatepost.Yahoo.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("					<div class=\"imicons s_clear\">\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(debatepost.Posterid);
	
	templateBuilder.Append("						<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\" class=\"public_info\">查看公共资料</a>\r\n");
	templateBuilder.Append("						<a href=\"search.aspx?posterid=");
	templateBuilder.Append(debatepost.Posterid.ToString().Trim());
	templateBuilder.Append("\" class=\"all_topic\">搜索帖子</a>\r\n");

	if (useradminid>0)
	{


	if (admininfo.Allowviewip==1)
	{

	templateBuilder.Append("						<a onclick=\"floatwin('open_getip', this.href, 400, 170, '600,0');doane(event);\"  href=\"getip.aspx?pid=");
	templateBuilder.Append(debatepost.Pid.ToString().Trim());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" title=\"查看IP\" class=\"ip\">查看IP</a>\r\n");

	}	//end if


	if (admininfo.Allowbanuser==1)
	{

	templateBuilder.Append("						<a href=\"useradmin.aspx?action=banuser&uid=");
	templateBuilder.Append(debatepost.Posterid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"floatwin('open_mods', this.href, 250, 220, '600,0');doane(event);\" title=\"禁止用户\" class=\"forbid_user\">禁止用户</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<!-- member menu -->\r\n");

	}	//end if


	if (debatepost.Posterid!=-1)
	{

	templateBuilder.Append("			<cite>\r\n");
	templateBuilder.Append("				<span  \r\n");

	if (debatepost.Onlinestate==1)
	{

	templateBuilder.Append("class=\"onlineyes\" title=\"在线\"\r\n");

	}
	else
	{

	templateBuilder.Append("class=\"onlineno\" title=\"未在线\"\r\n");

	}	//end if

	templateBuilder.Append(">");
	templateBuilder.Append(debatepost.Poster.ToString().Trim());
	templateBuilder.Append("</span>\r\n");
	templateBuilder.Append("			</cite>\r\n");
	templateBuilder.Append("			<div id=\"");
	templateBuilder.Append(debatepost.Posterid.ToString().Trim());
	templateBuilder.Append("_a\">\r\n");

	if (config.Showavatars==1)
	{

	templateBuilder.Append("			<div class=\"avatar\">\r\n");
	string avatarurl = Avatars.GetAvatarUrl(debatepost.Posterid);
	
	templateBuilder.Append("			    <img src=\"");
	templateBuilder.Append(avatarurl.ToString());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/noavatar_medium.gif';\" onmouseover=\"showauthor(this,");
	templateBuilder.Append(debatepost.Posterid.ToString().Trim());
	templateBuilder.Append(")\"/>\r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end if


	if (debatepost.Nickname!="")
	{

	templateBuilder.Append("			<p>昵称<em>:");
	templateBuilder.Append(debatepost.Nickname.ToString().Trim());
	templateBuilder.Append("</em></p>\r\n");

	}	//end if

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<p>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				ShowStars(");
	templateBuilder.Append(debatepost.Stars.ToString().Trim());
	templateBuilder.Append(", ");
	templateBuilder.Append(config.Starthreshold.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("			</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			</p>\r\n");
	templateBuilder.Append("			<ul class=\"otherinfo\">\r\n");

	if (config.Userstatusby==1)
	{

	templateBuilder.Append("			<li><label>组别</label>");
	templateBuilder.Append(debatepost.Status.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if

	templateBuilder.Append("			<li><label>性别</label><script type=\"text/javascript\">document.write(displayGender(");
	templateBuilder.Append(debatepost.Gender.ToString().Trim());
	templateBuilder.Append("));</");
	templateBuilder.Append("script></span></li>\r\n");

	if (debatepost.Bday!="")
	{

	templateBuilder.Append("			<li><label>生日</label>");
	templateBuilder.Append(debatepost.Bday.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if

	templateBuilder.Append("			<li><label>来自</label>");
	templateBuilder.Append(debatepost.Location.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			<li><label>积分</label>");
	templateBuilder.Append(debatepost.Credits.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			<li><label>帖子</label>");
	templateBuilder.Append(debatepost.Posts.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			<li><label>注册时间</label>\r\n");

	if (debatepost.Joindate!="")
	{

	templateBuilder.Append(Convert.ToDateTime(debatepost.Joindate).ToString("yyyy-MM-dd"));

	}	//end if

	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			</ul>\r\n");

	if (debatepost.Medals!="")
	{

	templateBuilder.Append("			<div class=\"medals\">");
	templateBuilder.Append(debatepost.Medals.ToString().Trim());
	templateBuilder.Append("</div>\r\n");

	}	//end if


	}
	else
	{

	templateBuilder.Append("			<cite><span>");
	templateBuilder.Append(debatepost.Poster.ToString().Trim());
	templateBuilder.Append("</span>  ");
	templateBuilder.Append(debatepost.Ip.ToString().Trim());
	templateBuilder.Append("\r\n");

	if (useradminid>0 && admininfo.Allowviewip==1)
	{

	templateBuilder.Append("					<a href=\"getip.aspx?pid=");
	templateBuilder.Append(debatepost.Pid.ToString().Trim());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" onclick=\"floatwin('open_getip', this.href, 400, 170, '600,0');doane(event);\" title=\"查看IP\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/ip.gif\" alt=\"查看IP\"/></a>\r\n");

	}	//end if

	templateBuilder.Append("			</cite>\r\n");
	templateBuilder.Append("			<p><em>未注册</em></p>\r\n");

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<td class=\"postcontent\">\r\n");
	templateBuilder.Append("			<div class=\"postinfo\">\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("				<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(debatepost.Pid.ToString().Trim());
	templateBuilder.Append("\">编辑</a>|\r\n");
	templateBuilder.Append("				<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(debatepost.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\">删除</a>			\r\n");

	if (debatepost.Posterid!=-1)
	{


	if (debatepost.Ratetimes>0)
	{

	templateBuilder.Append("				<a href=\"###\" onclick=\"action_onchange('cancelrate',$('moderate'),'");
	templateBuilder.Append(debatepost.Pid.ToString().Trim());
	templateBuilder.Append("');\">撤销</a>\r\n");

	}	//end if


	}	//end if


	if (debatepost.Layer==0 && topic.Special==4)
	{


	if (isenddebate==true  && userid==debatepost.Posterid)
	{

	templateBuilder.Append("				<a href=\"###\" onClick=\"showMenu(this.id)\" id=\"commentdebates\" name=\"commentdebates\">点评</a>|\r\n");

	}	//end if


	}	//end if


	}
	else
	{


	if (debatepost.Posterid!=-1 && userid==debatepost.Posterid)
	{


	if (topic.Closed==0)
	{

	templateBuilder.Append("				<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(debatepost.Pid.ToString().Trim());
	templateBuilder.Append("\">编辑</a>|\r\n");

	}	//end if

	templateBuilder.Append("				<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(debatepost.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"postmessage defaultpost\">\r\n");
	templateBuilder.Append("				<h2>");
	templateBuilder.Append(debatepost.Title.ToString().Trim());
	templateBuilder.Append(" </h2>\r\n");
	templateBuilder.Append("				<div class=\"t_msgfont\">\r\n");

	if (debatepost.Id==1)
	{

	templateBuilder.Append("					    <div id=\"firstpost\">\r\n");
	templateBuilder.Append("			                <div id=\"topictag\"></div>\r\n");

	}	//end if

	templateBuilder.Append("						");
	templateBuilder.Append(debatepost.Message.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("						<div class=\"debate_show\">\r\n");
	templateBuilder.Append("							<p>正方观点</p>\r\n");
	templateBuilder.Append("							");
	templateBuilder.Append(debateexpand.Positiveopinion.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("							<p>反方观点</p>\r\n");
	templateBuilder.Append("							");
	templateBuilder.Append(debateexpand.Negativeopinion.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("						</div>\r\n");

	if (debatepost.Id==1)
	{

	templateBuilder.Append("					</div>\r\n");

	}	//end if

	templateBuilder.Append("				</div>\r\n");

	if (enabletag)
	{

	templateBuilder.Append("				<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("					function forumhottag_callback(data)\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						tags = data;\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\" src=\"cache/hottags_forum_cache_jsonp.txt\"></");
	templateBuilder.Append("script>\r\n");
	int hastag = Topics.GetMagicValue(topic.Magic, MagicType.TopicTag);
	

	if (hastag==1)
	{

	templateBuilder.Append("						<script type=\"text/javascript\">getTopicTags(");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(");</");
	templateBuilder.Append("script>\r\n");

	}
	else
	{

	templateBuilder.Append("						<script type=\"text/javascript\">parsetag();</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			</div>			\r\n");
	templateBuilder.Append("			<div class=\"useraction s_clear\">\r\n");
	templateBuilder.Append("				<a href=\"favorites.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" id=\"ajax_favorite\">收藏</a>\r\n");
	templateBuilder.Append("				<a href=\"javascript:void(0);\" id=\"share\">分享</a>\r\n");

	if (ismoder==1)
	{


	if (debatepost.Posterid!=-1)
	{

	templateBuilder.Append("					<a href=\"###\" onclick=\"action_onchange('rate',$('moderate'),'");
	templateBuilder.Append(debatepost.Pid.ToString().Trim());
	templateBuilder.Append("');\">评分</a>\r\n");

	}	//end if


	}
	else
	{


	if (usergroupinfo.Raterange!="" && debatepost.Posterid!=-1)
	{

	templateBuilder.Append("					<a href=\"###\" onclick=\"action_onchange('rate',$('moderate'),'");
	templateBuilder.Append(debatepost.Pid.ToString().Trim());
	templateBuilder.Append("');\">评分</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("		<td class=\"postauthor\">&nbsp;</td>\r\n");
	templateBuilder.Append("		<td class=\"postcontent postactions\">\r\n");

	if (userid!=-1)
	{


	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("    show_report_button();\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");


	templateBuilder.Append("|\r\n");

	}	//end if

	templateBuilder.Append("			<a href=\"#\" onclick=\"window.scrollTo(0,0)\">TOP</a>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr class=\"threadad\">\r\n");
	templateBuilder.Append("			<td class=\"postauthor\"></td>\r\n");
	templateBuilder.Append("			<td class=\"adcontent\">\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	<div id=\"commentdebates_menu\" style=\"display: none; width:270px;\" class=\"popupmenu_popup\">\r\n");
	templateBuilder.Append("		<form id=\"commentform\" >\r\n");
	templateBuilder.Append("			<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
	templateBuilder.Append("			  <tr>\r\n");
	templateBuilder.Append("			 <td><textarea name=\"commentdebatesmsg\" cols=\"43\" rows=\"6\" id=\"commentdebatesmsg\"></textarea></td>\r\n");
	templateBuilder.Append("			  </tr>                                                      \r\n");
	templateBuilder.Append("			  <tr>\r\n");
	templateBuilder.Append("				<td><input type=\"button\" value=\"提交\"  onclick=\"commentdebates(");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(",'firstpost')\"/></td>\r\n");
	templateBuilder.Append("			  </tr>\r\n");
	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("		</form>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("	<div id=\"ajaxdebateposts\">\r\n");
	templateBuilder.Append("		<h1>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(topic.Tid,0);
	
	templateBuilder.Append("			 辩论详情 <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" style=\"font-size:12px;text-decoration:underline;\">普通模式</a>\r\n");
	templateBuilder.Append("		</h1>\r\n");
	templateBuilder.Append("		<div class=\"debatebox s_clear\">\r\n");
	templateBuilder.Append("			<div class=\"specialtitle\">\r\n");
	templateBuilder.Append("				<div class=\"squaretitle\">\r\n");
	templateBuilder.Append("					<p>正方观点</p>\r\n");
	templateBuilder.Append("					");
	templateBuilder.Append(debateexpand.Positiveopinion.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"sidetitle right\">\r\n");
	templateBuilder.Append("					<p>反方观点</p>\r\n");
	templateBuilder.Append("					");
	templateBuilder.Append(debateexpand.Negativeopinion.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"balance\">\r\n");
	templateBuilder.Append("				<span class=\"scalevalue1\"><b id=\"positivediggs\">");
	templateBuilder.Append(debateexpand.Positivediggs.ToString().Trim());
	templateBuilder.Append("</b></span>\r\n");
	templateBuilder.Append("				<span class=\"scalevalue\"><b id=\"negativediggs\">");
	templateBuilder.Append(debateexpand.Negativediggs.ToString().Trim());
	templateBuilder.Append("</b></span>\r\n");
	templateBuilder.Append("				<div id=\"positivepercent\" class=\"squareboll\" style=\"width:");
	templateBuilder.Append(positivepercent.ToString());
	templateBuilder.Append("%;\"></div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"talkinner f_clear\">\r\n");
	templateBuilder.Append("				<div class=\"squarebox\">\r\n");

	if (!isenddebate)
	{

	templateBuilder.Append("					<div class=\"buttoncontrol\"><button onclick=\"$('positivepostform').style.display='';this.style.display='none';\">加入正方</button></div>\r\n");
	templateBuilder.Append("					<div id=\"positivepostform\" style=\"display: none;\">\r\n");
	templateBuilder.Append("						<form method=\"post\" name=\"postform_");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" id=\"postform_");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" action=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\"	enctype=\"multipart/form-data\" onsubmit=\"return validate(this);\" >\r\n");
	templateBuilder.Append("							<input type=\"hidden\" id=\"title\" name=\"title\" size=\"84\" tabindex=\"1\" value=\"\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" id=\"postid\" name=\"postid\" value=\"-1\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"debateopinion\" value=\"1\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"parseurloff\" value=\"");
	templateBuilder.Append(parseurloff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"smileyoff\" value=\"");
	templateBuilder.Append(smileyoff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"bbcodeoff\" value=\"");
	templateBuilder.Append(bbcodeoff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"usesig\" value=\"0\" />\r\n");
	templateBuilder.Append("							<table cellspacing=\"0\" cellpadding=\"0\" summary=\"正方观点\">\r\n");
	templateBuilder.Append("								<tr><td>我的意见：</td></tr>\r\n");
	templateBuilder.Append("								<tr>\r\n");
	templateBuilder.Append("									<td>\r\n");
	templateBuilder.Append("										<textarea name=\"message\" cols=\"50\" rows=\"4\" class=\"autosave txtarea\" id=\"message\" tabindex=\"2\" onkeydown=\"debatequickreply(event, this.form);\" onfocus=\"textareachange(this.form.id)\";></textarea>\r\n");
	templateBuilder.Append("									</td>\r\n");
	templateBuilder.Append("								</tr>\r\n");
	templateBuilder.Append("								<tr>\r\n");
	templateBuilder.Append("									<td>\r\n");

	if (isseccode)
	{

	templateBuilder.Append("<div id=\"debate_vcode\" name=\"debate_vcode\"><span style=\"position: relative;\">验证码:\r\n");

	templateBuilder.Append("<div id=\"vcode_temp\"></div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("	var infloat = ");
	templateBuilder.Append(infloat.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("	if (typeof vcodeimgid == 'undefined'){\r\n");
	templateBuilder.Append("		var vcodeimgid = 1;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	else\r\n");
	templateBuilder.Append("	    vcodeimgid++;\r\n");
	templateBuilder.Append("    $('vcode_temp').parentNode.innerHTML = '<input name=\"vcodetext\" tabindex=\"1\" size=\"20\" onkeyup=\"changevcode(this.form, this.value);\" class=\"txt\" style=\"width:90px;\" id=\"vcodetext' + vcodeimgid + '\"  onblur=\"if(!seccodefocus) {display(this.id + \\'_menu\\')};\"  onclick=\"opensecwin('+vcodeimgid+',1)\"   value=\"验证码\" autocomplete=\"off\"/>' +\r\n");
	templateBuilder.Append("	                                       '<div class=\"seccodecontent\"  style=\"display:none;cursor: pointer;width: 124px; height: 44px;top:256px;z-index:10009;padding:0;\" id=\"vcodetext' + vcodeimgid + '_menu\" onmouseout=\"seccodefocus = 0\" onmouseover=\"seccodefocus = 1\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?time=");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append("\" class=\"cursor\" id=\"vcodeimg' + vcodeimgid + '\" onclick=\"this.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();\"/></div>';\r\n");
	templateBuilder.Append("	function changevcode(form, value){\r\n");
	templateBuilder.Append("		if (!$('vcode')){\r\n");
	templateBuilder.Append("			var vcode = document.createElement('input');\r\n");
	templateBuilder.Append("			vcode.id = 'vcode';\r\n");
	templateBuilder.Append("			vcode.name = 'vcode';\r\n");
	templateBuilder.Append("			vcode.type = 'hidden';\r\n");
	templateBuilder.Append("			vcode.value = value;\r\n");
	templateBuilder.Append("			form.appendChild(vcode);\r\n");
	templateBuilder.Append("		}else{\r\n");
	templateBuilder.Append("			$('vcode').value = value;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var secclick = new Array();\r\n");
	templateBuilder.Append("var seccodefocus = 0;\r\n");
	templateBuilder.Append("function opensecwin(id,type) {\r\n");
	templateBuilder.Append("	if($('vcode')){\r\n");
	templateBuilder.Append("	$('vcode').parentNode.removeChild($('vcode'));}\r\n");
	templateBuilder.Append("	if (!secclick['vcodetext' + id]) {\r\n");
	templateBuilder.Append("	    $('vcodetext' + id).value = '';\r\n");
	templateBuilder.Append("	    secclick['vcodetext' + id] = 1;\r\n");
	templateBuilder.Append("	    if(type)\r\n");
	templateBuilder.Append("	        $('vcodetext' + id + '_menu').style.top = parseInt($('vcodetext' + id + '_menu').style.top) - parseInt($('vcodetext' + id + '_menu').style.height) + 'px';\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.position = 'absolute';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.top = (-parseInt($('vcodetext' + id + '_menu').style.height) - 2) + 'px';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.left = '0px';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.display = '';\r\n");
	templateBuilder.Append("	$('vcodetext' + id).focus();\r\n");
	templateBuilder.Append("	$('vcodetext' + id).unselectable = 'off';\r\n");
	templateBuilder.Append("	$('vcodeimg' + id).src = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=' + Math.random();\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");


	templateBuilder.Append("</span></div>\r\n");

	}	//end if

	templateBuilder.Append("									<button type=\"submit\" name=\"replysubmit\">我要发表</button>\r\n");
	templateBuilder.Append("									</td>\r\n");
	templateBuilder.Append("								</tr>\r\n");
	templateBuilder.Append("							</table>\r\n");
	templateBuilder.Append("						</form>\r\n");
	templateBuilder.Append("					</div>\r\n");

	}
	else
	{

	templateBuilder.Append("					<div class=\"buttoncontrol\"></div>\r\n");

	}	//end if


	if (positivepostlist.Count>0)
	{

	templateBuilder.Append("						<div id=\"positive_pagenumbers_top\" class=\"debatepages\">");
	templateBuilder.Append(positivepagenumbers.ToString());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("						<div id=\"positivepage_owner\">\r\n");

	int positivepost__loop__id=0;
	foreach(ShowtopicPagePostInfo positivepost in positivepostlist)
	{
		positivepost__loop__id++;

	templateBuilder.Append("								<div class=\"square\">\r\n");
	templateBuilder.Append("									<table cellspacing=\"0\" cellpadding=\"0\" summary=\"正方观点\">\r\n");
	templateBuilder.Append("									<tbody>\r\n");
	templateBuilder.Append("									<tr>\r\n");
	templateBuilder.Append("									<td class=\"supportbox\">\r\n");
	templateBuilder.Append("										<p>支持度\r\n");
	templateBuilder.Append("										<span class=\"talknum\" id=\"diggs");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(positivepost.Diggs.ToString().Trim());
	templateBuilder.Append("</span>\r\n");

	if (!isenddebate  && positivepost.Posterid!=userid)
	{


	if (!positivepost.Digged)
	{

	templateBuilder.Append("										<span class=\"cliktalk\" id=\"cliktalk");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("\"><a href=\"###\" onclick=\"digg(");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(",1)\">支持</a></span>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("										</p>\r\n");
	templateBuilder.Append("									</td>\r\n");
	templateBuilder.Append("									<td class=\"comment\">\r\n");
	templateBuilder.Append("										<h3>发表者:<a id=\"poster");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("\" href=\"");
	templateBuilder.Append(UserInfoAspxRewrite(positivepost.Posterid).ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(positivepost.Poster.ToString().Trim());
	templateBuilder.Append("</a>  时间:\r\n");
	templateBuilder.Append(Convert.ToDateTime(positivepost.Postdatetime).ToString("yyyy-MM-dd HH:mm"));
	templateBuilder.Append("										<span>\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("											<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("&debate=1\">编辑</a>|\r\n");
	templateBuilder.Append("											<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("&opinion=1\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}
	else
	{


	if (positivepost.Posterid!=-1 && userid==positivepost.Posterid)
	{

	templateBuilder.Append("											<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("&debate=1\">编辑</a>|\r\n");
	templateBuilder.Append("											<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("&opinion=1\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("										</span>\r\n");
	templateBuilder.Append("										</h3>\r\n");
	templateBuilder.Append("										<div class=\"debatemessage\"  id=\"message");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("										");
	templateBuilder.Append(positivepost.Message.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("										</div>\r\n");

	if (!isenddebate  && positivepost.Posterid!=userid)
	{

	templateBuilder.Append("										<input name=\"hiddendpid");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("\" type=\"hidden\" id=\"hiddendpid");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("\" value=\"");
	templateBuilder.Append(positivepost.Ubbmessage.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("										<p class=\"othertalk\"><a id=\"reply_btn_");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("\" href=\"###\" onclick=\"showDebatReplyBox(");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(", ");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append(", 2, ");
	templateBuilder.Append(parseurloff.ToString());
	templateBuilder.Append(", ");
	templateBuilder.Append(smileyoff.ToString());
	templateBuilder.Append(", ");
	templateBuilder.Append(bbcodeoff.ToString());
	templateBuilder.Append(", ");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append(", ");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append(");this.style.display='none';\">我不同意</a><div id=\"reply_box_owner_");
	templateBuilder.Append(positivepost.Pid.ToString().Trim());
	templateBuilder.Append("\"></div>\r\n");
	templateBuilder.Append("										</p>\r\n");

	}	//end if

	templateBuilder.Append("									</td>\r\n");
	templateBuilder.Append("									</tr>\r\n");
	templateBuilder.Append("									</tbody>\r\n");
	templateBuilder.Append("									</table>\r\n");
	templateBuilder.Append("								</div>\r\n");

	}	//end loop

	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("						<div id=\"positive_pagenumbers_buttom\" class=\"debatepages\">");
	templateBuilder.Append(positivepagenumbers.ToString());
	templateBuilder.Append("</div>\r\n");

	if (!isenddebate)
	{

	templateBuilder.Append("						<div class=\"buttoncontrol\"><button onclick=\"$('positivepostform2').style.display='';this.style.display='none';\">加入正方</button></div>\r\n");
	templateBuilder.Append("						<div id=\"positivepostform2\" style=\"display:none;\">\r\n");
	templateBuilder.Append("						       <form method=\"post\" name=\"postform_");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" id=\"Form1\" action=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\"	enctype=\"multipart/form-data\" onsubmit=\"return validate(this);\" >\r\n");
	templateBuilder.Append("							    <input type=\"hidden\" id=\"Hidden1\" name=\"title\" size=\"84\" tabindex=\"1\" value=\"\" />\r\n");
	templateBuilder.Append("							    <input type=\"hidden\" id=\"Hidden2\" name=\"postid\" value=\"-1\" />\r\n");
	templateBuilder.Append("							    <input type=\"hidden\" name=\"debateopinion\" value=\"1\" />\r\n");
	templateBuilder.Append("							    <input type=\"hidden\" name=\"parseurloff\" value=\"");
	templateBuilder.Append(parseurloff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							    <input type=\"hidden\" name=\"smileyoff\" value=\"");
	templateBuilder.Append(smileyoff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							    <input type=\"hidden\" name=\"bbcodeoff\" value=\"");
	templateBuilder.Append(bbcodeoff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							    <input type=\"hidden\" name=\"usesig\" value=\"0\" />\r\n");
	templateBuilder.Append("							    <table cellspacing=\"0\" cellpadding=\"0\" summary=\"正方观点\">\r\n");
	templateBuilder.Append("								    <tr><td>我的意见：</td></tr>\r\n");
	templateBuilder.Append("								    <tr>\r\n");
	templateBuilder.Append("									    <td>\r\n");
	templateBuilder.Append("										    <textarea name=\"message\" cols=\"50\" rows=\"4\" class=\"autosave txtarea\" id=\"Textarea1\" tabindex=\"2\" onkeydown=\"debatequickreply(event, this.form);\" onfocus=\"textareachange(this.form.id)\";></textarea>\r\n");
	templateBuilder.Append("									    </td>\r\n");
	templateBuilder.Append("								    </tr>\r\n");
	templateBuilder.Append("								    <tr>\r\n");
	templateBuilder.Append("									    <td>\r\n");

	if (isseccode)
	{

	templateBuilder.Append("<div id=\"Div1\" name=\"debate_vcode\"><span style=\"position: relative;\">验证码:\r\n");

	templateBuilder.Append("<div id=\"vcode_temp\"></div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("	var infloat = ");
	templateBuilder.Append(infloat.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("	if (typeof vcodeimgid == 'undefined'){\r\n");
	templateBuilder.Append("		var vcodeimgid = 1;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	else\r\n");
	templateBuilder.Append("	    vcodeimgid++;\r\n");
	templateBuilder.Append("    $('vcode_temp').parentNode.innerHTML = '<input name=\"vcodetext\" tabindex=\"1\" size=\"20\" onkeyup=\"changevcode(this.form, this.value);\" class=\"txt\" style=\"width:90px;\" id=\"vcodetext' + vcodeimgid + '\"  onblur=\"if(!seccodefocus) {display(this.id + \\'_menu\\')};\"  onclick=\"opensecwin('+vcodeimgid+',1)\"   value=\"验证码\" autocomplete=\"off\"/>' +\r\n");
	templateBuilder.Append("	                                       '<div class=\"seccodecontent\"  style=\"display:none;cursor: pointer;width: 124px; height: 44px;top:256px;z-index:10009;padding:0;\" id=\"vcodetext' + vcodeimgid + '_menu\" onmouseout=\"seccodefocus = 0\" onmouseover=\"seccodefocus = 1\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?time=");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append("\" class=\"cursor\" id=\"vcodeimg' + vcodeimgid + '\" onclick=\"this.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();\"/></div>';\r\n");
	templateBuilder.Append("	function changevcode(form, value){\r\n");
	templateBuilder.Append("		if (!$('vcode')){\r\n");
	templateBuilder.Append("			var vcode = document.createElement('input');\r\n");
	templateBuilder.Append("			vcode.id = 'vcode';\r\n");
	templateBuilder.Append("			vcode.name = 'vcode';\r\n");
	templateBuilder.Append("			vcode.type = 'hidden';\r\n");
	templateBuilder.Append("			vcode.value = value;\r\n");
	templateBuilder.Append("			form.appendChild(vcode);\r\n");
	templateBuilder.Append("		}else{\r\n");
	templateBuilder.Append("			$('vcode').value = value;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var secclick = new Array();\r\n");
	templateBuilder.Append("var seccodefocus = 0;\r\n");
	templateBuilder.Append("function opensecwin(id,type) {\r\n");
	templateBuilder.Append("	if($('vcode')){\r\n");
	templateBuilder.Append("	$('vcode').parentNode.removeChild($('vcode'));}\r\n");
	templateBuilder.Append("	if (!secclick['vcodetext' + id]) {\r\n");
	templateBuilder.Append("	    $('vcodetext' + id).value = '';\r\n");
	templateBuilder.Append("	    secclick['vcodetext' + id] = 1;\r\n");
	templateBuilder.Append("	    if(type)\r\n");
	templateBuilder.Append("	        $('vcodetext' + id + '_menu').style.top = parseInt($('vcodetext' + id + '_menu').style.top) - parseInt($('vcodetext' + id + '_menu').style.height) + 'px';\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.position = 'absolute';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.top = (-parseInt($('vcodetext' + id + '_menu').style.height) - 2) + 'px';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.left = '0px';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.display = '';\r\n");
	templateBuilder.Append("	$('vcodetext' + id).focus();\r\n");
	templateBuilder.Append("	$('vcodetext' + id).unselectable = 'off';\r\n");
	templateBuilder.Append("	$('vcodeimg' + id).src = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=' + Math.random();\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");


	templateBuilder.Append("</span></div>\r\n");

	}	//end if

	templateBuilder.Append("									    <button type=\"submit\" name=\"replysubmit\">我要发表</button>\r\n");
	templateBuilder.Append("									    </td>\r\n");
	templateBuilder.Append("								    </tr>\r\n");
	templateBuilder.Append("							    </table>\r\n");
	templateBuilder.Append("						    </form>\r\n");
	templateBuilder.Append("						</div>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"oppositionbox right\">\r\n");

	if (!isenddebate)
	{

	templateBuilder.Append("					<div class=\"buttoncontrol\"><button onclick=\"$('negativepostform').style.display='';this.style.display='none';\">加入反方</button></div>\r\n");
	templateBuilder.Append("					<div id=\"negativepostform\" style=\"display: none;\" >\r\n");
	templateBuilder.Append("						<form method=\"post\" name=\"postform_");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" id=\"postform_");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" action=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\"	enctype=\"multipart/form-data\" onsubmit=\"return validate(this);\" >\r\n");
	templateBuilder.Append("							<input type=\"hidden\" id=\"title\" name=\"title\" size=\"84\" tabindex=\"1\" value=\"\"/>\r\n");
	templateBuilder.Append("							<input type=\"hidden\" id=\"postid\" name=\"postid\" value=\"-1\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"debateopinion\" value=\"2\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"parseurloff\" value=\"");
	templateBuilder.Append(parseurloff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"smileyoff\" value=\"");
	templateBuilder.Append(smileyoff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"bbcodeoff\" value=\"");
	templateBuilder.Append(bbcodeoff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"usesig\" value=\"0\" />\r\n");
	templateBuilder.Append("							<table cellspacing=\"0\" cellpadding=\"0\" summary=\"反方观点\">\r\n");
	templateBuilder.Append("								<tr>\r\n");
	templateBuilder.Append("									<td>我的意见：</td>\r\n");
	templateBuilder.Append("								</tr>\r\n");
	templateBuilder.Append("								<tr>\r\n");
	templateBuilder.Append("									<td>\r\n");
	templateBuilder.Append("										<textarea name=\"message\" cols=\"50\" rows=\"4\" class=\"autosave txtarea\" id=\"message\" tabindex=\"2\" onkeydown=\"debatequickreply(event, this.form);\" onfocus=\"textareachange(this.form.id);\"></textarea>\r\n");
	templateBuilder.Append("									</td>\r\n");
	templateBuilder.Append("								</tr>\r\n");
	templateBuilder.Append("								<tr>\r\n");
	templateBuilder.Append("									<td>\r\n");

	if (isseccode)
	{

	templateBuilder.Append("<div id=\"debate_vcode\" name=\"debate_vcode\"><span style=\"position: relative;\">验证码:\r\n");

	templateBuilder.Append("<div id=\"vcode_temp\"></div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("	var infloat = ");
	templateBuilder.Append(infloat.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("	if (typeof vcodeimgid == 'undefined'){\r\n");
	templateBuilder.Append("		var vcodeimgid = 1;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	else\r\n");
	templateBuilder.Append("	    vcodeimgid++;\r\n");
	templateBuilder.Append("    $('vcode_temp').parentNode.innerHTML = '<input name=\"vcodetext\" tabindex=\"1\" size=\"20\" onkeyup=\"changevcode(this.form, this.value);\" class=\"txt\" style=\"width:90px;\" id=\"vcodetext' + vcodeimgid + '\"  onblur=\"if(!seccodefocus) {display(this.id + \\'_menu\\')};\"  onclick=\"opensecwin('+vcodeimgid+',1)\"   value=\"验证码\" autocomplete=\"off\"/>' +\r\n");
	templateBuilder.Append("	                                       '<div class=\"seccodecontent\"  style=\"display:none;cursor: pointer;width: 124px; height: 44px;top:256px;z-index:10009;padding:0;\" id=\"vcodetext' + vcodeimgid + '_menu\" onmouseout=\"seccodefocus = 0\" onmouseover=\"seccodefocus = 1\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?time=");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append("\" class=\"cursor\" id=\"vcodeimg' + vcodeimgid + '\" onclick=\"this.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();\"/></div>';\r\n");
	templateBuilder.Append("	function changevcode(form, value){\r\n");
	templateBuilder.Append("		if (!$('vcode')){\r\n");
	templateBuilder.Append("			var vcode = document.createElement('input');\r\n");
	templateBuilder.Append("			vcode.id = 'vcode';\r\n");
	templateBuilder.Append("			vcode.name = 'vcode';\r\n");
	templateBuilder.Append("			vcode.type = 'hidden';\r\n");
	templateBuilder.Append("			vcode.value = value;\r\n");
	templateBuilder.Append("			form.appendChild(vcode);\r\n");
	templateBuilder.Append("		}else{\r\n");
	templateBuilder.Append("			$('vcode').value = value;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var secclick = new Array();\r\n");
	templateBuilder.Append("var seccodefocus = 0;\r\n");
	templateBuilder.Append("function opensecwin(id,type) {\r\n");
	templateBuilder.Append("	if($('vcode')){\r\n");
	templateBuilder.Append("	$('vcode').parentNode.removeChild($('vcode'));}\r\n");
	templateBuilder.Append("	if (!secclick['vcodetext' + id]) {\r\n");
	templateBuilder.Append("	    $('vcodetext' + id).value = '';\r\n");
	templateBuilder.Append("	    secclick['vcodetext' + id] = 1;\r\n");
	templateBuilder.Append("	    if(type)\r\n");
	templateBuilder.Append("	        $('vcodetext' + id + '_menu').style.top = parseInt($('vcodetext' + id + '_menu').style.top) - parseInt($('vcodetext' + id + '_menu').style.height) + 'px';\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.position = 'absolute';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.top = (-parseInt($('vcodetext' + id + '_menu').style.height) - 2) + 'px';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.left = '0px';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.display = '';\r\n");
	templateBuilder.Append("	$('vcodetext' + id).focus();\r\n");
	templateBuilder.Append("	$('vcodetext' + id).unselectable = 'off';\r\n");
	templateBuilder.Append("	$('vcodeimg' + id).src = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=' + Math.random();\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");


	templateBuilder.Append("</span></div>\r\n");

	}	//end if

	templateBuilder.Append("<button type=\"submit\" name=\"replysubmit\"/>我要发表</button>\r\n");
	templateBuilder.Append("									</td>\r\n");
	templateBuilder.Append("								</tr>\r\n");
	templateBuilder.Append("							</table>\r\n");
	templateBuilder.Append("						</form>\r\n");
	templateBuilder.Append("					</div>\r\n");

	}
	else
	{

	templateBuilder.Append("					<div class=\"buttoncontrol\"></div>\r\n");

	}	//end if


	if (negativepostlist.Count>0)
	{

	templateBuilder.Append("						<div id=\"negative_pagenumbers_top\" class=\"debatepages\">");
	templateBuilder.Append(negativepagenumbers.ToString());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("						<div id=\"negativepage_owner\">\r\n");

	int negativepost__loop__id=0;
	foreach(ShowtopicPagePostInfo negativepost in negativepostlist)
	{
		negativepost__loop__id++;

	templateBuilder.Append("								<div class=\"square s_clear\">\r\n");
	templateBuilder.Append("									<table cellspacing=\"0\" cellpadding=\"0\" summary=\"反方观点\">\r\n");
	templateBuilder.Append("									<tbody>\r\n");
	templateBuilder.Append("									<tr>\r\n");
	templateBuilder.Append("									<td class=\"supportbox\">\r\n");
	templateBuilder.Append("											<p>支持度\r\n");
	templateBuilder.Append("											<span class=\"talknum\" id=\"diggs");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(negativepost.Diggs.ToString().Trim());
	templateBuilder.Append("</span>\r\n");

	if (!isenddebate && negativepost.Posterid!=userid)
	{


	if (!negativepost.Digged)
	{

	templateBuilder.Append("											<span class=\"cliktalk\" id=\"cliktalk");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("\"><a href=\"###\" onclick=\"digg(");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(",2)\">支持</a></span>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("										</p>\r\n");
	templateBuilder.Append("									</td>\r\n");
	templateBuilder.Append("									<td class=\"comment\">\r\n");
	templateBuilder.Append("										<h3></span>发表者:<a id=\"poster");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("\" href=\"");
	templateBuilder.Append(UserInfoAspxRewrite(negativepost.Posterid).ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(negativepost.Poster.ToString().Trim());
	templateBuilder.Append("</a>  时间:\r\n");
	templateBuilder.Append(Convert.ToDateTime(negativepost.Postdatetime).ToString("yyyy-MM-dd HH:mm"));
	templateBuilder.Append("										<span>\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("												<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("&debate=1\">编辑</a>|\r\n");
	templateBuilder.Append("												<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("&opinion=2\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}
	else
	{


	if (negativepost.Posterid!=-1 && userid==negativepost.Posterid)
	{

	templateBuilder.Append("												<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("&debate=1\">编辑</a>|\r\n");
	templateBuilder.Append("												<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("&opinion=2\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("										</span>\r\n");
	templateBuilder.Append("										</h3>\r\n");
	templateBuilder.Append("										<div class=\"debatemessage\" id=\"message");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("										");
	templateBuilder.Append(negativepost.Message.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("										</div>\r\n");

	if (!isenddebate  && negativepost.Posterid!=userid)
	{

	templateBuilder.Append("											<input name=\"hiddendpid");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("\" type=\"hidden\" id=\"hiddendpid");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("\" value=\"");
	templateBuilder.Append(negativepost.Ubbmessage.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("										<p class=\"othertalk\"><a href=\"###\" id=\"reply_btn_");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"showDebatReplyBox(");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(", ");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append(", 1, ");
	templateBuilder.Append(parseurloff.ToString());
	templateBuilder.Append(", ");
	templateBuilder.Append(smileyoff.ToString());
	templateBuilder.Append(", ");
	templateBuilder.Append(bbcodeoff.ToString());
	templateBuilder.Append(", ");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append(", ");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append(");this.style.display='none';\">我不同意</a><div id=\"reply_box_owner_");
	templateBuilder.Append(negativepost.Pid.ToString().Trim());
	templateBuilder.Append("\"></div>\r\n");
	templateBuilder.Append("										</p>\r\n");

	}	//end if

	templateBuilder.Append("									</td>\r\n");
	templateBuilder.Append("									</tr>\r\n");
	templateBuilder.Append("									</tbody>\r\n");
	templateBuilder.Append("									</table>\r\n");
	templateBuilder.Append("								</div>\r\n");

	}	//end loop

	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("						<div id=\"negative_pagenumbers_buttom\" class=\"debatepages\">");
	templateBuilder.Append(negativepagenumbers.ToString());
	templateBuilder.Append("</div>\r\n");

	if (!isenddebate)
	{

	templateBuilder.Append("						<div class=\"buttoncontrol\">\r\n");
	templateBuilder.Append("						<button onclick=\"$('negativepostform2').style.display='';this.style.display='none';\">加入反方</button></div>\r\n");
	templateBuilder.Append("						<div id=\"negativepostform2\" style=\"display:none;\">\r\n");
	templateBuilder.Append("						    <form method=\"post\" name=\"postform_");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" id=\"Form2\" action=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\"	enctype=\"multipart/form-data\" onsubmit=\"return validate(this);\" >\r\n");
	templateBuilder.Append("							<input type=\"hidden\" id=\"Hidden3\" name=\"title\" size=\"84\" tabindex=\"1\" value=\"\"/>\r\n");
	templateBuilder.Append("							<input type=\"hidden\" id=\"Hidden4\" name=\"postid\" value=\"-1\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"debateopinion\" value=\"2\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"parseurloff\" value=\"");
	templateBuilder.Append(parseurloff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"smileyoff\" value=\"");
	templateBuilder.Append(smileyoff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"bbcodeoff\" value=\"");
	templateBuilder.Append(bbcodeoff.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"usesig\" value=\"0\" />\r\n");
	templateBuilder.Append("							<table cellspacing=\"0\" cellpadding=\"0\" summary=\"反方观点\">\r\n");
	templateBuilder.Append("								<tr>\r\n");
	templateBuilder.Append("									<td>我的意见：</td>\r\n");
	templateBuilder.Append("								</tr>\r\n");
	templateBuilder.Append("								<tr>\r\n");
	templateBuilder.Append("									<td>\r\n");
	templateBuilder.Append("										<textarea name=\"message\" cols=\"50\" rows=\"4\" class=\"autosave txtarea\" id=\"Textarea2\" tabindex=\"2\" onkeydown=\"debatequickreply(event, this.form);\" onfocus=\"textareachange(this.form.id);\"></textarea>\r\n");
	templateBuilder.Append("									</td>\r\n");
	templateBuilder.Append("								</tr>\r\n");
	templateBuilder.Append("								<tr>\r\n");
	templateBuilder.Append("									<td>\r\n");

	if (isseccode)
	{

	templateBuilder.Append("<div id=\"Div2\" name=\"debate_vcode\"><span style=\"position: relative;\">验证码:\r\n");

	templateBuilder.Append("<div id=\"vcode_temp\"></div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("	var infloat = ");
	templateBuilder.Append(infloat.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("	if (typeof vcodeimgid == 'undefined'){\r\n");
	templateBuilder.Append("		var vcodeimgid = 1;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	else\r\n");
	templateBuilder.Append("	    vcodeimgid++;\r\n");
	templateBuilder.Append("    $('vcode_temp').parentNode.innerHTML = '<input name=\"vcodetext\" tabindex=\"1\" size=\"20\" onkeyup=\"changevcode(this.form, this.value);\" class=\"txt\" style=\"width:90px;\" id=\"vcodetext' + vcodeimgid + '\"  onblur=\"if(!seccodefocus) {display(this.id + \\'_menu\\')};\"  onclick=\"opensecwin('+vcodeimgid+',1)\"   value=\"验证码\" autocomplete=\"off\"/>' +\r\n");
	templateBuilder.Append("	                                       '<div class=\"seccodecontent\"  style=\"display:none;cursor: pointer;width: 124px; height: 44px;top:256px;z-index:10009;padding:0;\" id=\"vcodetext' + vcodeimgid + '_menu\" onmouseout=\"seccodefocus = 0\" onmouseover=\"seccodefocus = 1\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?time=");
	templateBuilder.Append(Processtime.ToString());
	templateBuilder.Append("\" class=\"cursor\" id=\"vcodeimg' + vcodeimgid + '\" onclick=\"this.src=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=\\' + Math.random();\"/></div>';\r\n");
	templateBuilder.Append("	function changevcode(form, value){\r\n");
	templateBuilder.Append("		if (!$('vcode')){\r\n");
	templateBuilder.Append("			var vcode = document.createElement('input');\r\n");
	templateBuilder.Append("			vcode.id = 'vcode';\r\n");
	templateBuilder.Append("			vcode.name = 'vcode';\r\n");
	templateBuilder.Append("			vcode.type = 'hidden';\r\n");
	templateBuilder.Append("			vcode.value = value;\r\n");
	templateBuilder.Append("			form.appendChild(vcode);\r\n");
	templateBuilder.Append("		}else{\r\n");
	templateBuilder.Append("			$('vcode').value = value;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var secclick = new Array();\r\n");
	templateBuilder.Append("var seccodefocus = 0;\r\n");
	templateBuilder.Append("function opensecwin(id,type) {\r\n");
	templateBuilder.Append("	if($('vcode')){\r\n");
	templateBuilder.Append("	$('vcode').parentNode.removeChild($('vcode'));}\r\n");
	templateBuilder.Append("	if (!secclick['vcodetext' + id]) {\r\n");
	templateBuilder.Append("	    $('vcodetext' + id).value = '';\r\n");
	templateBuilder.Append("	    secclick['vcodetext' + id] = 1;\r\n");
	templateBuilder.Append("	    if(type)\r\n");
	templateBuilder.Append("	        $('vcodetext' + id + '_menu').style.top = parseInt($('vcodetext' + id + '_menu').style.top) - parseInt($('vcodetext' + id + '_menu').style.height) + 'px';\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.position = 'absolute';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.top = (-parseInt($('vcodetext' + id + '_menu').style.height) - 2) + 'px';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.left = '0px';\r\n");
	templateBuilder.Append("	$('vcodetext' + id + '_menu').style.display = '';\r\n");
	templateBuilder.Append("	$('vcodetext' + id).focus();\r\n");
	templateBuilder.Append("	$('vcodetext' + id).unselectable = 'off';\r\n");
	templateBuilder.Append("	$('vcodeimg' + id).src = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/VerifyImagePage.aspx?id=");
	templateBuilder.Append(olid.ToString());
	templateBuilder.Append("&time=' + Math.random();\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");


	templateBuilder.Append("</span></div>\r\n");

	}	//end if

	templateBuilder.Append("<button type=\"submit\" name=\"replysubmit\"/>我要发表</button>\r\n");
	templateBuilder.Append("									</td>\r\n");
	templateBuilder.Append("								</tr>\r\n");
	templateBuilder.Append("							</table>\r\n");
	templateBuilder.Append("						</form>\r\n");
	templateBuilder.Append("						</div>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");
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


	if (config.Forumjump==1)
	{

	templateBuilder.Append("	");
	templateBuilder.Append(navhomemenu.ToString());
	templateBuilder.Append("\r\n");

	}	//end if



	if (floatad!="")
	{

	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/template_floatadv.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	");
	templateBuilder.Append(floatad.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">theFloaters.play();</");
	templateBuilder.Append("script>\r\n");

	}
	else if (doublead!="")
	{

	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/template_floatadv.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	");
	templateBuilder.Append(doublead.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">theFloaters.play();</");
	templateBuilder.Append("script>\r\n");

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
