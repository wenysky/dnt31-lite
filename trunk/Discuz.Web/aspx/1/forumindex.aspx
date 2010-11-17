<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.forumindex" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:18.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:18. 
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
	templateBuilder.Append("var postminchars = parseInt(");
	templateBuilder.Append(config.Minpostsize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("var postmaxchars = parseInt(");
	templateBuilder.Append(config.Maxpostsize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("var disablepostctrl = parseInt(");
	templateBuilder.Append(disablepostctrl.ToString());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("		<span class=\"right\">\r\n");
	templateBuilder.Append("			<a href=\"showtopiclist.aspx?type=newtopic\">查看新帖</a>\r\n");
	templateBuilder.Append("			<a href=\"showtopiclist.aspx?type=digest&amp;forums=all\">精华区</a>\r\n");

	if (config.Rssstatus!=0)
	{

	templateBuilder.Append("			<a href=\"tools/rss.aspx\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/icon_feed.gif\" alt=\"rss\"/></a>\r\n");

	}	//end if

	templateBuilder.Append("		</span>\r\n");

	if (config.Isframeshow!=0)
	{

	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("		if(top == self) {\r\n");
	templateBuilder.Append("			document.write('<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("frame.aspx?f=1\" target=\"_top\" class=\"frameswitch\">分栏模式<\\/a>');\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("		<a id=\"forumlist\" href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\" \r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("onmouseover=\"showMenu(this.id);\" onmouseout=\"showMenu(this.id);\"\r\n");

	}	//end if

	templateBuilder.Append(" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; 首页\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");


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



	templateBuilder.Append("<div class=\"wrap s_clear forum\" id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main\" >\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/post.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/template_forumindexquickpost.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/template_showforum.js\"></");
	templateBuilder.Append("script>\r\n");

	if (userid>0)
	{


	if (config.Allwoforumindexpost==1 && Forums.GetLastPostedForum()!=null)
	{

	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var templatepath = \"");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("	var postbytopictype=");
	templateBuilder.Append(Forums.GetLastPostedForum().Postbytopictype.ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("	var topictypes='");
	templateBuilder.Append(Forums.GetLastPostedForum().Topictypes.ToString().Trim());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("	var lastpostforumhtml='您将要在<a id=\"userselectforum\" href=\"javascript:void(0)\" onmouseover=\"showMenu(this.id)\" class=\"drop\">");
	templateBuilder.Append(Forums.GetLastPostedForum().Name.ToString().Trim());
	templateBuilder.Append("<\\/a>发帖'\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<form  name=\"postform\" id=\"postform\" enctype=\"multipart/form-data\" action=\"\">\r\n");
	templateBuilder.Append("	<input name=\"forumid\" id=\"forumid\" type=\"hidden\" value=\"");
	templateBuilder.Append(Forums.GetLastPostedForum().Fid.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("	<input name=\"forumname\" id=\"forumname\" type=\"hidden\" value=\"");
	templateBuilder.Append(Forums.GetLastPostedForum().Name.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("	<input type=\"hidden\" value=\"1\" name=\"parseurloff\" id=\"parseurloff\"/>\r\n");
	templateBuilder.Append("	<div id=\"fastpost\" class=\"s_clear\" style=\"position:relative;\">\r\n");
	templateBuilder.Append("		<dl class=\"s_clear\">\r\n");
	templateBuilder.Append("			<dt id=\"loginorreg\"></dt>\r\n");
	templateBuilder.Append("			<dd><em id=\"returnmessage\"></em></dd>\r\n");
	templateBuilder.Append("			<dd id=\"quickmessage\" style=\"padding-top:8px;\"><textarea style=\"height:20px;overflow-y:auto;overflow-x:hidden;\" wrap=\"virtual\" class=\"txtarea\" tabindex=\"2\" id=\"message\" name=\"message\" cols=\"110\" rows=\"1\" onfocus=\"textareafocus(this,1)\"></textarea>\r\n");
	templateBuilder.Append("			<button value=\"true\" id=\"postsubmit\" name=\"topicsubmit\" type=\"button\" class=\"postsubmit\" onclick=\"ajaxposttopic(postbytopictype,topictypes)\">发帖</button>\r\n");
	templateBuilder.Append("			</dd>\r\n");
	templateBuilder.Append("		    <dd style=\"display:none;position: relative;\" id=\"vcodediv\" >\r\n");

	if (isseccode)
	{

	templateBuilder.Append("验证码:\r\n");

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



	}	//end if

	templateBuilder.Append("</dd>\r\n");
	templateBuilder.Append("		</dl>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\">$('loginorreg').innerHTML=lastpostforumhtml;</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("    <div id=\"userselectforum_menu\"  class=\"popupmenu_popup\" style=\"display:none\">\r\n");
	templateBuilder.Append("	<ul>\r\n");

	int simpleforuminfo__loop__id=0;
	foreach(SimpleForumInfo simpleforuminfo in Forums.GetVisitedForums())
	{
		simpleforuminfo__loop__id++;

	templateBuilder.Append("	<li>\r\n");
	templateBuilder.Append("		<a href=\"javascript:void(0)\" onClick=\"chooseforums('");
	templateBuilder.Append(simpleforuminfo.Name.ToString().Trim());
	templateBuilder.Append("',");
	templateBuilder.Append(simpleforuminfo.Fid.ToString().Trim());
	templateBuilder.Append(",");
	templateBuilder.Append(simpleforuminfo.Postbytopictype.ToString().Trim());
	templateBuilder.Append(",'");
	templateBuilder.Append(simpleforuminfo.Topictypes.ToString().Trim());
	templateBuilder.Append("')\">");
	templateBuilder.Append(simpleforuminfo.Name.ToString().Trim());
	templateBuilder.Append("</a><a href=\"");
	templateBuilder.Append(simpleforuminfo.Url.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/external.png\" style=\"margin-left:5px\"/></a>\r\n");
	templateBuilder.Append("	</li>\r\n");

	}	//end loop

	templateBuilder.Append("	</ul>\r\n");
	templateBuilder.Append("	</div>	\r\n");
	templateBuilder.Append("	<script language=\"javascript\" type=\"text/javascript\" >    \r\n");
	templateBuilder.Append("	var pathlist=new Array();\r\n");
	templateBuilder.Append("	var allowedittitle=true;\r\n");
	templateBuilder.Append("	//var ismeesageopen=false;\r\n");
	templateBuilder.Append("	var postminchars = parseInt(");
	templateBuilder.Append(config.Minpostsize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("	var postmaxchars = parseInt(");
	templateBuilder.Append(config.Maxpostsize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("	var disablepostctrl = parseInt(");
	templateBuilder.Append(disablepostctrl.ToString());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("	var textobj = $('message');\r\n");
	templateBuilder.Append("		var lang = new Array();\r\n");
	templateBuilder.Append("		if (is_ie >= 5 || is_moz >= 2) {\r\n");
	templateBuilder.Append("			window.onbeforeunload = function () {\r\n");
	templateBuilder.Append("				saveData(textobj.value);\r\n");
	templateBuilder.Append("			};\r\n");
	templateBuilder.Append("			lang['post_autosave_none'] = \"没有可以恢复的数据\";\r\n");
	templateBuilder.Append("			lang['post_autosave_confirm'] = \"本操作将覆盖当前帖子内容，确定要恢复数据吗？\";\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else {\r\n");
	templateBuilder.Append("			$('restoredata').style.display = 'none';\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</form>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("	<div class=\"announcement s_clear\">\r\n");
	templateBuilder.Append("	<span class=\"right\">今日:<em>");
	templateBuilder.Append(todayposts.ToString());
	templateBuilder.Append("</em>, 昨日:<em>");
	templateBuilder.Append(yesterdayposts.ToString());
	templateBuilder.Append("</em>, 最高:<em title=\"(");
	templateBuilder.Append(highestpostsdate.ToString());
	templateBuilder.Append(")\">");
	templateBuilder.Append(highestposts.ToString());
	templateBuilder.Append("</em></span>\r\n");
	templateBuilder.Append("	<div onmouseout=\"annstop = 0\" onmouseover=\"annstop = 1\" id=\"announcement\" class=\"left\">\r\n");
	templateBuilder.Append("		<span>公告:</span>\r\n");
	templateBuilder.Append("		<div id=\"announcementbody\" class=\"left\">\r\n");
	templateBuilder.Append("			<ul>		\r\n");

	int announcement__loop__id=0;
	foreach(DataRow announcement in announcementlist.Rows)
	{
		announcement__loop__id++;

	templateBuilder.Append("				<li><a href=\"announcement.aspx#" + announcement["id"].ToString().Trim() + "\">" + announcement["title"].ToString().Trim() + "<em>\r\n");
	templateBuilder.Append(Convert.ToDateTime(announcement["starttime"].ToString().Trim()).ToString(" yyyy-MM-dd HH:mm"));
	templateBuilder.Append("</em></a></li>\r\n");

	}	//end loop

	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("javascript/template_announcement.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("<!--topic-->\r\n");
	int lastforumlayer = -1;
	
	int lastcolcount = 1;
	
	int lastforumid = 0;
	
	int subforumcount = 0;
	
	int subcount = 0;
	

	int forum__loop__id=0;
	foreach(IndexPageForumInfo forum in forumlist)
	{
		forum__loop__id++;


	if (forum.Layer==0)
	{

	 subcount = 0;
	

	if (lastforumlayer>-1)
	{


	if (lastcolcount!=1)
	{


	if (subforumcount!=0)
	{

	for (int i = 0; i < lastcolcount-subforumcount; i++)
	{
		templateBuilder.Append("<td>&nbsp;</td>");
	}

	templateBuilder.Append("		</tr>\r\n");

	}	//end if

	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}
	else
	{

	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</div>			\r\n");

	}	//end if

	templateBuilder.Append("	<div id=\"ad_intercat_");
	templateBuilder.Append(lastforumid.ToString());
	templateBuilder.Append("\"></div>\r\n");

	}	//end if


	if (forum.Colcount!=1)
	{

	 subforumcount = 0;
	

	}	//end if

	templateBuilder.Append("	<div class=\"mainbox list\">\r\n");
	templateBuilder.Append("		<span class=\"headactions grayfont\">\r\n");

	if (forum.Moderators!="")
	{

	templateBuilder.Append("				分区版主: ");
	templateBuilder.Append(forum.Moderators.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("			<img id=\"category_");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("_img\"  \r\n");

	if (forum.Collapse!="")
	{

	templateBuilder.Append("			src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/collapsed_yes.gif\"\r\n");

	}
	else
	{

	templateBuilder.Append("			src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/collapsed_no.gif\"\r\n");

	}	//end if

	templateBuilder.Append("			 alt=\"展开/收起\" onclick=\"toggle_collapse('category_");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("');\" class=\"cursor\"/>\r\n");
	templateBuilder.Append("		</span>\r\n");
	templateBuilder.Append("		<h3>\r\n");
	 aspxrewriteurl = this.ShowForumAspxRewrite(forum.Fid,0,forum.Rewritename);
	
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("		</h3>	\r\n");
	templateBuilder.Append("		<table id=\"category_");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\" summary=\"category_");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\" cellspacing=\"0\" cellpadding=\"0\"  style=\"");
	templateBuilder.Append(forum.Collapse.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	 lastforumlayer = 0;
	
	 lastcolcount = forum.Colcount;
	
	 lastforumid = forum.Fid;
	

	}
	else
	{

	 subcount = subcount+1;
	

		    if (maxsubcount > 0)
	        {
	            if (subcount > maxsubcount)
	                continue;
	        }
	        

	if (forum.Colcount==1)
	{

	templateBuilder.Append("		<tbody id=\"forum");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("			<tr>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(forum.Lasttid,0);
	
	templateBuilder.Append("				<th \r\n");

	if (forum.Havenew=="new")
	{

	templateBuilder.Append("class=\"new\"\r\n");

	}	//end if

	templateBuilder.Append(">\r\n");

	if (forum.Icon!="")
	{

	templateBuilder.Append("					<img src=\"");
	templateBuilder.Append(forum.Icon.ToString().Trim());
	templateBuilder.Append("\" border=\"0\" align=\"left\" hspace=\"5\" alt=\"");
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("\"/>\r\n");

	}	//end if

	templateBuilder.Append("					<h2>\r\n");

	if (forum.Redirect=="")
	{

	 aspxrewriteurl = this.ShowForumAspxRewrite(forum.Fid,0,forum.Rewritename);
	
	templateBuilder.Append("						<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("						<a href=\"");
	templateBuilder.Append(forum.Redirect.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">\r\n");

	}	//end if

	templateBuilder.Append("					");
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	if (forum.Todayposts>0)
	{

	templateBuilder.Append("<em>(今日:<strong>");
	templateBuilder.Append(forum.Todayposts.ToString().Trim());
	templateBuilder.Append("</strong>)</em>\r\n");

	}	//end if

	templateBuilder.Append("					</h2>\r\n");

	if (forum.Description!="")
	{

	templateBuilder.Append("<p>");
	templateBuilder.Append(forum.Description.ToString().Trim());
	templateBuilder.Append("</p>\r\n");

	}	//end if


	if (forum.Moderators!="")
	{

	templateBuilder.Append("<p class=\"moderators\">版主: ");
	templateBuilder.Append(forum.Moderators.ToString().Trim());
	templateBuilder.Append("</p>\r\n");

	}	//end if

	templateBuilder.Append("				</th>\r\n");
	templateBuilder.Append("				<td class=\"nums\"><em>\r\n");

	if (forum.Istrade!=1)
	{
	templateBuilder.Append(forum.Topics.ToString().Trim());
	templateBuilder.Append("\r\n");

	}
	else
	{

	templateBuilder.Append("&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("</em> / \r\n");

	if (forum.Istrade!=1)
	{
	templateBuilder.Append(forum.Posts.ToString().Trim());
	templateBuilder.Append("\r\n");

	}
	else
	{

	templateBuilder.Append("&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("				<td class=\"lastpost\">\r\n");

	if (forum.Istrade!=1)
	{


	if (forum.Status==-1)
	{

	templateBuilder.Append("					私密版块\r\n");

	}
	else
	{


	if (forum.Lasttid!=0)
	{

	templateBuilder.Append("					<p>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(forum.Lasttid,0);
	
	templateBuilder.Append("						<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(forum.Lasttitle.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("					</p>\r\n");
	templateBuilder.Append("					<div class=\"topicbackwriter\">by\r\n");

	if (forum.Lastposter!="")
	{


	if (forum.Lastposterid==-1)
	{

	templateBuilder.Append("								游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(forum.Lastposterid);
	
	templateBuilder.Append("								<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(forum.Lastposter.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	}
	else
	{

	templateBuilder.Append("							匿名\r\n");

	}	//end if

	templateBuilder.Append("						- <a href=\"showtopic.aspx?topicid=");
	templateBuilder.Append(forum.Lasttid.ToString().Trim());
	templateBuilder.Append("&page=end#lastpost\" title=\"");
	templateBuilder.Append(forum.Lastpost.ToString().Trim());
	templateBuilder.Append("\"><em><script type=\"text/javascript\">document.write(convertdate('");
	templateBuilder.Append(forum.Lastpost.ToString().Trim());
	templateBuilder.Append("'));</");
	templateBuilder.Append("script></em></a>\r\n");
	templateBuilder.Append("					</div>\r\n");

	}
	else
	{

	templateBuilder.Append("						从未\r\n");

	}	//end if


	}	//end if


	}
	else
	{

	templateBuilder.Append("				   <p>");
	templateBuilder.Append(forum.Description.ToString().Trim());
	templateBuilder.Append("</p>\r\n");

	}	//end if

	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}
	else
	{

	 subforumcount = subforumcount+1;
	
	double colwidth = 99.9 / forum.Colcount;
	

	if (subforumcount==1)
	{

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");

	}	//end if

	templateBuilder.Append("			<th style=\"width:");
	templateBuilder.Append(colwidth.ToString());
	templateBuilder.Append("%;\"\r\n");

	if (forum.Havenew=="new")
	{

	templateBuilder.Append("class=\"new\"\r\n");

	}	//end if

	templateBuilder.Append(">\r\n");
	templateBuilder.Append("				<h2>\r\n");

	if (forum.Icon!="")
	{

	templateBuilder.Append("					<img src=\"");
	templateBuilder.Append(forum.Icon.ToString().Trim());
	templateBuilder.Append("\" border=\"0\" align=\"left\" hspace=\"5\" alt=\"");
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("\"/>\r\n");

	}	//end if


	if (forum.Redirect=="")
	{

	 aspxrewriteurl = this.ShowForumAspxRewrite(forum.Fid,0,forum.Rewritename);
	
	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(forum.Redirect.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">\r\n");

	}	//end if

	templateBuilder.Append("				");
	templateBuilder.Append(forum.Name.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	if (forum.Todayposts>0)
	{

	templateBuilder.Append("				<em>(今日:<strong>");
	templateBuilder.Append(forum.Todayposts.ToString().Trim());
	templateBuilder.Append("</strong>)</em>\r\n");

	}	//end if

	templateBuilder.Append("				</h2>\r\n");
	templateBuilder.Append("				<p>\r\n");

	if (forum.Istrade!=1)
	{

	templateBuilder.Append("主题:");
	templateBuilder.Append(forum.Topics.ToString().Trim());
	templateBuilder.Append(", 帖数:");
	templateBuilder.Append(forum.Posts.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("</p>\r\n");

	if (forum.Istrade!=1)
	{


	if (forum.Status==-1)
	{

	templateBuilder.Append("				<p>私密版块</p>\r\n");

	}
	else
	{


	if (forum.Lasttid!=0)
	{

	templateBuilder.Append("						<p>最后: <a href=\"showtopic.aspx?topicid=");
	templateBuilder.Append(forum.Lasttid.ToString().Trim());
	templateBuilder.Append("&page=end#lastpost\" title=\"");
	templateBuilder.Append(forum.Lasttitle.ToString().Trim());
	templateBuilder.Append("\"><em><script type=\"text/javascript\">document.write(convertdate('");
	templateBuilder.Append(forum.Lastpost.ToString().Trim());
	templateBuilder.Append("'));</");
	templateBuilder.Append("script></em></a> by \r\n");

	if (forum.Lastposter!="")
	{


	if (forum.Lastposterid==-1)
	{

	templateBuilder.Append("									游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(forum.Lastposterid);
	
	templateBuilder.Append("									<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(forum.Lastposter.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	}
	else
	{

	templateBuilder.Append("								匿名\r\n");

	}	//end if

	templateBuilder.Append("						</p>\r\n");

	}	//end if


	}	//end if


	}
	else
	{

	templateBuilder.Append("				  <p>");
	templateBuilder.Append(forum.Description.ToString().Trim());
	templateBuilder.Append("</p>\r\n");

	}	//end if

	templateBuilder.Append("			</th>\r\n");

	if (subforumcount==forum.Colcount)
	{

	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	 subforumcount = 0;
	

	}	//end if


	}	//end if

	 lastforumlayer = 1;
	
	 lastcolcount = forum.Colcount;
	

	}	//end if


	}	//end loop


	if (lastcolcount!=1 && subforumcount!=0)
	{

	for (int i = 0; i < lastcolcount-subforumcount; i++)
	{
		templateBuilder.Append("<td>&nbsp;</td>");
	}

	templateBuilder.Append("		</tr>\r\n");

	}	//end if

	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<!--end topic-->\r\n");

	if (forumlinkcount>0)
	{

	templateBuilder.Append("<div class=\"mainbox\" id=\"forumlink\">\r\n");
	templateBuilder.Append("	<span class=\"headactions\"><img id=\"forumlinks_img\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/collapsed_no.gif\" alt=\"\" onclick=\"toggle_collapse('forumlinks');\"/></span>\r\n");
	templateBuilder.Append("	<h3><a href=\"###\" onclick=\"toggle_collapse('forumlinks');\">友情链接</a></h3>\r\n");
	bool forumlinkend = false;
	

	int forumlink__loop__id=0;
	foreach(DataRow forumlink in forumlinklist.Rows)
	{
		forumlink__loop__id++;


	if (forumlink__loop__id==1)
	{

	templateBuilder.Append("	<div id=\"forumlinks\">	\r\n");
	templateBuilder.Append("		<ul class=\"forumlinks\">	\r\n");

	}	//end if


	if (forumlink["logo"].ToString().Trim()!="")
	{

	templateBuilder.Append("		<li>\r\n");
	templateBuilder.Append("			<a href=\"" + forumlink["url"].ToString().Trim() + "\" target=\"_blank\"><img src=\"" + forumlink["logo"].ToString().Trim() + "\" alt=\"" + forumlink["name"].ToString().Trim() + "\"  class=\"forumlink_logo\"/></a>\r\n");
	templateBuilder.Append("			<h5><a href=\"" + forumlink["url"].ToString().Trim() + "\" target=\"_blank\">" + forumlink["name"].ToString().Trim() + "</a></h5>\r\n");
	templateBuilder.Append("			<p>" + forumlink["note"].ToString().Trim() + "</p>\r\n");
	templateBuilder.Append("		</li>\r\n");

	}
	else if (forumlink["name"].ToString().Trim()!="$$otherlink$$")
	{

	templateBuilder.Append("		<li>\r\n");
	templateBuilder.Append("			<h5>\r\n");
	templateBuilder.Append("				<a href=\"" + forumlink["url"].ToString().Trim() + "\" target=\"_blank\">" + forumlink["name"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("			</h5>\r\n");
	templateBuilder.Append("			<p>" + forumlink["note"].ToString().Trim() + "</p>\r\n");
	templateBuilder.Append("		</li>\r\n");

	}
	else
	{


	if (forumlinkend==false)
	{

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	 forumlinkend = true;
	

	}	//end if

	templateBuilder.Append("	<div class=\"" + forumlink["url"].ToString().Trim() + "\">\r\n");
	templateBuilder.Append("		" + forumlink["note"].ToString().Trim() + "\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if


	}	//end loop


	if (forumlinkend==false)
	{

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");

	}	//end if


	if (config.Whosonlinestatus!=0 && config.Whosonlinestatus!=2)
	{

	templateBuilder.Append("<div class=\"mainbox s_clear\" id=\"online\">\r\n");
	templateBuilder.Append("	<span class=\"headactions\">\r\n");

	if (showforumonline)
	{

	templateBuilder.Append("		<a href=\"?showonline=no#online\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/collapsed_no.gif\" alt=\"收起\" /></a>\r\n");

	}
	else
	{

	templateBuilder.Append("		<a href=\"?showonline=yes#online\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/collapsed_yes.gif\" alt=\"展开\" /></a>\r\n");

	}	//end if

	templateBuilder.Append("	</span>\r\n");
	templateBuilder.Append("	<h3>\r\n");
	templateBuilder.Append("		<strong><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("onlineuser.aspx\">在线用户</a></strong> - <em>");
	templateBuilder.Append(totalonline.ToString());
	templateBuilder.Append("</em> 人在线 \r\n");

	if (showforumonline)
	{

	templateBuilder.Append("- ");
	templateBuilder.Append(totalonlineuser.ToString());
	templateBuilder.Append(" 会员<span id=\"invisible\"></span>, ");
	templateBuilder.Append(totalonlineguest.ToString());
	templateBuilder.Append(" 游客\r\n");

	}	//end if

	templateBuilder.Append("- 最高记录是 <em>");
	templateBuilder.Append(highestonlineusercount.ToString());
	templateBuilder.Append("</em> 于 <em>");
	templateBuilder.Append(highestonlineusertime.ToString());
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("		<em>共<cite>");
	templateBuilder.Append(totalusers.ToString());
	templateBuilder.Append("</cite>位会员- 新会员:<a href=\"");
	templateBuilder.Append(UserInfoAspxRewrite(lastuserid).ToString());
	templateBuilder.Append("\" class=\"newuser\">");
	templateBuilder.Append(lastusername.ToString());
	templateBuilder.Append("</a></em>\r\n");

	if (showforumonline==false)
	{

	templateBuilder.Append("		<em><a href=\"?showonline=yes#online\">点击查看在线列表</a></em>\r\n");

	}	//end if

	templateBuilder.Append("	</h3>\r\n");

	if (showforumonline)
	{

	templateBuilder.Append("	<dl id=\"onlinelist\">\r\n");
	templateBuilder.Append("		<dt>");
	templateBuilder.Append(onlineiconlist.ToString());
	templateBuilder.Append("</dt>\r\n");
	templateBuilder.Append("		<dd>\r\n");
	templateBuilder.Append("			<ul class=\"userlist s_clear\">\r\n");
	int invisiblecount = 0;
	

	int onlineuser__loop__id=0;
	foreach(OnlineUserInfo onlineuser in onlineuserlist)
	{
		onlineuser__loop__id++;


	if (onlineuser.Invisible==1)
	{

	 invisiblecount = invisiblecount + 1;
	

	if (useradminid==1)
	{

	templateBuilder.Append("				<li>");
	templateBuilder.Append(onlineuser.Olimg.ToString().Trim());
	templateBuilder.Append(" \r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(onlineuser.Userid);
	
	templateBuilder.Append("					<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\" \r\n");

	if (onlineuser.Forumname!="")
	{

	templateBuilder.Append("					title=\"时间: ");
	templateBuilder.Append(onlineuser.Lastupdatetime.ToString().Trim());
	templateBuilder.Append(" 操作: ");
	templateBuilder.Append(onlineuser.Actionname.ToString().Trim());
	templateBuilder.Append(" 版块: ");
	templateBuilder.Append(onlineuser.Forumname.ToString().Trim());
	templateBuilder.Append("\"\r\n");

	}
	else if (onlineuser.Actionname!="")
	{

	templateBuilder.Append("					title=\"时间: ");
	templateBuilder.Append(onlineuser.Lastupdatetime.ToString().Trim());
	templateBuilder.Append(" 操作: ");
	templateBuilder.Append(onlineuser.Actionname.ToString().Trim());
	templateBuilder.Append("\"\r\n");

	}
	else
	{

	templateBuilder.Append("					title=\"时间: ");
	templateBuilder.Append(onlineuser.Lastupdatetime.ToString().Trim());
	templateBuilder.Append("\"\r\n");

	}	//end if

	templateBuilder.Append(">");
	templateBuilder.Append(onlineuser.Username.ToString().Trim());
	templateBuilder.Append("</a>(隐身)\r\n");
	templateBuilder.Append("				</li>\r\n");

	}
	else
	{

	templateBuilder.Append("				<li>(隐身会员)</li>\r\n");

	}	//end if


	}
	else
	{

	templateBuilder.Append("				<li>");
	templateBuilder.Append(onlineuser.Olimg.ToString().Trim());
	templateBuilder.Append("\r\n");

	if (onlineuser.Userid==-1)
	{

	templateBuilder.Append("						");
	templateBuilder.Append(onlineuser.Username.ToString().Trim());
	templateBuilder.Append("\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(onlineuser.Userid);
	
	templateBuilder.Append("						<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\" \r\n");

	if (onlineuser.Forumname!="")
	{

	templateBuilder.Append("						title=\"时间: ");
	templateBuilder.Append(onlineuser.Lastupdatetime.ToString().Trim());
	templateBuilder.Append(" 操作: ");
	templateBuilder.Append(onlineuser.Actionname.ToString().Trim());
	templateBuilder.Append(" 版块: ");
	templateBuilder.Append(onlineuser.Forumname.ToString().Trim());
	templateBuilder.Append("\"\r\n");

	}
	else if (onlineuser.Actionname!="")
	{

	templateBuilder.Append("						title=\"时间: ");
	templateBuilder.Append(onlineuser.Lastupdatetime.ToString().Trim());
	templateBuilder.Append(" 操作: ");
	templateBuilder.Append(onlineuser.Actionname.ToString().Trim());
	templateBuilder.Append("\"\r\n");

	}
	else
	{

	templateBuilder.Append("						title=\"时间: ");
	templateBuilder.Append(onlineuser.Lastupdatetime.ToString().Trim());
	templateBuilder.Append("\"\r\n");

	}	//end if

	templateBuilder.Append(">");
	templateBuilder.Append(onlineuser.Username.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("				</li>\r\n");

	}	//end if


	}	//end loop


	if (invisiblecount>0)
	{

	templateBuilder.Append("				<script type=\"text/javascript\">$('invisible').innerHTML = '(");
	templateBuilder.Append(invisiblecount.ToString());
	templateBuilder.Append("' + \" 隐身)\";</");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		</dd>\r\n");
	templateBuilder.Append("	</dl>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");

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
	templateBuilder.Append(mediaad.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append(inforumad.ToString());
	templateBuilder.Append("\r\n");

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
