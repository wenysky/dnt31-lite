<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.showbonus" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:33.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:33. 
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
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
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
	templateBuilder.Append("</a>  &raquo; ");
	templateBuilder.Append(ShowForumAspxRewrite(forum.Pathlist.Trim(),forumid,forumpageid).ToString().Trim());
	templateBuilder.Append("\r\n");
	int ishtmltitle = Topics.GetMagicValue(topic.Magic, MagicType.HtmlTitle);
	

	if (ishtmltitle==1)
	{

	templateBuilder.Append("				  &raquo; <strong>");
	templateBuilder.Append(Topics.GetHtmlTitle(topic.Tid).ToString().Trim());
	templateBuilder.Append("</strong>\r\n");

	}
	else
	{

	templateBuilder.Append("				  &raquo; <strong>");
	templateBuilder.Append(topic.Title.Trim().ToString().Trim());
	templateBuilder.Append("</strong>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (page_err==0)
	{

	int loopi = 1;
	
	int valuablepostcount = 0;
	
	int valuelesspostcount = 0;
	

	int post__loop__id=0;
	foreach(ShowbonusPagePostInfo post in postlist)
	{
		post__loop__id++;


	if (post.Id!=1 && post.Isbest==1)
	{

	 valuablepostcount = valuablepostcount+1;
	

	}	//end if


	if (post.Id!=1 && post.Isbest==0)
	{

	 valuelesspostcount = valuelesspostcount+1;
	

	}	//end if


	if (post.Id==1)
	{

	templateBuilder.Append("<div class=\"wrap s_clear thread\" id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main viewthread\">\r\n");
	templateBuilder.Append("	<div id=\"forumheader\" class=\"s_clear\">\r\n");
	templateBuilder.Append("		<h1>\r\n");

	if (forum.Applytopictype==1 && forum.Topictypeprefix==1)
	{

	templateBuilder.Append("			");
	templateBuilder.Append(topictypes.ToString());
	templateBuilder.Append("&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("		");
	templateBuilder.Append(post.Title.ToString().Trim());
	templateBuilder.Append("\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(topic.Tid,0);
	
	templateBuilder.Append("		</h1>\r\n");
	templateBuilder.Append("		<p class=\"forumstats\"><a title=\"点击查看原始版本\" href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">返回悬赏主题</a></p>\r\n");
	templateBuilder.Append("		<p class=\"channelinfo f_clear\">\r\n");
	templateBuilder.Append("		已解决 - <a href=\"#bestpost\">最佳答案</a>  悬赏价格: 金钱 <strong>");
	templateBuilder.Append(topic.Price.ToString().Trim());
	templateBuilder.Append("</strong>\r\n");
	templateBuilder.Append("		</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"postsContainer\" style=\"margin-bottom:10px;\">\r\n");
	templateBuilder.Append("	<table cellspacing=\"0\" cellpadding=\"0\" summary=\"悬赏主题\"  class=\"topic_table\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("		<td class=\"postauthor\">\r\n");

	if (post.Posterid!=-1)
	{

	templateBuilder.Append("			<!-- member menu -->\r\n");
	templateBuilder.Append("			<div class=\"popupmenu_popup userinfopanel\" id=\"");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("\" style=\"display:none; clip: rect(auto auto auto auto); position: absolute;\" initialized ctrlkey=\"userinfo2\">\r\n");
	templateBuilder.Append("				<div class=\"popavatar\">\r\n");
	templateBuilder.Append("					<div id=\"");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("_ma\"></div>\r\n");
	templateBuilder.Append("					<ul class=\"profile_side\">\r\n");
	templateBuilder.Append("						<li class=\"post_pm\"><a href=\"usercppostpm.aspx?msgtoid=");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"floatwin('open_postpm', this.href, 600, 410, '600,0');doane(event);\" target=\"_blank\">发送短消息</a></li>\r\n");
	templateBuilder.Append("					</ul>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"popuserinfo\">\r\n");
	templateBuilder.Append("					<dl class=\"s_clear\">\r\n");
	templateBuilder.Append("						<dt>UID</dt><dd>");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");
	templateBuilder.Append("						<dt>精华</dt><dd>\r\n");

	if (post.Digestposts>0)
	{

	templateBuilder.Append("<a href=\"search.aspx?posterid=");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("&type=digest\">");
	templateBuilder.Append(post.Digestposts.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else
	{
	templateBuilder.Append(post.Digestposts.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("</dd>\r\n");

	if (score[1].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[1].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits1.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[1].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[2].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[2].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits2.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[2].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[3].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[3].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits3.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[3].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[4].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[4].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits4.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[4].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[5].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[5].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits5.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[5].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[6].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[6].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits6.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[6].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[7].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[7].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits7.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[7].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[8].ToString().Trim()!="")
	{

	templateBuilder.Append("						<dt>" + score[8].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits8.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[8].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (post.Location!="")
	{

	templateBuilder.Append("						<dt>来自</dt><dd>");
	templateBuilder.Append(post.Location.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");

	}	//end if

	templateBuilder.Append("					</dl>\r\n");
	templateBuilder.Append("					<div class=\"imicons s_clear\">\r\n");

	if (post.Msn!="")
	{

	templateBuilder.Append("						<a href=\"mailto:");
	templateBuilder.Append(post.Msn.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\" class=\"msn\">");
	templateBuilder.Append(post.Msn.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	if (post.Skype!="")
	{

	templateBuilder.Append("						<a href=\"skype:");
	templateBuilder.Append(post.Skype.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\" class=\"skype\">");
	templateBuilder.Append(post.Skype.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	if (post.Icq!="")
	{

	templateBuilder.Append("						<a href=\"http://wwp.icq.com/scripts/search.dll?to=");
	templateBuilder.Append(post.Icq.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\" class=\"icq\">");
	templateBuilder.Append(post.Icq.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	if (post.Qq!="")
	{

	templateBuilder.Append("						<a href=\"http://wpa.qq.com/msgrd?V=1&Uin=");
	templateBuilder.Append(post.Qq.ToString().Trim());
	templateBuilder.Append("&Site=");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("&Menu=yes\" target=\"_blank\" class=\"qq\">");
	templateBuilder.Append(post.Qq.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	if (post.Yahoo!="")
	{

	templateBuilder.Append("						<a href=\"http://edit.yahoo.com/config/send_webmesg?.target=");
	templateBuilder.Append(post.Yahoo.ToString().Trim());
	templateBuilder.Append("&.src=pg\" target=\"_blank\" class=\"yahoo\">");
	templateBuilder.Append(post.Yahoo.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("					<div class=\"imicons s_clear\">\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(post.Posterid);
	
	templateBuilder.Append("						<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\" class=\"public_info\">查看公共资料</a>\r\n");
	templateBuilder.Append("						<a href=\"search.aspx?posterid=");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("\" class=\"all_topic\">搜索帖子</a>\r\n");

	if (useradminid>0)
	{


	if (admininfo.Allowviewip==1)
	{

	templateBuilder.Append("						<a onclick=\"floatwin('open_getip', this.href, 400, 170, '600,0');doane(event);\"  href=\"getip.aspx?pid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" title=\"查看IP\" class=\"ip\">查看IP</a>\r\n");

	}	//end if


	if (admininfo.Allowbanuser==1)
	{

	templateBuilder.Append("						<a href=\"useradmin.aspx?action=banuser&uid=");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"floatwin('open_mods', this.href, 250, 220, '600,0');doane(event);\" title=\"禁止用户\" class=\"forbid_user\">禁止用户</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<!-- member menu -->\r\n");

	}	//end if


	if (post.Posterid!=-1)
	{

	templateBuilder.Append("			<cite>\r\n");
	templateBuilder.Append("				<span  \r\n");

	if (post.Onlinestate==1)
	{

	templateBuilder.Append("class=\"onlineyes\" title=\"在线\"\r\n");

	}
	else
	{

	templateBuilder.Append("class=\"onlineno\" title=\"未在线\"\r\n");

	}	//end if

	templateBuilder.Append(">");
	templateBuilder.Append(post.Poster.ToString().Trim());
	templateBuilder.Append("</span>\r\n");
	templateBuilder.Append("			</cite>\r\n");
	templateBuilder.Append("			<div id=\"");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("_a\">\r\n");

	if (config.Showavatars==1)
	{

	templateBuilder.Append("			<div class=\"avatar\">\r\n");
	string avatarurl = Avatars.GetAvatarUrl(post.Posterid);
	
	templateBuilder.Append("				<img src=\"");
	templateBuilder.Append(avatarurl.ToString());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/noavatar_medium.gif';\"  alt=\"头像\" onmouseover=\"showauthor(this,");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append(")\"/>\r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end if


	if (post.Nickname!="")
	{

	templateBuilder.Append("			<p><em>");
	templateBuilder.Append(post.Nickname.ToString().Trim());
	templateBuilder.Append("</em></p>\r\n");

	}	//end if

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<p>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("					ShowStars(");
	templateBuilder.Append(post.Stars.ToString().Trim());
	templateBuilder.Append(", ");
	templateBuilder.Append(config.Starthreshold.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			</p>\r\n");
	templateBuilder.Append("			<ul class=\"otherinfo\">\r\n");

	if (config.Userstatusby==1)
	{

	templateBuilder.Append("				<li><label>组别</label>");
	templateBuilder.Append(post.Status.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if

	templateBuilder.Append("				<li><label>性别</label><script type=\"text/javascript\">document.write(displayGender(");
	templateBuilder.Append(post.Gender.ToString().Trim());
	templateBuilder.Append("));</");
	templateBuilder.Append("script></li>\r\n");

	if (post.Bday!="")
	{

	templateBuilder.Append("				<li><label>生日</label>");
	templateBuilder.Append(post.Bday.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if

	templateBuilder.Append("				<li><label>积分</label>");
	templateBuilder.Append(post.Credits.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("				<li><label>帖子</label>");
	templateBuilder.Append(post.Posts.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	if (post.Joindate!="")
	{

	templateBuilder.Append("				<li><label>注册时间</label>\r\n");
	templateBuilder.Append(Convert.ToDateTime(post.Joindate).ToString("yyyy-MM-dd"));
	templateBuilder.Append("</li>\r\n");

	}	//end if

	templateBuilder.Append("			</ul>\r\n");

	if (config.Enablespace==1 || config.Enablealbum==1)
	{

	templateBuilder.Append("			<ul class=\"plug\">\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("				<li class=\"space\">\r\n");

	if (post.Spaceid>0)
	{

	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("\">个人空间</a>\r\n");

	}
	else
	{

	templateBuilder.Append("<a href=\"###\" onclick=\"nospace('");
	templateBuilder.Append(post.Poster.ToString().Trim());
	templateBuilder.Append("');\">个人空间</a>\r\n");

	}	//end if

	templateBuilder.Append("				</li>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("				<li class=\"album\"><a href=\"showalbumlist.aspx?uid=");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("\">相册</a></li>\r\n");

	}	//end if

	templateBuilder.Append("			</ul>\r\n");

	}	//end if


	if (post.Medals!="")
	{

	templateBuilder.Append("				<div class=\"medals\">");
	templateBuilder.Append(post.Medals.ToString().Trim());
	templateBuilder.Append("</div>\r\n");

	}	//end if


	}
	else
	{

	templateBuilder.Append("			<cite><span>");
	templateBuilder.Append(post.Poster.ToString().Trim());
	templateBuilder.Append("</span>  ");
	templateBuilder.Append(post.Ip.ToString().Trim());
	templateBuilder.Append("\r\n");

	if (useradminid>0 && admininfo.Allowviewip==1)
	{

	templateBuilder.Append("						<a href=\"getip.aspx?pid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
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
	templateBuilder.Append("			<div class=\"postinfo\">					\r\n");
	templateBuilder.Append("				<a href=\"favorites.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\">收藏</a>|\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("					<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\">编辑</a>|\r\n");
	templateBuilder.Append("					<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\">删除</a>|\r\n");

	if (post.Posterid!=-1)
	{

	templateBuilder.Append("						<a href=\"###\" onclick=\"action_onchange('rate',$('moderate'),'");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("');\">评分</a>\r\n");

	if (post.Ratetimes>0)
	{

	templateBuilder.Append("						|<a href=\"###\" onclick=\"action_onchange('cancelrate',$('moderate'),'");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("');\">撤销评分</a>\r\n");

	}	//end if


	}	//end if


	}
	else
	{


	if (post.Posterid!=-1 && userid==post.Posterid)
	{


	if (topic.Closed==0)
	{

	templateBuilder.Append("							<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\">编辑</a>|\r\n");

	}	//end if

	templateBuilder.Append("						<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\">删除</a>|\r\n");

	}	//end if


	if (usergroupinfo.Raterange!="" && post.Posterid!=-1)
	{

	templateBuilder.Append("<a href=\"###\" onclick=\"action_onchange('rate',$('moderate'),'");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("');\">评分</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"postmessage defaultpost\">\r\n");
	templateBuilder.Append("				<h2>");
	templateBuilder.Append(post.Title.ToString().Trim());
	templateBuilder.Append("</h2>\r\n");

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
	templateBuilder.Append("				<div id=\"topictag\">\r\n");
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

	templateBuilder.Append("				</div>\r\n");

	}	//end if

	templateBuilder.Append("				<div class=\"t_msgfont\">\r\n");
	templateBuilder.Append("					<div id=\"firstpost\">\r\n");
	templateBuilder.Append("						<h5>补充资料</h5>\r\n");
	templateBuilder.Append("						");
	templateBuilder.Append(post.Message.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"bonusrate s_clear\">\r\n");
	templateBuilder.Append("					<h5>本帖得分:</h5>\r\n");
	templateBuilder.Append("					<div class=\"attachmentinfo\">\r\n");

	int bonuslog__loop__id=0;
	foreach(BonusLogInfo bonuslog in bonuslogs)
	{
		bonuslog__loop__id++;


	if (bonuslog.Bonus>0)
	{


	if (bonuslog__loop__id!=1)
	{

	templateBuilder.Append("								,\r\n");

	}	//end if

	 aspxrewriteurl = this.UserInfoAspxRewrite(bonuslog.Answerid);
	
	string unit = scoreunit[ bonuslog.Extid ];
	
	string name = score[ bonuslog.Extid ];
	
	templateBuilder.Append("							<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(bonuslog.Answername.ToString().Trim());
	templateBuilder.Append("</a>(");
	templateBuilder.Append(name.ToString());
	templateBuilder.Append(":");
	templateBuilder.Append(bonuslog.Bonus.ToString().Trim());
	templateBuilder.Append(unit.ToString());
	templateBuilder.Append(")\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("				</div>\r\n");
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
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}
	else if (post.Isbest==2)
	{

	templateBuilder.Append("		<h1><a name=\"bestpost\"></a>最佳答案</h1>\r\n");
	templateBuilder.Append("		<div class=\"specialpost\">\r\n");
	templateBuilder.Append("			<div class=\"postinfo\">\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(post.Posterid);
	
	templateBuilder.Append("				<em><a id=\"memberinfo_");
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("\" href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\" onmouseover=\"showMenu(this.id,false)\" style=\"padding-right:14px;\">");
	templateBuilder.Append(post.Poster.ToString().Trim());
	templateBuilder.Append("</a> </em><em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(post.Postdatetime).ToString("yyyy-MM-dd hh:mm"));
	templateBuilder.Append("</em>\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("					<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\">编辑</a>\r\n");
	templateBuilder.Append("					<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}
	else
	{


	if (post.Posterid!=-1 && userid==post.Posterid)
	{


	if (topic.Closed==0)
	{

	templateBuilder.Append("							<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\">编辑</a>\r\n");

	}	//end if

	templateBuilder.Append("						<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}	//end if


	}	//end if


	if (canreply)
	{

	templateBuilder.Append("					<a href=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&quote=yes\">引用</a>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("						<a href=\"###\" onclick=\"replyToFloor('");
	templateBuilder.Append(post.Id.ToString().Trim());
	templateBuilder.Append("', '");
	templateBuilder.Append(post.Poster.ToString().Trim());
	templateBuilder.Append("', '");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("')\">回复</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"postmessage\">\r\n");
	templateBuilder.Append("				<div class=\"t_msgfont\">");
	templateBuilder.Append(post.Message.ToString().Trim());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if

	 loopi = loopi+1;
	

	}	//end loop


	if (postlist.Count>=2)
	{


	if (valuablepostcount!=0)
	{

	templateBuilder.Append("	<h4>有价值的答案</h4>\r\n");

	int valuablepost__loop__id=0;
	foreach(ShowbonusPagePostInfo valuablepost in postlist)
	{
		valuablepost__loop__id++;


	if (valuablepost.Id!=1 && valuablepost.Isbest==1)
	{

	templateBuilder.Append("	<div class=\"specialpost\">\r\n");
	templateBuilder.Append("		<div class=\"postinfo\">\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(valuablepost.Posterid);
	
	templateBuilder.Append("			<em><a id=\"memberinfo_");
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("\" href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\" onmouseover=\"showMenu(this.id,false)\" class=\"drop\" style=\"padding-right:14px;\">");
	templateBuilder.Append(valuablepost.Poster.ToString().Trim());
	templateBuilder.Append("</a></em>\r\n");
	templateBuilder.Append("			<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(valuablepost.Postdatetime).ToString("yyyy-MM-dd hh:mm"));
	templateBuilder.Append("</em>\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("			<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(valuablepost.Pid.ToString().Trim());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\">编辑</a>\r\n");
	templateBuilder.Append("			<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(valuablepost.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}
	else
	{


	if (valuablepost.Posterid!=-1 && userid==valuablepost.Posterid)
	{


	if (topic.Closed==0)
	{

	templateBuilder.Append("					<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(valuablepost.Pid.ToString().Trim());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\">编辑</a>\r\n");

	}	//end if

	templateBuilder.Append("				<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(valuablepost.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}	//end if


	}	//end if


	if (canreply)
	{

	templateBuilder.Append("			<a href=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(valuablepost.Pid.ToString().Trim());
	templateBuilder.Append("&quote=yes\">引用</a>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("				<a href=\"###\" onclick=\"replyToFloor('");
	templateBuilder.Append(valuablepost.Id.ToString().Trim());
	templateBuilder.Append("', '");
	templateBuilder.Append(valuablepost.Poster.ToString().Trim());
	templateBuilder.Append("', '");
	templateBuilder.Append(valuablepost.Pid.ToString().Trim());
	templateBuilder.Append("')\">回复</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"postmessage\">\r\n");
	templateBuilder.Append("			<div class=\"t_msgfont\">");
	templateBuilder.Append(valuablepost.Message.ToString().Trim());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("		</div>				\r\n");
	templateBuilder.Append("	</div>	\r\n");

	if (valuablepost.Posterid!=-1)
	{

	templateBuilder.Append("		<!-- member menu -->\r\n");
	templateBuilder.Append("		<div class=\"popupmenu_popup userinfopanel\" id=\"memberinfo_");
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("_menu\" style=\"display: none; z-index: 50; filter: progid:dximagetransform.microsoft.shadow(direction=135,color=#cccccc,strength=2); left: 19px; clip: rect(auto auto auto auto); position: absolute; top: 253px; width:150px; padding:10px;\" initialized ctrlkey=\"userinfo2\" h=\"209\">\r\n");
	templateBuilder.Append("			<ul class=\"panelinfo\">\r\n");
	templateBuilder.Append("				<li><a href=\"usercppostpm.aspx?msgtoid=");
	templateBuilder.Append(valuablepost.Posterid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"floatwin('open_postpm', this.href, 600, 410, '600,0');doane(event);\" target=\"_blank\">发送短消息</a></li>\r\n");

	if (useradminid>0)
	{


	if (admininfo.Allowviewip==1)
	{

	templateBuilder.Append("				<li><a href=\"getip.aspx?pid=");
	templateBuilder.Append(valuablepost.Pid.ToString().Trim());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" onclick=\"floatwin('open_getip', this.href, 400, 170, '600,0');doane(event);\" title=\"查看IP\">查看IP</a></li>\r\n");

	}	//end if


	if (admininfo.Allowbanuser==1)
	{

	templateBuilder.Append("				<li><a href=\"useradmin.aspx?action=banuser&uid=");
	templateBuilder.Append(valuablepost.Posterid.ToString().Trim());
	templateBuilder.Append("\" title=\"禁止用户\">禁止用户</a></li>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			<li>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(valuablepost.Posterid);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">查看公共资料</a>\r\n");
	templateBuilder.Append("			</li>\r\n");
	templateBuilder.Append("			<li><a href=\"search.aspx?posterid=");
	templateBuilder.Append(valuablepost.Posterid.ToString().Trim());
	templateBuilder.Append("\">查找该会员全部帖子</a></li>\r\n");
	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("			<ul class=\"userdetail\">\r\n");
	templateBuilder.Append("				<li><label>UID</label>");
	templateBuilder.Append(valuablepost.Posterid.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("				<li><label>精华</label>\r\n");

	if (valuablepost.Digestposts>0)
	{

	templateBuilder.Append("<a href=\"search.aspx?posterid=");
	templateBuilder.Append(valuablepost.Posterid.ToString().Trim());
	templateBuilder.Append("&type=digest\">");
	templateBuilder.Append(valuablepost.Digestposts.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else
	{
	templateBuilder.Append(valuablepost.Digestposts.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("</li>\r\n");

	if (score[1].ToString().Trim()!="")
	{

	templateBuilder.Append("				<li><label>" + score[1].ToString().Trim() + "</label>");
	templateBuilder.Append(valuablepost.Extcredits1.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[1].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[2].ToString().Trim()!="")
	{

	templateBuilder.Append("				<li><label>" + score[2].ToString().Trim() + "</label>");
	templateBuilder.Append(valuablepost.Extcredits2.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[2].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[3].ToString().Trim()!="")
	{

	templateBuilder.Append("				<li><label>" + score[3].ToString().Trim() + "</label>");
	templateBuilder.Append(valuablepost.Extcredits3.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[3].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[4].ToString().Trim()!="")
	{

	templateBuilder.Append("				<li><label>" + score[4].ToString().Trim() + "</label>");
	templateBuilder.Append(valuablepost.Extcredits4.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[4].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[5].ToString().Trim()!="")
	{

	templateBuilder.Append("				<li><label>" + score[5].ToString().Trim() + "</label>");
	templateBuilder.Append(valuablepost.Extcredits5.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[5].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[6].ToString().Trim()!="")
	{

	templateBuilder.Append("				<li><label>" + score[6].ToString().Trim() + "</label>");
	templateBuilder.Append(valuablepost.Extcredits6.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[6].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[7].ToString().Trim()!="")
	{

	templateBuilder.Append("				<li><label>" + score[7].ToString().Trim() + "</label>");
	templateBuilder.Append(valuablepost.Extcredits7.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[7].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[8].ToString().Trim()!="")
	{

	templateBuilder.Append("				<li><label>" + score[8].ToString().Trim() + "</label>");
	templateBuilder.Append(valuablepost.Extcredits8.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[8].ToString().Trim() + "</li>\r\n");

	}	//end if

	templateBuilder.Append("				<li><label>状态</label>\r\n");

	if (valuablepost.Onlinestate==1)
	{

	templateBuilder.Append("				在线\r\n");

	}
	else
	{

	templateBuilder.Append("				离线\r\n");

	}	//end if

	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("			<ul class=\"tools\">\r\n");

	if (valuablepost.Msn!="")
	{

	templateBuilder.Append("				<li><a href=\"mailto:");
	templateBuilder.Append(valuablepost.Msn.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(valuablepost.Msn.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if


	if (valuablepost.Skype!="")
	{

	templateBuilder.Append("				<li><a href=\"skype:");
	templateBuilder.Append(valuablepost.Skype.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(valuablepost.Skype.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if


	if (valuablepost.Icq!="")
	{

	templateBuilder.Append("				<li><a href=\"http://wwp.icq.com/scripts/search.dll?to=");
	templateBuilder.Append(valuablepost.Icq.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(valuablepost.Icq.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if


	if (valuablepost.Qq!="")
	{

	templateBuilder.Append("				<li><a href=\"http://wpa.qq.com/msgrd?V=1&Uin=");
	templateBuilder.Append(valuablepost.Qq.ToString().Trim());
	templateBuilder.Append("&Site=");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("&Menu=yes\" target=\"_blank\">");
	templateBuilder.Append(valuablepost.Qq.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if


	if (valuablepost.Yahoo!="")
	{

	templateBuilder.Append("				<li><a href=\"http://edit.yahoo.com/config/send_webmesg?.target=");
	templateBuilder.Append(valuablepost.Yahoo.ToString().Trim());
	templateBuilder.Append("&.src=pg\" target=\"_blank\">");
	templateBuilder.Append(valuablepost.Yahoo.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if

	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<!-- member menu -->\r\n");

	}	//end if


	}	//end if

	 loopi = loopi+1;
	

	}	//end loop

	templateBuilder.Append("	</div>\r\n");

	}	//end if


	if (valuelesspostcount!=0)
	{

	templateBuilder.Append("	<h4>其它答案</h4>\r\n");

	int valueless__loop__id=0;
	foreach(ShowbonusPagePostInfo valueless in postlist)
	{
		valueless__loop__id++;


	if (valueless.Id>1 && valueless.Isbest==0)
	{

	templateBuilder.Append("	<div class=\"specialpost\">\r\n");
	templateBuilder.Append("		<div class=\"postinfo\">\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(valueless.Posterid);
	
	templateBuilder.Append("			<em><a id=\"memberinfo_");
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("\" href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\" onmouseover=\"showMenu(this.id,false)\" class=\"drop\" style=\"padding-right:14px;\">");
	templateBuilder.Append(valueless.Poster.ToString().Trim());
	templateBuilder.Append("</a></em><em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(valueless.Postdatetime).ToString("yyyy-MM-dd hh:mm"));
	templateBuilder.Append("</em>\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("			<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(valueless.Pid.ToString().Trim());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\">编辑</a>\r\n");
	templateBuilder.Append("			<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(valueless.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}
	else
	{


	if (valueless.Posterid!=-1 && userid==valueless.Posterid)
	{


	if (topic.Closed==0)
	{

	templateBuilder.Append("					<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(valueless.Pid.ToString().Trim());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\">编辑</a>\r\n");

	}	//end if

	templateBuilder.Append("				<a href=\"delpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(valueless.Pid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"return confirm('确定要删除吗?');\">删除</a>\r\n");

	}	//end if


	}	//end if


	if (canreply)
	{

	templateBuilder.Append("			<a href=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(valueless.Pid.ToString().Trim());
	templateBuilder.Append("&quote=yes\">引用</a>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("				<a href=\"###\" onclick=\"replyToFloor('");
	templateBuilder.Append(valueless.Id.ToString().Trim());
	templateBuilder.Append("', '");
	templateBuilder.Append(valueless.Poster.ToString().Trim());
	templateBuilder.Append("', '");
	templateBuilder.Append(valueless.Pid.ToString().Trim());
	templateBuilder.Append("')\">回复</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"postmessage\">\r\n");
	templateBuilder.Append("			<div class=\"t_msgfont\">");
	templateBuilder.Append(valueless.Message.ToString().Trim());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");

	if (valueless.Posterid!=-1)
	{

	templateBuilder.Append("<!-- member menu -->\r\n");
	templateBuilder.Append("<div class=\"popupmenu_popup userpanelmenu\" id=\"memberinfo_");
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("_menu\" style=\"display: none; z-index: 50; filter: progid:dximagetransform.microsoft.shadow(direction=135,color=#cccccc,strength=2); left: 19px; clip: rect(auto auto auto auto); position: absolute; top: 253px; width:150px;padding:10px;\" initialized ctrlkey=\"userinfo2\">\r\n");
	templateBuilder.Append("	<ul class=\"panelinfo\">\r\n");
	templateBuilder.Append("		<li><a href=\"usercppostpm.aspx?msgtoid=");
	templateBuilder.Append(valueless.Posterid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"floatwin('open_postpm', this.href, 600, 410, '600,0');doane(event);\" target=\"_blank\">发送短消息</a></li>\r\n");

	if (useradminid>0)
	{


	if (admininfo.Allowviewip==1)
	{

	templateBuilder.Append("		<li><a href=\"getip.aspx?pid=");
	templateBuilder.Append(valueless.Pid.ToString().Trim());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" onclick=\"floatwin('open_getip', this.href, 400, 170, '600,0');doane(event);\" title=\"查看IP\">查看IP</a></li>\r\n");

	}	//end if


	if (admininfo.Allowbanuser==1)
	{

	templateBuilder.Append("		<li><a href=\"useradmin.aspx?action=banuser&uid=");
	templateBuilder.Append(valueless.Posterid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"floatwin('open_mods', this.href, 250, 220, '600,0');doane(event);\" title=\"禁止用户\">禁止用户</a></li>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("	<li>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(valueless.Posterid);
	
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">查看公共资料</a>\r\n");
	templateBuilder.Append("	</li>\r\n");
	templateBuilder.Append("	<li><a href=\"search.aspx?posterid=");
	templateBuilder.Append(valueless.Posterid.ToString().Trim());
	templateBuilder.Append("\">查找该会员全部帖子</a></li>\r\n");
	templateBuilder.Append("	</ul>\r\n");
	templateBuilder.Append("	<ul class=\"userdetail\">\r\n");
	templateBuilder.Append("		<li><label>UID</label>");
	templateBuilder.Append(valueless.Posterid.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("		<li><label>精华</label>\r\n");

	if (valueless.Digestposts>0)
	{

	templateBuilder.Append("<a href=\"search.aspx?posterid=");
	templateBuilder.Append(valueless.Posterid.ToString().Trim());
	templateBuilder.Append("&type=digest\">");
	templateBuilder.Append(valueless.Digestposts.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else
	{
	templateBuilder.Append(valueless.Digestposts.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("</li>\r\n");

	if (score[1].ToString().Trim()!="")
	{

	templateBuilder.Append("		<li><label>" + score[1].ToString().Trim() + "</label>");
	templateBuilder.Append(valueless.Extcredits1.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[1].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[2].ToString().Trim()!="")
	{

	templateBuilder.Append("		<li><label>" + score[2].ToString().Trim() + "</label>");
	templateBuilder.Append(valueless.Extcredits2.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[2].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[3].ToString().Trim()!="")
	{

	templateBuilder.Append("		<li><label>" + score[3].ToString().Trim() + "</label>");
	templateBuilder.Append(valueless.Extcredits3.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[3].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[4].ToString().Trim()!="")
	{

	templateBuilder.Append("		<li><label>" + score[4].ToString().Trim() + "</label>");
	templateBuilder.Append(valueless.Extcredits4.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[4].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[5].ToString().Trim()!="")
	{

	templateBuilder.Append("		<li><label>" + score[5].ToString().Trim() + "</label>");
	templateBuilder.Append(valueless.Extcredits5.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[5].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[6].ToString().Trim()!="")
	{

	templateBuilder.Append("		<li><label>" + score[6].ToString().Trim() + "</label>");
	templateBuilder.Append(valueless.Extcredits6.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[6].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[7].ToString().Trim()!="")
	{

	templateBuilder.Append("		<li><label>" + score[7].ToString().Trim() + "</label>");
	templateBuilder.Append(valueless.Extcredits7.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[7].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[8].ToString().Trim()!="")
	{

	templateBuilder.Append("		<li><label>" + score[8].ToString().Trim() + "</label>");
	templateBuilder.Append(valueless.Extcredits8.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[8].ToString().Trim() + "</li>\r\n");

	}	//end if

	templateBuilder.Append("		<li><label>来自</label>");
	templateBuilder.Append(valueless.Location.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("		<li><label>状态</label>\r\n");

	if (valueless.Onlinestate==1)
	{

	templateBuilder.Append("		在线\r\n");

	}
	else
	{

	templateBuilder.Append("		离线\r\n");

	}	//end if

	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("	</ul>\r\n");
	templateBuilder.Append("	<ul class=\"tools\">\r\n");

	if (valueless.Msn!="")
	{

	templateBuilder.Append("		<li><a href=\"mailto:");
	templateBuilder.Append(valueless.Msn.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(valueless.Msn.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if


	if (valueless.Skype!="")
	{

	templateBuilder.Append("		<li><a href=\"skype:");
	templateBuilder.Append(valueless.Skype.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(valueless.Skype.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if


	if (valueless.Icq!="")
	{

	templateBuilder.Append("		<li><a href=\"http://wwp.icq.com/scripts/search.dll?to=");
	templateBuilder.Append(valueless.Icq.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(valueless.Icq.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if


	if (valueless.Qq!="")
	{

	templateBuilder.Append("		<li><a href=\"http://wpa.qq.com/msgrd?V=1&Uin=");
	templateBuilder.Append(valueless.Qq.ToString().Trim());
	templateBuilder.Append("&Site=");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("&Menu=yes\" target=\"_blank\">");
	templateBuilder.Append(valueless.Qq.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if


	if (valueless.Yahoo!="")
	{

	templateBuilder.Append("		<li><a href=\"http://edit.yahoo.com/config/send_webmesg?.target=");
	templateBuilder.Append(valueless.Yahoo.ToString().Trim());
	templateBuilder.Append("&.src=pg\" target=\"_blank\">");
	templateBuilder.Append(valueless.Yahoo.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if

	templateBuilder.Append("	</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<!-- member menu -->\r\n");

	}	//end if


	}	//end if

	 loopi = loopi+1;
	

	}	//end loop

	templateBuilder.Append("</div>\r\n");

	}	//end if


	if (canreply && userid!=-1)
	{


	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/post.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/bbcode.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<form method=\"post\" name=\"postform\" id=\"quickpostform\" action=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" enctype=\"multipart/form-data\" onsubmit=\"return validate(this);\">\r\n");
	templateBuilder.Append("<div id=\"quickpost\" class=\"main\">\r\n");
	templateBuilder.Append("	<table summary=\"快速发布帖子\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"quickpostauthor\">\r\n");
	templateBuilder.Append("			<div class=\"avatar\">\r\n");
	string avatarurl = Avatars.GetAvatarUrl(userid);
	
	templateBuilder.Append("			<img src=\"");
	templateBuilder.Append(avatarurl.ToString());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/noavatar_medium.gif';\"  alt=\"头像\"/>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<td class=\"postcontent\">\r\n");

	if (quickeditorad!="")
	{

	templateBuilder.Append("			<div class=\"leaderboard\">");
	templateBuilder.Append(quickeditorad.ToString());
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("			<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"个性设置\">\r\n");
	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td>\r\n");

	if (topic.Special==4 && isenddebate==false)
	{

	templateBuilder.Append("					<div class=\"float_typeid left\">\r\n");
	templateBuilder.Append("						<select name=\"debateopinion\" id=\"debateopinion\">\r\n");
	templateBuilder.Append("							<option value=\"0\" selected>辩论观点</option>\r\n");
	templateBuilder.Append("							<option value=\"1\">正方</option>\r\n");
	templateBuilder.Append("							<option value=\"2\">反方</option>\r\n");
	templateBuilder.Append("						</select>\r\n");
	templateBuilder.Append("						<script type=\"text/javascript\">loadselect(\"debateopinion\");</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("					</div>\r\n");

	}	//end if

	templateBuilder.Append("					<input type=\"hidden\" id=\"title\" name=\"title\" size=\"84\" tabindex=\"1\" value=\"\" /><input type=\"hidden\" id=\"postid\" name=\"postid\" value=\"-1\" />\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				<span style=\"display:none\">\r\n");
	templateBuilder.Append("				<input type=\"checkbox\" value=\"1\" name=\"htmlon\" id=\"htmlon\" \r\n");

	if (usergroupinfo.Allowhtml!=1)
	{

	templateBuilder.Append(" disabled\r\n");

	}	//end if

	templateBuilder.Append("/>\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" value=\"1\" name=\"parseurloff\" id=\"parseurloff\" \r\n");

	if (parseurloff==1)
	{

	templateBuilder.Append("checked \r\n");

	}	//end if

	templateBuilder.Append(" />\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" value=\"1\" name=\"smileyoff\" id=\"smileyoff\" \r\n");

	if (smileyoff==1)
	{

	templateBuilder.Append(" checked disabled \r\n");

	}	//end if

	templateBuilder.Append(" />\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" value=\"1\" name=\"bbcodeoff\" id=\"bbcodeoff\" \r\n");

	if (bbcodeoff==1)
	{

	templateBuilder.Append(" checked disabled \r\n");

	}	//end if

	templateBuilder.Append(" />\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" value=\"1\" name=\"usesig\" id=\"usesig\" \r\n");

	if (usesig==1)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append("/>\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" name=\"emailnotify\" id=\"emailnotify\" \r\n");

	if (replyemailstatus==1)
	{

	templateBuilder.Append(" checked \r\n");

	}	//end if

	templateBuilder.Append("/>\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" name=\"postreplynotice\" id=\"postreplynotice\" \r\n");

	if (replynotificationstatus==1)
	{

	templateBuilder.Append(" checked \r\n");

	}	//end if

	templateBuilder.Append("/>\r\n");
	templateBuilder.Append("		        </span>\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("					var bbinsert = parseInt('1');\r\n");
	templateBuilder.Append("					var smiliesCount = 24;\r\n");
	templateBuilder.Append("					var colCount = 8;\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");
	string seditorid = "quickpost";
	
	char comma = ',';
	

	templateBuilder.Append("<link href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/seditor.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
	templateBuilder.Append("<div class=\"editor_tb\">\r\n");
	templateBuilder.Append("	<span class=\"right\">\r\n");

	if (topicid>0)
	{

	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("\" onclick=\"floatwin('open_reply', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("', 600, 410, '600,0');doane(event);\">高级回复</a>\r\n");
	templateBuilder.Append("		<span class=\"pipe\">|</span>\r\n");

	}	//end if

	templateBuilder.Append("		<span onmouseover=\"$('newspecial').id = 'newspecialtmp';this.id = 'newspecial';if($('newspecial_menu').childNodes.length>0)  showMenu(this.id);\" id=\"newspecial\" class=\"postbtn\"><a href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("posttopic.aspx?forumid=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("\" onclick=\"floatwin('open_newthread',  '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("posttopic.aspx?forumid=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("', 600, 410, '600,0');doane(event);\">发新主题</a></span>\r\n");
	templateBuilder.Append("	</span>\r\n");
	templateBuilder.Append("	<div>\r\n");
	templateBuilder.Append("	<!--{if in_array('bold', $seditor[1])}-->\r\n");
	templateBuilder.Append("		<a href=\"javascript:;\" title=\"粗体\" class=\"tb_bold\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[b]', '[/b]')\">B</a>\r\n");
	templateBuilder.Append("	<!--{/if}-->\r\n");
	templateBuilder.Append("	<!--{if in_array('color', $seditor[1])}-->\r\n");
	templateBuilder.Append("		<a href=\"javascript:;\" title=\"颜色\" class=\"tb_color\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("forecolor\" onclick=\"showMenu(this.id, true, 0, 2)\">Color</a>\r\n");
	string coloroptions = "Black,Sienna,DarkOliveGreen,DarkGreen,DarkSlateBlue,Navy,Indigo,DarkSlateGray,DarkRed,DarkOrange,Olive,Green,Teal,Blue,SlateGray,DimGray,Red,SandyBrown,YellowGreen,SeaGreen,MediumTurquoise,RoyalBlue,Purple,Gray,Magenta,Orange,Yellow,Lime,Cyan,DeepSkyBlue,DarkOrchid,Silver,Pink,Wheat,LemonChiffon,PaleGreen,PaleTurquoise,LightBlue,Plum,White";
	
	templateBuilder.Append("		<!--{eval $coloroptions = array('Black', 'Sienna', 'DarkOliveGreen', 'DarkGreen', 'DarkSlateBlue', 'Navy', 'Indigo', 'DarkSlateGray', 'DarkRed', 'DarkOrange', 'Olive', 'Green', 'Teal', 'Blue', 'SlateGray', 'DimGray', 'Red', 'SandyBrown', 'YellowGreen','SeaGreen', 'MediumTurquoise','RoyalBlue', 'Purple', 'Gray', 'Magenta', 'Orange', 'Yellow', 'Lime', 'Cyan', 'DeepSkyBlue', 'DarkOrchid', 'Silver', 'Pink', 'Wheat', 'LemonChiffon', 'PaleGreen', 'PaleTurquoise', 'LightBlue', 'Plum', 'White')}-->\r\n");
	templateBuilder.Append("		<div class=\"popupmenu_popup tb_color\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("forecolor_menu\" style=\"display: none\">\r\n");

	int colorname__loop__id=0;
	foreach(string colorname in coloroptions.Split(comma))
	{
		colorname__loop__id++;

	templateBuilder.Append("				<input type=\"button\" style=\"background-color: ");
	templateBuilder.Append(colorname.ToString());
	templateBuilder.Append("\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[color=");
	templateBuilder.Append(colorname.ToString());
	templateBuilder.Append("]', '[/color]')\" />\r\n");

	if (colorname__loop__id%8==0)
	{

	templateBuilder.Append("<br />\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	<!--{/if}-->\r\n");
	templateBuilder.Append("	<!--{if in_array('img', $seditor[1])}-->\r\n");
	templateBuilder.Append("		<a href=\"javascript:;\" title=\"图片\" class=\"tb_img\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[img]', '[/img]')\">Image</a>\r\n");
	templateBuilder.Append("	<!--{/if}-->\r\n");
	templateBuilder.Append("	<!--{if in_array('link', $seditor[1])}-->\r\n");
	templateBuilder.Append("		<a href=\"javascript:;\" title=\"链接\" class=\"tb_link\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[url]', '[/url]')\">Link</a>\r\n");
	templateBuilder.Append("	<!--{/if}-->\r\n");
	templateBuilder.Append("	<!--{if in_array('quote', $seditor[1])}-->\r\n");
	templateBuilder.Append("		<a href=\"javascript:;\" title=\"引用\" class=\"tb_quote\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[quote]', '[/quote]')\">Quote</a>\r\n");
	templateBuilder.Append("	<!--{/if}-->\r\n");
	templateBuilder.Append("	<!--{if in_array('code', $seditor[1])}-->\r\n");
	templateBuilder.Append("		<a href=\"javascript:;\" title=\"代码\" class=\"tb_code\" onclick=\"seditor_insertunit('");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("', '[code]', '[/code]')\">Code</a>\r\n");
	templateBuilder.Append("	<!--{/if}-->\r\n");
	templateBuilder.Append("	<!--{if in_array('smilies', $seditor[1])}-->\r\n");

	if (config.Smileyinsert==1)
	{

	templateBuilder.Append("		<a href=\"javascript:;\" class=\"tb_smilies\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("smilies\" onclick=\"getSmilies(getSmilies_callback);showMenu(this.id, true, 0, 2)\">Smilies</a>\r\n");

	}	//end if

	templateBuilder.Append("	<!--{/if}-->\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (config.Smileyinsert==1)
	{

	templateBuilder.Append("	<div class=\"smilies\" id=\"");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("smilies_menu\" style=\"display:none;width:315px;\">\r\n");
	templateBuilder.Append("		<div class=\"smilieslist\">\r\n");
	string defaulttypname = string.Empty;
	
	templateBuilder.Append("			<div id=\"smiliesdiv\">\r\n");
	templateBuilder.Append("				<div class=\"smiliesgroup\" style=\"margin-right: 0pt;\">\r\n");
	templateBuilder.Append("					<ul>\r\n");

	int stype__loop__id=0;
	foreach(DataRow stype in Caches.GetSmilieTypesCache().Rows)
	{
		stype__loop__id++;


	if (stype__loop__id==1)
	{

	 defaulttypname = stype["code"].ToString().Trim();
	

	}	//end if


	if (stype__loop__id==1)
	{

	templateBuilder.Append("						<li id=\"t_s_" + stype__loop__id.ToString() + "\"><a id=\"s_" + stype__loop__id.ToString() + "\" hidefocus=\"true\" href=\"javascript:;\" onclick=\"showsmiles(" + stype__loop__id.ToString() + ", '" + stype["code"].ToString().Trim() + "', 1, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\" class=\"current\">" + stype["code"].ToString().Trim() + "</a></li>\r\n");

	}
	else
	{

	templateBuilder.Append("						<li id=\"t_s_" + stype__loop__id.ToString() + "\"><a id=\"s_" + stype__loop__id.ToString() + "\" hidefocus=\"true\" href=\"javascript:;\" onclick=\"showsmiles(" + stype__loop__id.ToString() + ", '" + stype["code"].ToString().Trim() + "', 1, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\">" + stype["code"].ToString().Trim() + "</a></li>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("					</ul>\r\n");
	templateBuilder.Append("				 </div>\r\n");
	templateBuilder.Append("				 <div style=\"clear: both;\" class=\"float_typeid\" id=\"showsmilie\"></div>\r\n");
	templateBuilder.Append("				 <table class=\"smilieslist_table\" id=\"s_preview_table\" style=\"display: none\"><tr><td class=\"smilieslist_preview\" id=\"s_preview\"></td></tr></table>\r\n");
	templateBuilder.Append("				 <div id=\"showsmilie_pagenum\" class=\"smilieslist_page\">&nbsp;</div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("			//var firstpagesmilies_json ={ {  Caches.GetSmiliesFirstPageCache()  } };\r\n");
	templateBuilder.Append("			//showFirstPageSmilies(firstpagesmilies_json, '");
	templateBuilder.Append(defaulttypname.ToString());
	templateBuilder.Append("', 16, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("			function getSmilies(func){\r\n");
	templateBuilder.Append("				if($('showsmilie').innerHTML !='' && $('showsmilie').innerHTML != '正在加载表情...')\r\n");
	templateBuilder.Append("					return;\r\n");
	templateBuilder.Append("				var c = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("tools/ajax.aspx?t=smilies\";\r\n");
	templateBuilder.Append("				_sendRequest(c,function(d){var e={};try{e=eval(\"(\"+d+\")\")}catch(f){e={}}var h=e?e:null;func(h);e=null;func=null},false,true);\r\n");
	templateBuilder.Append("				setTimeout(\"if($('showsmilie').innerHTML=='')$('showsmilie').innerHTML = '正在加载表情...'\", 2000);\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			function getSmilies_callback(obj) {\r\n");
	templateBuilder.Append("				smilies_HASH = obj; \r\n");
	templateBuilder.Append("				showsmiles(1, '");
	templateBuilder.Append(defaulttypname.ToString());
	templateBuilder.Append("', 1, '");
	templateBuilder.Append(seditorid.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if



	templateBuilder.Append("				<textarea rows=\"5\" cols=\"80\" name=\"message\" id=\"quickpostmessage\" onKeyDown=\"seditor_ctlent(event, 'validate($(\\'quickpostform\\'))');\" tabindex=\"2\" class=\"txtarea\"  style=\"background:#FFF url(" + quickbgad[1].ToString().Trim() + ") no-repeat 50% 50%;\" \r\n");

	if (quickbgad[0].ToString().Trim()!="")
	{

	templateBuilder.Append(" onfocus=\"$('adlinkbtn').style.display='';$('closebtn').style.display='';this.onfocus=null;\"\r\n");

	}	//end if

	templateBuilder.Append("></textarea>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	if (isseccode)
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td><div style=\"position: relative;\">\r\n");

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


	templateBuilder.Append("		</div></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<button type=\"reset\" type=\"submit\" id=\"postsubmit\" name=\"replysubmit\" tabindex=\"3\">发表回复</button> <span class=\"grayfont\">[Ctrl+Enter快速发布]</span>\r\n");
	templateBuilder.Append("					<a href=\"###\" id=\"adlinkbtn\" style=\"display:none;\" onclick=\"window.open('" + quickbgad[0].ToString().Trim() + "','_blank');\">查看背景广告</a>\r\n");
	templateBuilder.Append("					<a href=\"###\" id=\"closebtn\" style=\"display:none;\" onclick=\"$('quickpostmessage').style.background='';this.style.display='none';$('adlinkbtn').style.display='none';\">隐藏</a>\r\n");
	templateBuilder.Append("					<input type=\"hidden\" id=\"postbytopictype\" name=\"postbytopictype\" value=\"");
	templateBuilder.Append(forum.Postbytopictype.ToString().Trim());
	templateBuilder.Append("\" tabindex=\"3\" />\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			</tbody>\r\n");
	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var smileyinsert = 1;\r\n");
	templateBuilder.Append("	var showsmiliestitle = 0;\r\n");
	templateBuilder.Append("	var smiliesIsCreate = 0;\r\n");
	templateBuilder.Append("	var scrMaxLeft; //表情滚动条宽度\r\n");
	templateBuilder.Append("	var smilies_HASH = {};\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</form>\r\n");



	}	//end if


	if (useradminid>0||usergroupinfo.Raterange!=""||config.Forumjump==1)
	{

	templateBuilder.Append("<div id=\"footfilter\">\r\n");

	if (useradminid>0)
	{

	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("			function action_onchange(value,objfrm,postid){\r\n");
	templateBuilder.Append("				if (value != ''){\r\n");
	templateBuilder.Append("					objfrm.operat.value = value;\r\n");
	templateBuilder.Append("					objfrm.postid.value = postid;\r\n");
	templateBuilder.Append("					if(value != 'delpost'){\r\n");
	templateBuilder.Append("						objfrm.submit();\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else{\r\n");
	templateBuilder.Append("						$('delpost').submit();\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<form id=\"moderate\" name=\"moderate\" method=\"post\" action=\"topicadmin.aspx?action=moderate&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\" class=\"right\">\r\n");
	templateBuilder.Append("			<input name=\"forumid\" type=\"hidden\" value=\"");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("			<input name=\"topicid\" type=\"hidden\" value=\"");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("			<input name=\"postid\" type=\"hidden\" value=\"\" />\r\n");
	templateBuilder.Append("			<input name=\"operat\" type=\"hidden\" value=\"\" />\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("			<select id=\"operatSel\" onchange=\"action_onchange(this.options[this.selectedIndex].value,this.form,0);\"\r\n");
	templateBuilder.Append("				name=\"operatSel\">\r\n");
	templateBuilder.Append("				<option value=\"\" selected=\"selected\">管理选项</option>\r\n");
	templateBuilder.Append("				<option value=\"delete\">删除主题</option>\r\n");
	templateBuilder.Append("				<option value=\"delpost\">批量删帖</option>\r\n");
	templateBuilder.Append("				<option value=\"close\">关闭主题</option>\r\n");
	templateBuilder.Append("				<option value=\"move\">移动主题</option>\r\n");
	templateBuilder.Append("				<option value=\"copy\">复制主题</option>\r\n");
	templateBuilder.Append("				<option value=\"highlight\">高亮显示</option>\r\n");
	templateBuilder.Append("				<option value=\"digest\">设置精华</option>\r\n");
	templateBuilder.Append("				<option value=\"identify\">鉴定主题</option>\r\n");
	templateBuilder.Append("				<option value=\"displayorder\">主题置顶</option>\r\n");
	templateBuilder.Append("				<option value=\"split\">分割主题</option>\r\n");
	templateBuilder.Append("				<option value=\"merge\">合并主题</option>\r\n");
	templateBuilder.Append("				<option value=\"repair\">修复主题</option>\r\n");
	templateBuilder.Append("			</select>\r\n");

	}	//end if

	templateBuilder.Append("		</form>\r\n");

	}
	else if (usergroupinfo.Raterange!="")
	{

	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("			function action_onchange(value,objfrm,postid){\r\n");
	templateBuilder.Append("				if (value != ''){\r\n");
	templateBuilder.Append("					objfrm.operat.value = value;\r\n");
	templateBuilder.Append("					objfrm.postid.value = postid;\r\n");
	templateBuilder.Append("					if(value != 'delpost'){\r\n");
	templateBuilder.Append("						objfrm.submit();\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else{\r\n");
	templateBuilder.Append("						$('delpost').submit();\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<form id=\"moderate\" name=\"moderate\" method=\"post\" action=\"topicadmin.aspx?action=moderate&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("			<input name=\"forumid\" type=\"hidden\" value=\"");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("			<input name=\"topicid\" type=\"hidden\" value=\"");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("			<input name=\"postid\" type=\"hidden\" value=\"\" />\r\n");
	templateBuilder.Append("			<input name=\"operat\" type=\"hidden\" value=\"\" />\r\n");
	templateBuilder.Append("		</form>\r\n");

	}	//end if


	if (config.Forumjump==1)
	{

	templateBuilder.Append("		<select onchange=\"if(this.options[this.selectedIndex].value != '') {if(");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(") {\r\n");
	templateBuilder.Append("		window.location='showforum-'+this.options[this.selectedIndex].value+'");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("'; }else{window.location='showforum.aspx?forumid='+this.options[this.selectedIndex].value;}}\">\r\n");
	templateBuilder.Append("			  <option>论坛跳转...</option>\r\n");
	templateBuilder.Append("			");
	templateBuilder.Append(Caches.GetForumListBoxOptionsCache().ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</select>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


	}	//end if


	}
	else
	{


	if (needlogin)
	{



	if (infloat!=1)
	{

	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main login\">\r\n");
	templateBuilder.Append("	<div class=\"message\">\r\n");
	templateBuilder.Append("		<h1>");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append(" 提示信息</h1>\r\n");
	templateBuilder.Append("		<p>您无权进行当前操作，这可能因以下原因之一造成</p>\r\n");
	templateBuilder.Append("		<p><b>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</b></p>\r\n");
	templateBuilder.Append("		<p>您还没有登录，请填写下面的登录表单后再尝试访问。</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("	<div class=\"nojs\">\r\n");
	templateBuilder.Append("	<div class=\"float\" id=\"floatlayout_login\" style=\"width: 600px; height: 300px;\">\r\n");
	templateBuilder.Append("	<form id=\"formlogin\" name=\"formlogin\" method=\"post\" action=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx\" onsubmit=\"submitLogin(this);\">\r\n");
	templateBuilder.Append("	<input type=\"hidden\" value=\"2592000\" name=\"cookietime\"/>\r\n");
	templateBuilder.Append("		<h1 style=\"margin-bottom:10px;\">会员登录</h1>\r\n");
	templateBuilder.Append("		<table cellpadding=\"0\" cellspacing=\"0\" class=\"formtable\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"username\">用户名</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"text\" id=\"username\" name=\"username\" size=\"25\" maxlength=\"40\" tabindex=\"2\" class=\"txt\" />  <a href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("register.aspx\" tabindex=\"-1\" accesskey=\"r\" title=\"立即注册 (ALT + R)\" class=\"lightlink\">立即注册</a>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"password\">密码</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"password\" name=\"password\" size=\"25\" tabindex=\"3\" class=\"txt\"/> <a href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("getpassword.aspx\" tabindex=\"-1\" accesskey=\"g\" title=\"忘记密码 (ALT + G)\" class=\"lightlink\">忘记密码</a>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	if (config.Secques==1)
	{

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"questionid\">安全问题</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<select name=\"questionid\" tabindex=\"4\">\r\n");
	templateBuilder.Append("					<option value=\"0\">&nbsp;</option>\r\n");
	templateBuilder.Append("					<option value=\"1\">母亲的名字</option>\r\n");
	templateBuilder.Append("					<option value=\"2\">爷爷的名字</option>\r\n");
	templateBuilder.Append("					<option value=\"3\">父亲出生的城市</option>\r\n");
	templateBuilder.Append("					<option value=\"4\">您其中一位老师的名字</option>\r\n");
	templateBuilder.Append("					<option value=\"5\">您个人计算机的型号</option>\r\n");
	templateBuilder.Append("					<option value=\"6\">您最喜欢的餐馆名称</option>\r\n");
	templateBuilder.Append("					<option value=\"7\">驾驶执照的最后四位数字</option>\r\n");
	templateBuilder.Append("					</select>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th><label for=\"answer\">答案</label></th>\r\n");
	templateBuilder.Append("				<td><input type=\"text\" name=\"answer\" size=\"25\" tabindex=\"5\" class=\"txt\" /></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");

	}	//end if

	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th> </th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<button type=\"submit\" name=\"loginsubmit\" id=\"loginsubmit\" value=\"true\" tabindex=\"6\">会员登录</button>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</form>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}
	else
	{

	templateBuilder.Append("	<div class=\"msgbox error_msg\">\r\n");
	templateBuilder.Append("	<p>您无权进行当前操作，这可能因以下原因之一造成</p>\r\n");
	templateBuilder.Append("	<p><b>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</b></p>\r\n");
	templateBuilder.Append("	<p>您还没有登录，请的登录后再尝试访问。</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("	setTimeout(\"floatwin('close_newthread');floatwin('close_reply');floatwin('close_edit');floatwin('open_login', '");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("login.aspx', 600, 410)\",1000);\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("<script type=\"text/javascript\">\r\n");

	if (infloat!=1)
	{

	templateBuilder.Append("		document.getElementById(\"username\").focus();\r\n");

	}	//end if

	templateBuilder.Append("		function submitLogin(loginForm)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("		    loginForm.action = '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx?loginsubmit=true&reurl=' + escape(window.location);\r\n");
	templateBuilder.Append("			loginForm.submit();\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");



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


	}	//end if


	if (config.Forumjump==1)
	{

	templateBuilder.Append("	");
	templateBuilder.Append(navhomemenu.ToString());
	templateBuilder.Append("\r\n");

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
