<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.register" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:28.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:28. 
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
	templateBuilder.Append("	<div class=\"wrap s_clear\"><a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <strong>用户注册</strong></div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


	if (agree=="" && infloat!=1)
	{


	if (page_err==0)
	{


	if (config.Rules==1)
	{

	templateBuilder.Append("<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("<div class=\"main\">\r\n");
	templateBuilder.Append("<h1>用户注册协议</h1>\r\n");
	templateBuilder.Append("<form id=\"form1\" name=\"form1\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"center\" class=\"formtable\">\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<textarea name=\"textarea\" cols=\"\" rows=\"\" readonly=\"readonly\" style=\"width:700px;height:320px;margin:10px 0;\">");
	templateBuilder.Append(config.Rulestxt.ToString().Trim());
	templateBuilder.Append("</textarea>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("		<input name=\"agree\" type=\"hidden\" value=\"true\" />\r\n");
	templateBuilder.Append("		<input disabled=\"disabled\" type=\"submit\" id=\"btnagree\" value=\"我同意\" />\r\n");
	templateBuilder.Append("		<input name=\"cancel\" type=\"button\" id=\"cancel\" value=\"不同意\" onClick=\"javascript:location.replace('index.aspx')\" />				  \r\n");
	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("		var secs = 5;\r\n");
	templateBuilder.Append("		var wait = secs * 1000;\r\n");
	templateBuilder.Append("		$(\"btnagree\").value = \"同 意(\" + secs + \")\";\r\n");
	templateBuilder.Append("		$(\"btnagree\").disabled = true;\r\n");
	templateBuilder.Append("		for(i = 1; i <= secs; i++) {\r\n");
	templateBuilder.Append("			window.setTimeout(\"update(\" + i + \")\", i * 1000);\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		window.setTimeout(\"timer()\", wait);\r\n");
	templateBuilder.Append("		function update(num, value) {\r\n");
	templateBuilder.Append("			if(num == (wait/1000)) {\r\n");
	templateBuilder.Append("					$(\"btnagree\").value = \"同 意\";\r\n");
	templateBuilder.Append("			} else {\r\n");
	templateBuilder.Append("					printnr = (wait / 1000) - num;\r\n");
	templateBuilder.Append("					$(\"btnagree\").value = \"同 意(\" + printnr + \")\";\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		function timer() {\r\n");
	templateBuilder.Append("			$(\"btnagree\").disabled = false;\r\n");
	templateBuilder.Append("			$(\"btnagree\").value = \"同 意\";\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		 </td>\r\n");
	templateBuilder.Append("	 </tr>\r\n");
	templateBuilder.Append("	 </tbody>\r\n");
	templateBuilder.Append("</table>\r\n");
	templateBuilder.Append("</form>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");

			/*
			<script type="text/javascript">
			location.replace('register.aspx?agree=yes')
			</");
	templateBuilder.Append("script>
			*/
			

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

	templateBuilder.Append("	</div>\r\n");

	}
	else
	{


	if (createuser=="")
	{


	if (infloat!=1)
	{

	templateBuilder.Append("<div class=\"wrap s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"main\">\r\n");
	templateBuilder.Append("<form id=\"form1\" name=\"form1\" method=\"post\" action=\"?createuser=1\">\r\n");
	templateBuilder.Append("	<h1>用户注册 <cite style=\"font-size:12px;\">( * 为必填项)</cite></h1>\r\n");
	templateBuilder.Append("	<table summary=\"注册\" cellspacing=\"0\" cellpadding=\"0\" class=\"formtable\">\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"username\">用户名 * </label></th>\r\n");
	templateBuilder.Append("		<td><input name=\"username\" type=\"text\" id=\"username\" maxlength=\"20\" size=\"20\"  onkeyup=\"checkusername(this.value);\" class=\"txt\"/> <span id=\"checkresult\">不超过20个字符</span></td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"password\">密码 * </label></th>\r\n");
	templateBuilder.Append("		<td><input name=\"password\" type=\"password\" id=\"password\" size=\"20\" onblur=\"return checkpasswd(this);\" class=\"txt\"/><span id=\"pshowmsg\"></span></td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>	\r\n");
	templateBuilder.Append("	<tbody id=\"passwdpower\" style=\"display: none;\">\r\n");
	templateBuilder.Append("	<tr><th>密码强度</th><td>\r\n");
	templateBuilder.Append("	<strong id=\"showmsg\"></strong></td></tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"password2\">确认密码 * </label></th>\r\n");
	templateBuilder.Append("		<td><input name=\"password2\" type=\"password\" id=\"password2\" size=\"20\" onblur=\"checkdoublepassword()\" class=\"txt\"/><span id=\"password2tips\"></span></td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"email\">E-mail * </label></th>\r\n");
	templateBuilder.Append("		<td><input name=\"email\" type=\"text\" id=\"email\" size=\"20\"  onblur=\"checkemail(this.value)\" class=\"txt\"/><span id=\"isemail\"></span></td>\r\n");
	templateBuilder.Append("	</tr>\r\n");

	if (config.Realnamesystem==1)
	{


	templateBuilder.Append("<tr>\r\n");
	templateBuilder.Append("	<th><label for=\"realname\">真实姓名</label></th>\r\n");
	templateBuilder.Append("	<td><input name=\"realname\" type=\"text\" id=\"realname\" size=\"10\" class=\"txt\" /></td>\r\n");
	templateBuilder.Append("</tr>\r\n");
	templateBuilder.Append("<tr>\r\n");
	templateBuilder.Append("	<th><label for=\"idcard\">身份证号码</label></th>\r\n");
	templateBuilder.Append("	<td><input name=\"idcard\" type=\"text\" id=\"idcard\" size=\"20\" class=\"txt\" /></td>\r\n");
	templateBuilder.Append("</tr>\r\n");
	templateBuilder.Append("<tr>\r\n");
	templateBuilder.Append("	<th><label for=\"mobile\">移动电话号码</label></th>\r\n");
	templateBuilder.Append("	<td><input name=\"mobile\" type=\"text\" id=\"mobile\" size=\"20\" class=\"txt\" /></td>\r\n");
	templateBuilder.Append("</tr>\r\n");
	templateBuilder.Append("<tr>\r\n");
	templateBuilder.Append("	<th><label for=\"phone\">固定电话号码</label></th>\r\n");
	templateBuilder.Append("	<td><input name=\"phone\" type=\"text\" id=\"phone\" size=\"20\" class=\"txt\" /></td>\r\n");
	templateBuilder.Append("</tr>\r\n");



	}	//end if


	if (isseccode)
	{

	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"vcode\">验证码 * </label></th>\r\n");
	templateBuilder.Append("		<td>		\r\n");
	templateBuilder.Append("		<div style=\"position: relative;\">\r\n");

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


	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");

	}	//end if

	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<button name=\"submit\" type=\"submit\">创建用户</button></td>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");

	}
	else
	{

	templateBuilder.Append("<div class=\"float\" id=\"floatlayout_register\" style=\"width: 600px; height: 400px;\">\r\n");
	templateBuilder.Append("	<div style=\"width: 1800px\">\r\n");
	templateBuilder.Append("	<div class=\"floatbox floatbox1\">\r\n");
	templateBuilder.Append("		<h3 class=\"float_ctrl\">\r\n");
	templateBuilder.Append("			<span><a href=\"javascript:;\" class=\"float_close\" onclick=\"floatwin('close_register')\" title=\"关闭}\">关闭</a></span>\r\n");
	templateBuilder.Append("		</h3>\r\n");

	if (config.Rules==1)
	{

	templateBuilder.Append("		<div class=\"gateform\" id=\"bbrule\" style=\"display:none\">\r\n");
	templateBuilder.Append("		<h3>网站服务条款</h3>\r\n");
	templateBuilder.Append("		<div  style=\"margin-bottom:10px\">\r\n");
	templateBuilder.Append("		<textarea name=\"textarea\" cols=\"\" rows=\"\" readonly=\"readonly\" style=\"height:230px;width:510px;border:0\">");
	templateBuilder.Append(config.Rulestxt.ToString().Trim());
	templateBuilder.Append("</textarea>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<input id=\"btnagree\" type=\"button\" value=\"我同意\" onclick=\"javascript:$('agree').checked=true;$('bbrule').style.display='none';$('bbreg').style.display=''\"/>\r\n");
	templateBuilder.Append("		<input name=\"cancel\" type=\"button\" id=\"cancel\" value=\"不同意\" onClick=\"floatwin('close_register')\" />		\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if

	templateBuilder.Append("		<div class=\"gateform\" id=\"bbreg\">\r\n");
	templateBuilder.Append("		<h3 id=\"returnregmessage\" style=\"font-size:12px;color:#444;font-weight:400\">注册</h3>\r\n");
	templateBuilder.Append("        <form id=\"form2\" name=\"form2\" method=\"post\" onsubmit=\"javascript:$('form2').action='");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("register.aspx?infloat=1&createuser=1&';ajaxpost('form2', 'returnregmessage', 'returnregmessage', 'onerror');return false;\" action=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("register.aspx?infloat=1&createuser=1&\">\r\n");
	templateBuilder.Append("		<div class=\"loginform regform\">\r\n");
	templateBuilder.Append("			<div style=\"overflow: hidden;overflow-y:auto\" class=\"regform\" id=\"reginfo_a\">\r\n");
	templateBuilder.Append("				<span id=\"activation_hidden\">\r\n");
	templateBuilder.Append("					<label>\r\n");
	templateBuilder.Append("					<em>用户名:</em>\r\n");
	templateBuilder.Append("					<input type=\"text\" class=\"txt\" tabindex=\"1\"  value=\"\" maxlength=\"20\" size=\"25\" autocomplete=\"off\" name=\"username\" id=\"username\" onkeyup=\"checkusername(this.value);\"/> *</label>\r\n");
	templateBuilder.Append("					<label><em>密码:</em><input type=\"password\" class=\"txt\" tabindex=\"1\"  id=\"password\" size=\"25\" name=\"password\" onblur=\"return checkpasswd(this);\"/> *</label>\r\n");
	templateBuilder.Append("					<label><em>确认密码:</em><input type=\"password\" class=\"txt\" value=\"\" tabindex=\"1\"  id=\"password2\" size=\"25\" name=\"password2\" onblur=\"checkdoublepassword()\"/> *</label>\r\n");
	templateBuilder.Append("					<label><em>Email:</em><input type=\"text\" class=\"txt\" tabindex=\"1\"  id=\"email\" size=\"25\" autocomplete=\"off\" name=\"email\" onblur=\"checkemail(this.value)\"/> *</label>\r\n");

	if (config.Realnamesystem==1)
	{

	templateBuilder.Append("					<label><em>真实姓名:</em><input name=\"realname\" type=\"text\" id=\"realname\" size=\"10\" class=\"txt\" /> *</label>\r\n");
	templateBuilder.Append("					<label><em>身份证:</em><input name=\"idcard\" type=\"text\" id=\"idcard\" size=\"20\" class=\"txt\" /> *</label>\r\n");
	templateBuilder.Append("					<label><em>移动电话:</em><input name=\"mobile\" type=\"text\" id=\"mobile\" size=\"20\" class=\"txt\" /> *</label>\r\n");
	templateBuilder.Append("					<label><em>固定电话:</em><input name=\"phone\" type=\"text\" id=\"phone\" size=\"20\" class=\"txt\" /> *</label>\r\n");

	}	//end if

	templateBuilder.Append("				</span>\r\n");

	if (isseccode)
	{

	templateBuilder.Append("				<div class=\"regsec\">\r\n");
	templateBuilder.Append("					<label style=\"display: inline;\"><em>验证: </em><span style=\"position: relative;\">\r\n");

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


	templateBuilder.Append("		</span></label>\r\n");
	templateBuilder.Append("				</div>\r\n");

	}	//end if

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"logininfo singleinfo\">\r\n");
	templateBuilder.Append("			<h4>已有帐号？<a onclick=\"floatwin('close_register');floatwin('open_login', this.href, 600, 400, '600,0');return false;\" href=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx\">现在登录</a></h4>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<p class=\"fsubmit\">\r\n");
	templateBuilder.Append("			<span id=\"reginfo_b_btn\">\r\n");
	templateBuilder.Append("			<button tabindex=\"1\" value=\"true\" name=\"regsubmit\" type=\"submit\" id=\"registerformsubmit\" class=\"submit\" \r\n");

	if (config.Rules==1)
	{

	templateBuilder.Append("onclick=\"return checkagreed();\" \r\n");

	}	//end if

	templateBuilder.Append(">创建用户</button>\r\n");

	if (config.Rules==1)
	{

	templateBuilder.Append("			<input type=\"checkbox\" id=\"agree\" value=\"true\" name=\"agree\" class=\"checkbox\" style=\"margin-left:5px;\"/><label for=\"agreebbrule\">同 意<a onclick=\"javascript:$('bbrule').style.display='';$('bbreg').style.display='none'\" href=\"javascript:;\">网站服务条款</a></label>\r\n");
	templateBuilder.Append("			   <script type=\"text/javascript\" reload=\"1\">\r\n");
	templateBuilder.Append("			        function checkagreed() {\r\n");
	templateBuilder.Append("			             if ($('agree').checked == true) {\r\n");
	templateBuilder.Append("			                  return true;\r\n");
	templateBuilder.Append("			             }\r\n");
	templateBuilder.Append("			             else {\r\n");
	templateBuilder.Append("			                  $('returnregmessage').innerHTML = \"<img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_error.gif'/>请确认《网络服务条款》\"; ;\r\n");
	templateBuilder.Append("			                  return false;\r\n");
	templateBuilder.Append("			             }\r\n");
	templateBuilder.Append("			       }\r\n");
	templateBuilder.Append("               </");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("			</span>\r\n");
	templateBuilder.Append("		</p>\r\n");
	templateBuilder.Append("		</form>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


	if (config.Regadvance==1 && infloat!=1)
	{

	templateBuilder.Append("<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("<div class=\"regbox\">\r\n");
	templateBuilder.Append("	<span class=\"headactions\">\r\n");
	templateBuilder.Append("		<a href=\"###\" onclick=\"toggle_collapse('regoptions');\"><img id= \"regoptions_img\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/collapsed_no.gif\" alt=\"展开\" /></a>\r\n");
	templateBuilder.Append("	</span>\r\n");
	templateBuilder.Append("	<h1>填写可选项</h1>\r\n");
	templateBuilder.Append("	<table summary=\"注册 高级选项\" cellspacing=\"0\" cellpadding=\"0\" id=\"regoptions\" style=\"display: none;\" class=\"formtable\">\r\n");
	templateBuilder.Append("		<thead>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td colspan=\"2\"><strong>找回密码问题</strong></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</thead>\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"question\">问题</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"question\" id=\"question\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected=\"selected\">无</option>\r\n");
	templateBuilder.Append("				  <option value=\"1\">母亲的名字</option>\r\n");
	templateBuilder.Append("				  <option value=\"2\">爷爷的名字</option>\r\n");
	templateBuilder.Append("				  <option value=\"3\">父亲出生的城市</option>\r\n");
	templateBuilder.Append("				  <option value=\"4\">您其中一位老师的名字</option>\r\n");
	templateBuilder.Append("				  <option value=\"5\">您个人计算机的型号</option>\r\n");
	templateBuilder.Append("				  <option value=\"6\">您最喜欢的餐馆名称</option>\r\n");
	templateBuilder.Append("				  <option value=\"7\">驾驶执照的最后四位数字</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>		\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"answer\">答案</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"answer\" type=\"text\" id=\"answer\" size=\"30\" class=\"txt\"  />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td colspan=\"2\"><strong>个人信息</strong></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");

	if (config.Realnamesystem==0)
	{


	templateBuilder.Append("<tr>\r\n");
	templateBuilder.Append("	<th><label for=\"realname\">真实姓名</label></th>\r\n");
	templateBuilder.Append("	<td><input name=\"realname\" type=\"text\" id=\"realname\" size=\"10\" class=\"txt\" /></td>\r\n");
	templateBuilder.Append("</tr>\r\n");
	templateBuilder.Append("<tr>\r\n");
	templateBuilder.Append("	<th><label for=\"idcard\">身份证号码</label></th>\r\n");
	templateBuilder.Append("	<td><input name=\"idcard\" type=\"text\" id=\"idcard\" size=\"20\" class=\"txt\" /></td>\r\n");
	templateBuilder.Append("</tr>\r\n");
	templateBuilder.Append("<tr>\r\n");
	templateBuilder.Append("	<th><label for=\"mobile\">移动电话号码</label></th>\r\n");
	templateBuilder.Append("	<td><input name=\"mobile\" type=\"text\" id=\"mobile\" size=\"20\" class=\"txt\" /></td>\r\n");
	templateBuilder.Append("</tr>\r\n");
	templateBuilder.Append("<tr>\r\n");
	templateBuilder.Append("	<th><label for=\"phone\">固定电话号码</label></th>\r\n");
	templateBuilder.Append("	<td><input name=\"phone\" type=\"text\" id=\"phone\" size=\"20\" class=\"txt\" /></td>\r\n");
	templateBuilder.Append("</tr>\r\n");



	}	//end if

	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"gender\">性别</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"gender\" value=\"1\" style=\"InPutRadio\"/>男\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"gender\" value=\"2\"  style=\"InPutRadio\"/>女\r\n");
	templateBuilder.Append("				<input name=\"gender\" type=\"radio\" value=\"0\" checked=\"checked\"  style=\"InPutRadio\"/>保密\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"nickname\">昵称</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"nickname\" type=\"text\" id=\"nickname\" size=\"20\" class=\"txt\" />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"bday\">生日</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"bday_y\" type=\"text\" id=\"bday_y\" size=\"4\" maxlength=\"4\" />年\r\n");
	templateBuilder.Append("				<input name=\"bday_m\" type=\"text\" id=\"bday_m\" size=\"2\"  maxlength=\"2\"/>月\r\n");
	templateBuilder.Append("				<input name=\"bday_d\" type=\"text\" id=\"bday_d\" size=\"2\"  maxlength=\"2\"/>日\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"location\">来自</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"location\" type=\"text\" id=\"location\" size=\"20\" class=\"txt\" />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"msn\">MSN Messenger</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"msn\" type=\"text\" id=\"msn\" size=\"30\" class=\"txt\" />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"yahoo\">Yahoo Messenger</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"yahoo\" type=\"text\" id=\"yahoo\" size=\"30\" class=\"txt\"  />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"skype\">Skype</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"skype\" type=\"text\" id=\"skype\" size=\"30\" class=\"txt\"  />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"ICQ\">ICQ</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"icq\" type=\"text\" id=\"icq\" size=\"12\" class=\"txt\" />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"qq\">QQ</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"qq\" type=\"text\" id=\"qq\" size=\"12\" class=\"txt\" />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"homepage\">主页</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"homepage\" type=\"text\" id=\"homepage\" size=\"30\" class=\"txt\" />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"bio\">自我介绍</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<textarea name=\"bio\" cols=\"50\" rows=\"6\" id=\"bio\" style=\"height:95px;width:85%;\" class=\"txtarea\" ></textarea>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<td colspan=\"2\"><strong>论坛使用喜好设置</strong></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"templateid\">风格</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"templateid\" id=\"templateid\" >\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected>默认</option>\r\n");

	int template__loop__id=0;
	foreach(DataRow template in templatelist.Rows)
	{
		template__loop__id++;

	templateBuilder.Append("					<option value=\"" + template["templateid"].ToString().Trim() + "\">" + template["name"].ToString().Trim() + "</option>\r\n");

	}	//end loop

	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"tpp\">每页主题数</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"tpp\" id=\"tpp\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected=\"selected\">默认</option>\r\n");
	templateBuilder.Append("				  <option value=\"15\">15</option>\r\n");
	templateBuilder.Append("				  <option value=\"20\">20</option>\r\n");
	templateBuilder.Append("				  <option value=\"25\">25</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"ppp\">每页帖子数</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"ppp\" id=\"ppp\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" selected=\"selected\">默认</option>\r\n");
	templateBuilder.Append("				  <option value=\"10\">10</option>\r\n");
	templateBuilder.Append("				  <option value=\"15\">15</option>\r\n");
	templateBuilder.Append("				  <option value=\"20\">20</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"newpm\">是否提示短消息</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"newpm\" type=\"radio\" value=\"radiobutton\" checked=\"checked\"  style=\"InPutRadio\"/>是\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"newpm\" value=\"radiobutton\"  style=\"InPutRadio\"/>否\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"pmsound\">短消息铃声</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<select name=\"pmsound\" id=\"pmsound\">\r\n");
	templateBuilder.Append("				  <option value=\"1\" selected=\"selected\">默认</option>							  \r\n");
	templateBuilder.Append("				  <option value=\"1\">提示音1</option>							  \r\n");
	templateBuilder.Append("				  <option value=\"2\">提示音2</option>							  \r\n");
	templateBuilder.Append("				  <option value=\"3\">提示音3</option>		\r\n");
	templateBuilder.Append("				  <option value=\"4\">提示音4</option>		\r\n");
	templateBuilder.Append("				  <option value=\"5\">提示音5</option>							  \r\n");
	templateBuilder.Append("				  <option value=\"0\">无</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"showemail\">是否显示Email</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input name=\"showemail\" type=\"radio\" value=\"1\" checked=\"checked\"  style=\"InPutRadio\"/>是\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"showemail\" value=\"0\"  style=\"InPutRadio\"/>否\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"receivesetting\">消息接收设置</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input id=\"receiveuser\" onclick=\"checkSetting();\" type=\"checkbox\" name=\"receivesetting\" value=\"2\" checked=\"checked\" />接收用户短消息\r\n");
	templateBuilder.Append("				<input id=\"showhint\" onclick=\"checkSetting();\" type=\"checkbox\" name=\"receivesetting\" value=\"4\" checked=\"checked\" />显示短消息提示框\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"invisible\">是否隐身</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input type=\"radio\" name=\"invisible\" value=\"1\"  style=\"InPutRadio\"/>是\r\n");
	templateBuilder.Append("				<input name=\"invisible\" type=\"radio\" value=\"0\" checked=\"checked\"  style=\"InPutRadio\"/>否\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th><label for=\"signature\">签名</label></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<textarea name=\"signature\" cols=\"50\" rows=\"6\" id=\"signature\" style=\"height:95px;width:85%;\" class=\"txtarea\" ></textarea>\r\n");
	templateBuilder.Append("				<input name=\"sigstatus\" type=\"checkbox\" id=\"sigstatus\" value=\"1\" checked=\"checked\" />使用签名\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th></th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<button name=\"submit\" type=\"submit\">创建用户</button></td>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");

	}	//end if

	templateBuilder.Append("</form>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var PasswordStrength ={\r\n");
	templateBuilder.Append("		Level : [\"极佳\",\"一般\",\"较弱\",\"太短\"],\r\n");
	templateBuilder.Append("		LevelValue : [15,10,5,0],//强度值\r\n");
	templateBuilder.Append("		Factor : [1,2,5],//字符加数,分别为字母，数字，其它\r\n");
	templateBuilder.Append("		KindFactor : [0,0,10,20],//密码含几种组成的加数 \r\n");
	templateBuilder.Append("		Regex : [/[a-zA-Z]/g,/\\d/g,/[^a-zA-Z0-9]/g] //字符正则数字正则其它正则\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	PasswordStrength.StrengthValue = function(pwd)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var strengthValue = 0;\r\n");
	templateBuilder.Append("		var ComposedKind = 0;\r\n");
	templateBuilder.Append("		for(var i = 0 ; i < this.Regex.length;i++)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			var chars = pwd.match(this.Regex[i]);\r\n");
	templateBuilder.Append("			if(chars != null)\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				strengthValue += chars.length * this.Factor[i];\r\n");
	templateBuilder.Append("				ComposedKind ++;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		strengthValue += this.KindFactor[ComposedKind];\r\n");
	templateBuilder.Append("		return strengthValue;\r\n");
	templateBuilder.Append("	} \r\n");
	templateBuilder.Append("	PasswordStrength.StrengthLevel = function(pwd)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var value = this.StrengthValue(pwd);\r\n");
	templateBuilder.Append("		for(var i = 0 ; i < this.LevelValue.length ; i ++)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			if(value >= this.LevelValue[i] )\r\n");
	templateBuilder.Append("				return this.Level[i];\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function checkpasswd(o)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var pshowmsg;\r\n");
	templateBuilder.Append("		if(o.value.length<6)  {\r\n");
	templateBuilder.Append("		   pshowmsg=\"<img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_error.gif'/><span>不得少于6个字符</span>\";\r\n");
	templateBuilder.Append("		} \r\n");

	if (infloat!=1)
	{

	templateBuilder.Append("		else {\r\n");
	templateBuilder.Append("		   var showmsg=PasswordStrength.StrengthLevel(o.value);\r\n");
	templateBuilder.Append("		   switch(showmsg) {\r\n");
	templateBuilder.Append("		   case \"太短\": showmsg+=\" <img src='images/level/1.gif' width='88' height='11' />\";break;\r\n");
	templateBuilder.Append("		   case \"较弱\": showmsg+=\" <img src='images/level/2.gif' width='88' height='11' />\";break;\r\n");
	templateBuilder.Append("		   case \"一般\": showmsg+=\" <img src='images/level/3.gif' width='88' height='11' />\";break;\r\n");
	templateBuilder.Append("		   case \"极佳\": showmsg+=\" <img src='images/level/4.gif' width='88' height='11' />\";break;\r\n");
	templateBuilder.Append("		   }\r\n");
	templateBuilder.Append("		   pshowmsg=\"<img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_right.gif'/>\";\r\n");
	templateBuilder.Append("		   $('showmsg').innerHTML = showmsg;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		$('pshowmsg').innerHTML = pshowmsg;\r\n");
	templateBuilder.Append("		$(\"passwdpower\").style.display = \"\";\r\n");

	}
	else
	{

	templateBuilder.Append("		if(pshowmsg!='' &&  pshowmsg!=null && pshowmsg!=undefined)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("		$('returnregmessage').innerHTML=pshowmsg;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("		$('returnregmessage').innerHTML='注册';\r\n");
	templateBuilder.Append("		}\r\n");

	}	//end if

	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function checkemail(strMail)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var str;\r\n");
	templateBuilder.Append("		if(strMail.length==0) return false; \r\n");
	templateBuilder.Append("		var objReg = new RegExp(\"[A-Za-z0-9-_]+@[A-Za-z0-9-_]+[\\.][A-Za-z0-9-_]\") \r\n");
	templateBuilder.Append("		var IsRightFmt = objReg.test(strMail) \r\n");
	templateBuilder.Append("		var objRegErrChar = new RegExp(\"[^a-z0-9-._@]\",\"ig\") \r\n");
	templateBuilder.Append("		var IsRightChar = (strMail.search(objRegErrChar)==-1) \r\n");
	templateBuilder.Append("		var IsRightLength = strMail.length <= 60 \r\n");
	templateBuilder.Append("		var IsRightPos = (strMail.indexOf(\"@\",0) != 0 && strMail.indexOf(\".\",0) != 0 && strMail.lastIndexOf(\"@\")+1 != strMail.length && strMail.lastIndexOf(\".\")+1 != strMail.length) \r\n");
	templateBuilder.Append("		var IsNoDupChar = (strMail.indexOf(\"@\",0) == strMail.lastIndexOf(\"@\")) \r\n");
	templateBuilder.Append("		if(IsRightFmt && IsRightChar && IsRightLength && IsRightPos && IsNoDupChar) \r\n");
	templateBuilder.Append("		 {\r\n");

	if (infloat!=1)
	{

	templateBuilder.Append("		 str=\"<img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_right.gif'/>\"\r\n");

	}	//end if

	templateBuilder.Append("		 }\r\n");
	templateBuilder.Append("		 else\r\n");
	templateBuilder.Append("		 {\r\n");
	templateBuilder.Append("		 str=\"<img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_error.gif'/>E-mail 地址无效，请返回重新填写。\";\r\n");
	templateBuilder.Append("		 }\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("	    if(str!='' &&  str!=null && str!=undefined)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("		$('returnregmessage').innerHTML=str;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("		$('returnregmessage').innerHTML='注册';\r\n");
	templateBuilder.Append("		}\r\n");

	}
	else
	{

	templateBuilder.Append("	  $('isemail').innerHTML=str;\r\n");

	}	//end if

	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function htmlEncode(source, display, tabs)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		function special(source)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			var result = '';\r\n");
	templateBuilder.Append("			for (var i = 0; i < source.length; i++)\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				var c = source.charAt(i);\r\n");
	templateBuilder.Append("				if (c < ' ' || c > '~')\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					c = '&#' + c.charCodeAt() + ';';\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				result += c;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			return result;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		function format(source)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			// Use only integer part of tabs, and default to 4\r\n");
	templateBuilder.Append("			tabs = (tabs >= 0) ? Math.floor(tabs) : 4;\r\n");
	templateBuilder.Append("			// split along line breaks\r\n");
	templateBuilder.Append("			var lines = source.split(/\\r\\n|\\r|\\n/);\r\n");
	templateBuilder.Append("			// expand tabs\r\n");
	templateBuilder.Append("			for (var i = 0; i < lines.length; i++)\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				var line = lines[i];\r\n");
	templateBuilder.Append("				var newLine = '';\r\n");
	templateBuilder.Append("				for (var p = 0; p < line.length; p++)\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					var c = line.charAt(p);\r\n");
	templateBuilder.Append("					if (c === '\\t')\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						var spaces = tabs - (newLine.length % tabs);\r\n");
	templateBuilder.Append("						for (var s = 0; s < spaces; s++)\r\n");
	templateBuilder.Append("						{\r\n");
	templateBuilder.Append("							newLine += ' ';\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						newLine += c;\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				// If a line starts or ends with a space, it evaporates in html\r\n");
	templateBuilder.Append("				// unless it's an nbsp.\r\n");
	templateBuilder.Append("				newLine = newLine.replace(/(^ )|( $)/g, '&nbsp;');\r\n");
	templateBuilder.Append("				lines[i] = newLine;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			// re-join lines\r\n");
	templateBuilder.Append("			var result = lines.join('<br />');\r\n");
	templateBuilder.Append("			// break up contiguous blocks of spaces with non-breaking spaces\r\n");
	templateBuilder.Append("			result = result.replace(/  /g, ' &nbsp;');\r\n");
	templateBuilder.Append("			// tada!\r\n");
	templateBuilder.Append("			return result;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		var result = source;\r\n");
	templateBuilder.Append("		// ampersands (&)\r\n");
	templateBuilder.Append("		result = result.replace(/\\&/g,'&amp;');\r\n");
	templateBuilder.Append("		// less-thans (<)\r\n");
	templateBuilder.Append("		result = result.replace(/\\</g,'&lt;');\r\n");
	templateBuilder.Append("		// greater-thans (>)\r\n");
	templateBuilder.Append("		result = result.replace(/\\>/g,'&gt;');\r\n");
	templateBuilder.Append("		if (display)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			// format for display\r\n");
	templateBuilder.Append("			result = format(result);\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			// Replace quotes if it isn't for display,\r\n");
	templateBuilder.Append("			// since it's probably going in an html attribute.\r\n");
	templateBuilder.Append("			result = result.replace(new RegExp('\"','g'), '&quot;');\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		// special characters\r\n");
	templateBuilder.Append("		result = special(result);\r\n");
	templateBuilder.Append("		// tada!\r\n");
	templateBuilder.Append("		return result;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	var profile_username_toolong = '<img src=\\'templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_error.gif\\'/>对不起，您的用户名超过 20 个字符，请输入一个较短的用户名。';\r\n");
	templateBuilder.Append("	var profile_username_tooshort = '<img src=\\'templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_error.gif\\'/>对不起，您输入的用户名小于3个字符, 请输入一个较长的用户名。';\r\n");
	templateBuilder.Append("	var profile_username_pass = \"<img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_right.gif'/>\";\r\n");
	templateBuilder.Append("	function checkusername(username)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var unlen = username.replace(/[^\\x00-\\xff]/g, \"**\").length;\r\n");
	templateBuilder.Append("		if(unlen < 3 || unlen > 20) {\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("			$(\"returnregmessage\").innerHTML =(unlen < 3 ? profile_username_tooshort : profile_username_toolong);\r\n");

	}
	else
	{

	templateBuilder.Append("			$(\"checkresult\").innerHTML =(unlen < 3 ? profile_username_tooshort : profile_username_toolong);\r\n");

	}	//end if

	templateBuilder.Append("			return;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		ajaxRead(\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("tools/ajax.aspx?t=checkusername&username=\" + escape(username), \"showcheckresult(obj,'\" + escape(username) + \"');\");\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function showcheckresult(obj, username)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var res = obj.getElementsByTagName('result');\r\n");

	if (infloat!=1)
	{

	templateBuilder.Append("		var resContainer = $(\"checkresult\");\r\n");

	}	//end if

	templateBuilder.Append("		var result = \"\";\r\n");
	templateBuilder.Append("		if (res[0] != null && res[0] != undefined)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			if (res[0].childNodes.length > 1) {\r\n");
	templateBuilder.Append("				result = res[0].childNodes[1].nodeValue;\r\n");
	templateBuilder.Append("			} else {\r\n");
	templateBuilder.Append("				result = res[0].firstChild.nodeValue;    		\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		if (result == \"1\")\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("		    var tips=\"<img src=\\'templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_error.gif\\'/><font color='#009900'>对不起，您输入的用户名 \\\"\" + htmlEncode(unescape(username), true, 4) + \"\\\" 已经被他人使用或被禁用。</font>\";\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("			$('returnregmessage').innerHTML=tips;\r\n");

	}
	else
	{

	templateBuilder.Append("			resContainer.innerHTML = tips;\r\n");

	}	//end if

	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else\r\n");
	templateBuilder.Append("		{\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("			 $('returnregmessage').innerHTML='注册';\r\n");

	}
	else
	{

	templateBuilder.Append("			 resContainer.innerHTML = profile_username_pass;\r\n");

	}	//end if

	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function checkSetting()\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		if ($('receiveuser').checked)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			$('showhint').disabled = false;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else\r\n");
	templateBuilder.Append("		{			\r\n");
	templateBuilder.Append("			$('showhint').checked = false;\r\n");
	templateBuilder.Append("			$('showhint').disabled = true;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function checkdoublepassword()\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("	  var pw1=$('password').value;\r\n");
	templateBuilder.Append("	  var pw2=$('password2').value;\r\n");
	templateBuilder.Append("	  if(pw1=='' &&  pw2=='')\r\n");
	templateBuilder.Append("	  {\r\n");
	templateBuilder.Append("	  return;\r\n");
	templateBuilder.Append("	  }\r\n");
	templateBuilder.Append("	  var str;\r\n");
	templateBuilder.Append("		 if(pw1!=pw2)\r\n");
	templateBuilder.Append("		 {\r\n");
	templateBuilder.Append("		  str =\"<img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_error.gif'/>两次输入的密码不一致\";\r\n");
	templateBuilder.Append("		 }\r\n");
	templateBuilder.Append("		 else\r\n");
	templateBuilder.Append("		 {\r\n");

	if (infloat!=1)
	{

	templateBuilder.Append("		  str=\"<img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/check_right.gif'/>\";\r\n");

	}	//end if

	templateBuilder.Append("		 }\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("		  if(str!='' &&  str!=null && str!=undefined)\r\n");
	templateBuilder.Append("		  $('returnregmessage').innerHTML=str;\r\n");
	templateBuilder.Append("		  else\r\n");
	templateBuilder.Append("		  $('returnregmessage').innerHTML='注册';\r\n");

	}
	else
	{

	templateBuilder.Append("	     $('password2tips').innerHTML=str;\r\n");

	}	//end if

	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");

	}
	else
	{


	if (createuser!="")
	{


	if (infloat==1)
	{


	if (page_err==0)
	{

	templateBuilder.Append("	<script>\r\n");
	templateBuilder.Append("	$('form2').style.display='none';\r\n");
	templateBuilder.Append("	$('returnregmessage').className='';\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<div class=\"msgbox\">\r\n");
	templateBuilder.Append("			<h1>Discuz!NT Board 提示信息</h1>\r\n");
	templateBuilder.Append("			<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n");

	if (msgbox_url!="")
	{

	templateBuilder.Append("			<h1><a href=\"javascript:;\" onclick=\"location.reload()\">如果长时间没有响应请点击此处</a></h1>\r\n");
	templateBuilder.Append("			<script>setTimeout('location.reload()', 3000);</");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("		</div>\r\n");

	}
	else
	{

	templateBuilder.Append("	<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n");

	}	//end if


	}
	else
	{


	if (page_err==0)
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


	}	//end if


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
