<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.showtopiclist" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:47.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:47. 
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



	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var templatepath = \"");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("var fid = parseInt(");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_showforum.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">	\r\n");
	templateBuilder.Append("		<span class=\"right\">\r\n");

	if (forumid==-1)
	{

	templateBuilder.Append("			<a href=\"forumindex.aspx\">全部</a>\r\n");
	templateBuilder.Append("			<a href=\"showtopiclist.aspx?type=digest&amp;forums=");
	templateBuilder.Append(forums.ToString());
	templateBuilder.Append("\">精华帖区</a>\r\n");

	}
	else
	{

	 aspxrewriteurl = this.ShowForumAspxRewrite(forumid,0);
	
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">全部</a>\r\n");
	templateBuilder.Append("			<a href=\"showtopiclist.aspx?forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&type=digest\">精华帖区</a>\r\n");

	}	//end if


	if (config.Rssstatus!=0)
	{

	templateBuilder.Append("			<a href=\"tools/rss.aspx\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/icon_feed.gif\" alt=\"Rss\"/></a>\r\n");

	}	//end if

	templateBuilder.Append("		</span>\r\n");
	templateBuilder.Append("		<a id=\"forumlist\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\" \r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("onmouseover=\"showMenu(this.id);\" onmouseout=\"showMenu(this.id);\"\r\n");

	}	//end if

	templateBuilder.Append(" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <strong>\r\n");

	if (forumid>0)
	{

	 aspxrewriteurl = this.ShowForumAspxRewrite(forum.Fid,0);
	
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else if (type=="digest")
	{

	templateBuilder.Append("			精华帖\r\n");

	}
	else
	{

	templateBuilder.Append("			新帖\r\n");

	}	//end if

	templateBuilder.Append("</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (page_err==0)
	{


	if (showforumlogin==1)
	{

	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("	<div class=\"main\">\r\n");
	templateBuilder.Append("		<h3>本版块已经被管理员设置了密码</h3>\r\n");
	templateBuilder.Append("		<form id=\"forumlogin\" name=\"forumlogin\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"forumpassword\">请输入密码</label></th>\r\n");
	templateBuilder.Append("			<td><input name=\"forumpassword\" type=\"password\" id=\"forumpassword\" size=\"20\" class=\"txt\"/></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	if (isseccode)
	{

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"vcode\">输入验证码</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<div style=\"position: relative;\">\r\n");

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


	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("		    </td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end if

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th></th>\r\n");
	templateBuilder.Append("			<td><input type=\"submit\"  value=\"确定\"/></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</form>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}
	else
	{

	templateBuilder.Append("<div class=\"wrap s_clear\"  id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main hslice\" id=\"threadlist\">\r\n");
	templateBuilder.Append("	<div id=\"forumheader\" class=\"s_clear\">\r\n");
	templateBuilder.Append("		<h1  class=\"entry-title\">\r\n");

	if (forumid>0)
	{

	 aspxrewriteurl = this.ShowForumAspxRewrite(forum.Fid,0);
	
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else if (type=="digest")
	{

	templateBuilder.Append("			精华帖\r\n");

	}
	else
	{

	templateBuilder.Append("			新帖\r\n");

	}	//end if

	templateBuilder.Append("</h1>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append(" / ");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"threadlist entry-content\">\r\n");
	templateBuilder.Append("	<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" summary=\"帖子\">\r\n");
	templateBuilder.Append("	<thead class=\"category\">\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"folder\">&nbsp;</td>\r\n");
	templateBuilder.Append("		<td class=\"icon\">&nbsp;</td>\r\n");
	templateBuilder.Append("		<th>标题</th>\r\n");
	templateBuilder.Append("		<td class=\"author\">作者</td>\r\n");
	templateBuilder.Append("		<td class=\"nums\">回复/查看</td>\r\n");
	templateBuilder.Append("		<td class=\"lastpost\"><cite>最后发表</cite></td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</thead>\r\n");
	templateBuilder.Append("	<!--announcement area start-->\r\n");

	int announcement__loop__id=0;
	foreach(DataRow announcement in Announcements.GetSimplifiedAnnouncementList(nowdatetime).Rows)
	{
		announcement__loop__id++;

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/announcement.gif\" alt=\"announcement\"/></td>\r\n");
	templateBuilder.Append("		<td>&nbsp;</td>\r\n");
	templateBuilder.Append("		<th class=\"subject\"><a href=\"announcement.aspx#" + announcement["id"].ToString().Trim() + "\">" + announcement["title"].ToString().Trim() + "</a></th>\r\n");
	templateBuilder.Append("		<td colspan=\"3\">\r\n");

	if (Utils.StrToInt(announcement["posterid"].ToString().Trim(), 0)==-1)
	{

	templateBuilder.Append("				游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(announcement["posterid"].ToString().Trim());
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">" + announcement["poster"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("	<!--announcement area end-->\r\n");

	if (topiclist.Count>0)
	{

	templateBuilder.Append("	<!--showtopiclist start-->\r\n");

	int topic__loop__id=0;
	foreach(TopicInfo topic in topiclist)
	{
		topic__loop__id++;

	templateBuilder.Append("	<tbody id=\"normalthread_");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("\" >\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"folder\">\r\n");

	if (topic.Folder!="")
	{

	 aspxrewriteurl = this.ShowTopicAspxRewrite(topic.Tid,0);
	
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/folder_");
	templateBuilder.Append(topic.Folder.ToString().Trim());
	templateBuilder.Append(".gif\" alt=\"主题图标\"/></a>\r\n");

	}
	else
	{

	templateBuilder.Append("			&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<td class=\"icon\">\r\n");

	if (topic.Iconid!=0)
	{

	templateBuilder.Append("				<img src=\"images/posticons/");
	templateBuilder.Append(topic.Iconid.ToString().Trim());
	templateBuilder.Append(".gif\" alt=\"示图\"/>\r\n");

	}
	else
	{

	templateBuilder.Append("				&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<th class=\"subject\">	\r\n");
	templateBuilder.Append("			<label class=\"right\">\r\n");

	if (topic.Digest>0)
	{

	templateBuilder.Append("				<img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/digest");
	templateBuilder.Append(topic.Digest.ToString().Trim());
	templateBuilder.Append(".gif\" alt=\"digtest\"/>\r\n");

	}	//end if


	if (topic.Special==1)
	{

	templateBuilder.Append("				<img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/pollsmall.gif\" alt=\"投票\" />\r\n");

	}	//end if


	if (topic.Special==2 || topic.Special==3)
	{

	templateBuilder.Append("				<img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/bonus.gif\" alt=\"悬赏\"/>\r\n");

	}	//end if


	if (topic.Special==4)
	{

	templateBuilder.Append("				<img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/debatesmall.gif\" alt=\"辩论\"/>\r\n");

	}	//end if

	templateBuilder.Append("			</label>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(topic.Tid,0);
	
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(topic.Title.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	if (topic.Attachment>0)
	{

	templateBuilder.Append("				<img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/attachment.gif\" alt=\"附件\"/>\r\n");

	}	//end if


	if (topic.Replies/config.Ppp>0)
	{

	templateBuilder.Append("				<script type=\"text/javascript\">getpagenumbers(\"");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("\", ");
	templateBuilder.Append(topic.Replies.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(config.Ppp.ToString().Trim());
	templateBuilder.Append(",0,\"\",");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append(",\"\",\"\",");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(");</");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("		</th>\r\n");
	templateBuilder.Append("		<td class=\"author\">\r\n");
	templateBuilder.Append("			<cite>\r\n");

	if (topic.Posterid==-1)
	{

	templateBuilder.Append("				游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(topic.Posterid);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(topic.Poster.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("			<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(topic.Postdatetime).ToString("yy-MM-dd HH:mm"));
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<td class=\"nums\"><em>");
	templateBuilder.Append(topic.Replies.ToString().Trim());
	templateBuilder.Append("</em> / ");
	templateBuilder.Append(topic.Views.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("		<td class=\"lastpost\">\r\n");
	templateBuilder.Append("			<em><a href=\"showtopic.aspx?topicid=");
	templateBuilder.Append(topic.Tid.ToString().Trim());
	templateBuilder.Append("&page=end#lastpost\">\r\n");
	templateBuilder.Append(Convert.ToDateTime(topic.Lastpost).ToString("yy-MM-dd HH:mm"));
	templateBuilder.Append("</a></em>\r\n");
	templateBuilder.Append("			<cite>by\r\n");

	if (topic.Lastposterid==-1)
	{

	templateBuilder.Append("				游客\r\n");

	}
	else
	{

	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(UserInfoAspxRewrite(topic.Lastposterid).ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(topic.Lastposter.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("			</cite>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end loop


	}
	else
	{

	templateBuilder.Append("	<tbody id=\"zerothreads\"><tr><td colspan=\"6\"><div class=\"zerothreads\">暂无帖子</div></td></tr></tbody>\r\n");

	}	//end if

	templateBuilder.Append("	<!--showtopiclist end-->\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"footfilter\">\r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("		<select onchange=\"if(this.options[this.selectedIndex].value != '') { jumpurl(this.options[this.selectedIndex].value,");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(",'");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("');}\">\r\n");
	templateBuilder.Append("			<option>论坛跳转...</option>\r\n");
	templateBuilder.Append("			");
	templateBuilder.Append(Caches.GetForumListBoxOptionsCache().ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</select>\r\n");

	}	//end if


	if (config.Visitedforums>0)
	{

	templateBuilder.Append("		<select name=\"select2\" onchange=\"if(this.options[this.selectedIndex].value != '') {jumpurl(this.options[this.selectedIndex].value,");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(",'");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("');}\">\r\n");
	templateBuilder.Append("			<option>最近访问...</option>");
	templateBuilder.Append(ForumUtils.GetVisitedForumsOptions(config.Visitedforums).ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</select>\r\n");

	}	//end if

	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("		var categorydata = ");
	templateBuilder.Append(goodscategoryfid.ToString());
	templateBuilder.Append(";		\r\n");
	templateBuilder.Append("		function jumpurl(fid, aspxrewrite, extname) {\r\n");
	templateBuilder.Append("			for(var i in categorydata) {\r\n");
	templateBuilder.Append("			   if(categorydata[i].fid == fid) {\r\n");
	templateBuilder.Append("				   if(aspxrewrite) {\r\n");
	templateBuilder.Append("					   window.location='showgoodslist-' +categorydata[i].categoryid + extname;\r\n");
	templateBuilder.Append("				   }\r\n");
	templateBuilder.Append("				   else {\r\n");
	templateBuilder.Append("					   window.location='showgoodslist.aspx?categoryid=' +categorydata[i].categoryid;\r\n");
	templateBuilder.Append("				   }\r\n");
	templateBuilder.Append("				   return;\r\n");
	templateBuilder.Append("			   } \r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			if(aspxrewrite) {\r\n");
	templateBuilder.Append("				window.location='showforum-' + fid + extname;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			else {\r\n");
	templateBuilder.Append("				window.location='showforum.aspx?forumid=' + fid ;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append(" / ");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("</em>		\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("function CheckAll(form)\r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("	for (var i = 0; i < form.elements.length; i++)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var e = form.elements[i];\r\n");
	templateBuilder.Append("		if (e.id == \"fidlist\"){\r\n");
	templateBuilder.Append("		   e.checked = form.chkall.checked;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("function SH_SelectOne(obj)\r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("	for (var i = 0; i < document.getElementById(\"LookBySearch\").elements.length; i++)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var e = document.getElementById(\"LookBySearch\").elements[i];\r\n");
	templateBuilder.Append("		if (e.id == \"fidlist\"){\r\n");
	templateBuilder.Append("		   if (!e.checked){\r\n");
	templateBuilder.Append("			document.getElementById(\"chkall\").checked = false;\r\n");
	templateBuilder.Append("			return;\r\n");
	templateBuilder.Append("		   }\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	document.getElementById(\"chkall\").checked = true;\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("function ShowDetailGrid(tid)\r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("   if(");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(")\r\n");
	templateBuilder.Append("   {\r\n");
	templateBuilder.Append("       window.location.href = \"showforum-\" + tid + \"");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("   }\r\n");
	templateBuilder.Append("   else\r\n");
	templateBuilder.Append("   {\r\n");
	templateBuilder.Append("       window.location.href = \"showforum.aspx?forumid=\" + tid ;\r\n");
	templateBuilder.Append("   }\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	if (forumid==-1)
	{

	templateBuilder.Append("	<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("	<div id=\"forumheader\" class=\"s_clear\">\r\n");
	templateBuilder.Append("		<h1>以下论坛版块:</h1>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<form name=\"LookBySearch\" method=\"post\" action=\"showtopiclist.aspx?search=1&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&type=");
	templateBuilder.Append(type.ToString());
	templateBuilder.Append("&newtopic=");
	templateBuilder.Append(newtopic.ToString());
	templateBuilder.Append("&forums=");
	templateBuilder.Append(forums.ToString());
	templateBuilder.Append("\" ID=\"LookBySearch\">\r\n");
	templateBuilder.Append("	<table width=\"100%\" border=\"0\" cellspacing=\"3\" cellpadding=\"0\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			 ");
	templateBuilder.Append(GetForumCheckBoxListCache(forums).ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("	<div id=\"footfilter\">\r\n");
	templateBuilder.Append("		<span class=\"right\">\r\n");
	templateBuilder.Append("			排序方式\r\n");
	templateBuilder.Append("			<select name=\"order\" id=\"order\">\r\n");
	templateBuilder.Append("			  <option value=\"1\" \r\n");

	if (order==1)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">最后回复时间</option>\r\n");
	templateBuilder.Append("			  <option value=\"2\" \r\n");

	if (order==2)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">发布时间</option>\r\n");
	templateBuilder.Append("			</select>	\r\n");
	templateBuilder.Append("			<select name=\"direct\" id=\"direct\">\r\n");
	templateBuilder.Append("			  <option value=\"0\" \r\n");

	if (direct==0)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">按升序排列</option>\r\n");
	templateBuilder.Append("			  <option value=\"1\" \r\n");

	if (direct==1)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">按降序排列</option>\r\n");
	templateBuilder.Append("			</select>\r\n");
	templateBuilder.Append("			<button type=\"submit\" onclick=\"document.LookBySearch.submit();\">提交</button>\r\n");
	templateBuilder.Append("		</span>\r\n");
	templateBuilder.Append("		<input title=\"选中/取消选中 本页所有Case\" onclick=\"CheckAll(this.form)\" type=\"checkbox\" name=\"chkall\" id=\"chkall\">全选/取消全选\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	</form>\r\n");
	templateBuilder.Append("	</div>\r\n");
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
