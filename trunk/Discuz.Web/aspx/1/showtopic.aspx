<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.showtopic" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2010/11/22 17:28:27.
		本页面代码由Discuz!NT模板引擎生成于 2010/11/22 17:28:27. 
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
	templateBuilder.Append("<meta name=\"generator\" content=\"Discuz!NT 3.1.0\" />\r\n");
	templateBuilder.Append("<meta name=\"author\" content=\"Discuz!NT Team and Comsenz UI Team\" />\r\n");
	templateBuilder.Append("<meta name=\"copyright\" content=\"2001-2010 Comsenz Inc.\" />\r\n");
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
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var creditnotice='");
	templateBuilder.Append(Scoresets.GetValidScoreNameAndId().ToString().Trim());
	templateBuilder.Append("';	\r\n");
	templateBuilder.Append("var forumpath = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
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
	templateBuilder.Append("	var imagemaxwidth='");
	templateBuilder.Append(Templates.GetTemplateWidth(templatepath).ToString().Trim());
	templateBuilder.Append("';\r\n");
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
	templateBuilder.Append("search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);;\" class=\"right\">\r\n");
	templateBuilder.Append("		<input type=\"hidden\" name=\"poster\" />\r\n");
	templateBuilder.Append("		<input type=\"hidden\" name=\"keyword\" />\r\n");
	templateBuilder.Append("		<input type=\"hidden\" name=\"type\" value=\"\" />\r\n");
	templateBuilder.Append("		<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\" />\r\n");
	templateBuilder.Append("		<a href=\"javascript:void(0);\" class=\"drop\" id=\"quicksearch\" onclick=\"showMenu(this.id, false);\" onmouseover=\"MouseCursor(this);\">快速搜索</a>\r\n");
	templateBuilder.Append("		<input type=\"text\" name=\"keywordf\" value=\"输入搜索关键字\" onblur=\"if(this.value=='')this.value=defaultValue\" onclick=\"if(this.value==this.defaultValue)this.value = ''\" onkeydown=\"if(this.value==this.defaultValue)this.value = ''\" class=\"txt\"/>\r\n");
	templateBuilder.Append("		<input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"btnsearch\"/>\r\n");
	templateBuilder.Append("	</form>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	    function bind_keyword(form) {\r\n");
	templateBuilder.Append("			if (form.keywordtype.value == '9') {\r\n");
	templateBuilder.Append("			    form.action = '");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("forumsearch.aspx?q=' + escape(form.keywordf.value);\r\n");
	templateBuilder.Append("			} else if (form.keywordtype.value == '8') {\r\n");
	templateBuilder.Append("	            form.keyword.value = '';\r\n");
	templateBuilder.Append("	            form.poster.value = form.keywordf.value;\r\n");
	templateBuilder.Append("	        } else {\r\n");
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

	templateBuilder.Append("		<div id=\"ad_headerbanner\"></div>\r\n");

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
	templateBuilder.Append("var attachtransname = \"");
	templateBuilder.Append(Scoresets.GetTopicAttachCreditsTransName().ToString().Trim());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("var forumtitle = '");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("function modaction(action, pid, extra) \r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("    if(!action) \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        return;\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    var extra = !extra ? '' : '&' + extra;\r\n");
	templateBuilder.Append("    if(!pid && in_array(action, ['delposts', 'banpost'])) \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        var checked = 0;\r\n");
	templateBuilder.Append("        var pid = '';\r\n");
	templateBuilder.Append("        for(var i = 0; i < $('postsform').elements.length; i++) \r\n");
	templateBuilder.Append("        {\r\n");
	templateBuilder.Append("            if($('postsform').elements[i].name.match('topiclist')) \r\n");
	templateBuilder.Append("            {\r\n");
	templateBuilder.Append("                checked = 1;\r\n");
	templateBuilder.Append("                break;\r\n");
	templateBuilder.Append("            }\r\n");
	templateBuilder.Append("        }\r\n");
	templateBuilder.Append("    } \r\n");
	templateBuilder.Append("    else \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        var checked = 1;\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    if(!checked) \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        alert('请选择需要操作的帖子');\r\n");
	templateBuilder.Append("    } \r\n");
	templateBuilder.Append("    else \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        floatwinreset = 1;\r\n");
	templateBuilder.Append("        $('postsform').action = 'topicadmin.aspx?action='+ action +'&fid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&tid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&infloat=1&nopost=1' + (!$('postsform').pid.value ? '' : '&postid=' + $('postsform').pid.value) + extra;\r\n");
	templateBuilder.Append("        floatwin('open_mods', '', 250, 220);\r\n");
	templateBuilder.Append("        $('floatwin_mods').innerHTML = '';\r\n");
	templateBuilder.Append("        ajaxpost('postsform', 'floatwin_mods', '');\r\n");
	templateBuilder.Append("        if(is_ie) \r\n");
	templateBuilder.Append("        {\r\n");
	templateBuilder.Append("            doane(event);\r\n");
	templateBuilder.Append("        }\r\n");
	templateBuilder.Append("        hideMenu();\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("function pidchecked(obj) \r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("    if(obj.checked) \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        if(is_ie && !is_opera) \r\n");
	templateBuilder.Append("        {\r\n");
	templateBuilder.Append("            var inp = document.createElement('<input name=\"topiclist[]\" />');\r\n");
	templateBuilder.Append("        } \r\n");
	templateBuilder.Append("        else \r\n");
	templateBuilder.Append("        {\r\n");
	templateBuilder.Append("            var inp = document.createElement('input');\r\n");
	templateBuilder.Append("            inp.name = 'topiclist[]';\r\n");
	templateBuilder.Append("        }\r\n");
	templateBuilder.Append("        inp.id = 'topiclist_' + obj.value;\r\n");
	templateBuilder.Append("        inp.value = obj.value;\r\n");
	templateBuilder.Append("        inp.style.display = 'none';\r\n");
	templateBuilder.Append("        $('postsform').appendChild(inp);\r\n");
	templateBuilder.Append("    } \r\n");
	templateBuilder.Append("    else\r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        $('postsform').removeChild($('topiclist_' + obj.value));\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("var modclickcount = 0;\r\n");
	templateBuilder.Append("function modclick(obj, pid) \r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("    if(obj.checked) \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        modclickcount++;\r\n");
	templateBuilder.Append("        if($('postsform').pid.value)\r\n");
	templateBuilder.Append("            $('postsform').pid.value += \",\" + pid;\r\n");
	templateBuilder.Append("        else\r\n");
	templateBuilder.Append("            $('postsform').pid.value = pid;\r\n");
	templateBuilder.Append("    } \r\n");
	templateBuilder.Append("    else \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        modclickcount--;\r\n");
	templateBuilder.Append("        if(modclickcount > 0)\r\n");
	templateBuilder.Append("        {\r\n");
	templateBuilder.Append("            $('postsform').pid.value = $('postsform').pid.value.replace(\",\" + pid + \",\", \",\");\r\n");
	templateBuilder.Append("            $('postsform').pid.value = $('postsform').pid.value.replace(\",\" + pid, \"\");\r\n");
	templateBuilder.Append("            $('postsform').pid.value = $('postsform').pid.value.replace(pid + \",\", \"\");\r\n");
	templateBuilder.Append("        }\r\n");
	templateBuilder.Append("        else\r\n");
	templateBuilder.Append("            $('postsform').pid.value = '';\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    $('modcount').innerHTML = modclickcount;\r\n");
	templateBuilder.Append("    if(modclickcount > 0) \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        var offset = fetchOffset(obj);				\r\n");
	templateBuilder.Append("        $('modlayer').style.top = offset['top'] - 65 + 'px';\r\n");
	templateBuilder.Append("        $('modlayer').style.left = offset['left'] - 215 + 'px';\r\n");
	templateBuilder.Append("        $('modlayer').style.display = '';\r\n");
	templateBuilder.Append("    } \r\n");
	templateBuilder.Append("    else \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        $('modlayer').style.display = 'none';\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("}\r\n");
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
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_share.js\"></");
	templateBuilder.Append("script>\r\n");
	int loopi = 1;
	

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
	templateBuilder.Append("</a>  &raquo; ");
	templateBuilder.Append(ShowForumAspxRewrite(forum.Pathlist.Trim(),forumid,forumpageid).ToString().Trim());
	templateBuilder.Append("\r\n");
	int ishtmltitle = Topics.GetMagicValue(topic.Magic, MagicType.HtmlTitle);
	

	if (ishtmltitle==1)
	{

	templateBuilder.Append("			  &raquo; <strong>");
	templateBuilder.Append(Topics.GetHtmlTitle(topic.Tid).ToString().Trim());
	templateBuilder.Append("</strong>\r\n");

	}
	else
	{

	templateBuilder.Append("			  &raquo; <strong>");
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



	if (pagewordad.Length>0)
	{

	templateBuilder.Append("<div id=\"ad_text\" class=\"ad_text sclear\">\r\n");
	templateBuilder.Append("	<table cellspacing=\"1\" cellpadding=\"0\" width=\"100%\" summary=\"text ad\">\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	int adindex = 0;
	

	int pageword__loop__id=0;
	foreach(string pageword in pagewordad)
	{
		pageword__loop__id++;


	if (adindex<4)
	{

	templateBuilder.Append("			<td>");
	templateBuilder.Append(pageword.ToString());
	templateBuilder.Append("</td>\r\n");
	 adindex = adindex+1;
	

	}
	else
	{

	templateBuilder.Append("		</tr><tr>\r\n");
	templateBuilder.Append("			<td>");
	templateBuilder.Append(pageword.ToString());
	templateBuilder.Append("</td>\r\n");
	 adindex = 1;
	

	}	//end if


	}	//end loop


	if (pagewordad.Length%4>0)
	{


					for (int j = 0; j < (4 - pagewordad.Length % 4); j++)
					{
				
	templateBuilder.Append("			<td>&nbsp;</td>\r\n");

					}
				

	}	//end if

	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if



	templateBuilder.Append("<div class=\"wrap s_clear thread\" id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main viewthread\">\r\n");
	templateBuilder.Append("	<div id=\"forumheader\" class=\"s_clear\">\r\n");
	templateBuilder.Append("		<h1>\r\n");

	if (forum.Applytopictype==1 && forum.Topictypeprefix==1)
	{

	templateBuilder.Append("			<cite>");
	templateBuilder.Append(topictypes.ToString());
	templateBuilder.Append("</cite>\r\n");

	}	//end if

	templateBuilder.Append("			");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("	\r\n");
	templateBuilder.Append("		</h1>\r\n");
	templateBuilder.Append("		<p class=\"forumstats\">[ <em>");
	templateBuilder.Append(topicviews.ToString());
	templateBuilder.Append("</em> 查看 / <em>");
	templateBuilder.Append(topic.Replies.ToString().Trim());
	templateBuilder.Append("</em> 回复 ]</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<cite class=\"pageback\">");
	templateBuilder.Append(listlink.ToString());
	templateBuilder.Append("</cite>\r\n");

	if (pagecount!=1)
	{

	templateBuilder.Append("			");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");

	if (pagecount>8)
	{

	templateBuilder.Append("			<kbd><b id=\"pageidtxt1\" title=\"可以输入页码按回车键自动跳转\" onclick=\"$('pageidtxt1').style.display='none';$('pageidinput1').style.display='';$('pageidinput1').focus();\">");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("</b>\r\n");
	templateBuilder.Append("			    <input name=\"gopage\" type=\"text\" class=\"txt\" id=\"pageidinput1\" value=\"");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\" style=\"display:none;text-align:center;\" onfocus=\"this.value=this.defaultValue;this.size=this.value.length;this.select();\" onblur=\"$('pageidinput1').style.display='none';$('pageidtxt1').style.display='';\" onKeyDown=\"if(event.keyCode==13) { if(");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(") {window.location='showtopic-");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("-' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1) + '");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("';}else{window.location='showtopic.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&page=' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1);}}if((event.keyCode >= 48 && event.keyCode <= 57) || event.keyCode==8){this.size=this.value.length+1;return true;}else{return false;}\" size=\"");
	templateBuilder.Append(pageid.ToString().Trim().Length.ToString().Trim());
	templateBuilder.Append("\" maxlength=\"9\" />/ ");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("</kbd>\r\n");

	}	//end if

	templateBuilder.Append("			");
	templateBuilder.Append(nextpage.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("		</div>\r\n");

	if (userid<0||canposttopic)
	{

	templateBuilder.Append("		<span onmouseover=\"if($('newspecial_menu').childNodes.length>0)  showMenu(this.id);\" id=\"newspecial\" class=\"postbtn\"><a title=\"发新话题\" id=\"newtopic\" href=\"posttopic.aspx?forumid=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\" onmouseover=\"if($('newspecial_menu').childNodes.length>0)  showMenu(this.id);\"  onclick=\"floatwin('open_newthread', this.href, 600, 410, '600,0');doane(event);\"><img alt=\"发新话题\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/newtopic.gif\"/></a></span>\r\n");

	}	//end if


	if (userid<0||canreply)
	{

	templateBuilder.Append("		<span class=\"replybtn\"><a href=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("\" onclick=\"floatwin('open_reply', this.href, 600, 410, '600,0');doane(event);\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/reply.gif\" border=\"0\" alt=\"回复该主题\" /></a></span>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<form id=\"postsform\" name=\"postsform\" method=\"post\" action=\"topicadmin.aspx?action=moderate&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("	<input name=\"forumid\" type=\"hidden\" value=\"");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("	<input name=\"topicid\" type=\"hidden\" value=\"");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("	<input name=\"operat\" type=\"hidden\" value=\"delposts\" />\r\n");
	templateBuilder.Append("	<input name=\"pid\" type=\"hidden\" />\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("	<div style=\"display:none;width:165px;\" id=\"modlayer\">\r\n");
	templateBuilder.Append("    <span>选中</span><strong id=\"modcount\">1</strong><span>篇: </span>\r\n");
	templateBuilder.Append("    <a onclick=\"modaction('banpost')\" href=\"javascript:;\">屏蔽</a>\r\n");
	templateBuilder.Append("    <a onclick=\"modaction('delposts')\" href=\"javascript:;\">删除</a>\r\n");
	templateBuilder.Append("    </div>\r\n");

	}	//end if

	templateBuilder.Append("	<div id=\"postsContainer\">\r\n");

	int post__loop__id=0;
	foreach(ShowtopicPagePostInfo post in postlist)
	{
		post__loop__id++;

	templateBuilder.Append("	<table id=\"");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" summary=\"");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" cellspacing=\"0\" cellpadding=\"0\" class=\"topic_table\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("		<td class=\"postauthor\" id=\"");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	if (post.Posterid!=-1)
	{

	templateBuilder.Append("			<!-- member menu -->\r\n");
	templateBuilder.Append("			<div class=\"popupmenu_popup userinfopanel\" id=\"");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("\" style=\"display:none; clip: rect(auto auto auto auto); position:absolute;\" initialized ctrlkey=\"userinfo2\">\r\n");
	templateBuilder.Append("				<div class=\"popavatar\">\r\n");
	templateBuilder.Append("					<div id=\"");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("_ma\"></div>\r\n");
	templateBuilder.Append("					<ul class=\"profile_side\">\r\n");
	templateBuilder.Append("						<li class=\"post_pm\"><a onclick=\"floatwin('open_postpm', this.href, 600, 410, '600,0');doane(event);\" href=\"usercppostpm.aspx?msgtoid=");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">发送短消息</a></li>\r\n");

	if (useradminid==1||useradminid==2)
	{

	templateBuilder.Append("						<li class=\"edit_user\"><a href=\"modcp.aspx?operation=edituser&op=edit&uid=");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">编辑该用户</a></li>\r\n");

	}	//end if

	templateBuilder.Append("					</ul>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"popuserinfo\">\r\n");
	templateBuilder.Append("					<dl class=\"s_clear\">\r\n");

	if (Utils.InArray("uid",userfaceshow))
	{

	templateBuilder.Append("<dt>UID</dt><dd>");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");

	}	//end if


	if (Utils.InArray("bday",userfaceshow))
	{

	templateBuilder.Append("<dt>生日</dt><dd>");
	templateBuilder.Append(post.Bday.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");

	}	//end if


	if (Utils.InArray("posts",userfaceshow))
	{

	templateBuilder.Append("<dt>帖子</dt><dd>");
	templateBuilder.Append(post.Posts.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");

	}	//end if


	if (Utils.InArray("digestposts",userfaceshow))
	{

	templateBuilder.Append("<dt>精华</dt><dd>");
	templateBuilder.Append(post.Digestposts.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");

	}	//end if


	if (Utils.InArray("credits",userfaceshow))
	{

	templateBuilder.Append("<dt>积分</dt><dd>");
	templateBuilder.Append(post.Credits.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");

	}	//end if


	if (score[1].ToString().Trim()!="" && Utils.InArray("extcredits1",userfaceshow))
	{

	templateBuilder.Append("<dt>" + score[1].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits1.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[1].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[2].ToString().Trim()!="" && Utils.InArray("extcredits2",userfaceshow))
	{

	templateBuilder.Append("<dt>" + score[2].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits2.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[2].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[3].ToString().Trim()!="" && Utils.InArray("extcredits3",userfaceshow))
	{

	templateBuilder.Append("<dt>" + score[3].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits3.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[3].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[4].ToString().Trim()!="" && Utils.InArray("extcredits4",userfaceshow))
	{

	templateBuilder.Append("<dt>" + score[4].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits4.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[4].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[5].ToString().Trim()!="" && Utils.InArray("extcredits5",userfaceshow))
	{

	templateBuilder.Append("<dt>" + score[5].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits5.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[5].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[6].ToString().Trim()!="" && Utils.InArray("extcredits6",userfaceshow))
	{

	templateBuilder.Append("<dt>" + score[6].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits6.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[6].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[7].ToString().Trim()!="" && Utils.InArray("extcredits7",userfaceshow))
	{

	templateBuilder.Append("<dt>" + score[7].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits7.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[7].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (score[8].ToString().Trim()!="" && Utils.InArray("extcredits8",userfaceshow))
	{

	templateBuilder.Append("<dt>" + score[8].ToString().Trim() + "</dt><dd>");
	templateBuilder.Append(post.Extcredits8.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[8].ToString().Trim() + "</dd>\r\n");

	}	//end if


	if (Utils.InArray("gender",userfaceshow))
	{

	templateBuilder.Append("<dt>性别</dt><dd><script type=\"text/javascript\">document.write(displayGender(");
	templateBuilder.Append(post.Gender.ToString().Trim());
	templateBuilder.Append("));</");
	templateBuilder.Append("script></dd>\r\n");

	}	//end if


	if (Utils.InArray("location",userfaceshow))
	{

	templateBuilder.Append("<dt>来自</dt><dd>");
	templateBuilder.Append(post.Location.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");

	}	//end if


	if (Utils.InArray("oltime",userfaceshow))
	{

	templateBuilder.Append("<dt>在线时间</dt><dd>");
	templateBuilder.Append(post.Oltime.ToString().Trim());
	templateBuilder.Append("</dd>\r\n");

	}	//end if


	if (post.Joindate!=""&&Utils.InArray("joindate",userfaceshow))
	{

	templateBuilder.Append("<dt>注册时间</dt><dd>\r\n");
	templateBuilder.Append(Convert.ToDateTime(post.Joindate).ToString("yyyy-MM-dd"));
	templateBuilder.Append("</dd>\r\n");

	}	//end if


	if (post.Lastvisit!=""&&Utils.InArray("lastvisit",userfaceshow))
	{

	templateBuilder.Append("<dt>最后登录</dt><dd>\r\n");
	templateBuilder.Append(Convert.ToDateTime(post.Lastvisit).ToString("yyyy-MM-dd"));
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
	templateBuilder.Append("\" class=\"all_topic\">搜索帖子</a>						\r\n");

	if (useradminid>0)
	{


	if (admininfo.Allowviewip==1)
	{

	templateBuilder.Append("						<a onclick=\"floatwin('open_getip', this.href, 400, 170, '600,0');doane(event);\" href=\"getip.aspx?pid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" title=\"查看IP\" class=\"ip\">查看IP</a>\r\n");

	}	//end if


	if (admininfo.Allowbanuser==1)
	{

	templateBuilder.Append("						<a href=\"useradmin.aspx?action=banuser&uid=");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("\" onclick=\"floatwin('open_mods', this.href, 250, 270, '600,0');doane(event);\" title=\"禁止用户\" class=\"forbid_user\">禁止用户</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<!-- member menu -->\r\n");

	}	//end if


	if (post__loop__id==postlist.Count)
	{

	templateBuilder.Append("			<a name=\"lastpost\"></a>\r\n");

	}	//end if


	if (post.Posterid!=-1)
	{

	templateBuilder.Append("			<!--register user-->\r\n");
	templateBuilder.Append("			<cite>\r\n");
	templateBuilder.Append("				<span \r\n");

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
	templateBuilder.Append("/images/noavatar_medium.gif';\"  alt=\"头像\" id=\"memberinfo_");
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append("\" onmouseover=\"showauthor(this,");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append(loopi.ToString());
	templateBuilder.Append(")\"/>\r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end if


	if (post.Nickname!="")
	{

	templateBuilder.Append("				<p><em>");
	templateBuilder.Append(post.Nickname.ToString().Trim());
	templateBuilder.Append("</em></p>\r\n");

	}	//end if

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<p>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				ShowStars(");
	templateBuilder.Append(post.Stars.ToString().Trim());
	templateBuilder.Append(", ");
	templateBuilder.Append(config.Starthreshold.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("			</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			</p>\r\n");
	templateBuilder.Append("			<ul class=\"otherinfo\">\r\n");

	if (config.Userstatusby==1)
	{

	templateBuilder.Append("				<li><label>组别</label>");
	templateBuilder.Append(post.Status.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (Utils.InArray("uid",postleftshow))
	{

	templateBuilder.Append("<li><label>UID</label>");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (Utils.InArray("bday",postleftshow))
	{

	templateBuilder.Append("<li><label>生日</label>");
	templateBuilder.Append(post.Bday.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (Utils.InArray("posts",postleftshow))
	{

	templateBuilder.Append("<li><label>帖子</label>");
	templateBuilder.Append(post.Posts.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (Utils.InArray("digestposts",postleftshow))
	{

	templateBuilder.Append("<li><label>精华</label>");
	templateBuilder.Append(post.Digestposts.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (Utils.InArray("credits",postleftshow))
	{

	templateBuilder.Append("<li><label>积分</label>");
	templateBuilder.Append(post.Credits.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (score[1].ToString().Trim()!="" && Utils.InArray("extcredits1",postleftshow))
	{

	templateBuilder.Append("<li><label>" + score[1].ToString().Trim() + "</label>");
	templateBuilder.Append(post.Extcredits1.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[1].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[2].ToString().Trim()!="" && Utils.InArray("extcredits2",postleftshow))
	{

	templateBuilder.Append("<li><label>" + score[2].ToString().Trim() + "</label>");
	templateBuilder.Append(post.Extcredits2.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[2].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[3].ToString().Trim()!="" && Utils.InArray("extcredits3",postleftshow))
	{

	templateBuilder.Append("<li><label>" + score[3].ToString().Trim() + "</label>");
	templateBuilder.Append(post.Extcredits3.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[3].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[4].ToString().Trim()!="" && Utils.InArray("extcredits4",postleftshow))
	{

	templateBuilder.Append("<li><label>" + score[4].ToString().Trim() + "</label>");
	templateBuilder.Append(post.Extcredits4.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[4].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[5].ToString().Trim()!="" && Utils.InArray("extcredits5",postleftshow))
	{

	templateBuilder.Append("<li><label>" + score[5].ToString().Trim() + "</label>");
	templateBuilder.Append(post.Extcredits5.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[5].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[6].ToString().Trim()!="" && Utils.InArray("extcredits6",postleftshow))
	{

	templateBuilder.Append("<li><label>" + score[6].ToString().Trim() + "</label>");
	templateBuilder.Append(post.Extcredits6.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[6].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[7].ToString().Trim()!="" && Utils.InArray("extcredits7",postleftshow))
	{

	templateBuilder.Append("<li><label>" + score[7].ToString().Trim() + "</label>");
	templateBuilder.Append(post.Extcredits7.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[7].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (score[8].ToString().Trim()!="" && Utils.InArray("extcredits8",postleftshow))
	{

	templateBuilder.Append("<li><label>" + score[8].ToString().Trim() + "</label>");
	templateBuilder.Append(post.Extcredits8.ToString().Trim());
	templateBuilder.Append(" " + scoreunit[8].ToString().Trim() + "</li>\r\n");

	}	//end if


	if (Utils.InArray("gender",postleftshow))
	{

	templateBuilder.Append("<li><label>性别</label><script type=\"text/javascript\">document.write(displayGender(");
	templateBuilder.Append(post.Gender.ToString().Trim());
	templateBuilder.Append("));</");
	templateBuilder.Append("script></li>\r\n");

	}	//end if


	if (Utils.InArray("location",postleftshow))
	{

	templateBuilder.Append("<li><label>来自</label>");
	templateBuilder.Append(post.Location.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (Utils.InArray("oltime",postleftshow))
	{

	templateBuilder.Append("<li><label>在线时间</label>");
	templateBuilder.Append(post.Oltime.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (post.Joindate!=""&&Utils.InArray("joindate",postleftshow))
	{

	templateBuilder.Append("<li><label>注册时间</label>\r\n");
	templateBuilder.Append(Convert.ToDateTime(post.Joindate).ToString("yyyy-MM-dd"));
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (post.Lastvisit!=""&&Utils.InArray("lastvisit",postleftshow))
	{

	templateBuilder.Append("<li><label>最后登录</label>\r\n");
	templateBuilder.Append(Convert.ToDateTime(post.Lastvisit).ToString("yyyy-MM-dd"));
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

	templateBuilder.Append("			<div class=\"medals\">");
	templateBuilder.Append(post.Medals.ToString().Trim());
	templateBuilder.Append("</div>\r\n");

	}	//end if


	}
	else
	{

	templateBuilder.Append("			<cite style=\"padding-left:15px;\">\r\n");
	templateBuilder.Append("			    <em id=\"traveler_ip_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" name=\"traveler_ip\" style=\"display:none\">");
	templateBuilder.Append(post.Ip.ToString().Trim());
	templateBuilder.Append("</em>\r\n");

	if (useradminid>0 && admininfo.Allowviewip==1)
	{

	templateBuilder.Append("					<a href=\"getip.aspx?pid=");
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
	templateBuilder.Append("			<div class=\"postinfo\">\r\n");
	templateBuilder.Append("				<em class=\"hidden\"><a href=\"");
	templateBuilder.Append(UserInfoAspxRewrite(post.Posterid).ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(post.Poster.ToString().Trim());
	templateBuilder.Append("</a></em>\r\n");

	if (topic.Special==4)
	{

	templateBuilder.Append("				<em>\r\n");

	if (post.Debateopinion==1)
	{

	templateBuilder.Append("						正方\r\n");

	}
	else if (post.Debateopinion==2)
	{

	templateBuilder.Append("						反方\r\n");

	}
	else
	{

	templateBuilder.Append("					辩论主题 [<a href=\"");
	templateBuilder.Append(ShowDebateAspxRewrite(topicid).ToString());
	templateBuilder.Append("\">辩论模式</a>]\r\n");

	}	//end if

	templateBuilder.Append("				 </em>\r\n");

	}	//end if

	templateBuilder.Append("				<em>\r\n");
	String olimg = OnlineUsers.GetGroupImg(post.Groupid);
	
	templateBuilder.Append("			    ");
	templateBuilder.Append(olimg.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append(Convert.ToDateTime(post.Postdatetime).ToString("yyyy-MM-dd HH:mm"));
	templateBuilder.Append("</em>\r\n");

	if (post.Posterid!=-1)
	{

	templateBuilder.Append("				<em>\r\n");

	if (onlyauthor=="1" || onlyauthor=="2")
	{

	 aspxrewriteurl = this.ShowTopicAspxRewrite(topicid,0);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">显示全部</a>  \r\n");

	}
	else
	{


	if (topic.Posterid==post.Posterid)
	{

	templateBuilder.Append("				|<a href=\"showtopic.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&onlyauthor=1&posterid=");
	templateBuilder.Append(topic.Posterid.ToString().Trim());
	templateBuilder.Append("\">只看楼主</a>  \r\n");

	}
	else
	{

	templateBuilder.Append("				|<a href=\"showtopic.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&onlyauthor=2&posterid=");
	templateBuilder.Append(post.Posterid.ToString().Trim());
	templateBuilder.Append("\">只看该用户</a>  \r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("				</em>				\r\n");

	}	//end if

	templateBuilder.Append("				<span class=\"right\">\r\n");
	templateBuilder.Append("					<a href=\"###\" class=\"floor\" title=\"复制帖子链接到剪贴板\" onclick=\"setcopy(window.location.toString().replace(/#(.*?)$/ig, '') + '#");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("', '已经复制到剪贴板')\">\r\n");

	if (post.Postnocustom!="")
	{

	templateBuilder.Append("					");
	templateBuilder.Append(post.Postnocustom.ToString().Trim());
	templateBuilder.Append("\r\n");

	}
	else
	{

	templateBuilder.Append("					");
	templateBuilder.Append(post.Id.ToString().Trim());
	templateBuilder.Append("<sup>#</sup>\r\n");

	}	//end if

	templateBuilder.Append("					</a>\r\n");
	templateBuilder.Append("				</span>    \r\n");
	templateBuilder.Append("				<div class=\"msgfsize right\">\r\n");
	templateBuilder.Append("					<label style=\"margin-left:4px;\">字体大小: </label>\r\n");
	templateBuilder.Append("					<small title=\"正常\" onclick=\"$('message");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("').className='t_msgfont'\"><b>t</b></small>\r\n");
	templateBuilder.Append("					<big title=\"放大\" onclick=\"$('message");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("').className='t_bigfont'\"><b>T</b></big>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"change_topic right\">\r\n");

	if (userid!=-1)
	{


	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("    show_report_button(");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");


	templateBuilder.Append("<span class=\"pipe\">|</span>\r\n");

	if (usergroupinfo.Raterange!="" && post.Posterid!=-1)
	{


	if (post.Layer!=0)
	{

	templateBuilder.Append("					<a href=\"topicadmin.aspx?action=rate&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&operat=rate\" onclick=\"floatwin('open_mods', this.href, 250, 270);return false;\">评分</a><span class=\"pipe\">|</span>\r\n");

	}	//end if


	}	//end if


	}	//end if


	if (ismoder==1)
	{


	if (post.Ratetimes>0)
	{

	templateBuilder.Append("					<a href=\"topicadmin.aspx?action=cancelrate&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\"onclick=\"floatwin('open_mods', this.href, 600, 410);return false;\">撤销评分</a><span class=\"pipe\">|</span>\r\n");

	}	//end if


	if (post.Id==1 && topic.Special==2)
	{


	if (topic.Replies>0)
	{

	templateBuilder.Append("					<a href=\"topicadmin.aspx?action=bonus&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("&operat=bonus\" onclick=\"floatwin('open_mods', this.href, 400, 380);return false;\">结帖</a><span class=\"pipe\">|</span>\r\n");

	}	//end if


	}	//end if


	}
	else
	{


	if (post.Posterid!=-1 && userid==post.Posterid)
	{


	if (post.Id==1 && topic.Special==2)
	{


	if (topic.Replies>0)
	{

	templateBuilder.Append("					<a href=\"topicadmin.aspx?action=bonus&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("&operat=bonus\" onclick=\"floatwin('open_mods', this.href, 400, 380);return false;\">结帖</a><span class=\"pipe\">|</span>\r\n");

	}	//end if


	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>	\r\n");
	templateBuilder.Append("               <!--silverlight slideshow start-->\r\n");

	if (post.Id==1)
	{


	if (config.Silverlight==1 && topic.Attachment==2)
	{

	templateBuilder.Append("                 <div class=\"silverlight\"><a onclick=\"BOX_show('slideShowSilverlight', 500);\" href=\"javascript:void(0);\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/btn_silverlight.gif\" alt=\"银光图片\" title=\"银光图片\" style=\"cursor:pointer;\" /></a></div>\r\n");
	templateBuilder.Append("                 <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("silverlight/PostAlbum/silverlight.js\" reload=\"1\"></");
	templateBuilder.Append("script>             \r\n");
	templateBuilder.Append("                 <div id=\"BOX_overlay_sl\" style=\"background: black; position: absolute; z-index:100; filter:alpha(opacity=50);-moz-opacity: 0.6;opacity: 0.6;\"></div>                     \r\n");
	templateBuilder.Append("                     <div id=\"slideShowSilverlight\" style=\"clear:both;display:none; width:800px;height:500px;background:black;\">\r\n");
	templateBuilder.Append("                     <h3 class=\"float_ctrl\">	                             \r\n");
	templateBuilder.Append("                            <em>银光图片</em>\r\n");
	templateBuilder.Append("		                    <span id=\"swfclosebtn\">\r\n");
	templateBuilder.Append("			                   <a href=\"javascript:;\" class=\"float_close\" onclick=\"BOX_remove('slideShowSilverlight');\" title=\"关闭\"> </a>\r\n");
	templateBuilder.Append("		                    </span>\r\n");
	templateBuilder.Append("	                 </h3>\r\n");
	templateBuilder.Append("                     <object data=\"data:application/x-silverlight-2,\" type=\"application/x-silverlight-2\" width=\"800px\" height=\"460px\">\r\n");
	templateBuilder.Append("            		        <param name=\"source\" value=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("silverlight/PostAlbum/ClientBin/PostAlbum.xap\"/>\r\n");
	templateBuilder.Append("            		        <param name=\"minRuntimeVersion\" value=\"4.0.50401.0\" />\r\n");
	templateBuilder.Append("            		        <param name=\"autoUpgrade\" value=\"true\" /> 		\r\n");
	templateBuilder.Append("                            <param name=\"background\" value=\"black\" />	\r\n");
	templateBuilder.Append("            	            <param name=\"initParams\" value=\"topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append(",forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append(",posterid=");
	templateBuilder.Append(posterid.ToString());
	templateBuilder.Append(",onlyauthor=");
	templateBuilder.Append(onlyauthor.ToString());
	templateBuilder.Append("\" />	  \r\n");
	templateBuilder.Append("            			    <a href=\"http://go.microsoft.com/fwlink/?LinkID=149156&v=4.0.50401.0\" style=\"text-decoration:none\" target=\"_blank\">\r\n");
	templateBuilder.Append(" 			                    <img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("silverlight/PostAlbum/PostAlbum.jpg\" alt=\"安装微软Silverlight控件,即刻使用帖图浏览功能\" style=\"border-style:none\"/>\r\n");
	templateBuilder.Append("		                    </a>\r\n");
	templateBuilder.Append("        	          </object>                 \r\n");
	templateBuilder.Append("                    </div>  	    	\r\n");
	templateBuilder.Append("			    </div>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("            <!--silverlight slideshow end--> \r\n");
	templateBuilder.Append("			<div id=\"ad_thread2_" + post__loop__id.ToString() + "\"></div>\r\n");
	templateBuilder.Append("			<div id=\"ad_thread3_" + post__loop__id.ToString() + "\"></div>\r\n");
	templateBuilder.Append("			<div class=\"postmessage defaultpost\">\r\n");

	if (post.Invisible!=-2 || ismoder==1)
	{


	if (topic.Identify>0 && post.Id==1)
	{

	templateBuilder.Append("					<div class=\"threadstamp\" onclick=\"this.style.display='none';\"><img src=\"images/identify/");
	templateBuilder.Append(topicidentify.Filename.ToString().Trim());
	templateBuilder.Append("\" alt=\"点击关闭鉴定图章\" title=\"点击关闭鉴定图章\" /></div>\r\n");

	}	//end if


	if (ismoder==1 && post.Invisible==-2)
	{

	templateBuilder.Append("					<div class=\"hintinfo\">提示: 该帖已被屏蔽, 您拥有管理权限, 以下是帖子内容</div>		              \r\n");

	}	//end if


	if (post.Layer!=0)
	{

	templateBuilder.Append("<h2>");
	templateBuilder.Append(post.Title.ToString().Trim());
	templateBuilder.Append("</h2>\r\n");

	}	//end if

	templateBuilder.Append("				    <div id=\"topictag\"></div>\r\n");
	templateBuilder.Append("				    <div id=\"message");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" class=\"t_msgfont\">\r\n");

	if (post.Id==1)
	{

	templateBuilder.Append("						    <div id=\"firstpost\">\r\n");

	}	//end if

	templateBuilder.Append("						    ");
	templateBuilder.Append(post.Message.ToString().Trim());
	templateBuilder.Append("\r\n");

	if (post.Id==1)
	{

	templateBuilder.Append("				      </div>\r\n");

	}	//end if


	if (post.Id==1 && enabletag)
	{

	templateBuilder.Append("			            <script type=\"text/javascript\">function forumhottag_callback(data){ tags = data; }</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			            <script type=\"text/javascript\" src=\"cache/tag/hottags_forum_cache_jsonp.txt\"></");
	templateBuilder.Append("script>\r\n");
	int hastag = Topics.GetMagicValue(topic.Magic, MagicType.TopicTag);
	

	if (hastag==1)
	{

	templateBuilder.Append("					            <script type=\"text/javascript\">getTopicTags(");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(");</");
	templateBuilder.Append("script>\r\n");

	}
	else
	{

	templateBuilder.Append("					            <script type=\"text/javascript\">parsetag();</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("				    </div>\r\n");

	if (post.Lastedit!="")
	{

	templateBuilder.Append("					<div class=\"lastediter\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/lastedit.gif\" alt=\"最后编辑\"/>");
	templateBuilder.Append(post.Lastedit.ToString().Trim());
	templateBuilder.Append("</div>\r\n");

	}	//end if


	if (attachmentlist.Count>0)
	{

	int currentattachcount = 0;
	

	int attachtemp__loop__id=0;
	foreach(ShowtopicPageAttachmentInfo attachtemp in attachmentlist)
	{
		attachtemp__loop__id++;


	if (attachtemp.Pid==post.Pid)
	{

	 currentattachcount = currentattachcount + 1;
	

	}	//end if


	}	//end loop


	if (currentattachcount>0)
	{

	int getattachperm = attachmentlist[0].Getattachperm;
	

	if (getattachperm==1)
	{

	templateBuilder.Append("					<div class=\"postattachlist\">\r\n");
	templateBuilder.Append("						<div id=\"BOX_overlay\" style=\"background: #000; position: absolute; z-index:100; filter:alpha(opacity=50);-moz-opacity: 0.6;opacity: 0.6;\"></div>\r\n");
	templateBuilder.Append("                        <div id=\"attachpaymentlog\" style=\"display: none; background :Aliceblue;  border:0px solid #999; width:503px; height:443px;\"></div>\r\n");
	templateBuilder.Append("                        <div id=\"buyattach\" style=\"display: none; background :Aliceblue; border:0px solid #999; width:503px; height:323px;\"></div>\r\n");

	int attachment__loop__id=0;
	foreach(ShowtopicPageAttachmentInfo attachment in attachmentlist)
	{
		attachment__loop__id++;


	if (attachment.Pid==post.Pid)
	{


	if (attachment.Allowread==1)
	{


	templateBuilder.Append("<dl class=\"\r\n");

	if (attachment.Attachimgpost==1)
	{

	templateBuilder.Append("t_attachlist_img\r\n");

	}
	else
	{

	templateBuilder.Append("t_attachlist\r\n");

	}	//end if

	templateBuilder.Append(" attachimg\">\r\n");
	templateBuilder.Append("	<dt>\r\n");

	if (attachment.Attachimgpost==1)
	{

	templateBuilder.Append("	<img class=\"absmiddle\" border=\"0\" alt=\"\" src=\"images/attachicons/image.gif\"/>\r\n");

	}
	else if (attachment.Filename.Trim().ToLower().EndsWith("rar")||attachment.Filename.Trim().ToLower().EndsWith("zip"))
	{

	templateBuilder.Append("	<img class=\"absmiddle\" border=\"0\" alt=\"\" src=\"images/attachicons/rar.gif\"/>\r\n");

	}
	else
	{

	templateBuilder.Append("	<img class=\"absmiddle\" border=\"0\" alt=\"\" src=\"images/attachicons/attachment.gif\"/>\r\n");

	}	//end if

	templateBuilder.Append("	<strong>\r\n");

	if (attachment.Attachprice<=0)
	{

	templateBuilder.Append("	   <a target=\"_blank\" href=\"attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else
	{


	if (attachment.Isbought==1 || post.Posterid==userid)
	{

	templateBuilder.Append("		   <a target=\"_blank\" href=\"attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else
	{


	if (usergroupinfo.Radminid==1)
	{

	templateBuilder.Append("			  <a target=\"_blank\" href=\"attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else
	{

	templateBuilder.Append("			  ");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("	</strong>\r\n");
	templateBuilder.Append("	<em>(<script type=\"text/javascript\">ShowFormatBytesStr(");
	templateBuilder.Append(attachment.Filesize.ToString().Trim());
	templateBuilder.Append(");</");
	templateBuilder.Append("script>)</em>\r\n");
	bool viewattach = false;
	

	if (attachment.Attachprice>0)
	{

	templateBuilder.Append("	<p>\r\n");
	templateBuilder.Append("	售价(");
	templateBuilder.Append(Scoresets.GetTopicAttachCreditsTransName().ToString().Trim());
	templateBuilder.Append("):<strong>");
	templateBuilder.Append(attachment.Attachprice.ToString().Trim());
	templateBuilder.Append(" </strong>									\r\n");
	templateBuilder.Append("	[<a onclick=\"BOX_show('attachpaymentlog', ");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append(");\" href=\"javascript:void(0);\">记录</a>]\r\n");
	 viewattach = attachment.Isbought==1;
	

	if (post.Posterid!=userid && !viewattach)
	{


	if (usergroupinfo.Radminid!=1)
	{

	templateBuilder.Append("		[<a onclick=\"BOX_show('buyattach', ");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append(");\" href=\"javascript:void(0);\">购买</a>] \r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("	</p>\r\n");

	}	//end if

	templateBuilder.Append("	</dt>\r\n");
	templateBuilder.Append("	<dd>\r\n");
	templateBuilder.Append("	<p style=\"padding:3px 0;\">\r\n");

	if (attachment.Description!="")
	{
	templateBuilder.Append(attachment.Description.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("<span style=\"color:#666\">(");
	templateBuilder.Append(attachment.Postdatetime.ToString().Trim());
	templateBuilder.Append(")</span></p>\r\n");

	if (attachment.Preview!="")
	{

	templateBuilder.Append("	<p>");
	templateBuilder.Append(attachment.Preview.ToString().Trim());
	templateBuilder.Append("</p>\r\n");

	}	//end if

	templateBuilder.Append("	<p>\r\n");

	if (post.Posterid==userid || usergroupinfo.Radminid==1)
	{

	 viewattach = true;
	

	}	//end if

	templateBuilder.Append("	<a name=\"attach");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\"></a>\r\n");

	if (UserAuthority.DownloadAttachment(forum,userid,usergroupinfo))
	{

	templateBuilder.Append("<!--当用户有下载附件权限时-->\r\n");

	if (config.Showimages==1)
	{


	if (config.Attachimgpost==1)
	{


	if (attachment.Attachimgpost==1)
	{


	if (attachment.Attachprice<=0 || viewattach)
	{

	templateBuilder.Append("				<img alt=\"");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("\" \r\n");

	if (config.Showattachmentpath==1)
	{


	if (attachment.Filename.IndexOf("http")>=0)
	{

	templateBuilder.Append("						src=\"");
	templateBuilder.Append(attachment.Filename.ToString().Trim());
	templateBuilder.Append("\"\r\n");

	}
	else
	{

	templateBuilder.Append("						src=\"upload/");
	templateBuilder.Append(attachment.Filename.ToString().Trim());
	templateBuilder.Append("\"\r\n");

	}	//end if


	}
	else
	{

	templateBuilder.Append("					src=\"attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\"\r\n");

	}	//end if

	templateBuilder.Append("			onmouseover=\"attachimg(this, 'mouseover')\" onload=\"attachimg(this, 'load');\" onclick=\"zoom(this, this.src);\" />\r\n");

	}	//end if


	}	//end if


	}	//end if


	}	//end if


	}
	else
	{

	templateBuilder.Append("	<span class=\\\"attachnotdown\\\">您所在的用户组无法下载或查看附件</span>\r\n");

	}	//end if

	templateBuilder.Append("	</p>\r\n");
	templateBuilder.Append("	</dd>										\r\n");
	templateBuilder.Append("</dl>\r\n");



	}
	else
	{

	templateBuilder.Append("							<span class=\"notdown\">你的下载权限 ");
	templateBuilder.Append(usergroupinfo.Readaccess.ToString().Trim());
	templateBuilder.Append(" 低于此附件所需权限 ");
	templateBuilder.Append(attachment.Readperm.ToString().Trim());
	templateBuilder.Append(", 你无权查看此附件</span>\r\n");

	}	//end if


	}	//end if


	}	//end loop

	templateBuilder.Append("					</div>\r\n");

	}
	else
	{

	templateBuilder.Append("					<div class=\"notice\">\r\n");
	templateBuilder.Append("						附件:<em>您所在的用户组无法下载或查看附件</em>\r\n");
	templateBuilder.Append("					</div>\r\n");

	}	//end if


	}	//end if


	}	//end if


	if (post.Ratetimes>0)
	{


	templateBuilder.Append("<dl class=\"newrate s_clear\">\r\n");
	templateBuilder.Append("	<dt>\r\n");
	templateBuilder.Append("		<strong><a title=\"本帖最近评分记录\" href=\"#\">");
	templateBuilder.Append(post.Ratetimes.ToString().Trim());
	templateBuilder.Append("</a></strong>\r\n");
	templateBuilder.Append("		<p>评分次数</p>\r\n");
	templateBuilder.Append("	</dt>\r\n");

	if (Discuz.Config.GeneralConfigs.GetConfig().DisplayRateCount>0)
	{

	templateBuilder.Append("	<dd>\r\n");
	templateBuilder.Append("		<ul class=\"s_clear\" id=\"rate_");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\"></ul>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\">_attachEvent(window, \"load\", function(){ showrate(");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(post.Ratetimes.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(",'");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("'); })</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</dd>\r\n");

	}	//end if

	templateBuilder.Append("</dl>\r\n");



	}	//end if


	if (post.Id==1)
	{


	if (topic.Special==3)
	{

	templateBuilder.Append("					<div class=\"bonusrate\">\r\n");
	templateBuilder.Append("						<p>本帖得分:</p>\r\n");
	templateBuilder.Append("						<div class=\"attachmentinfo\">\r\n");

	int bonuslog__loop__id=0;
	foreach(BonusLogInfo bonuslog in bonuslogs)
	{
		bonuslog__loop__id++;


	if (bonuslog.Bonus>0)
	{


	if (bonuslog__loop__id!=1)
	{

	templateBuilder.Append("									,\r\n");

	}	//end if

	 aspxrewriteurl = this.UserInfoAspxRewrite(bonuslog.Answerid);
	
	string unit = scoreunit[ bonuslog.Extid ];
	
	string name = score[ bonuslog.Extid ];
	
	templateBuilder.Append("								<a href=\"");
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

	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("					</div>\r\n");

	}
	else if (topic.Special==4)
	{

	templateBuilder.Append("					<div class=\"debate_show\">\r\n");
	templateBuilder.Append("						<div class=\"squaretitle\">\r\n");
	templateBuilder.Append("							<p>正方观点</p>\r\n");
	templateBuilder.Append("							");
	templateBuilder.Append(debateexpand.Positiveopinion.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("						<div class=\"sidetitle\">\r\n");
	templateBuilder.Append("							<p>反方观点</p>\r\n");
	templateBuilder.Append("							");
	templateBuilder.Append(debateexpand.Negativeopinion.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("					</div>\r\n");

	}	//end if

	templateBuilder.Append("					<!--投票部分-->\r\n");


	if (topic.Special==1)
	{

	templateBuilder.Append("<!--投票区开始-->\r\n");
	templateBuilder.Append("<div class=\"pollpanel\">\r\n");
	templateBuilder.Append("		<h4>\r\n");
	templateBuilder.Append("		投票：<strong>");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("</strong>\r\n");

	if (pollinfo.Multiple==1)
	{

	templateBuilder.Append("		- 多选(最多可选");
	templateBuilder.Append(pollinfo.Maxchoices.ToString().Trim());
	templateBuilder.Append("项)\r\n");

	}	//end if

	templateBuilder.Append("		- 截止时间：");
	templateBuilder.Append(pollinfo.Expiration.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</h4>\r\n");
	templateBuilder.Append("		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" summary=\"pollpanel\">\r\n");

	int polloption__loop__id=0;
	foreach(DataRow polloption in Polls.GetPollOptionList(topicid).Rows)
	{
		polloption__loop__id++;

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td class=\"selector\">\r\n");

	if (allowvote)
	{


	if (pollinfo.Multiple==1)
	{

	templateBuilder.Append("					<input type=\"checkbox\" name=\"pollitemid\" value=\"" + polloption["polloptionid"].ToString().Trim() + "\" onclick='checkbox(this)'/>\r\n");

	}
	else
	{

	templateBuilder.Append("					<input type=\"radio\" name=\"pollitemid\"  value=\"" + polloption["polloptionid"].ToString().Trim() + "\"  />\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td colspan=\"2\">\r\n");
	templateBuilder.Append("				" + polloption__loop__id.ToString() + ". " + polloption["name"].ToString().Trim() + "\r\n");

	if (showpollresult)
	{


	if (useradminid==1 && polloption["value"].ToString().Trim()!="0")
	{

	templateBuilder.Append("				( <a href=\"javascript:void(0);\" onclick=\"javascript:displayvoter($('voterlist" + polloption["polloptionid"].ToString().Trim() + "'));\">该项投票人</a> )\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");

	if (showpollresult)
	{

	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td> </td>\r\n");
	templateBuilder.Append("			<td class=\"optionvessel\">\r\n");
	templateBuilder.Append("				<div class=\"optionbar\">\r\n");
	int styleid = polloption__loop__id % 10;
	
	templateBuilder.Append("					<div class=\"polloptionbar \r\n");

	if (polloption["value"].ToString().Trim()!="0")
	{

	templateBuilder.Append("pollcolor");
	templateBuilder.Append(styleid.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\" style=\"width:" + polloption["percentwidth"].ToString().Trim() + "px\"></div>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<strong>" + polloption["value"].ToString().Trim() + "</strong>票 / " + polloption["percent"].ToString().Trim() + "\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr id=\"voterlist" + polloption["polloptionid"].ToString().Trim() + "\" style=\"display:none;\">\r\n");
	templateBuilder.Append("			<td colspan=\"3\">\r\n");

	if (useradminid==1 && polloption["value"].ToString().Trim()!="0")
	{

	templateBuilder.Append("				 " + polloption["votername"].ToString().Trim() + "\r\n");

	}	//end if

	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");

	}	//end if

	templateBuilder.Append("		</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("		<script language=\"javascript\">\r\n");
	templateBuilder.Append("		var max_obj = ");
	templateBuilder.Append(pollinfo.Maxchoices.ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("	    var p = 0;\r\n");
	templateBuilder.Append("	    function checkbox(obj) {\r\n");
	templateBuilder.Append("	        if(obj.checked) {\r\n");
	templateBuilder.Append("		        p++;\r\n");
	templateBuilder.Append("		        for (var i = 0; i < $('postsform').elements.length; i++) {\r\n");
	templateBuilder.Append("			        var e = $('postsform').elements[i];\r\n");
	templateBuilder.Append("			        if(p == max_obj) {\r\n");
	templateBuilder.Append("				        if(e.name.match('pollitemid') && !e.checked) {\r\n");
	templateBuilder.Append("					        e.disabled = true;\r\n");
	templateBuilder.Append("				        }\r\n");
	templateBuilder.Append("			        }\r\n");
	templateBuilder.Append("		        }\r\n");
	templateBuilder.Append("	        } else {\r\n");
	templateBuilder.Append("		        p--;\r\n");
	templateBuilder.Append("		        for (var i = 0; i < $('postsform').elements.length; i++) {\r\n");
	templateBuilder.Append("			        var e = $('postsform').elements[i];\r\n");
	templateBuilder.Append("			        if(e.name.match('pollitemid') && e.disabled) {\r\n");
	templateBuilder.Append("				        e.disabled = false;\r\n");
	templateBuilder.Append("			        }\r\n");
	templateBuilder.Append("		        }\r\n");
	templateBuilder.Append("	        }\r\n");
	templateBuilder.Append("        }	   \r\n");
	templateBuilder.Append("	    function displayvoter(objid) {\r\n");
	templateBuilder.Append("	        if(objid.style.display == 'block') {\r\n");
	templateBuilder.Append("	           objid.style.display = 'none';\r\n");
	templateBuilder.Append("	        }\r\n");
	templateBuilder.Append("	        else {\r\n");
	templateBuilder.Append("	           objid.style.display = 'block';\r\n");
	templateBuilder.Append("	        }\r\n");
	templateBuilder.Append("	    }	    \r\n");
	templateBuilder.Append("	    </");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td colspan=\"2\">\r\n");

	if (usergroupinfo.Allowvote==1)
	{


	if (allowvote)
	{

	templateBuilder.Append("						<button  name=\"Submit\" onclick=\"this.form.action='poll.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("';this.form.submit();\" >马上投票</button>\r\n");

	}
	else
	{

	templateBuilder.Append("						提示: 您已经投过票或者投票已经过期\r\n");

	}	//end if


	}
	else
	{

	templateBuilder.Append("					抱歉,您所在的用户组没有参与投票的权限,请注册或登陆!\r\n");

	}	//end if

	templateBuilder.Append("			 </td>\r\n");
	templateBuilder.Append("		</tr>\r\n");

	if (showpollresult&&config.Silverlight==1)
	{

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("			<td colspan=\"2\"><iframe src=\"silverlight/piechart/index.html?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&bg=FFFFFF\" allowtransparency=\"yes\" width=\"95%\" height=\"425\" border=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" frameborder=\"0\" ></iframe>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end if


	if (useradminid==1 && voters!="")
	{

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td colspan=\"2\">\r\n");
	templateBuilder.Append("				<button type=\"button\" onclick=\"expandoptions('ticketvoterlist');\" />查看投票用户名单>></button>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		<tbody id=\"ticketvoterlist\" style=\"display:none;\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td colspan=\"2\">");
	templateBuilder.Append(voters.ToString());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end if

	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if



	templateBuilder.Append("					<!--悬赏部分-->\r\n");

	if (topic.Special==2)
	{

	templateBuilder.Append("					<div class=\"special_reward\">\r\n");
	templateBuilder.Append("						<p class=\"reward_price\">悬赏金额: <strong>");
	templateBuilder.Append(userextcreditsinfo.Name.ToString().Trim());
	templateBuilder.Append(" ");
	templateBuilder.Append(topic.Price.ToString().Trim());
	templateBuilder.Append(" ");
	templateBuilder.Append(userextcreditsinfo.Unit.ToString().Trim());
	templateBuilder.Append(" </strong></p>\r\n");
	templateBuilder.Append("						<div class=\"specialmsg\">\r\n");
	templateBuilder.Append("							<table cellspacing=\"0\" cellpadding=\"0\">\r\n");
	templateBuilder.Append("								<tbody>\r\n");
	templateBuilder.Append("								<tr>\r\n");
	templateBuilder.Append("									<td>悬赏的问题解决办法</td>\r\n");
	templateBuilder.Append("								</tr>\r\n");
	templateBuilder.Append("								</tbody>\r\n");
	templateBuilder.Append("							</table>\r\n");
	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("					</div>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			</div>\r\n");

	if (post.Id==1)
	{


	if (topic.Moderated>0 && config.Moderactions>0)
	{

	templateBuilder.Append("			<div class=\"mangeinfo\">");
	templateBuilder.Append(TopicAdmins.GetTopicListModeratorLog(topicid).ToString().Trim());
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("			<div class=\"useraction\">\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("				<a href=\"favorites.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&infloat=1\" onclick=\"ajaxmenu(event, this.id, 3000, 0)\" id=\"ajax_favorite\">收藏</a>\r\n");

	if (usergroupinfo.Raterange!="" && post.Posterid!=-1)
	{

	templateBuilder.Append("				<a id=\"ratelink\" href=\"topicadmin.aspx?action=rate&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&operat=rate\" onclick=\"floatwin('open_mods', this.href, 250, 270);return false;\">评分</a>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("				<a onclick=\"floatwin('open_emailfriend', this.href, 250, 380);return false;\" href=\"misc.aspx?action=emailfriend&tid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" id=\"share\">分享</a>\r\n");

	if (config.Disableshare==1)
	{

	templateBuilder.Append("				<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				function openforward()\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("				  share.floatwin('");
	templateBuilder.Append(config.Sharelist.ToString().Trim());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				<a href=\"javascript:void(0)\" onclick=\"openforward()\" id=\"forward\">转发</a>\r\n");

	}	//end if

	templateBuilder.Append("			</div>\r\n");

	}	//end if


	}
	else
	{

	templateBuilder.Append("			<div id=\"message");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("\" class=\"t_msgfont\">\r\n");
	templateBuilder.Append("				<div id=\"ad_thread3_" + post__loop__id.ToString() + "\"></div>\r\n");
	templateBuilder.Append("			    <div class='hintinfo'>提示: 该帖被管理员或版主屏蔽</div>\r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end if


	if (post.Invisible!=-2 || ismoder==1)
	{


	if (config.Showsignatures==1)
	{


	if (post.Usesig==1)
	{


	if (post.Signature!="")
	{

	templateBuilder.Append("				<!--签名开始-->\r\n");
	templateBuilder.Append("				<div class=\"postertext\">\r\n");

	if (config.Maxsigrows>0)
	{

	int ieheight = config.Maxsigrows*19;
	
	float heightem = config.Maxsigrows*1.6f;
	
	templateBuilder.Append("						<div class=\"signatures\" style=\"max-height:");
	templateBuilder.Append(heightem.ToString());
	templateBuilder.Append("em;maxHeightIE:");
	templateBuilder.Append(ieheight.ToString());
	templateBuilder.Append("px\">");
	templateBuilder.Append(post.Signature.ToString().Trim());
	templateBuilder.Append("</div>\r\n");

	}
	else
	{

	templateBuilder.Append("						");
	templateBuilder.Append(post.Signature.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<!--签名结束-->\r\n");

	}	//end if


	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"postauthor\"></td>\r\n");
	templateBuilder.Append("		<td class=\"postcontent postactions\">\r\n");
	templateBuilder.Append("			<div id=\"ad_thread1_" + post__loop__id.ToString() + "\"></div>\r\n");
	templateBuilder.Append("			<em>\r\n");

	if (canreply)
	{


	if (userid!=-1)
	{

	templateBuilder.Append("			<a href=\"###\" onclick=\"replyToFloor('");
	templateBuilder.Append(post.Id.ToString().Trim());
	templateBuilder.Append("', '");
	templateBuilder.Append(post.Poster.ToString().Trim());
	templateBuilder.Append("', '");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("')\" class=\"fastreply\">回复</a>\r\n");

	}	//end if

	templateBuilder.Append("			<a href=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&quote=yes\" class=\"repquote\" onclick=\"floatwin('open_reply', this.href, 600, 410, '600,0');doane(event);\">引用</a>\r\n");

	}	//end if


	if (ismoder==1)
	{


	if (topic.Special==4)
	{

	templateBuilder.Append("			<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("&debate=");
	templateBuilder.Append(post.Debateopinion.ToString().Trim());
	templateBuilder.Append("\" class=\"editpost\">编辑</a>\r\n");

	}
	else
	{

	templateBuilder.Append("			<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\" \r\n");

	if (topic.Special==0)
	{

	templateBuilder.Append("onclick=\"floatwin('open_edit', this.href, 600, 410, '600,0');doane(event);\"\r\n");

	}	//end if

	templateBuilder.Append("  class=\"editpost\">编辑</a>\r\n");

	}	//end if


	}
	else
	{


	if (post.Posterid!=-1 && userid==post.Posterid)
	{


	if (topic.Closed==0)
	{


	if (topic.Special==4)
	{

	templateBuilder.Append("					<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&debate=");
	templateBuilder.Append(post.Debateopinion.ToString().Trim());
	templateBuilder.Append("\"  class=\"editpost\">编辑</a>\r\n");

	}
	else
	{

	templateBuilder.Append("					<a href=\"editpost.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&postid=");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append("&pageid=");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("\" \r\n");

	if (topic.Special==0)
	{

	templateBuilder.Append("onclick=\"floatwin('open_edit', this.href, 600, 410, '600,0');doane(event);\"\r\n");

	}	//end if

	templateBuilder.Append("  class=\"editpost\">编辑</a>\r\n");

	}	//end if


	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("			</em>\r\n");
	templateBuilder.Append("			<a href=\"#\" onclick=\"window.scrollTo(0,0)\">TOP</a>\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("			<label for=\"manage");
	templateBuilder.Append(post.Id.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("            <input type=\"checkbox\" value=\"");
	templateBuilder.Append(post.Id.ToString().Trim());
	templateBuilder.Append("\" onclick=\"pidchecked(this);modclick(this, ");
	templateBuilder.Append(post.Pid.ToString().Trim());
	templateBuilder.Append(")\" id=\"manage");
	templateBuilder.Append(post.Id.ToString().Trim());
	templateBuilder.Append("\"/>管理\r\n");
	templateBuilder.Append("            </label>\r\n");

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr class=\"threadad\">\r\n");
	templateBuilder.Append("		<td class=\"postauthor\"></td>\r\n");
	templateBuilder.Append("		<td class=\"adcontent\">\r\n");

	if (post.Id==1 && postleaderboardad!="")
	{

	templateBuilder.Append("			<div id=\"postleaderboardad\">");
	templateBuilder.Append(postleaderboardad.ToString());
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	 loopi = loopi+1;
	

	}	//end loop

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	</form>\r\n");
	templateBuilder.Append("	<!--ntforumbox end-->\r\n");
	templateBuilder.Append("	<div class=\"forumcontrol s_clear\">\r\n");
	templateBuilder.Append("	<table cellspacing=\"0\" cellpadding=\"0\" class=\"narrow\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("		<td class=\"modaction\">\r\n");

	if (useradminid>0||usergroupinfo.Raterange!=""||config.Forumjump==1||(topic.Special==2&&topic.Posterid==userid))
	{

	templateBuilder.Append("			<!--forumjumping start-->\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				function action_onchange(value,objfrm,postid,banstatus){\r\n");
	templateBuilder.Append("					if (value != ''){\r\n");
	templateBuilder.Append("						objfrm.operat.value = value;\r\n");
	templateBuilder.Append("						objfrm.postid.value = postid;\r\n");
	templateBuilder.Append("						if (value != \"delete\")\r\n");
	templateBuilder.Append("						{\r\n");
	templateBuilder.Append("							objfrm.action = objfrm.action + '&referer=' + escape(window.location);\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("						if (value == 'banpost' && typeof(banstatus) != \"undefined\")\r\n");
	templateBuilder.Append("						{\r\n");
	templateBuilder.Append("							objfrm.operat.value = value;\r\n");
	templateBuilder.Append("							objfrm.action = objfrm.action + \"&banstatus=\" + banstatus;\r\n");
	templateBuilder.Append("							objfrm.submit();\r\n");
	templateBuilder.Append("							return;\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("						if(value == 'delposts' || value == 'banpost'){\r\n");
	templateBuilder.Append("							$('postsform').operat.value = value; \r\n");
	templateBuilder.Append("							$('postsform').action = $('postsform').action + '&referer=' + escape(window.location);\r\n");
	templateBuilder.Append("							$('postsform').submit();\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("						else{\r\n");
	templateBuilder.Append("							objfrm.submit();\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("			</");
	templateBuilder.Append("script>\r\n");
	bool canuseadminfunc = usergroupinfo.Raterange!="" || usergroupinfo.Maxprice>0 || (topic.Special==2&&topic.Posterid==userid);
	

	if (useradminid>0)
	{

	templateBuilder.Append("				<form id=\"moderate\" name=\"moderate\" method=\"post\" action=\"topicadmin.aspx?action=moderate&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&infloat=1\">\r\n");
	templateBuilder.Append("					<input name=\"forumid\" type=\"hidden\" value=\"");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("					<input name=\"topicid\" type=\"hidden\" value=\"");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("					<input name=\"postid\" type=\"hidden\" value=\"\" />\r\n");
	templateBuilder.Append("					<input name=\"operat\" type=\"hidden\" value=\"\" />\r\n");
	templateBuilder.Append("					<input type=\"hidden\" name=\"winheight\" />\r\n");
	templateBuilder.Append("					<input type=\"hidden\" name=\"optgroup\" />\r\n");

	if (ismoder==1)
	{

	templateBuilder.Append("					<span class=\"dropmenu\" onclick=\"showMenu(this.id)\" id=\"operatSel\">主题管理</span>\r\n");
	templateBuilder.Append("					<ul style=\"width: 180px; display: none;\" id=\"operatSel_menu\" class=\"popupmenu_popup headermenu_popup inlinelist\">\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'delete');return false;\" href=\"###\">删除主题</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'bump');return false;\" href=\"###\">提沉主题</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'close');return false;\" href=\"###\">关闭主题</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'move');return false;\" href=\"###\">移动主题</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'copy');return false;\" href=\"###\">复制主题</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'highlight');return false;\" href=\"###\">高亮显示</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'digest');return false;\" href=\"###\">设置精华</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'identify');return false;\" href=\"###\">鉴定主题</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'displayorder');return false;\" href=\"###\">主题置顶</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'split');return false;\" href=\"###\">分割主题</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'merge');return false;\" href=\"###\">合并主题</a></li>\r\n");
	templateBuilder.Append("						<li class=\"wide\"><a onclick=\"modthreads(1, 'repair');return false;\" href=\"###\">修复主题</a></li>\r\n");
	templateBuilder.Append("					</ul>\r\n");

	}	//end if

	templateBuilder.Append("				</form>\r\n");

	}
	else if (canuseadminfunc)
	{

	templateBuilder.Append("				<form id=\"moderate\" name=\"moderate\" method=\"post\" action=\"topicadmin.aspx?action=moderate&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\"  class=\"right\">\r\n");
	templateBuilder.Append("					<input name=\"forumid\" type=\"hidden\" value=\"");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("					<input name=\"topicid\" type=\"hidden\" value=\"");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("					<input name=\"postid\" type=\"hidden\" value=\"\" />\r\n");
	templateBuilder.Append("					<input name=\"operat\" type=\"hidden\" value=\"\" />\r\n");
	templateBuilder.Append("				</form>\r\n");

	}	//end if

	templateBuilder.Append("			<!--forumjumping end-->\r\n");

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("				<div class=\"pages\">\r\n");
	templateBuilder.Append("					<cite class=\"pageback\">");
	templateBuilder.Append(listlink.ToString());
	templateBuilder.Append("</cite>\r\n");

	if (pagecount!=1)
	{

	templateBuilder.Append("					");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");

	if (pagecount>8)
	{

	templateBuilder.Append("					<kbd><b id=\"pageidtxt2\" title=\"可以输入页码按回车键自动跳转\" onclick=\"$('pageidtxt2').style.display='none';$('pageidinput2').style.display='';$('pageidinput2').focus();\">");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("</b>\r\n");
	templateBuilder.Append("						<input name=\"gopage\" type=\"text\" class=\"txt\" id=\"pageidinput2\" value=\"");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("\" style=\"display:none;text-align:center;\" onfocus=\"this.value=this.defaultValue;this.size=this.value.length;this.select();\" onblur=\"$('pageidinput1').style.display='none';$('pageidtxt1').style.display='';\" onKeyDown=\"if(event.keyCode==13) { if(");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(") {window.location='showtopic-");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("-' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1) + '");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("';}else{window.location='showtopic.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&page=' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1);}}if((event.keyCode >= 48 && event.keyCode <= 57) || event.keyCode==8){this.size=this.value.length+1;return true;}else{return false;}\" size=\"");
	templateBuilder.Append(pageid.ToString().Trim().Length.ToString().Trim());
	templateBuilder.Append("\" maxlength=\"9\" />/ ");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("</kbd>\r\n");

	}	//end if

	templateBuilder.Append("					");
	templateBuilder.Append(nextpage.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"chg_topic\"><a href=\"showtopic.aspx?forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&go=prev\">上一主题</a> | \r\n");
	templateBuilder.Append("				<a href=\"showtopic.aspx?forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("&go=next\">下一主题</a></div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	</div>\r\n");

	if (canreply)
	{


	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/bbcode.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/post.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<form method=\"post\" name=\"postform\" id=\"quickpostform\" action=\"postreply.aspx?topicid=");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append("\" enctype=\"multipart/form-data\" onsubmit=\"return validate(this);\" >\r\n");
	templateBuilder.Append("<div id=\"quickpost\" class=\"mainbox viewthread\">\r\n");
	templateBuilder.Append("	<table summary=\"快速回复帖子\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"postauthor\">\r\n");
	templateBuilder.Append("			<div class=\"avatar\">	\r\n");
	string avatarurl = Avatars.GetAvatarUrl(userid);
	
	templateBuilder.Append("			<img src=\"");
	templateBuilder.Append(avatarurl.ToString());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/noavatar_medium.gif';\" alt=\"回复者\"/>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<td class=\"postcontent\">\r\n");

	if (quickeditorad!="")
	{

	templateBuilder.Append("			<div class=\"leaderboard\">");
	templateBuilder.Append(quickeditorad.ToString());
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("			<table cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\" summary=\"个性设置\">			\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("			    <td>\r\n");
	int devidtype = Wysky.Plugin.Devtask.Entities.WTypes.Getidtype(userid);
	
	templateBuilder.Append("			    debug:");
	templateBuilder.Append(devidtype.ToString());
	templateBuilder.Append("<br />\r\n");

	if (devidtype==1)
	{

	templateBuilder.Append("			    <input type=\"hidden\" id=\"changertype\" name=\"changertype\" value=\"pd\"><select id=\"devtaskstatus\" name=\"devtaskstatus\"><option value=\"\">状态</option><option value=\"0\">新建</option><option value=\"1\">公认</option><option value=\"2\">打回</option><option value=\"3\">已分派</option><option value=\"4\">已解决</option><option value=\"5\">已关闭</option></select><select id=\"devtaskuserid\" name=\"devtaskuserid\"><option value=\"\">转派给</option><option value=\"2\">wysky</option></select><br />\r\n");

	}	//end if


	if (devidtype==2)
	{

	templateBuilder.Append("			    <input type=\"hidden\" id=\"changertype\" name=\"changertype\" value=\"rd\"><select id=\"devtaskstatus\" name=\"devtaskstatus\"><option value=\"\">状态</option><option value=\"1\">公认</option><option value=\"2\">打回</option><option value=\"3\">已分派</option><option value=\"4\">已解决</option></select><select id=\"devtaskuserid\" name=\"devtaskuserid\"><option value=\"\">转派给</option><option value=\"2\">wysky</option></select><br />\r\n");

	}	//end if


	if (devidtype==3)
	{

	templateBuilder.Append("			    <input type=\"hidden\" id=\"changertype\" name=\"changertype\" value=\"ued\"><select id=\"devtaskstatus\" name=\"devtaskstatus\"><option value=\"\">状态</option><option value=\"1\">公认</option><option value=\"2\">打回</option><option value=\"3\">已分派</option><option value=\"4\">已解决</option></select><select id=\"Select4\" name=\"devtaskuserid\"><option value=\"\">转派给</option><option value=\"2\">wysky</option></select><br />\r\n");

	}	//end if


	if (devidtype==4)
	{

	templateBuilder.Append("			    <input type=\"hidden\" id=\"changertype\" name=\"changertype\" value=\"qa\"><select id=\"devtaskstatus\" name=\"devtaskstatus\"><option value=\"\">状态</option><option value=\"4\">测试通过</option><option value=\"5\">测试未通过</option></select><select id=\"devtaskuserid\" name=\"devtaskuserid\"><option value=\"\">转派给</option><option value=\"2\">wysky</option></select><br />\r\n");

	}	//end if

	templateBuilder.Append("			    </td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("				<input type=\"hidden\" id=\"quickposttitle\" name=\"");
	templateBuilder.Append(config.Antispamposttitle.ToString().Trim());
	templateBuilder.Append("\" size=\"84\" tabindex=\"1\" value=\"\"/><input type=\"hidden\" id=\"postid\" name=\"postid\" value=\"-1\" />\r\n");
	templateBuilder.Append("				<span style=\"display:none\">\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" value=\"1\" name=\"htmlon\" id=\"htmlon\" \r\n");

	if (usergroupinfo.Allowhtml!=1)
	{

	templateBuilder.Append(" disabled\r\n");

	}	//end if

	templateBuilder.Append("/>\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" name=\"parseurloff\" id=\"parseurloff\" value=\"1\" \r\n");

	if (parseurloff==1)
	{

	templateBuilder.Append(" checked \r\n");

	}	//end if

	templateBuilder.Append("/>\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" name=\"smileyoff\" id=\"smileyoff\" value=\"1\" \r\n");

	if (smileyoff==1)
	{

	templateBuilder.Append(" checked disabled \r\n");

	}	//end if

	templateBuilder.Append("/>\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" name=\"bbcodeoff\" id=\"bbcodeoff\" value=\"1\" \r\n");

	if (bbcodeoff==1)
	{

	templateBuilder.Append(" checked disabled \r\n");

	}	//end if

	templateBuilder.Append("/>\r\n");
	templateBuilder.Append("		        <input type=\"checkbox\" name=\"usesig\" id=\"usesig\" value=\"1\" \r\n");

	if (usesig==1)
	{

	templateBuilder.Append(" checked \r\n");

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
	
	templateBuilder.Append("				<em id=\"validatemessage\"></em>\r\n");

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



	templateBuilder.Append("				<textarea rows=\"5\" cols=\"80\" name=\"");
	templateBuilder.Append(config.Antispampostmessage.ToString().Trim());
	templateBuilder.Append("\" id=\"quickpostmessage\" tabindex=\"2\" class=\"txtarea\"  style=\"background:#FFF url(" + quickbgad[1].ToString().Trim() + ") no-repeat 50% 50%;\" \r\n");

	if (quickbgad[0].ToString().Trim()!="")
	{

	templateBuilder.Append(" onfocus=\"$('adlinkbtn').style.display='';$('closebtn').style.display='';this.onfocus=null;\"\r\n");

	}	//end if

	templateBuilder.Append(" onkeydown=\"ajaxctlent(event, this.form, ");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append(", isendpage, '");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("');\"></textarea>\r\n");
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

	templateBuilder.Append("					<button type=\"button\" id=\"quickpostsubmit\" name=\"replysubmit\" tabindex=\"3\" onclick=\"ajaxreply(this.form, ");
	templateBuilder.Append(topicid.ToString());
	templateBuilder.Append(", isendpage, '");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("', false);\">发表回复</button><span class=\"grayfont\">[Ctrl+Enter快速发布]</span>\r\n");
	templateBuilder.Append("					<a href=\"###\" id=\"adlinkbtn\" style=\"display:none;\" onclick=\"window.open('" + quickbgad[0].ToString().Trim() + "','_blank');\">查看背景广告</a>\r\n");
	templateBuilder.Append("					<a href=\"###\" id=\"closebtn\" style=\"display:none;\" onclick=\"$('quickpostmessage').style.background='';this.style.display='none';$('adlinkbtn').style.display='none';\">隐藏</a>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			</tbody>\r\n");
	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var isendpage = (");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("==");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("	var textobj = $('quickpostmessage');\r\n");
	templateBuilder.Append("	var smileyinsert = 1;\r\n");
	templateBuilder.Append("	var showsmiliestitle = 0;\r\n");
	templateBuilder.Append("	var smiliesIsCreate = 0;	\r\n");
	templateBuilder.Append("	var smilies_HASH = {};\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_quickreply.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("</form>\r\n");



	}	//end if

	templateBuilder.Append("</div>\r\n");

	if (userid<0||canposttopic)
	{

	templateBuilder.Append("	<ul class=\"popupmenu_popup newspecialmenu\" id=\"newspecial_menu\" style=\"display: none\">\r\n");

	if (forum.Allowspecialonly<=0)
	{

	templateBuilder.Append("		<li><a href=\"posttopic.aspx?forumid=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("\" onclick=\"floatwin('open_newthread',  this.href, 600, 410, '600,0');doane(event);\">发新主题</a></li>\r\n");

	}	//end if

	int specialpost = forum.Allowpostspecial&1;
	

	if (specialpost==1 && usergroupinfo.Allowpostpoll==1)
	{

	templateBuilder.Append("		<li class=\"poll\"><a href=\"posttopic.aspx?forumid=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&type=poll\">发布投票</a></li>\r\n");

	}	//end if

	 specialpost = forum.Allowpostspecial&4;
	

	if (specialpost==4 && usergroupinfo.Allowbonus==1)
	{

	templateBuilder.Append("			<li class=\"reward\"><a href=\"posttopic.aspx?forumid=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&type=bonus\">发布悬赏</a></li>\r\n");

	}	//end if

	 specialpost = forum.Allowpostspecial&16;
	

	if (specialpost==16 && usergroupinfo.Allowdebate==1)
	{

	templateBuilder.Append("			<li class=\"debate\"><a href=\"posttopic.aspx?forumid=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("&type=debate\">发起辩论</a></li>\r\n");

	}	//end if

	templateBuilder.Append("	</ul>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var topictitle = '");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("var maxpage = parseInt('");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var pageid = parseInt('");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("if(maxpage > 1) {\r\n");
	templateBuilder.Append("	document.onkeyup = function(e){\r\n");
	templateBuilder.Append("		e = e ? e : window.event;\r\n");
	templateBuilder.Append("		var tagname = is_ie ? e.srcElement.tagName : e.target.tagName;\r\n");
	templateBuilder.Append("		if(tagname == 'INPUT' || tagname == 'TEXTAREA') return;\r\n");
	templateBuilder.Append("		actualCode = e.keyCode ? e.keyCode : e.charCode;\r\n");
	templateBuilder.Append("		if (pageid < maxpage && actualCode == 39) {\r\n");
	templateBuilder.Append("		    window.location = '");
	templateBuilder.Append(Urls.ShowTopicAspxRewrite(topicid,pageid+1).ToString().Trim());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		if (pageid > 1 && actualCode == 37) {\r\n");
	templateBuilder.Append("		    window.location = '");
	templateBuilder.Append(Urls.ShowTopicAspxRewrite(topicid,pageid-1).ToString().Trim());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

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

	templateBuilder.Append("<div class=\"msgbox\" style=\"background:none;text-align:left;\">\r\n");
	templateBuilder.Append("	<div class=\"msg_inner error_msg\">\r\n");
	templateBuilder.Append("		<p>您无权进行当前操作，这可能因以下原因之一造成</p>\r\n");
	templateBuilder.Append("		<p><b>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</b></p>\r\n");
	templateBuilder.Append("		<p>您还没有登录，请的登录后再尝试访问。</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
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

	templateBuilder.Append("		<div id=\"nav\">\r\n");
	templateBuilder.Append("			<div class=\"wrap s_clear\"><a id=\"forumlist\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <strong>错误提示</strong></div>\r\n");
	templateBuilder.Append("		</div>\r\n");

	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main\">\r\n");
	templateBuilder.Append("	<div class=\"msgbox\">\r\n");
	templateBuilder.Append("		<h1>出现了");
	templateBuilder.Append(page_err.ToString());
	templateBuilder.Append("个错误</h1>\r\n");
	templateBuilder.Append("		<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("		<div class=\"msg_inner error_msg\">\r\n");
	templateBuilder.Append("			<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n");
	templateBuilder.Append("			<p class=\"errorback\">\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("					if(");
	templateBuilder.Append(msgbox_showbacklink.ToString());
	templateBuilder.Append(")\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						document.write(\"<a href=\\\"");
	templateBuilder.Append(msgbox_backlink.ToString());
	templateBuilder.Append("\\\">返回上一步</a> &nbsp; &nbsp;|&nbsp; &nbsp  \");\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				<a href=\"forumindex.aspx\">论坛首页</a>\r\n");

	if (usergroupid==7)
	{

	templateBuilder.Append("				 &nbsp; &nbsp;|&nbsp; &nbsp; <a href=\"login.aspx\">登录</a>&nbsp; &nbsp;|&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n");

	}	//end if

	templateBuilder.Append("			</p>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");



	}	//end if


	}	//end if
	templateBuilder.Append(inpostad.ToString());
	templateBuilder.Append("\r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("	");
	templateBuilder.Append(navhomemenu.ToString());
	templateBuilder.Append("\r\n");

	}	//end if


	if (showvisitedforumsmenu)
	{

	templateBuilder.Append("<ul class=\"popupmenu_popup\" id=\"visitedforums_menu\" style=\"display: none\">\r\n");

	int simpforuminfo__loop__id=0;
	foreach(SimpleForumInfo simpforuminfo in visitedforums)
	{
		simpforuminfo__loop__id++;


	if (simpforuminfo.Fid!=forumid)
	{

	templateBuilder.Append("    <li><a href=\"");
	templateBuilder.Append(simpforuminfo.Url.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(simpforuminfo.Name.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("</ul>\r\n");

	}	//end if

	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("getuserips();\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");


	if (infloat!=1)
	{


	if (pagename=="website.aspx")
	{

	templateBuilder.Append("       <div id=\"websitebottomad\"></div>\r\n");

	}
	else if (footerad!="")
	{

	templateBuilder.Append("     <div id=\"ad_footerbanner\">");
	templateBuilder.Append(footerad.ToString());
	templateBuilder.Append("</div>   \r\n");

	}	//end if


	if (headerad!="")
	{

	templateBuilder.Append("<div id=\"ad_headerbanner_nodisplay\" style=\"display:none\">");
	templateBuilder.Append(headerad.ToString());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("$('ad_headerbanner').innerHTML = $('ad_headerbanner_nodisplay').innerHTML;\r\n");
	templateBuilder.Append("$('ad_headerbanner_nodisplay').parentNode.removeChild($('ad_headerbanner_nodisplay'));\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

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
	templateBuilder.Append("			Powered by <strong><a href=\"http://nt.discuz.net\" target=\"_blank\" title=\"Discuz!NT 3.1.0 (.NET Framework 2.0/3.x)\">Discuz!NT</a></strong> <em class=\"f_bold\">3.1.0</em>\r\n");

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

	templateBuilder.Append("				 , ");
	templateBuilder.Append(querycount.ToString());
	templateBuilder.Append(" query.\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("		</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<ul id=\"quicksearch_menu\" class=\"popupmenu_popup\" style=\"display: none;\">\r\n");
	templateBuilder.Append("	<li onclick=\"$('keywordtype').value='0';$('quicksearch').innerHTML='帖子标题';$('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">帖子标题</li>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("	<li onclick=\"$('keywordtype').value='2';$('quicksearch').innerHTML='空间日志';$('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">空间日志</li>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("	<li onclick=\"$('keywordtype').value='3';$('quicksearch').innerHTML='相册标题';$('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">相册标题</li>\r\n");

	}	//end if

	templateBuilder.Append("	<li onclick=\"$('keywordtype').value='8';$('quicksearch').innerHTML='作者';$('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">作者</li>\r\n");
	templateBuilder.Append("	<li onclick=\"$('keywordtype').value='9';$('quicksearch').innerHTML='版块';$('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">版块</li>\r\n");
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


	if (config.Stylejump==1)
	{


	if (userid!=-1 || config.Guestcachepagetimeout<=0)
	{

	templateBuilder.Append("	<ul id=\"styleswitcher_menu\" class=\"popupmenu_popup s_clear\" style=\"display: none;\">\r\n");
	templateBuilder.Append("	");
	templateBuilder.Append(templatelistboxoptions.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("	</ul>\r\n");

	}	//end if


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
