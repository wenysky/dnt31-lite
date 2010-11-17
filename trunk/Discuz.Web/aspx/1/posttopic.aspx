<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.posttopic" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:26.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:26. 
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




	if (infloat!=1)
	{

	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; \r\n");

	if (forum.Pathlist!="")
	{
	templateBuilder.Append(ShowForumAspxRewrite(forum.Pathlist.Trim(),forumid,forumpageid).ToString().Trim());
	templateBuilder.Append("  &raquo; \r\n");

	}	//end if

	templateBuilder.Append("<strong>\r\n");

	if (type=="bonus")
	{

	templateBuilder.Append("				发表新悬赏\r\n");

	}
	else if (type=="poll")
	{

	templateBuilder.Append("				发表新投票\r\n");

	}
	else if (type=="debate")
	{

	templateBuilder.Append("				发起新辩论\r\n");

	}
	else
	{

	templateBuilder.Append("		       发表新主题\r\n");

	}	//end if

	templateBuilder.Append("</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("var postminchars = parseInt('");
	templateBuilder.Append(config.Minpostsize.ToString().Trim());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var postmaxchars = parseInt('");
	templateBuilder.Append(config.Maxpostsize.ToString().Trim());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var disablepostctrl = parseInt('");
	templateBuilder.Append(disablepost.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var forumpath = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("var posturl=forumpath+'posttopic.aspx?forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&forumpage=");
	templateBuilder.Append(forumpageid.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("var postaction='");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("posttopic.aspx?infloat=1&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&'\r\n");
	templateBuilder.Append("function closenewthread()\r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("		if($('floatwin_newthread'))\r\n");
	templateBuilder.Append("        $('floatwin_newthread').parentNode.removeChild($('floatwin_newthread')); \r\n");
	templateBuilder.Append("		if($('floatwin_newthread_mask'))\r\n");
	templateBuilder.Append("		 $('floatwin_newthread_mask').parentNode.removeChild($('floatwin_newthread_mask'));\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	if (page_err==0)
	{


	if (ispost)
	{


	if (infloat==1)
	{


	if (fromindex!=1)
	{


	if (needaudit)
	{

	templateBuilder.Append("		 <script type=\"text/javascript\">\r\n");
	templateBuilder.Append("			$('returnmessage').className='';\r\n");
	templateBuilder.Append("			//submithandle_newthread('forumdisplay.php?fid=5', '非常感谢，管理员设置了需要对新主题进行审核，现在将转入主题列表，您的帖子通过审核后将被显示出来。');\r\n");
	templateBuilder.Append("            floatwin('open_confirm', -1,390,130);\r\n");
	templateBuilder.Append("		    $('floatwin_confirm').innerHTML='<div><h3 class=\"float_ctrl\"><em id=\"floatwin_confirm_title\">提示信息</em><span><a href=\"javascript:;\" class=\"float_close\" onclick=\"floatwinreset = 1;floatwin(\\'close_confirm\\');\">&nbsp;</a></span></h3></div><div id=\"floatwin_confirm_content\">非常感谢，管理员设置了需要对新主题进行审核，现在将转入主题列表，您的帖子通过审核后将被显示出来。<br><button onclick=\"location.href=\\'");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append(msgbox_url.ToString());
	templateBuilder.Append("\\';floatwin(\\'close_confirm\\')\">确定</button></div>'\r\n");
	templateBuilder.Append("            floatwinreset = 1;\r\n");
	templateBuilder.Append("	        closeEditorwin();\r\n");
	templateBuilder.Append("		 </");
	templateBuilder.Append("script>\r\n");

	}
	else
	{

	templateBuilder.Append("		 <script type=\"text/javascript\">\r\n");
	templateBuilder.Append("			$('returnmessage').className='';\r\n");
	templateBuilder.Append("			location.href='");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append(msgbox_url.ToString());
	templateBuilder.Append("';	\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	}	//end if


	}
	else
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



	}	//end if

	templateBuilder.Append("<script type=\"text/javascript\">setcookie(\"dnt_title\", $('postform').title.value);</");
	templateBuilder.Append("script>\r\n");

	}
	else
	{


	if (infloat==0)
	{

	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main\">\r\n");
	templateBuilder.Append("	<div class=\"nojs\" style=\"position:relative;\">\r\n");
	templateBuilder.Append("	<div id=\"floatwinnojs\">\r\n");

	}	//end if

	templateBuilder.Append("	<script>\r\n");
	templateBuilder.Append("	function geteditormessage(theform)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("    	var message = wysiwyg ? html2bbcode(getEditorContents()) : (!theform.parseurloff.checked ? parseurl(theform.message.value) : theform.message.value);\r\n");
	templateBuilder.Append("	    theform.message.value = message;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("	<div id=\"floatlayout_newthread\" class=\"float\" style=\"width: 600px; height: 410px;\">\r\n");

	}
	else
	{

	templateBuilder.Append("	<div id=\"floatlayout_newthread\" class=\"float\">\r\n");

	}	//end if


	if (infloat==1)
	{

	templateBuilder.Append("<form method=\"post\" name=\"postform\" id=\"postform\" action=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("posttopic.aspx?infloat=1&forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("&\" enctype=\"multipart/form-data\" onsubmit=\"return validate(this);\">	\r\n");

	}
	else
	{

	templateBuilder.Append("<form method=\"post\" name=\"postform\" id=\"postform\" action=\"\" enctype=\"multipart/form-data\" onsubmit=\"return validate(this);\">	\r\n");

	}	//end if


	string special = DNTRequest.GetString("type").ToLower();;
	

	if (special=="" && topic.Special>0)
	{


	if (topic.Special==1)
	{

	 special = "poll";
	

	}	//end if


	if (topic.Special==2 || topic.Special==3)
	{

	 special = "bonus";
	

	}	//end if


	if (topic.Special==4)
	{

	 special = "debate";
	

	}	//end if


	}	//end if

	bool adveditor = (special!="" || topic.Special>0)&&isfirstpost;
	
	string action = pagename.Replace("post","").Replace(".aspx","").Replace("topic","newthread");
	
	string actiontitle = "";
	

	if (pagename=="posttopic.aspx")
	{


	if (special=="bonus")
	{

	 actiontitle = "发布悬赏";
	

	}
	else if (special=="poll")
	{

	 actiontitle = "发布投票";
	

	}
	else if (special=="debate")
	{

	 actiontitle = "发布辩论";
	

	}
	else
	{

	 actiontitle = "发新主题";
	

	}	//end if


	}
	else if (pagename=="postreply.aspx")
	{

	 actiontitle = "回复主题";
	

	}
	else if (pagename=="editpost.aspx")
	{

	 actiontitle = "编辑帖子";
	

	}	//end if

	char comma = ',';
	
	string editorid = "e";
	
	int thumbwidth = 400;
	
	int thumbheight = 300;
	
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("	function removeElement()\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("<div style=\"clear:both; width:2500px;overflow-x:hidden;\">\r\n");

	}
	else
	{

	templateBuilder.Append("<div style=\"clear:both;\">\r\n");

	}	//end if


	if (infloat==1)
	{

	templateBuilder.Append("<div class=\"floatbox floatbox1\" id=\"extcreditbox1\"></div>\r\n");

	}	//end if


	if (adveditor==false)
	{

	templateBuilder.Append("<div class=\"floatbox floatbox1\" id=\"editorbox\">\r\n");

	}
	else
	{

	templateBuilder.Append("<div class=\"floatbox floatbox1\">\r\n");

	}	//end if

	templateBuilder.Append("	<h3 class=\"float_ctrl\">\r\n");
	templateBuilder.Append("		<em id=\"returnmessage\">");
	templateBuilder.Append(actiontitle.ToString());
	templateBuilder.Append("</em>\r\n");

	if (needaudit)
	{

	templateBuilder.Append("<em class=\"needverify\">需审核</em>\r\n");

	}	//end if

	templateBuilder.Append("		<span>\r\n");
	templateBuilder.Append("			<a href=\"javascript:;\" id=\"creditlink\"></a>\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("				<a href=\"javascript:;\" class=\"float_newwindow\" onclick=\"editorwindowopen(posturl)\" title=\"新窗口\">新窗口</a>\r\n");

	if (special=="")
	{

	templateBuilder.Append("					<a href=\"javascript:;\" class=\"float_max\" onclick=\"resizeEditorwin()\" title=\"最大化\" id=\"resizeEditorwin\">最大化</a>\r\n");

	}	//end if

	templateBuilder.Append("				<a href=\"javascript:;\" class=\"float_close\" onclick=\"closeEditorwin();removeElement()\" title=\"关闭\">关闭</a>\r\n");

	}	//end if

	templateBuilder.Append("		</span>\r\n");
	templateBuilder.Append("	</h3>\r\n");
	templateBuilder.Append("	<div class=\"postbox\" id=\"postbox\">\r\n");

	if (action=="reply")
	{

	templateBuilder.Append("		<div class=\"float_postinfo s_clear\" style=\"overflow:hidden\">\r\n");

	}
	else
	{

	templateBuilder.Append("		<div class=\"float_postinfo s_clear\">\r\n");

	}	//end if

	templateBuilder.Append("			<input type=\"hidden\" name=\"iconid\" id=\"iconid\" value=\"");
	templateBuilder.Append(topic.Iconid.ToString().Trim());
	templateBuilder.Append("\" />\r\n");

	if (special=="" && isfirstpost)
	{

	templateBuilder.Append("				<em id=\"icon\" class=\"dropmenu\" onmouseover=\"InFloat='floatlayout_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("';showMenu(this.id)\"><img id=\"icon_img\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("images/posticons/");
	templateBuilder.Append(topic.Iconid.ToString().Trim());
	templateBuilder.Append(".gif\" /></em>\r\n");
	templateBuilder.Append("				<ul id=\"icon_menu\" class=\"popupmenu_popup\" style=\"display:none\">\r\n");
	string icons = "0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15";
	

	int id__loop__id=0;
	foreach(string id in icons.Split(comma))
	{
		id__loop__id++;

	templateBuilder.Append("					<li><a href=\"javascript:;\"><img onclick=\"switchicon(");
	templateBuilder.Append(id.ToString());
	templateBuilder.Append(", this)\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("images/posticons/");
	templateBuilder.Append(id.ToString());
	templateBuilder.Append(".gif\" alt=\"\" /></a></li>\r\n");

	}	//end loop

	templateBuilder.Append("				</ul>\r\n");

	}	//end if


	if (!isfirstpost && (topic.Special==4||special=="debate"))
	{

	templateBuilder.Append("			<div class=\"float_typeid left\">\r\n");
	templateBuilder.Append("				<select id=\"debateopinion\" name=\"debateopinion\">\r\n");
	templateBuilder.Append("					<option value=\"0\">观点</option>\r\n");
	templateBuilder.Append("					<option value=\"1\">正方</option>\r\n");
	templateBuilder.Append("					<option value=\"2\">反方</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">loadselect(\"debateopinion\");</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\" reload=\"1\">$('debateopinion').selectedIndex = parseInt(getQueryString(\"debate\"));</");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("			<span><input name=\"title\" type=\"text\" id=\"title\" value=\"");
	templateBuilder.Append(postinfo.Title.ToString().Trim());
	templateBuilder.Append("\" class=\"txt\" title=\"标题最多为60个字符\" /></span>\r\n");

	if (forum.Applytopictype==1 && topictypeselectoptions!=""&&isfirstpost)
	{

	templateBuilder.Append("			<div class=\"float_typeid left\">\r\n");
	templateBuilder.Append("				<select name=\"typeid\" id=\"typeid\">");
	templateBuilder.Append(topictypeselectoptions.ToString());
	templateBuilder.Append("</select>\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\" reload=\"1\">$('typeid').value = '");
	templateBuilder.Append(topic.Typeid.ToString().Trim());
	templateBuilder.Append("';</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end if


	if (action=="reply" || postinfo.Layer>0)
	{

	templateBuilder.Append("			<cite class=\"tips\">(可选)</cite>\r\n");

	}	//end if


	if (canhtmltitle && infloat==0)
	{

	templateBuilder.Append("			<a href=\"###\" id=\"titleEditorButton\" onclick=\"\">高级编辑</a>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("javascript/dnteditor.js\" reload=\"1\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			<div id=\"titleEditorDiv\" style=\"display: none;\">\r\n");
	templateBuilder.Append("				<textarea name=\"htmltitle\" id=\"htmltitle\" cols=\"80\" rows=\"10\"></textarea>\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\" reload=\"1\" >\r\n");
	templateBuilder.Append("				var forumpath = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("				var templatepath = '");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("				var temptitle = $('faketitle');\r\n");
	templateBuilder.Append("				var titleEditor = null;\r\n");
	templateBuilder.Append("				function AdvancedTitleEditor() {\r\n");
	templateBuilder.Append("				$('title').style.display = 'none';\r\n");
	templateBuilder.Append("				$('titleEditorDiv').style.display = '';\r\n");
	templateBuilder.Append("				$('titleEditorButton').style.display = 'none';\r\n");
	templateBuilder.Append("				titleEditor = new DNTeditor('htmltitle', '500', '50', '");
	templateBuilder.Append(htmltitle.ToString());
	templateBuilder.Append("' == '' ? $('title').value : '");
	templateBuilder.Append(htmltitle.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("				titleEditor.OnChange = function() {\r\n");
	templateBuilder.Append("				//temptitle.innerHTML = html2bbcode(titleEditor.GetHtml().replace(/<[^>]*>/ig, ''));\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				titleEditor.Basic = true;\r\n");
	templateBuilder.Append("				titleEditor.IsAutoSave = false;\r\n");
	templateBuilder.Append("				titleEditor.Style = forumpath + 'templates/' + templatepath + '/editor.css';\r\n");
	templateBuilder.Append("				titleEditor.BasePath = forumpath;\r\n");
	templateBuilder.Append("				titleEditor.ReplaceTextarea();\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				$('titleEditorButton').onclick = function() {\r\n");
	templateBuilder.Append("				AdvancedTitleEditor();\r\n");
	templateBuilder.Append("				};\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			</div>\r\n");

	if (htmltitle!="")
	{

	templateBuilder.Append("				<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("				AdvancedTitleEditor();\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("		</div>\r\n");

	if (adveditor)
	{

	templateBuilder.Append("		<!--  ###############  特殊主题  ############### -->\r\n");
	templateBuilder.Append("		<div id=\"specialpost\" class=\"s_clear\"></div>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("			_attachEvent(window, \"load\", function(){ \r\n");
	templateBuilder.Append("			if($('specialposttable')) {\r\n");
	templateBuilder.Append("				$('specialpost').innerHTML = $('specialposttable').innerHTML;\r\n");
	templateBuilder.Append("				$('specialposttable').innerHTML = '';\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			});\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		</div>\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("		<div style=\"clear:both; width:2500px;overflow-x:hidden;\">\r\n");

	}
	else
	{

	templateBuilder.Append("		<div style=\"clear:both;\">\r\n");

	}	//end if


	if (infloat==1)
	{

	templateBuilder.Append("<div class=\"floatbox floatbox1\" id=\"extcreditbox3\"></div>\r\n");

	}	//end if

	templateBuilder.Append("			<div class=\"floatbox floatbox1\" id=\"editorbox\">\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("				<h3 class=\"float_ctrl\">\r\n");
	templateBuilder.Append("					<em><button id=\"creditlink\" type=\"button\" onclick=\"pagescrolls('return');return false\">返回</button></em>\r\n");
	templateBuilder.Append("					<span>\r\n");
	templateBuilder.Append("						<a href=\"javascript:;\" onclick=\"pagescrolls('credit3')\" title=\"积分说明\">积分说明</a>\r\n");
	templateBuilder.Append("						<a href=\"javascript:;\" class=\"float_newwindow\" onclick=\"editorwindowopen('$posturl')\" title=\"新窗口\">新窗口</a>\r\n");
	templateBuilder.Append("						<a href=\"javascript:;\" class=\"float_max\" onclick=\"resizeEditorwin()\" title=\"最大化\" id=\"resizeEditorwin\">最大化</a>\r\n");
	templateBuilder.Append("						<a href=\"javascript:;\" class=\"float_close\" onclick=\"closeEditorwin();removeElement()\" title=\"关闭\">关闭</a>\r\n");
	templateBuilder.Append("					</span>\r\n");
	templateBuilder.Append("				</h3>\r\n");

	}	//end if

	templateBuilder.Append("			<div class=\"postbox\">\r\n");

	}	//end if


	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("javascript/bbcode.js\" reload=\"1\" ></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("javascript/ajax.js\" reload=\"1\" ></");
	templateBuilder.Append("script>\r\n");

	if (infloat==1)
	{
	templateBuilder.Append(link.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\" >\r\n");
	templateBuilder.Append("var infloat = ");
	templateBuilder.Append(infloat.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("var InFloat_Editor = 'floatlayout_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("var editoraction = '");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("var lang	= new Array();\r\n");
	templateBuilder.Append("lang['post_discuzcode_code'] = '请输入要插入的代码';\r\n");
	templateBuilder.Append("lang['post_discuzcode_quote'] = '请输入要插入的引用';\r\n");
	templateBuilder.Append("lang['post_discuzcode_free'] = '请输入要插入的免费信息';\r\n");
	templateBuilder.Append("lang['post_discuzcode_hide'] = '请输入要插入的隐藏内容';\r\n");
	templateBuilder.Append("lang['board_allowed'] = '系统限制';\r\n");
	templateBuilder.Append("lang['lento'] = '到';\r\n");
	templateBuilder.Append("lang['bytes'] = '字节';\r\n");
	templateBuilder.Append("lang['post_curlength'] = '当前长度';\r\n");
	templateBuilder.Append("lang['post_title_and_message_isnull'] = '请完成标题或内容栏。';\r\n");
	templateBuilder.Append("lang['post_title_toolong'] = '您的标题超过 60 个字符的限制。';\r\n");
	templateBuilder.Append("lang['post_message_length_invalid'] = '您的帖子长度不符合要求。';\r\n");
	templateBuilder.Append("lang['post_type_isnull'] = '请选择主题对应的分类。';\r\n");
	templateBuilder.Append("lang['post_reward_credits_null'] = '对不起，您输入悬赏积分。';\r\n");
	templateBuilder.Append("lang['post_attachment_ext_notallowed']	= '对不起，不支持上传此类扩展名的附件。';\r\n");
	templateBuilder.Append("lang['post_attachment_img_invalid']		= '无效的图片文件。';\r\n");
	templateBuilder.Append("lang['post_attachment_deletelink']		= '删除';\r\n");
	templateBuilder.Append("lang['post_attachment_insert']			= '点击这里将本附件插入帖子内容中当前光标的位置';\r\n");
	templateBuilder.Append("lang['post_attachment_insertlink']		= '插入';\r\n");
	templateBuilder.Append("lang['enter_list_item']			= \"输入一个列表项目.\\r\\n留空或者点击取消完成此列表.\";\r\n");
	templateBuilder.Append("lang['enter_link_url']			= \"请输入链接的地址:\";\r\n");
	templateBuilder.Append("lang['enter_image_url']			= \"请输入图片链接地址:\";\r\n");
	templateBuilder.Append("lang['enter_email_link']		= \"请输入此链接的邮箱地址:\";\r\n");
	templateBuilder.Append("lang['fontname']				= \"字体\";\r\n");
	templateBuilder.Append("lang['fontsize']				= \"大小\";\r\n");
	templateBuilder.Append("lang['post_advanceeditor']		= \"全部功能\";\r\n");
	templateBuilder.Append("lang['post_simpleeditor']		= \"简单功能\";\r\n");
	templateBuilder.Append("lang['submit']					= \"提交\";\r\n");
	templateBuilder.Append("lang['cancel']					= \"取消\";\r\n");
	templateBuilder.Append("lang['post_autosave_none'] = \"没有可以恢复的数据\";\r\n");
	templateBuilder.Append("lang['post_autosave_confirm'] = \"本操作将覆盖当前帖子内容，确定要恢复数据吗？\";\r\n");
	templateBuilder.Append("lang['enter_tag_option']		= \"请输入 %1 标签的选项:\";\r\n");
	templateBuilder.Append("//lang['enter_list_item']			= \"输入一个列表项目.\\r\\n留空或者点击'取消'完成此列表.\";\r\n");
	templateBuilder.Append("//lang['enter_link_url']			= \"请输入链接的地址:\";\r\n");
	templateBuilder.Append("//lang['enter_image_url']			= \"请输入图片链接地址:\";\r\n");
	templateBuilder.Append("//lang['enter_email_link']		= \"请输入此链接的邮箱地址:\";\r\n");
	templateBuilder.Append("lang['enter_table_rows']		= \"请输入行数，最多 30 行:\";\r\n");
	templateBuilder.Append("lang['enter_table_columns']		= \"请输入列数，最多 30 列:\";\r\n");
	templateBuilder.Append("//lang['fontname']			= \"字体\";\r\n");
	templateBuilder.Append("//lang['fontsize']			= \"大小\";\r\n");
	templateBuilder.Append("var editorcss = 'templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/editor.css';\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\" >\r\n");
	templateBuilder.Append("	var typerequired = parseInt('0');\r\n");
	templateBuilder.Append("//		var bbinsert = parseInt('1');\r\n");
	templateBuilder.Append("	var seccodecheck = parseInt('0');\r\n");
	templateBuilder.Append("	var secqaacheck = parseInt('0');\r\n");
	templateBuilder.Append("	var special = 1;\r\n");

	if (special=="")
	{

	templateBuilder.Append("	special = 0;\r\n");

	}	//end if

	templateBuilder.Append("	var isfirstpost = 0;\r\n");

	if (isfirstpost)
	{

	templateBuilder.Append("	isfirstpost = 1;\r\n");

	}	//end if

	templateBuilder.Append("	var allowposttrade = parseInt('1');\r\n");
	templateBuilder.Append("	var allowpostreward = parseInt('1');\r\n");
	templateBuilder.Append("	var allowpostactivity = parseInt('1');\r\n");
	templateBuilder.Append("	var bbinsert = parseInt('1');\r\n");
	templateBuilder.Append("	var editorid = '");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("	var allowhtml = parseInt('");
	templateBuilder.Append(htmlon.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("	var forumallowhtml = parseInt('1');\r\n");
	templateBuilder.Append("	var allowsmilies = 1 - parseInt('");
	templateBuilder.Append(smileyoff.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("	var allowbbcode = parseInt('");
	templateBuilder.Append(usergroupinfo.Allowcusbbcode.ToString().Trim());
	templateBuilder.Append("') == 1 && parseInt('");
	templateBuilder.Append(forum.Allowbbcode.ToString().Trim());
	templateBuilder.Append("') == 1;\r\n");
	templateBuilder.Append("	var allowimgcode = parseInt('");
	templateBuilder.Append(forum.Allowimgcode.ToString().Trim());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("	var wysiwyg = (is_ie || is_moz || (is_opera && opera.version() >= 9)) && parseInt('");
	templateBuilder.Append(config.Defaulteditormode.ToString().Trim());
	templateBuilder.Append("') && allowbbcode == 1 ? 1 : 0;//bbinsert == 1 ? 1 : 0;\r\n");
	templateBuilder.Append("	var allowswitcheditor = parseInt('");
	templateBuilder.Append(config.Allowswitcheditor.ToString().Trim());
	templateBuilder.Append("') && allowbbcode == 1 ;\r\n");
	templateBuilder.Append("	//var Editor				= new Array();\r\n");
	templateBuilder.Append("	var custombbcodes = { ");
	templateBuilder.Append(Caches.GetCustomEditButtonList().ToString().Trim());
	templateBuilder.Append(" };\r\n");
	templateBuilder.Append("	var smileyinsert = parseInt('1');\r\n");
	templateBuilder.Append("	//var editor_id = '");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("';　//编辑器ID\r\n");
	templateBuilder.Append("	var smiliesCount = 32;//显示表情总数\r\n");
	templateBuilder.Append("	var colCount = 8; //每行显示表情个数\r\n");
	templateBuilder.Append("	var title = \"\";				   //标题\r\n");
	templateBuilder.Append("	var showsmiliestitle = 1;        //是否显示标题（0不显示 1显示）\r\n");
	templateBuilder.Append("	var smiliesIsCreate = 0;		   //编辑器是否已被创建(0否，1是）\r\n");
	templateBuilder.Append("	var smilies_HASH = {};//得到表情符号信息\r\n");
	templateBuilder.Append("	//var smiliePageSize = 16; //表情每页显示数量 (共4列)\r\n");
	templateBuilder.Append("	//table变量\r\n");
	templateBuilder.Append("	/*\r\n");
	templateBuilder.Append("	var msgheader = \"margin:0 2em; font: 11px Arial, Tahoma; font-weight: bold; background: #F3F8D7; padding: 5px;\";\r\n");
	templateBuilder.Append("	var msgborder = \"margin: 0 2em; padding: 10px; border: 1px solid #dbddd3; word-break: break-all; background-color: #fdfff2;\";\r\n");
	templateBuilder.Append("	var INNERBORDERCOLOR = \"#D6E0EF\";\r\n");
	templateBuilder.Append("	var BORDERWIDTH = \"1\";\r\n");
	templateBuilder.Append("	var BORDERCOLOR = \"#7ac4ea\";\r\n");
	templateBuilder.Append("	var ALTBG2 = \"#ffffff\";\r\n");
	templateBuilder.Append("	var FONTSIZE = \"12px\";\r\n");
	templateBuilder.Append("	var FONT = \"Tahoma, Verdana\";\r\n");
	templateBuilder.Append("	//var fontoptions = new Array(\"仿宋_GB2312\", \"黑体\", \"楷体_GB2312\", \"宋体\", \"新宋体\", \"Tahoma\", \"Arial\", \"Impact\", \"Verdana\", \"Times New Roman\");\r\n");
	templateBuilder.Append("	var altbg1 = '#f5fbff';\r\n");
	templateBuilder.Append("	var altbg2 = 'background: #ffffff;font: 12px Tahoma, Verdana;';\r\n");
	templateBuilder.Append("	var tableborder = 'background: #D6E0EF;border: 1px solid #7ac4ea;';\r\n");
	templateBuilder.Append("*/\r\n");
	templateBuilder.Append("	var maxpolloptions = parseInt('");
	templateBuilder.Append(config.Maxpolloptions.ToString().Trim());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("	function alloweditorhtml() {\r\n");
	templateBuilder.Append("		if($('htmlon').checked) {\r\n");
	templateBuilder.Append("			allowhtml = 1;\r\n");
	templateBuilder.Append("			forumallowhtml = 1;\r\n");
	templateBuilder.Append("		} else {\r\n");
	templateBuilder.Append("			allowhtml = 0;\r\n");
	templateBuilder.Append("			forumallowhtml = 0;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<input type=\"hidden\" name=\"wysiwyg\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mode\" value=\"");
	templateBuilder.Append(config.Defaulteditormode.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("<div id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_controls\" class=\"editorrow\">\r\n");
	templateBuilder.Append("	<div class=\"editor\">\r\n");
	templateBuilder.Append("		<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_switcher\" class=\"plugeditor editormode\"><input type=\"checkbox\" name=\"checkbox\" value=\"0\" \r\n");

	if (config.Defaulteditormode==0)
	{

	templateBuilder.Append(" checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append(" onclick=\"switchEditor(this.checked?0:1)\"/>源码</a>\r\n");
	templateBuilder.Append("		<div class=\"editorbtn\" id=\"editorbtn\">\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_bold\" title=\"粗体\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_simple\" title=\"粗体 斜体 下划线\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_fontname\" title=\"字体\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_fontsize\" title=\"大小\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_forecolor\" title=\"颜色\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_justify\" title=\"对齐\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_createlink\" title=\"链接\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_email\" title=\"Email\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_insertimage\" title=\"图片\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_quote\" title=\"引用\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_code\" title=\"代码\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_list\" title=\"列表\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_dent\" title=\"缩进\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_float\" title=\"浮动\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_table\" title=\"表格\" style=\"display: none;\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_free\" title=\"免费信息\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_hide\" title=\"隐藏内容\" href=\"javascript:;\"></a>\r\n");

	if (config.Smileyinsert==1)
	{

	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_smilies\" title=\"表情\" href=\"javascript:;\"></a>\r\n");

	}	//end if

	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_media\" title=\"多媒体\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("			<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_tools\" title=\"工具\" href=\"javascript:;\"></a>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("			//自定义按扭显示\r\n");
	templateBuilder.Append("			if(typeof(custombbcodes) != 'undefined') {\r\n");
	templateBuilder.Append("				//document.writeln('<td><img src=\"editor/images/separator.gif\" width=\"6\" height=\"23\"></td>');\r\n");
	templateBuilder.Append("				for (var id in custombbcodes){\r\n");
	templateBuilder.Append("					if (custombbcodes[id][1] == '')\r\n");
	templateBuilder.Append("						continue;\r\n");
	templateBuilder.Append("					var btn = document.createElement(\"a\");\r\n");
	templateBuilder.Append("					btn.id = \"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_custom\" + custombbcodes[id][5] + \"_\" + custombbcodes[id][0];\r\n");
	templateBuilder.Append("					btn.className = \"customedit\";\r\n");
	templateBuilder.Append("					btn.innerHTML = '<img title=\"' + custombbcodes[id][2] + '\" alt=\"' + custombbcodes[id][2] + '\" src = \"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("editor/images/' + custombbcodes[id][1] + '\" />';\r\n");
	templateBuilder.Append("					$(\"editorbtn\").appendChild(btn);\r\n");
	templateBuilder.Append("					//document.writeln('<a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_custom' + custombbcodes[id][5] + '_' + custombbcodes[id][0] + '\" class=\"customedit\"><img title=\"' + custombbcodes[id][2] + '\" alt=\"' + custombbcodes[id][2] + '\" src = \"editor/images/' + custombbcodes[id][1] + '\" /></a>');\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"editortoolbar\">\r\n");
	templateBuilder.Append("		<div class=\"popupmenu_popup fontstyle_menu\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_simple_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<ul unselectable=\"on\">\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_italic\" title=\"斜体\">斜体</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_underline\" title=\"下划线\">下划线</a></li>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	string fontoptions = "仿宋_GB2312,黑体,楷体_GB2312,宋体,新宋体,微软雅黑,TrebuchetMS,Tahoma,Arial,Impact,Verdana,TimesNewRoman";
	
	templateBuilder.Append("		<div class=\"popupmenu_popup fontname_menu\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_fontname_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<ul unselectable=\"on\">\r\n");

	int fontname__loop__id=0;
	foreach(string fontname in fontoptions.Split(comma))
	{
		fontname__loop__id++;

	templateBuilder.Append("			<li onclick=\"discuzcode('fontname', '");
	templateBuilder.Append(fontname.ToString());
	templateBuilder.Append("')\" style=\"font-family: ");
	templateBuilder.Append(fontname.ToString());
	templateBuilder.Append("\" unselectable=\"on\">");
	templateBuilder.Append(fontname.ToString());
	templateBuilder.Append("</li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	string sizeoptions = "1,2,3,4,5,6,7";
	
	templateBuilder.Append("		<div class=\"popupmenu_popup fontsize_menu\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_fontsize_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<ul unselectable=\"on\">\r\n");

	int size__loop__id=0;
	foreach(string size in sizeoptions.Split(comma))
	{
		size__loop__id++;

	templateBuilder.Append("			<li onclick=\"discuzcode('fontsize', ");
	templateBuilder.Append(size.ToString());
	templateBuilder.Append(")\" unselectable=\"on\"><font size=\"");
	templateBuilder.Append(size.ToString());
	templateBuilder.Append("\" unselectable=\"on\">");
	templateBuilder.Append(size.ToString());
	templateBuilder.Append("</font></li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	string coloroptions = "Black,Sienna,DarkOliveGreen,DarkGreen,DarkSlateBlue,Navy,Indigo,DarkSlateGray,DarkRed,DarkOrange,Olive,Green,Teal,Blue,SlateGray,DimGray,Red,SandyBrown,YellowGreen,SeaGreen,MediumTurquoise,RoyalBlue,Purple,Gray,Magenta,Orange,Yellow,Lime,Cyan,DeepSkyBlue,DarkOrchid,Silver,Pink,Wheat,LemonChiffon,PaleGreen,PaleTurquoise,LightBlue,Plum,White";
	
	templateBuilder.Append("		<div class=\"popupmenu_popup\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_forecolor_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" unselectable=\"on\" style=\"width: auto;\">\r\n");
	templateBuilder.Append("		<tr>\r\n");

	int colorname__loop__id=0;
	foreach(string colorname in coloroptions.Split(comma))
	{
		colorname__loop__id++;

	templateBuilder.Append("			<td class=\"editor_colornormal\" onclick=\"discuzcode('forecolor', '");
	templateBuilder.Append(colorname.ToString());
	templateBuilder.Append("')\" unselectable=\"on\"><div style=\"background-color: ");
	templateBuilder.Append(colorname.ToString());
	templateBuilder.Append("\" unselectable=\"on\"></div></td>\r\n");

	if (colorname__loop__id%8==0)
	{

	templateBuilder.Append("</tr><tr>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"popupmenu_popup\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_justify_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<ul unselectable=\"on\">\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_justifyleft\" title=\"居左\">居左</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_justifycenter\" title=\"居中\">居中</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_justifyright\" title=\"居右\">居右</a></li>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");

	if (config.Smileyinsert==1)
	{

	templateBuilder.Append("		<div class=\"smilies popupmenu_popup\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_smilies_menu\" style=\"display: none;width:320px;\">\r\n");

	templateBuilder.Append("<div class=\"smilieslist\">\r\n");
	string defaulttypname = string.Empty;
	
	templateBuilder.Append("	<div id=\"smiliesdiv\">\r\n");
	templateBuilder.Append("		<div class=\"smiliesgroup\" style=\"margin-right: 0pt;\">\r\n");
	templateBuilder.Append("			<ul>\r\n");

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

	templateBuilder.Append("				<li id=\"t_s_" + stype__loop__id.ToString() + "\"><a id=\"s_" + stype__loop__id.ToString() + "\" hidefocus=\"true\" href=\"javascript:;\" onclick=\"showsmiles(" + stype__loop__id.ToString() + ", '" + stype["code"].ToString().Trim() + "');\" class=\"current\">" + stype["code"].ToString().Trim() + "</a></li>\r\n");

	}
	else
	{

	templateBuilder.Append("				<li id=\"t_s_" + stype__loop__id.ToString() + "\"><a id=\"s_" + stype__loop__id.ToString() + "\" hidefocus=\"true\" href=\"javascript:;\" onclick=\"showsmiles(" + stype__loop__id.ToString() + ", '" + stype["code"].ToString().Trim() + "');\">" + stype["code"].ToString().Trim() + "</a></li>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		 </div>\r\n");
	templateBuilder.Append("		 <div style=\"clear: both;\" class=\"float_typeid\" id=\"showsmilie\"></div>\r\n");
	templateBuilder.Append("		 <table class=\"smilieslist_table\" id=\"s_preview_table\" style=\"display: none\"><tr><td class=\"smilieslist_preview\" id=\"s_preview\"></td></tr></table>\r\n");
	templateBuilder.Append("		 <div id=\"showsmilie_pagenum\" class=\"smilieslist_page\">&nbsp;</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script src=\"javascript/post.js\" type=\"text/javascript\" reload=\"1\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("	function getSmilies(func){\r\n");
	templateBuilder.Append("		if($('showsmilie').innerHTML !='' && $('showsmilie').innerHTML != '正在加载表情...')\r\n");
	templateBuilder.Append("			return;\r\n");
	templateBuilder.Append("		var c = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("tools/ajax.aspx?t=smilies\";\r\n");
	templateBuilder.Append("		_sendRequest(c,function(d){var e={};try{e=eval(\"(\"+d+\")\")}catch(f){e={}}var h=e?e:null;func(h);e=null;func=null},false,true);\r\n");
	templateBuilder.Append("		setTimeout(\"if($('showsmilie').innerHTML=='')$('showsmilie').innerHTML = '正在加载表情...'\", 2000);\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function getSmilies_callback(obj) {\r\n");
	templateBuilder.Append("		smilies_HASH = obj; \r\n");
	templateBuilder.Append("		showsmiles(1, '");
	templateBuilder.Append(defaulttypname.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	_attachEvent($('");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_smilies'), 'click', function(){\r\n");
	templateBuilder.Append("		getSmilies(getSmilies_callback);\r\n");
	templateBuilder.Append("	});\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");


	templateBuilder.Append("		</div>\r\n");

	}	//end if

	templateBuilder.Append("		<div class=\"popupmenu_popup\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_dent_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<ul unselectable=\"on\">\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_indent\" title=\"增加缩进\">增加缩进</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_outdent\" title=\"减少缩进\">减少缩进</a></li>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"popupmenu_popup\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_float_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<ul unselectable=\"on\">\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_floatleft\" title=\"左浮动\">左浮动</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_floatright\" title=\"右浮动\">右浮动</a></li>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"popupmenu_popup\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_list_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<ul unselectable=\"on\">\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_insertorderedlist\" title=\"排序的列表\">排序的列表</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_insertunorderedlist\" title=\"未排序的列表\">未排序的列表</a></li>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"popupmenu_popup\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_hide_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<ul unselectable=\"on\">\r\n");

	if (usergroupinfo.Allowhidecode==1)
	{

	templateBuilder.Append("<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_hide\" title=\"隐藏内容\">隐藏内容</a></li>\r\n");

	}	//end if

	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_table\" title=\"表格\">表格</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_free\" title=\"免费信息\">免费信息</a></li>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"popupmenu_popup\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_tools_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<ul unselectable=\"on\">\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_removeformat\" title=\"清除文本格式\">清除文本格式</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_unlink\" title=\"移除链接\">移除链接</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_undo\" title=\"撤销\">撤销</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_redo\" title=\"重做\">重做</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_checklength\" title=\"字数检查\">字数检查</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_clearcontent\" title=\"清空内容\">清空内容</a></li>\r\n");
	templateBuilder.Append("			<br />\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_autosave\" title=\"自动保存\">自动保存<em id=\"autsavet\">(60秒)</em></a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_saveData\" title=\"保存数据\">保存数据</a></li>\r\n");
	templateBuilder.Append("			<li><a id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_loadData\" title=\"恢复数据\">恢复数据</a></li>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div class=\"newediter\">\r\n");
	templateBuilder.Append("	<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" style=\"table-layout:fixed\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td>\r\n");

	if (infloat==0)
	{

	templateBuilder.Append("			<textarea class=\"autosave max\" name=\"message\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_textarea\" tabindex=\"1\" class=\"txt\" style=\"height:300px\">");
	templateBuilder.Append(message.ToString());
	templateBuilder.Append("</textarea>\r\n");

	}
	else
	{

	templateBuilder.Append("			<textarea class=\"autosave max\" name=\"message\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_textarea\" tabindex=\"1\">");
	templateBuilder.Append(message.ToString());
	templateBuilder.Append("</textarea>\r\n");

	}	//end if

	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\" >\r\n");
	templateBuilder.Append("var pagescroll = new pagescroll_class('floatlayout_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("', 600, 410);\r\n");

	if (infloat==0)
	{

	templateBuilder.Append("	$('floatlayout_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("').scrollLeft = 600;\r\n");

	}	//end if


	if (forum.Applytopictype==1 && topictypeselectoptions!=""&&isfirstpost)
	{

	templateBuilder.Append("	loadselect('typeid', 0, 'floatlayout_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("');\r\n");

	}	//end if

	templateBuilder.Append("/*\r\n");
	templateBuilder.Append("var editorid = '$editorid';\r\n");
	templateBuilder.Append("var textobj = $(editorid + '_textarea');\r\n");
	templateBuilder.Append("var wysiwyg = (is_ie || is_moz || (is_opera >= 9)) && parseInt('$editormode') == 1 ? 1 : 0;\r\n");
	templateBuilder.Append("var allowswitcheditor = parseInt('$allowswitcheditor');\r\n");
	templateBuilder.Append("var allowhtml = parseInt('$allowhtml');\r\n");
	templateBuilder.Append("var forumallowhtml = parseInt('$forum[allowhtml]');\r\n");
	templateBuilder.Append("var allowsmilies = parseInt('$forum[allowsmilies]');\r\n");
	templateBuilder.Append("var allowbbcode = parseInt('$forum[allowbbcode]');\r\n");
	templateBuilder.Append("var allowimgcode = parseInt('$forum[allowimgcode]');\r\n");
	templateBuilder.Append("var allowpostattach = parseInt('$allowpostattach');\r\n");
	templateBuilder.Append("var editorcss = 'forumdata/cache/style_{  STYLEID  }_common.css?{  VERHASH  }';\r\n");
	templateBuilder.Append("var TABLEBG = '{  WRAPBG  }';\r\n");
	templateBuilder.Append("var uid = parseInt('$discuz_uid');\r\n");
	templateBuilder.Append("*/\r\n");
	templateBuilder.Append("var editorid = '");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("var textobj = $(editorid + '_textarea');\r\n");
	templateBuilder.Append("var TABLEBG = '#FFF';//'{  WRAPBG  }';\r\n");
	templateBuilder.Append("var uid = parseInt('");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var special = parseInt('0');\r\n");
	templateBuilder.Append("var charset = 'utf-8';\r\n");
	templateBuilder.Append("var thumbwidth = parseInt(400);\r\n");
	templateBuilder.Append("var thumbheight = parseInt(300);\r\n");
	templateBuilder.Append("var extensions = '';\r\n");
	templateBuilder.Append("var fontoptions = new Array(\"仿宋_GB2312\", \"黑体\", \"楷体_GB2312\", \"宋体\", \"新宋体\", \"微软雅黑\", \"Trebuchet MS\", \"Tahoma\", \"Arial\", \"Impact\", \"Verdana\", \"Times New Roman\");\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\" >\r\n");
	templateBuilder.Append("function messagehandle_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("(key) {\r\n");
	templateBuilder.Append("	if(!Editorwin) {\r\n");
	templateBuilder.Append("		$('floatlayout_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("').scrollTop = 0;\r\n");

	if (!adveditor)
	{

	templateBuilder.Append("			$('more_1').style.display='none';pagescroll.up(1, '$(\\'more_2\\').style.display=\\'\\';$(\\'custominfoarea\\').style.display=\\'\\'');\r\n");

	}
	else
	{

	templateBuilder.Append("			$('custominfoarea').style.display=$('more_2').style.display='none';pagescroll.up(1, '$(\\'more_1\\').style.display=\\'\\'');\r\n");

	}	//end if

	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("function messagehandle() {\r\n");
	templateBuilder.Append("	messagehandle_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("();\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("function submithandle_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("(locationhref, message) {\r\n");

	if (action=="edit" || action=="reply")
	{

	templateBuilder.Append("		try {\r\n");
	templateBuilder.Append("			var pid = locationhref.lastIndexOf('#pid');\r\n");
	templateBuilder.Append("			if(pid != -1) {\r\n");
	templateBuilder.Append("				pid = locationhref.substr(pid + 4);\r\n");

	if (action=="edit")
	{

	templateBuilder.Append("					if(pid) {\r\n");
	templateBuilder.Append("						ajaxget('viewthread.php?tid=$tid&viewpid=' + pid, 'post_' + pid, 'ajaxwaitid');\r\n");
	templateBuilder.Append("					} else {\r\n");
	templateBuilder.Append("						ajaxget('viewthread.php?tid=$tid&viewpid=$pid', 'post_$pid', 'ajaxwaitid');\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					$('postform').editsubmit.disabled = false;\r\n");

	}
	else if (action=="reply")
	{

	templateBuilder.Append("					ajaxget('viewthread.php?tid=$tid&viewpid=' + pid, 'post_new', 'ajaxwaitid', '', null, 'appendreply()');\r\n");
	templateBuilder.Append("					if(replyreload) {\r\n");
	templateBuilder.Append("						var reloadpids = replyreload.split(',');\r\n");
	templateBuilder.Append("						for(i = 1;i < reloadpids.length;i++) {\r\n");
	templateBuilder.Append("							ajaxget('viewthread.php?tid=$tid&viewpid=' + reloadpids[i], 'post_' + reloadpids[i]);\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("					}\r\n");

	}	//end if

	templateBuilder.Append("			} else {\r\n");
	templateBuilder.Append("				location.href = locationhref;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		} catch(e) {\r\n");
	templateBuilder.Append("			location.href = locationhref;\r\n");
	templateBuilder.Append("		}\r\n");

	}
	else if (action=="newthread'")
	{

	templateBuilder.Append("		var hastid = locationhref.lastIndexOf('tid=');\r\n");
	templateBuilder.Append("		if(hastid == -1) {\r\n");
	templateBuilder.Append("			dnotice(message, \"location.href='\" + locationhref + \"'\", 390, 130);\r\n");
	templateBuilder.Append("		} else {\r\n");
	templateBuilder.Append("			location.href = locationhref;\r\n");
	templateBuilder.Append("		}\r\n");

	}	//end if

	templateBuilder.Append("	floatwinreset = 1;\r\n");
	templateBuilder.Append("	closeEditorwin();\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("function cedit() {\r\n");
	templateBuilder.Append("	try {\r\n");
	templateBuilder.Append("		loadData(1);\r\n");
	templateBuilder.Append("	} catch(e) {\r\n");
	templateBuilder.Append("		setTimeout('cedit()', 1000);\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("function openEditor() {\r\n");
	templateBuilder.Append("	try {\r\n");

	if (action=="reply" && message=="")
	{


	}	//end if


	if (action=="edit" || action=="reply"&&DNTRequest.GetString("quote")=="yes")
	{

	templateBuilder.Append("		if(wysiwyg) {\r\n");
	templateBuilder.Append("			initialized = false;\r\n");
	templateBuilder.Append("			//newEditor(1);\r\n");
	templateBuilder.Append("			///textobj.value = bbcode2html(textobj.value);\r\n");
	templateBuilder.Append("			newEditor(1, bbcode2html(textobj.value));\r\n");
	templateBuilder.Append("		} else {\r\n");
	templateBuilder.Append("			newEditor(0);\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		setCaretAtEnd();\r\n");

	}
	else
	{

	templateBuilder.Append("		newEditor(wysiwyg);\r\n");
	templateBuilder.Append("		if(editbox) {\r\n");
	templateBuilder.Append("			editbox.className = 'autosave max';\r\n");
	templateBuilder.Append("		}\r\n");

	}	//end if

	templateBuilder.Append("	} catch(e) {\r\n");
	templateBuilder.Append("		setTimeout('openEditor()', 100);\r\n");
	templateBuilder.Append("		return;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	if(!$('floatlayout_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("').scrollLeft) {\r\n");
	templateBuilder.Append("		$('floatlayout_");
	templateBuilder.Append(action.ToString());
	templateBuilder.Append("').scrollLeft = 600;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	// 需要开启tools\r\n");
	templateBuilder.Append("	if(!getcookie('disableautosave')) {\r\n");
	templateBuilder.Append("		clearInterval(autosaveDatai);\r\n");
	templateBuilder.Append("		autosaveData(1);\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	if(is_ie >= 5 || is_moz >= 2) {\r\n");
	templateBuilder.Append("		window.onbeforeunload = function () {\r\n");
	templateBuilder.Append("			try {\r\n");
	templateBuilder.Append("				saveData(wysiwyg ? editdoc.body.innerHTML : textobj.value);\r\n");
	templateBuilder.Append("			} catch(e) {}\r\n");
	templateBuilder.Append("		};\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("//openEditor();\r\n");
	templateBuilder.Append("	/*\r\n");
	templateBuilder.Append("	$(editorid + '_contract').onclick = function() { resizeEditor(-100) };\r\n");
	templateBuilder.Append("	$(editorid + '_expand').onclick = function() { resizeEditor(100) };\r\n");
	templateBuilder.Append("	$('checklength').onclick = function() { checklength($('postform')) };\r\n");
	templateBuilder.Append("	$('previewbutton').onclick = function() { previewpost() };\r\n");
	templateBuilder.Append("	$('clearcontent').onclick = function() { clearcontent() };\r\n");
	templateBuilder.Append("	$('restoredata').onclick = function() { loadData() };\r\n");
	templateBuilder.Append("	if ($('batchupload'))\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		$('batchupload').onclick = function() { BOX_show('silverlightControlHost'); LoadSilverlight('MultiUploadFile', num2upload); };\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	$('postform').onsubmit = function() { return validate(this); };\r\n");
	templateBuilder.Append("	try{ $('title').focus(); }catch(e){ }\r\n");
	templateBuilder.Append("	*/\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("javascript/post.js\" reload=\"1\" ></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("javascript/editor.js\" reload=\"1\" ></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("javascript/post_editor.js\" reload=\"1\" ></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<!--{if $forum['allowmediacode']}-->\r\n");
	templateBuilder.Append("<div class=\"popupmenu_popup\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_popup_media_menu\" style=\"width: 280px;display: none\" unselectable=\"on\">\r\n");
	templateBuilder.Append("<input type=\"hidden\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatype\" value=\"ra\">\r\n");
	templateBuilder.Append("<table cellpadding=\"4\" cellspacing=\"0\" border=\"0\">\r\n");
	templateBuilder.Append("	<tr class=\"popupmenu_option\">\r\n");
	templateBuilder.Append("		<td nowrap>\r\n");
	templateBuilder.Append("			请输入在线视频的地址:<br />\r\n");
	templateBuilder.Append("			<input id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediaurl\" style=\"width: 98%\" value=\"\" onkeyup=\"setmediatype('");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("')\" class=\"txt\" />\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	<tr class=\"popupmenu_option\">\r\n");
	templateBuilder.Append("		<td nowrap>\r\n");
	templateBuilder.Append("			<label style=\"float: left; width: 32%\"><input type=\"radio\" name=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio_ra\" onclick=\"$('");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatype').value = 'ra'\" checked=\"checked\">RA</label>\r\n");
	templateBuilder.Append("			<label style=\"float: left; width: 32%\"><input type=\"radio\" name=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio_wma\" onclick=\"$('");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatype').value = 'wma'\">WMA</label>\r\n");
	templateBuilder.Append("			<label style=\"float: left; width: 32%\"><input type=\"radio\" name=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio_mp3\" onclick=\"$('");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatype').value = 'mp3'\">MP3</label>\r\n");
	templateBuilder.Append("			<label style=\"float: left; width: 32%\"><input type=\"radio\" name=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio_rm\" onclick=\"$('");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatype').value = 'rm'\">RM/RMVB</label>\r\n");
	templateBuilder.Append("			<label style=\"float: left; width: 32%\"><input type=\"radio\" name=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio_wmv\" onclick=\"$('");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatype').value = 'wmv'\">WMV</label>\r\n");
	templateBuilder.Append("			<label style=\"float: left; width: 32%\"><input type=\"radio\" name=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatyperadio_mov\" onclick=\"$('");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediatype').value = 'mov'\">MOV</label>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	<tr class=\"popupmenu_option\">\r\n");
	templateBuilder.Append("		<td nowrap>\r\n");
	templateBuilder.Append("			<label style=\"float: left; width: 32%\">宽度: <input id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediawidth\" size=\"5\" value=\"400\" class=\"txt\" /></label>\r\n");
	templateBuilder.Append("			<label style=\"float: left; width: 32%\">高度: <input id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_mediaheight\" size=\"5\" value=\"300\"  class=\"txt\"/></label>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	<tr class=\"popupmenu_option\">\r\n");
	templateBuilder.Append("		<td align=\"center\" colspan=\"2\"><input type=\"button\" value=\"提交\" onclick=\"setmediacode('");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("')\"> &nbsp; <input type=\"button\" onclick=\"hideMenu()\" value=\"取消\" /></td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("</table>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<!--{/if}-->\r\n");
	templateBuilder.Append("<!--{if $_DCACHE['bbcodes_display']['img']}-->\r\n");
	templateBuilder.Append("<div class=\"popupmenu_popup\" id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_insertimage_menu\" style=\"display: none\" unselectable=\"on\">\r\n");
	templateBuilder.Append("		请输入图片地址:<br /><input id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_insertimage_param_url\" style=\"width: 300px;\" value=\"\" class=\"txt\" type=\"text\" onkeydown=\"editorMenuEvent_onkeydown(this);\" />\r\n");
	templateBuilder.Append("		<br /><center><input id=\"");
	templateBuilder.Append(editorid.ToString());
	templateBuilder.Append("_cmd_insertimage_submit\" value=\"提交\" type=\"button\" onclick=\"insertimagesubmit()\" /> &nbsp; <input onclick=\"hideMenu();\" value=\"取消\" type=\"button\" /></center>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<!--{/if}-->\r\n");


	templateBuilder.Append("		</div>\r\n");

	if (canpostattach)
	{



	if (attachsize>0)
	{


	if (attachextensions!="")
	{

	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("javascript/template_attach.js\" reload=\"1\"></");
	templateBuilder.Append("script>\r\n");

	if (pagename.IndexOf("goods")<0 && config.Silverlight==1)
	{

	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("silverlight/uploadfile/silverlight.js\" reload=\"1\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("function LoadSilverlight(pluginID, max) {\r\n");
	templateBuilder.Append("     Silverlight.createObject(\r\n");
	templateBuilder.Append("         \"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("silverlight/UploadFile/ClientBin/MultiFileUpload.xap\", \r\n");
	templateBuilder.Append("         $(\"swfbox\"),         \r\n");
	templateBuilder.Append("         pluginID,                         \r\n");
	templateBuilder.Append("         {     \r\n");
	templateBuilder.Append("             width: '500',\r\n");
	templateBuilder.Append("             height: '340',\r\n");
	templateBuilder.Append("             inplaceInstallPrompt: 'true',\r\n");
	templateBuilder.Append("             isWindowless: 'false',\r\n");
	templateBuilder.Append("             background: 'aliceblue',\r\n");
	templateBuilder.Append("             version: '2.0',\r\n");
	templateBuilder.Append("             autoUpgrade: 'true'\r\n");
	templateBuilder.Append("         },\r\n");
	templateBuilder.Append("         {\r\n");
	templateBuilder.Append("             onLoad: onLoad, \r\n");
	templateBuilder.Append("             onError: onSilverlightError\r\n");
	templateBuilder.Append("         },\r\n");

	         string authToken = Discuz.Common.DES.Encode(oluserinfo.Olid.ToString() + "," + oluserinfo.Username.ToString(), oluserinfo.Password.Substring(0, 10)).Replace("+", "[");
	         
	templateBuilder.Append("         \"forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append(",authToken=");
	templateBuilder.Append(authToken.ToString());
	templateBuilder.Append(",max=\" + max,\r\n");
	templateBuilder.Append("         \"\");\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("    </");
	templateBuilder.Append("script>    \r\n");
	templateBuilder.Append("<!--Silverlight 批量上传 End-->   \r\n");

	}	//end if

	templateBuilder.Append("		<div class=\"popupmenu_popup\" id=\"imgpreview_menu\" style=\"position:absolute;width:180px;height:150px;padding:0px;display: none;\"></div>\r\n");
	templateBuilder.Append("		<div class=\"post_tablelist postbox\" id=\"attachlist\" style=\"display: none\">\r\n");
	templateBuilder.Append("				<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\r\n");
	templateBuilder.Append("					<tr>\r\n");
	templateBuilder.Append("						<td class=\"attachnum\"></td>\r\n");
	templateBuilder.Append("						<td class=\"attachctrl\"></td>\r\n");
	templateBuilder.Append("						<td class=\"attachname\">文件名</td>\r\n");

	if (userid!=-1 && usergroupinfo.Allowsetattachperm==1)
	{

	templateBuilder.Append("<td class=\"attachview\">阅读权限</td>\r\n");

	}	//end if


	if (topicattachscorefield>0 && usergroupinfo.Maxprice>0)
	{

	templateBuilder.Append("<td class=\"attachpr\">");
	templateBuilder.Append(Scoresets.GetTopicAttachCreditsTransName().ToString().Trim());
	templateBuilder.Append("</td>\r\n");

	}	//end if


	if (config.Enablealbum==1 && caninsertalbum)
	{

	templateBuilder.Append("<td>选择相册</td>\r\n");

	}	//end if

	templateBuilder.Append("						<td class=\"attachdel\"></td>\r\n");
	templateBuilder.Append("					</tr>\r\n");
	templateBuilder.Append("				</table>\r\n");

	if (infloat==0)
	{

	templateBuilder.Append("				<div id=\"uploadlist\" class=\"upfilelist\" style=\"height:auto\">\r\n");

	}
	else
	{

	templateBuilder.Append("				<div id=\"uploadlist\" class=\"upfilelist\">\r\n");

	}	//end if


	if (action=="edit")
	{



	if (canpostattach && postinfo.Attachment>0)
	{

	templateBuilder.Append("	<table summary=\"附件\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");

	int attachment__loop__id=0;
	foreach(DataRow attachment in attachmentlist.Rows)
	{
		attachment__loop__id++;


	if (Utils.StrToInt(attachment["pid"].ToString().Trim(), 0)==postinfo.Pid)
	{

	templateBuilder.Append("		<script type=\"text/javascript\" reload=\"1\">try{ $(\"num2upload\").innerHTML=--num2upload; }catch(e) { setTimeout('$(\\'num2upload\\').innerHTML=--num2upload;', 1000); }</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<tbody id=\"attach_" + attachment["aid"].ToString().Trim() + "\">\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td class=\"attachnum\"><img src=\"images/attachicons/common.gif\" /></td>\r\n");
	templateBuilder.Append("				<td class=\"attachctrl\">\r\n");
	templateBuilder.Append("						<a href=\"javascript:;\"\r\n");

	if (attachment["filetype"].ToString().Trim().IndexOf("image")>-1)
	{

	templateBuilder.Append(" onmouseover=\"showpreview(this, 'imgpreview_" + attachment["aid"].ToString().Trim() + "')\"\r\n");

	}	//end if

	templateBuilder.Append(" onclick=\"\r\n");

	if (attachment["filetype"].ToString().Trim().IndexOf("image")>-1)
	{

	templateBuilder.Append("insertAttachimgTag('" + attachment["aid"].ToString().Trim() + "');\r\n");

	}
	else
	{

	templateBuilder.Append("insertAttachTag('" + attachment["aid"].ToString().Trim() + "');\r\n");

	}	//end if

	templateBuilder.Append("\" title=\"点击这里将本附件插入帖子内容中当前光标的位置\">插入</a>\r\n");
	templateBuilder.Append("						<script type=\"text/javascript\" reload=\"1\">var attachimgurl_" + attachment["aid"].ToString().Trim() + " = ['attachment.aspx?attachmentid=" + attachment["aid"].ToString().Trim() + "', 400];</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("						<input type=\"hidden\" value=\"" + attachment["aid"].ToString().Trim() + "\" name=\"attachupdateid\" />\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("				<td class=\"attachname\" title=\"" + attachment["filename"].ToString().Trim() + "  " + attachment["postdatetime"].ToString().Trim() + "  " + attachment["filesize"].ToString().Trim() + " 字节  下载" + attachment["downloads"].ToString().Trim() + "次\">\r\n");
	templateBuilder.Append("					<a href=\"javascript:;\" class=\"right\" onclick=\"attachupdate('" + attachment["aid"].ToString().Trim() + "', this)\">更新</a>\r\n");
	templateBuilder.Append("					<div id=\"attach" + attachment["aid"].ToString().Trim() + "\">\r\n");
	templateBuilder.Append("						<p>\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"attachupdatedesc\" value=\"" + attachment["description"].ToString().Trim() + "\"  />\r\n");
	templateBuilder.Append("							<a href=\"javascript:;\" onclick=\"parentNode.innerHTML='<input type=\\'text\\' name=\\'attachupdatedesc\\' value=\\'" + attachment["description"].ToString().Trim() + "\\' size=\\'25\\' class=\\'txt\\' />'\">描述</a>\r\n");
	templateBuilder.Append("							<span\r\n");

	if (attachment["filetype"].ToString().Trim().IndexOf("image")>-1)
	{

	templateBuilder.Append(" onmouseover=\"showpreview(this, 'imgpreview_" + attachment["aid"].ToString().Trim() + "');\"\r\n");

	}	//end if

	templateBuilder.Append(">" + attachment["attachment"].ToString().Trim() + "</span>\r\n");
	templateBuilder.Append("						</p>\r\n");

	if (attachment["filetype"].ToString().Trim().IndexOf("image")>-1)
	{

	templateBuilder.Append("							<div id=\"imgpreview_" + attachment["aid"].ToString().Trim() + "\" style=\"display: none; \"><img id=\"preview_" + attachment["aid"].ToString().Trim() + "\" style=\" max-width: 200px; max-height: 200px\" src=\"attachment.aspx?attachmentid=" + attachment["aid"].ToString().Trim() + "\" onerror=\"this.onerror=null;try{  this.src=attachimgurl_" + attachment["aid"].ToString().Trim() + "; } catch(e){}\" /></div>\r\n");

	}	//end if

	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("					<span id=\"attachupdate" + attachment["aid"].ToString().Trim() + "\"></span>\r\n");
	templateBuilder.Append("				</td>\r\n");

	if (userid!=-1 && usergroupinfo.Allowsetattachperm==1)
	{

	templateBuilder.Append("<td class=\"attachview\"><input name=\"attachupdatereadperm\" value=\"" + attachment["readperm"].ToString().Trim() + "\" size=\"1\" class=\"txt\" /></td>\r\n");

	}	//end if


	if (topicattachscorefield>0 && usergroupinfo.Maxprice>0)
	{

	templateBuilder.Append("<td class=\"attachpr\"><input name=\"attachupdateprice\" value=\"" + attachment["attachprice"].ToString().Trim() + "\" size=\"1\" class=\"txt\" /></td>\r\n");

	}	//end if

	templateBuilder.Append("				<td class=\"attachdel\"><input class=\"checkbox\" name=\"deleteaid\" value=\"" + attachment["aid"].ToString().Trim() + "\" type=\"checkbox\">删?</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			</tbody>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("	</table>\r\n");

	}	//end if




	}	//end if

	templateBuilder.Append("				<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\r\n");

	if (pagename.IndexOf("goods")<0 && config.Silverlight==1)
	{

	templateBuilder.Append("					<tbody id=\"attachuploadedhidden\" style=\"display:none\"><tr>\r\n");
	templateBuilder.Append("						<td class=\"attachnum\"><span id=\"sl_localno[]\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("images/attachicons/common_new.gif\" /></span></td>\r\n");
	templateBuilder.Append("						<td class=\"attachctrl\"><span id=\"sl_cpadd[]\"></span></td>\r\n");
	templateBuilder.Append("						<td class=\"attachname\">\r\n");
	templateBuilder.Append("							<span id=\"sl_deschidden[]\" style=\"display:none\">\r\n");
	templateBuilder.Append("								<a href=\"javascript:;\" onclick='parentNode.innerHTML=\"<input type=\\\"text\\\" name=\\\"attachdesc\\\" size=\\\"25\\\" class=\\\"txt\\\" />\"'>描述</a>\r\n");
	templateBuilder.Append("								<span id=\"attachfile[]\"></span>\r\n");
	templateBuilder.Append("								<input type=\"text\" name=\"sl_attachdesc\" style=\"display:none\" />\r\n");
	templateBuilder.Append("							</span>\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"attachid\" />\r\n");
	templateBuilder.Append("						</td>\r\n");

	if (userid!=-1 && usergroupinfo.Allowsetattachperm==1)
	{

	templateBuilder.Append("<td class=\"attachview\"><input type=\"text\" name=\"sl_readperm\" value=\"0\"size=\"1\" class=\"txt\" /></td>\r\n");

	}	//end if


	if (topicattachscorefield>0 && usergroupinfo.Maxprice>0)
	{

	templateBuilder.Append("<td class=\"attachpr\"><input type=\"text\" name=\"sl_attachprice\" value=\"0\" size=\"1\" class=\"txt\" /></td>\r\n");

	}	//end if


	if (config.Enablealbum==1 && caninsertalbum)
	{

	templateBuilder.Append("							<td  style=\"vertical-align:top;\">\r\n");
	templateBuilder.Append("								<select name=\"albums\" style=\"display:none\">\r\n");
	templateBuilder.Append("								<option value=\"0\"></option>\r\n");

	int album__loop__id=0;
	foreach(DataRow album in albumlist.Rows)
	{
		album__loop__id++;

	templateBuilder.Append("								<option value=\"" + album["albumid"].ToString().Trim() + "\">" + album["title"].ToString().Trim() + "</option>\r\n");

	}	//end loop

	templateBuilder.Append("								</select>\r\n");
	templateBuilder.Append("							</td>\r\n");

	}	//end if

	templateBuilder.Append("						<td class=\"attachdel\"><span id=\"sl_cpdel[]\"></span></td>\r\n");
	templateBuilder.Append("					</tr></tbody>\r\n");

	}	//end if

	templateBuilder.Append("					<tbody id=\"attachbodyhidden\" style=\"display:none\"><tr>\r\n");
	templateBuilder.Append("						<td class=\"attachnum\"><span id=\"localno[]\"><img src=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("images/attachicons/common_new.gif\" /></span></td>\r\n");
	templateBuilder.Append("						<td class=\"attachctrl\"><span id=\"cpadd[]\"></span></td>\r\n");
	templateBuilder.Append("						<td class=\"attachname\">\r\n");
	templateBuilder.Append("							<span id=\"deschidden[]\" style=\"display:none\">\r\n");
	templateBuilder.Append("								<a href=\"javascript:;\" onclick='parentNode.innerHTML=\"<input type=\\\"text\\\" name=\\\"attachdesc\\\" size=\\\"25\\\" class=\\\"txt\\\" />\"'>描述</a>\r\n");
	templateBuilder.Append("								<span id=\"localfile[]\"></span>\r\n");
	templateBuilder.Append("								<input type=\"text\" name=\"attachdesc\" style=\"display:none\" />\r\n");
	templateBuilder.Append("							</span>\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"localid\" />\r\n");
	templateBuilder.Append("						</td>\r\n");

	if (userid!=-1 && usergroupinfo.Allowsetattachperm==1)
	{

	templateBuilder.Append("<td class=\"attachview\"><input type=\"text\" name=\"readperm\" value=\"0\"size=\"1\" class=\"txt\" /></td>\r\n");

	}	//end if


	if (topicattachscorefield>0 && usergroupinfo.Maxprice>0)
	{

	templateBuilder.Append("<td class=\"attachpr\"><input type=\"text\" name=\"attachprice\" value=\"0\" size=\"1\" class=\"txt\" /></td>\r\n");

	}	//end if


	if (config.Enablealbum==1 && caninsertalbum)
	{

	templateBuilder.Append("							<td  style=\"vertical-align:top;\">\r\n");
	templateBuilder.Append("								<select name=\"sl_albums\" style=\"display:none\">\r\n");
	templateBuilder.Append("								<option value=\"0\"></option>\r\n");

	int album__loop__id=0;
	foreach(DataRow album in albumlist.Rows)
	{
		album__loop__id++;

	templateBuilder.Append("								<option value=\"" + album["albumid"].ToString().Trim() + "\">" + album["title"].ToString().Trim() + "</option>\r\n");

	}	//end loop

	templateBuilder.Append("								</select>\r\n");
	templateBuilder.Append("							</td>\r\n");

	}	//end if

	templateBuilder.Append("						<td class=\"attachdel\"><span id=\"cpdel[]\"></span></td>\r\n");
	templateBuilder.Append("					</tr></tbody>\r\n");
	templateBuilder.Append("				</table>\r\n");

	if (pagename.IndexOf("goods")<0 && config.Silverlight==1)
	{

	templateBuilder.Append("				<div id=\"swfattachlist\">\r\n");
	templateBuilder.Append("					<table cellspacing=\"0\" cellpadding=\"0\" id=\"attachuploadednote\" style=\"display:none;\">\r\n");
	templateBuilder.Append("						<tbody>\r\n");
	templateBuilder.Append("							<tr>\r\n");
	templateBuilder.Append("								<td class=\"attachnum\"></td>\r\n");
	templateBuilder.Append("								<td>您有 <span id=\"attachuploadednotenum\"></span> 个已经上传的附件<span id=\"maxattachnote\" style=\"display: none;\">, 只能使用前<span id=\"num2upload2\"><strong>");
	templateBuilder.Append(config.Maxattachments.ToString().Trim());
	templateBuilder.Append("</strong></span>个</span>  \r\n");
	templateBuilder.Append("								<a onclick=\"addAttachUploaded(attaches);\" href=\"javascript:;\">使用</a>   <a onclick=\"attachlist()\" href=\"javascript:;\">忽略</a>\r\n");
	templateBuilder.Append("								</td>\r\n");
	templateBuilder.Append("							</tr>\r\n");
	templateBuilder.Append("						</tbody>\r\n");
	templateBuilder.Append("					</table>\r\n");
	templateBuilder.Append("				</div>\r\n");

	}	//end if

	templateBuilder.Append("				<table cellpadding=\"0\" cellspacing=\"0\" summary=\"post_attachbody\" border=\"0\" width=\"100%\"><tbody id=\"attachuploaded\"></tbody><tbody id=\"attachbody\"></tbody></table>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("<div id=\"img_hidden\" alt=\"1\" style=\"position:absolute;top:-100000px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image');width:");
	templateBuilder.Append(thumbwidth.ToString());
	templateBuilder.Append("px;height:");
	templateBuilder.Append(thumbheight.ToString());
	templateBuilder.Append("px\"></div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("var attaches = ");
	templateBuilder.Append(Discuz.Forum.Attachments.GetNoUsedAttachmentJson(userid).ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("var aid = 1;\r\n");
	templateBuilder.Append("var auid = 1;\r\n");
	templateBuilder.Append("var thumbwidth = parseInt('");
	templateBuilder.Append(thumbwidth.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var thumbheight = parseInt('");
	templateBuilder.Append(thumbheight.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var attachexts = new Array();\r\n");
	templateBuilder.Append("var attachwh = new Array();\r\n");

	if (caninsertalbum)
	{

	templateBuilder.Append("var caninsertalbum = true;\r\n");

	}
	else
	{

	templateBuilder.Append("var caninsertalbum = false;\r\n");

	}	//end if

	templateBuilder.Append("var maxattachments = parseInt('");
	templateBuilder.Append(config.Maxattachments.ToString().Trim());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var num2upload = maxattachments;\r\n");
	templateBuilder.Append("var exts = '");
	templateBuilder.Append(attachextensionsnosize.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div id=\"attachinfo\" class=\"sitenote upfile\" style=\"display:none;\">\r\n");
	templateBuilder.Append("	<div class=\"cornerlayger\">单个附件大小:<strong>");
	templateBuilder.Append(FormatBytes(usergroupinfo.Maxattachsize).ToString().Trim());
	templateBuilder.Append("</strong>,&nbsp\r\n");
	templateBuilder.Append("今天可上传大小: <strong>");
	templateBuilder.Append(FormatBytes(attachsize).ToString());
	templateBuilder.Append("</strong>&nbsp;\r\n");
	templateBuilder.Append("最大附件数: <strong>");
	templateBuilder.Append(config.Maxattachments.ToString().Trim());
	templateBuilder.Append("</strong>,&nbsp;&nbsp;还可上传&nbsp;<span id=\"num2upload\"><strong>");
	templateBuilder.Append(config.Maxattachments.ToString().Trim());
	templateBuilder.Append("</strong></span>&nbsp;个附件&nbsp;\r\n");
	templateBuilder.Append("附件类型: <strong>");
	templateBuilder.Append(attachextensionsnosize.ToString());
	templateBuilder.Append("</strong>&nbsp;\r\n");
	templateBuilder.Append("售价: <strong>最高 ");
	templateBuilder.Append(usergroupinfo.Maxprice.ToString().Trim());
	templateBuilder.Append(" ");
	templateBuilder.Append(Scoresets.GetTopicAttachCreditsTransName().ToString().Trim());
	templateBuilder.Append("</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"minicorner\"></div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div id=\"swfuploadbox\" class=\"floatbox floatbox1 floatboxswf\" style=\"display: none\">\r\n");
	templateBuilder.Append("	<h3 class=\"float_ctrl\">\r\n");
	templateBuilder.Append("		<em\r\n");

	if (infloat==0)
	{

	templateBuilder.Append(" style=\"display:none\"\r\n");

	}	//end if

	templateBuilder.Append("><button type=\"button\" onclick=\"pagescrolls('swfreturn');return false\">返回</button></em>\r\n");

	if (infloat==0)
	{

	templateBuilder.Append("<em>批量上传</em>\r\n");

	}	//end if

	templateBuilder.Append("		<span id=\"swfclosebtn\" style=\"display:none\">\r\n");
	templateBuilder.Append("			<a href=\"javascript:;\" class=\"float_close\" onclick=\"swfuploadwin()\" title=\"关闭\">关闭</a>\r\n");
	templateBuilder.Append("		</span>\r\n");
	templateBuilder.Append("	</h3>\r\n");
	templateBuilder.Append("	<div id=\"swfbox\" style=\"display: none\"></div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("function initAttach() {\r\n");
	templateBuilder.Append("//_attachEvent(window, \"load\", function(){ \r\n");
	templateBuilder.Append("    try\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("	addAttach();\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	catch(e)\r\n");
	templateBuilder.Append("	{}\r\n");

	if (pagename.IndexOf("goods")<0 && config.Silverlight==1)
	{

	templateBuilder.Append("	if (attaches.length > 0) {\r\n");
	templateBuilder.Append("		$(\"attachuploadednotenum\").innerHTML = attaches.length;\r\n");
	templateBuilder.Append("		$(\"attachuploadednote\").style.display = \"\";\r\n");
	templateBuilder.Append("		attachlist();\r\n");
	templateBuilder.Append("	}\r\n");

	}	//end if

	templateBuilder.Append("	if (attaches.length > maxattachments) { \r\n");
	templateBuilder.Append("		$(\"maxattachnote\").style.display=\"\"\r\n");
	templateBuilder.Append("	}\r\n");

	if (pagename.IndexOf("goods")<0 && config.Silverlight==1)
	{

	templateBuilder.Append("		LoadSilverlight('MultiUploadFile', num2upload);\r\n");

	}	//end if

	templateBuilder.Append("	//});\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("//addAttachUploaded(attaches);\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	}
	else
	{

	templateBuilder.Append("		<div class=\"hintinfo\">							\r\n");
	templateBuilder.Append("				你没有上传附件的权限.\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if


	}
	else
	{

	templateBuilder.Append("	<div class=\"hintinfo\">\r\n");

	if (usergroupinfo.Maxsizeperday>0 && usergroupinfo.Maxattachsize>0)
	{

	templateBuilder.Append("			你目前可上传的附件大小为 0 字节.\r\n");

	}
	else
	{

	templateBuilder.Append("			你没有上传附件的权限.\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");

	}	//end if




	}	//end if

	templateBuilder.Append("</div>\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("<div style=\"clear:both; width:2500px;overflow-x:hidden;\">\r\n");

	}
	else
	{

	templateBuilder.Append("<div style=\"clear:both;\">\r\n");

	}	//end if


	if (infloat==1)
	{

	templateBuilder.Append("<div class=\"floatbox floatbox1\" id=\"extcreditbox2\"></div>\r\n");

	}	//end if

	templateBuilder.Append("	<div class=\"floatbox floatbox1\">\r\n");

	if (infloat==0)
	{

	templateBuilder.Append("		<h3 class=\"float_ctrl\" style=\"display:none\">\r\n");

	}
	else
	{

	templateBuilder.Append("		<h3 class=\"float_ctrl\">\r\n");

	}	//end if

	templateBuilder.Append("			<em><button type=\"button\" onclick=\"pagescrolls('editorreturn');return false\">返回</button></em>\r\n");
	templateBuilder.Append("			<span>\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("					<a href=\"javascript:;\" class=\"float_close\" onclick=\"closeEditorwin();removeElement()\" title=\"关闭\">关闭</a>\r\n");

	}	//end if

	templateBuilder.Append("			</span>\r\n");
	templateBuilder.Append("		</h3>\r\n");
	templateBuilder.Append("		<div class=\"postbox\">\r\n");

	if (pagename=="posttopic.aspx" || (pagename=="editpost.aspx"&&isfirstpost))
	{


	if (enabletag)
	{

	templateBuilder.Append("					<div class=\"posttags\">\r\n");
	templateBuilder.Append("						<p><strong>标签(Tags):</strong>(用空格隔开多个标签，最多可填写 5 个)</p>\r\n");
	templateBuilder.Append("						<p><input type=\"text\" name=\"tags\" id=\"tags\" class=\"txt\" value=\"");
	templateBuilder.Append(topictags.ToString());
	templateBuilder.Append("\" tabindex=\"1\" /><button name=\"addtags\" type=\"button\" onclick=\"relatekw();return false\">+可用标签</button> <span id=\"tagselect\"></span></p>\r\n");
	templateBuilder.Append("					</div>\r\n");

	}	//end if

	templateBuilder.Append("				<div class=\"columntype\">\r\n");

	if (userid!=-1 && usergroupinfo.Allowsetreadperm==1)
	{

	templateBuilder.Append("						<p><strong>阅读权限:</strong></p>\r\n");
	templateBuilder.Append("						<p><input type=\"text\" name=\"topicreadperm\" value=\"");
	templateBuilder.Append(topic.Readperm.ToString().Trim());
	templateBuilder.Append("\" class=\"txt\" tabindex=\"1\" /> 0或空为不限制,最大值为 255</p>\r\n");

	}	//end if


	if (special==""&&Scoresets.GetCreditsTrans()!=0 && usergroupinfo.Maxprice>0)
	{

	templateBuilder.Append("						<p><strong>售价</strong>(");
	templateBuilder.Append(userextcreditsinfo.Name.ToString().Trim());
	templateBuilder.Append("):</p>\r\n");
	templateBuilder.Append("						<p><input type=\"text\" name=\"topicprice\" value=\"");
	templateBuilder.Append(topic.Price.ToString().Trim());
	templateBuilder.Append("\" class=\"txt\" tabindex=\"1\" /> ");
	templateBuilder.Append(userextcreditsinfo.Unit.ToString().Trim());
	templateBuilder.Append(" 最高 ");
	templateBuilder.Append(usergroupinfo.Maxprice.ToString().Trim());
	templateBuilder.Append(" ");
	templateBuilder.Append(userextcreditsinfo.Unit.ToString().Trim());
	templateBuilder.Append("&nbsp;售价只允许非负整数, 单个主题最大收入 ");
	templateBuilder.Append(Scoresets.GetMaxIncPerTopic().ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("                    ");
	templateBuilder.Append(userextcreditsinfo.Unit.ToString().Trim());
	templateBuilder.Append("</p>\r\n");

	}	//end if

	templateBuilder.Append("				</div>\r\n");

	}	//end if

	templateBuilder.Append("			<div class=\"columntype\">\r\n");
	templateBuilder.Append("				<h4>发帖选项:</h4>\r\n");
	templateBuilder.Append("				<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n");
	templateBuilder.Append("					<tr>\r\n");
	templateBuilder.Append("						<td class=\"firstlist\">\r\n");
	templateBuilder.Append("								<p><input type=\"checkbox\" value=\"1\" name=\"htmlon\" id=\"htmlon\"  onclick=\"alloweditorhtml()\" \r\n");

	if (usergroupinfo.Allowhtml!=1)
	{

	templateBuilder.Append("disabled\r\n");

	}	//end if


	if (htmlon==1)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(" /><label for=\"htmlon\">html 代码</label></p>\r\n");
	templateBuilder.Append("							<p><input type=\"checkbox\" id=\"allowimgcode\" disabled\r\n");

	if (allowimg==1)
	{

	templateBuilder.Append(" checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append(" /><label for=\"allowimgcode\">[img] 代码</label></p>\r\n");
	templateBuilder.Append("						</td>\r\n");
	templateBuilder.Append("						<td>\r\n");
	templateBuilder.Append("							<p><input type=\"checkbox\" value=\"1\" name=\"parseurloff\" id=\"parseurloff\" \r\n");

	if (parseurloff==1)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(" /><label for=\"parseurloff\">禁用 网址自动链接</label></p>\r\n");
	templateBuilder.Append("							<p><input type=\"checkbox\" value=\"1\" name=\"smileyoff\" id=\"smileyoff\" \r\n");

	if (smileyoff==1)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if


	if (forum.Allowsmilies!=1)
	{

	templateBuilder.Append("disabled\r\n");

	}	//end if

	templateBuilder.Append(" /><label for=\"smileyoff\">禁用 表情</label></p>\r\n");
	templateBuilder.Append("							<p><input type=\"checkbox\" value=\"1\" name=\"bbcodeoff\" id=\"bbcodeoff\" \r\n");

	if (bbcodeoff==1)
	{

	templateBuilder.Append(" checked\r\n");

	}	//end if


	if (usergroupinfo.Allowcusbbcode!=1)
	{

	templateBuilder.Append(" disabled\r\n");

	}
	else if (forum.Allowbbcode!=1)
	{

	templateBuilder.Append(" disabled\r\n");

	}	//end if

	templateBuilder.Append(" /><label for=\"bbcodeoff\">禁用 论坛代码</label></p>\r\n");
	templateBuilder.Append("						</td>\r\n");
	templateBuilder.Append("						<td>\r\n");
	templateBuilder.Append("							<p><input type=\"checkbox\" value=\"1\" name=\"usesig\" id=\"usesig\" \r\n");

	if (usesig==1)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(" /><label for=\"usesig\">使用个人签名</label></p>\r\n");

	if (pagename=="postreply.aspx")
	{

	templateBuilder.Append("							<p><input type=\"checkbox\" name=\"emailnotify\" id=\"emailnotify\" \r\n");

	if (config.Replyemailstatus==1)
	{

	templateBuilder.Append(" checked\r\n");

	}	//end if

	templateBuilder.Append(" /><label for=\"emailnotify\">发送邮件告知楼主</label></p>\r\n");
	templateBuilder.Append("							<p><input type=\"checkbox\" name=\"postreplynotice\" id=\"postreplynotice\" \r\n");

	if (config.Replynotificationstatus==1)
	{

	templateBuilder.Append(" checked \r\n");

	}	//end if

	templateBuilder.Append("/><label for=\"emailnotify\">发送论坛通知给楼主</label></p>\r\n");

	}	//end if

	templateBuilder.Append("						</td>\r\n");
	templateBuilder.Append("						<td></td>\r\n");
	templateBuilder.Append("					</tr>\r\n");
	templateBuilder.Append("				</table><br />\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div id=\"moreinfo\"></div>\r\n");
	templateBuilder.Append("			<div class=\"moreconf\" id=\"moreconf\">\r\n");
	templateBuilder.Append("				<div class=\"custominfoarea\" id=\"custominfoarea\" style=\"display: none;\"></div>\r\n");

	if (postinfo.Layer==0 && forum.Applytopictype==1)
	{

	templateBuilder.Append("				<input type=\"hidden\" id=\"postbytopictype\" name=\"postbytopictype\" value=\"");
	templateBuilder.Append(forum.Postbytopictype.ToString().Trim());
	templateBuilder.Append("\"\r\n");
	templateBuilder.Append("					tabindex=\"3\">\r\n");

	}	//end if

	templateBuilder.Append("				<button type=\"submit\" id=\"postsubmit\" value=\"true\"\r\n");

	if (pagename=="posttopic.aspx")
	{

	templateBuilder.Append(" name=\"topicsubmit\"\r\n");

	}
	else if (pagename=="postreply.aspx")
	{

	templateBuilder.Append(" name=\"replysubmit\"\r\n");

	}
	else if (pagename=="editpost.aspx")
	{

	templateBuilder.Append(" name=\"editsubmit\"\r\n");

	}	//end if

	templateBuilder.Append(" tabindex=\"1\">");
	templateBuilder.Append(actiontitle.ToString());
	templateBuilder.Append("</button>\r\n");
	templateBuilder.Append("				<span id=\"more_1\" style=\"display: none\">\r\n");

	if (infloat==1 && special!="")
	{

	templateBuilder.Append("					<a href=\"javascript:;\" onclick=\"pagescrolls('editor')\">添加描述");
	templateBuilder.Append(actiontitle.ToString());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("				</span>\r\n");
	templateBuilder.Append("				<span id=\"more_2\">\r\n");

	if (canpostattach)
	{

	templateBuilder.Append("					<span class=\"sim_upfile\" onmouseover=\"$('attachinfo').style.display='';\" onmouseout=\"$('attachinfo').style.display='none';\">\r\n");
	templateBuilder.Append("						<span id=\"attachbtnhidden\" style=\"display:none\"><span><input type=\"file\" name=\"postfile\" size=\"1\" /></span></span>\r\n");
	templateBuilder.Append("						<span id=\"attachbtn\"></span>\r\n");
	templateBuilder.Append("						<a href=\"javascript:;\" onclick=\"return false;\">添加附件</a>\r\n");

	if (pagename.IndexOf("goods")<0 && config.Silverlight==1)
	{

	templateBuilder.Append("							<a href=\"javascript:;\" onclick=\"swfuploadwin()\">批量上传</a>\r\n");

	}	//end if

	templateBuilder.Append("					</span>\r\n");
	templateBuilder.Append("					<a href=\"javascript:;\" onclick=\"attachlist()\">附件列表</a>\r\n");

	}	//end if


	if (infloat==1)
	{

	templateBuilder.Append("<a href=\"javascript:;\" id=\"morelink\" onclick=\"pagescrolls('more')\">更多设定</a>\r\n");

	}	//end if


	if (userinfo.Spaceid>0 && special==""&&action=="newthread"&&config.Enablespace==1)
	{

	templateBuilder.Append("<input type=\"checkbox\" name=\"addtoblog\" /> 添加到个人空间\r\n");

	}	//end if

	templateBuilder.Append("				</span>\r\n");

	if (isseccode)
	{

	templateBuilder.Append("<span style=\"position:relative\">\r\n");

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


	templateBuilder.Append("</span>\r\n");

	}	//end if

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");


	templateBuilder.Append("	<script  reload=\"1\">\r\n");
	templateBuilder.Append("	openEditor();\r\n");
	templateBuilder.Append("	initAttach();\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");

	if (adveditor)
	{

	templateBuilder.Append("	<div id=\"specialposttable\" style=\"height:0;line-height:0;\">\r\n");
	templateBuilder.Append("		<div id=\"newpost\" class=\"post\">\r\n");

	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var tempaccounts = false;\r\n");
	templateBuilder.Append("function showusername()\r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("    $(\"usernamelayer\").innerHTML = \"<input name='tempusername' type='text' id='tempusername' size='20' class='txt' value='");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("' onkeyup=\\\"$('passwordlayer').style.display='';\\\">&nbsp;[<a href='javascript:;' onclick='resetusername()'>恢复</a>]\";\r\n");
	templateBuilder.Append("    tempaccounts = true;\r\n");
	templateBuilder.Append("    var i = 1;\r\n");
	templateBuilder.Append("    while(true)\r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        var obj = $(\"albums\" + i);\r\n");
	templateBuilder.Append("        if(obj == null) break;\r\n");
	templateBuilder.Append("        obj.options[0].selected = true;\r\n");
	templateBuilder.Append("        obj.disabled = true\r\n");
	templateBuilder.Append("        i++;\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("function resetusername()\r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("    $('passwordlayer').style.display='none';\r\n");
	templateBuilder.Append("    $(\"usernamelayer\").innerHTML = \"");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("&nbsp;[<a href='javascript:;' onclick='showusername()'>切换临时帐号</a>]\";\r\n");
	templateBuilder.Append("    tempaccounts = false;\r\n");
	templateBuilder.Append("    var i = 1;\r\n");
	templateBuilder.Append("    while(true)\r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        var obj = $(\"albums\" + i);\r\n");
	templateBuilder.Append("        if(obj == null) break;\r\n");
	templateBuilder.Append("        obj.disabled = false\r\n");
	templateBuilder.Append("        i++;\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div class=\"tempaccounts\">\r\n");
	templateBuilder.Append("	<p>\r\n");
	templateBuilder.Append("	<span id=\"usernamelayer\">\r\n");

	if (userid>0)
	{

	templateBuilder.Append("	");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("&nbsp;[<a href='javascript:;' onclick='showusername()'>切换临时帐号</a>]\r\n");

	}
	else
	{

	templateBuilder.Append("		匿名 [<a href=\"login.aspx\">登录</a>] [<a href=\"register.aspx\">注册</a>]\r\n");

	}	//end if

	templateBuilder.Append("</span>\r\n");
	templateBuilder.Append("	</p>\r\n");
	templateBuilder.Append("	<div id=\"passwordlayer\" style=\"display:none\">\r\n");
	templateBuilder.Append("		<p><strong>密码:</strong></p>\r\n");
	templateBuilder.Append("		<p><input name=\"temppassword\" type=\"password\" id=\"temppassword\" size=\"20\" class=\"txt\" /></p>\r\n");

	if (config.Secques==1)
	{

	templateBuilder.Append("		<p><strong>安全问题:</strong></p>\r\n");
	templateBuilder.Append("		<p><select name=\"question\" id=\"question\">\r\n");
	templateBuilder.Append("			<option value=\"0\" selected=\"selected\">无</option>\r\n");
	templateBuilder.Append("			<option value=\"1\">母亲的名字</option>\r\n");
	templateBuilder.Append("			<option value=\"2\">爷爷的名字</option>\r\n");
	templateBuilder.Append("			<option value=\"3\">父亲出生的城市</option>\r\n");
	templateBuilder.Append("			<option value=\"4\">您其中一位老师的名字</option>\r\n");
	templateBuilder.Append("			<option value=\"5\">您个人计算机的型号</option>\r\n");
	templateBuilder.Append("			<option value=\"6\">您最喜欢的餐馆名称</option>\r\n");
	templateBuilder.Append("			<option value=\"7\">驾驶执照的最后四位数字</option>\r\n");
	templateBuilder.Append("			</select>\r\n");
	templateBuilder.Append("		</p>\r\n");
	templateBuilder.Append("		<p><strong>答案:</strong>(如果您设置了安全提问，请在此输入正确的问题和回答)</p>\r\n");
	templateBuilder.Append("		<p><input name=\"answer\" type=\"text\" id=\"answer\" size=\"50\" class=\"txt\"/></p>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");


	templateBuilder.Append("		</div>\r\n");

	if (type=="bonus")
	{

	templateBuilder.Append("		<div class=\"specialpost s_clear\">\r\n");
	templateBuilder.Append("		<div class=\"specialinfo\">\r\n");
	templateBuilder.Append("			<dl>\r\n");
	templateBuilder.Append("				<dt><label for=\"rewardprice\">悬赏价格:</label></dt>\r\n");
	templateBuilder.Append("				<dd>\r\n");
	templateBuilder.Append("				<input name=\"topicprice\" type=\"text\" class=\"txt\" id=\"topicprice\" value=\"");
	templateBuilder.Append(usergroupinfo.Minbonusprice.ToString().Trim());
	templateBuilder.Append("\" size=\"5\" maxlength=\"5\" onkeyup=\"getrealprice(this.value)\"/>\r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(bonusextcreditsinfo.Unit.ToString().Trim());
	templateBuilder.Append(bonusextcreditsinfo.Name.ToString().Trim());
	templateBuilder.Append(" (只允许正整数)\r\n");
	templateBuilder.Append("				</dd>\r\n");
	templateBuilder.Append("				<dd class=\"tips\">\r\n");
	templateBuilder.Append("				[ 悬赏范围 ");
	templateBuilder.Append(usergroupinfo.Minbonusprice.ToString().Trim());
	templateBuilder.Append(" - ");
	templateBuilder.Append(usergroupinfo.Maxbonusprice.ToString().Trim());
	templateBuilder.Append("  \r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(bonusextcreditsinfo.Unit.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(bonusextcreditsinfo.Name.ToString().Trim());
	templateBuilder.Append(", 当前可用 ");
	templateBuilder.Append(mybonustranscredits.ToString());
	templateBuilder.Append(" ");
	templateBuilder.Append(bonusextcreditsinfo.Unit.ToString().Trim());
	templateBuilder.Append(bonusextcreditsinfo.Name.ToString().Trim());
	templateBuilder.Append("]\r\n");
	templateBuilder.Append("				</dd>\r\n");
	templateBuilder.Append("				<dd class=\"tips\">\r\n");
	templateBuilder.Append("				[ 税后支付 <span id=\"realprice\">0</span>]\r\n");
	templateBuilder.Append("				</dd>\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("				    function getrealprice(price) {\r\n");
	templateBuilder.Append("				        if (!price.search(/^\\d+$/)) {\r\n");
	templateBuilder.Append("				            n = Math.ceil(parseInt(price) + price * ");
	templateBuilder.Append(Scoresets.GetCreditsTax().ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("				            if (price > 32767) {\r\n");
	templateBuilder.Append("				                $('realprice').innerHTML = '<b>悬赏不能高于 32767</b>';\r\n");
	templateBuilder.Append("				            } else if (price < ");
	templateBuilder.Append(usergroupinfo.Minbonusprice.ToString().Trim());
	templateBuilder.Append(" || (price > ");
	templateBuilder.Append(usergroupinfo.Maxbonusprice.ToString().Trim());
	templateBuilder.Append(")) {\r\n");
	templateBuilder.Append("				                $('realprice').innerHTML = '<b>悬赏超出范围</b>';\r\n");
	templateBuilder.Append("				            } else {\r\n");
	templateBuilder.Append("				                $('realprice').innerHTML = n;\r\n");
	templateBuilder.Append("				            }\r\n");
	templateBuilder.Append("				        } else {\r\n");
	templateBuilder.Append("				            $('realprice').innerHTML = '<b>填写无效</b>';\r\n");
	templateBuilder.Append("				        }\r\n");
	templateBuilder.Append("				    }\r\n");
	templateBuilder.Append("                </");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			</dl>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if


	if (usergroupinfo.Allowpostpoll==1&&type=="poll")
	{

	templateBuilder.Append("		<div class=\"specialpost s_clear\">\r\n");
	templateBuilder.Append("			<p><em>选项:</em>每行填写 1 个选项</p>\r\n");
	templateBuilder.Append("			<div class=\"specialinfo sppoll\">\r\n");
	templateBuilder.Append("				<input id=\"PollItemname\" type=\"hidden\" name=\"PollItemname\" value=\"\" />\r\n");
	templateBuilder.Append("				<input id=\"PollItemvalue\" type=\"hidden\" name=\"PollItemvalue\" value=\"\" />\r\n");
	templateBuilder.Append("				<div id=\"polloptions\">\r\n");
	templateBuilder.Append("					<p id=\"divPollItem\"><input type=\"text\" id=\"pollitemid\" name=\"pollitemid\" class=\"optioninfo txt\" tabindex=\"1\"/><a onclick=\"if(!delObj(document.getElementById('polloptions'),2,this.parentNode)){alert('投票项不能少于2个');}\" title=\"删除投票项\" class=\"deloption\" href=\"javascript:;\">del</a></p>\r\n");
	templateBuilder.Append("					<p><input type=\"text\" id=\"pollitemid\" name=\"pollitemid\" class=\"optioninfo txt\" tabindex=\"1\"/><a onclick=\"if(!delObj(document.getElementById('polloptions'),2,this.parentNode)){alert('投票项不能少于2个');}\" title=\"删除投票项\" class=\"deloption\" href=\"javascript:;\">del</a></p>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<p><a onclick=\"clonePoll('");
	templateBuilder.Append(config.Maxpolloptions.ToString().Trim());
	templateBuilder.Append("')\" href=\"javascript:;\">+增加投票项</a> <a onclick=\"if(!delObj(document.getElementById('polloptions'),2)){alert('投票项不能少于2个');}\" href=\"javascript:;\">删除投票项</a> </p>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"specialaddons\">\r\n");
	templateBuilder.Append("				<p><label for=\"polldatas\">投票结束日期</label>\r\n");
	templateBuilder.Append("					<input name=\"enddatetime\" type=\"text\" id=\"enddatetime\" size=\"10\" value=\"");
	templateBuilder.Append(enddatetime.ToString());
	templateBuilder.Append("\" style=\"cursor:default\" class=\"txt\" onClick=\"showcalendar(event, 'enddatetime', 'cal_startdate', 'cal_enddate', '");
	templateBuilder.Append(enddatetime.ToString());
	templateBuilder.Append("');\" readonly=\"readonly\" />\r\n");
	templateBuilder.Append("					<input type=\"hidden\" name=\"cal_startdate\" id=\"cal_startdate\" size=\"10\"  value=\"");
	templateBuilder.Append(enddatetime.ToString());
	templateBuilder.Append("\"/>\r\n");
	templateBuilder.Append("					<input type=\"hidden\" name=\"cal_enddate\" id=\"cal_enddate\" size=\"10\"  value=\"\"/>\r\n");
	templateBuilder.Append("				</p>\r\n");
	templateBuilder.Append("				<p><label for=\"pollnum\">\r\n");
	templateBuilder.Append("					<input type=\"checkbox\" name=\"multiple\"  onclick=\"this.checked?$('maxchoicescontrol').style.display='':$('maxchoicescontrol').style.display='none';\" class=\"checkinput\" />多选投票</label>\r\n");
	templateBuilder.Append("					<span id=\"maxchoicescontrol\" style=\"display: none\">最多可选项数: <input type=\"text\" tabindex=\"1\" value=\"\" class=\"spshortinput txt\" name=\"maxchoices\"/></span>\r\n");
	templateBuilder.Append("				</p>\r\n");
	templateBuilder.Append("				<p>\r\n");
	templateBuilder.Append("					<input name=\"createpoll\" type=\"hidden\" id=\"createpoll\" value=\"1\" />\r\n");
	templateBuilder.Append("					<input type=\"checkbox\" tabindex=\"1\" value=\"1\" name=\"visiblepoll\"/>提交投票后结果才可见</p>\r\n");
	templateBuilder.Append("				<p><input type=\"checkbox\" tabindex=\"1\" value=\"1\" name=\"overt\"/>公开投票参与人</p>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if


	if (type=="debate")
	{

	templateBuilder.Append("		<div class=\"specialpost s_clear\">\r\n");
	templateBuilder.Append("			<div class=\"specialinfo\">\r\n");
	templateBuilder.Append("				<h4><label for=\"affirmpoint\">正方:</label>(最多 200 字)</h4>\r\n");
	templateBuilder.Append("				<div><textarea tabindex=\"1\" class=\"txtarea\" id=\"positiveopinion\" name=\"positiveopinion\"></textarea></div>\r\n");
	templateBuilder.Append("				<h4><label for=\"negapoint\">反方:</label>(最多 200 字)</h4>\r\n");
	templateBuilder.Append("				<div><textarea tabindex=\"1\" class=\"txtarea\" id=\"negativeopinion\" name=\"negativeopinion\"></textarea></div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"specialaddons\">\r\n");
	templateBuilder.Append("				<label for=\"endtime\">结束时间:</label>\r\n");
	templateBuilder.Append("				<p>\r\n");
	templateBuilder.Append("					<input type=\"text\" name=\"terminaltime\" id=\"terminaltime\" style=\"cursor:default;\" class=\"txt\" size=\"16\" value=\"");
	templateBuilder.Append(enddatetime.ToString());
	templateBuilder.Append("\" onclick=\"showcalendar(event, 'terminaltime', 'cal_startdate', 'cal_enddate', '");
	templateBuilder.Append(enddatetime.ToString());
	templateBuilder.Append("');\" readonly />\r\n");
	templateBuilder.Append("					<input type=\"hidden\" name=\"cal_startdate\" id=\"cal_startdate\" value=\"");
	templateBuilder.Append(enddatetime.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("					<input type=\"hidden\" name=\"cal_enddate\" id=\"cal_enddate\" value=\"\">\r\n");
	templateBuilder.Append("				</p>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("			function doadvdebate()\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				var adv_open = $('advdebate_open');\r\n");
	templateBuilder.Append("				var adv_close = $('advdebate_close');\r\n");
	templateBuilder.Append("				if (adv_open && adv_close)\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					if (adv_open.style.display != 'none')\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						adv_open.style.display = 'none';\r\n");
	templateBuilder.Append("						adv_close.style.display = '';\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						adv_open.style.display = '';\r\n");
	templateBuilder.Append("						adv_close.style.display = 'none';\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("		</div>\r\n");

	}	//end if

	templateBuilder.Append("	</form>\r\n");
	templateBuilder.Append("	</div>\r\n");

	if (infloat==0)
	{

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("	if (getQueryString('restore') == '1')\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		loadData(true);\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	}
	else
	{


	if (ispost)
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


	if (infloat==1)
	{

	templateBuilder.Append("         <p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n");

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


	if (infloat==1)
	{

	templateBuilder.Append("	<div class=\"floatbox floatbox1\">\r\n");
	templateBuilder.Append("	<h3 class=\"float_ctrl\">\r\n");
	templateBuilder.Append("		<span>\r\n");
	templateBuilder.Append("			<a href=\"javascript:;\" class=\"float_close\" onclick=\"floatwin('close_newthread');\" title=\"关闭\">关闭</a>\r\n");
	templateBuilder.Append("		</span>\r\n");
	templateBuilder.Append("	</h3>\r\n");
	templateBuilder.Append("	<div class=\"gateform\">\r\n");
	templateBuilder.Append("	<h3>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</h3>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	</div>\r\n");

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


	}	//end if

	templateBuilder.Append("  </div>\r\n");

	}	//end if


	if (infloat!=1)
	{

	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_calendar.js\"></");
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
