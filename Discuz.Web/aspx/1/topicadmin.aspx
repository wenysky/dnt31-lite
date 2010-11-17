<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.topicadmin" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:52.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:52. 
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




	if (!issubmit)
	{


	if (page_err==0)
	{

	templateBuilder.Append("    <div class=\"float\" id=\"floatlayout_mods\">\r\n");
	templateBuilder.Append("	<h3 class=\"float_ctrl\">\r\n");
	templateBuilder.Append("	<!--操作标题开始-->\r\n");
	templateBuilder.Append("	    <em id=\"return_mods\">");
	templateBuilder.Append(operationtitle.ToString());
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("	<!--操作标题结束-->\r\n");
	templateBuilder.Append("		<span>\r\n");
	templateBuilder.Append("			<a href=\"javascript:;\" class=\"float_close\" onclick=\"floatwin('close_mods')\" title=\"关闭\">关闭</a>\r\n");
	templateBuilder.Append("		</span>\r\n");
	templateBuilder.Append("	</h3>\r\n");
	templateBuilder.Append("	<div class=\"gateform\">\r\n");

	if (infloat==1)
	{

	templateBuilder.Append("	<form id=\"moderate_admin\" name=\"moderate_admin\" method=\"post\" onsubmit=\"ajaxpost('moderate_admin', 'return_mods', 'return_mods', 'onerror');return false;\" action=\"");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("topicadmin.aspx?action=moderate&operation=");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("&infloat=1\">\r\n");

	}
	else
	{

	templateBuilder.Append("	<form id=\"moderate_admin\" name=\"moderate_admin\" method=\"post\" action=\"topicadmin.aspx?action=moderate&operation=");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\">\r\n");

	}	//end if

	templateBuilder.Append("	<input type=\"hidden\" name=\"topicid\" value=\"");
	templateBuilder.Append(topiclist.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("	<input type=\"hidden\" name=\"forumid\" value=\"");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\" />\r\n");

	if (config.Aspxrewrite==1)
	{

	templateBuilder.Append("	<input type=\"hidden\" id=\"referer\" name=\"referer\" value=\"showforum-");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("\" />\r\n");

	}
	else
	{

	templateBuilder.Append("	<input type=\"hidden\" id=\"referer\" name=\"referer\" value=\"showforum.aspx?forumid=");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("\">\r\n");

	}	//end if

	templateBuilder.Append("    <script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	    var re = getQueryString(\"referer\");\r\n");
	templateBuilder.Append("	    if (re != \"\")\r\n");
	templateBuilder.Append("	    {\r\n");
	templateBuilder.Append("		    $(\"referer\").value = unescape(re);\r\n");
	templateBuilder.Append("	    }\r\n");
	templateBuilder.Append("    </");
	templateBuilder.Append("script>    \r\n");
	templateBuilder.Append("	<!--操作面板开始-->\r\n");
	templateBuilder.Append("	<div class=\"postbox\">\r\n");

	if (operation=="highlight")
	{

	templateBuilder.Append("		<!--高亮开始-->\r\n");
	templateBuilder.Append("	    <div class=\"topicadminlow detailopt\">\r\n");
	templateBuilder.Append("	        <span class=\"hasdropdownbtn\">\r\n");
	templateBuilder.Append("			    <input type=\"hidden\" id=\"highlight_color\" name=\"highlight_color\" value=\"\" />\r\n");
	templateBuilder.Append("			    <span style=\"display:none\">\r\n");
	templateBuilder.Append("			    <input type=\"checkbox\" id=\"highlight_style_b\" name=\"highlight_style_b\" value=\"B\" />\r\n");
	templateBuilder.Append("			    <input type=\"checkbox\" id=\"highlight_style_i\" name=\"highlight_style_i\" value=\"I\" />\r\n");
	templateBuilder.Append("			    <input type=\"checkbox\" id=\"highlight_style_u\" name=\"highlight_style_u\" value=\"U\" />\r\n");
	templateBuilder.Append("			    </span>\r\n");
	templateBuilder.Append("			    <input id=\"color_bg\" type=\"text\" class=\"txt\" readonly=\"readonly\" />\r\n");
	templateBuilder.Append("			    <a href=\"javascript:;\" onclick=\"display('color_menu')\" class=\"dropdownbtn\">^</a>\r\n");
	templateBuilder.Append("		    </span>\r\n");
	templateBuilder.Append("		    <div id=\"color_menu\" class=\"color_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("			    <a href=\"javascript:;\" onclick=\"switchhl(1,this,0)\" title=\"取消高亮\" style=\"background:#000;text-indent:0;color:#F00;text-decoration:none;\">X</a>\r\n");
	templateBuilder.Append("			    <a href=\"javascript:;\" onclick=\"switchhl(1,this,0)\" style=\"background:#EE1B2E;color:#EE1B2E;\">#EE1B2E</a>\r\n");
	templateBuilder.Append("			    <a href=\"javascript:;\" onclick=\"switchhl(1,this,0)\" style=\"background:#EE5023;color:#EE5023;\">#EE5023</a>\r\n");
	templateBuilder.Append("			    <a href=\"javascript:;\" onclick=\"switchhl(1,this,0)\" style=\"background:#996600;color:#996600;\">#996600</a>\r\n");
	templateBuilder.Append("			    <a href=\"javascript:;\" onclick=\"switchhl(1,this,0)\" style=\"background:#3C9D40;color:#3C9D40;\">#3C9D40</a>\r\n");
	templateBuilder.Append("			    <a href=\"javascript:;\" onclick=\"switchhl(1,this,0)\" style=\"background:#2897C5;color:#2897C5;\">#2897C5</a>\r\n");
	templateBuilder.Append("			    <a href=\"javascript:;\" onclick=\"switchhl(1,this,0)\" style=\"background:#2B65B7;color:#2B65B7;\">#2B65B7</a>\r\n");
	templateBuilder.Append("			    <a href=\"javascript:;\" onclick=\"switchhl(1,this,0)\" style=\"background:#8F2A90;color:#8F2A90;\">#8F2A90</a>\r\n");
	templateBuilder.Append("			    <a href=\"javascript:;\" onclick=\"switchhl(1,this,0)\" style=\"background:#EC1282;color:#EC1282;\">#EC1282</a>\r\n");
	templateBuilder.Append("		    </div>\r\n");
	templateBuilder.Append("		    <a title=\"粗体\" style=\"text-indent: 0pt; text-decoration: none; font-weight: 700;\" class=\"detailopt_bold\" onclick=\"switchhl(2, this, 'b')\" id=\"highlight_op_1\" href=\"javascript:;\">B</a>\r\n");
	templateBuilder.Append("            <a title=\"斜体\" style=\"text-indent: 0pt; text-decoration: none; font-style: italic;\" class=\"detailopt_italic\" onclick=\"switchhl(2, this, 'i')\" id=\"highlight_op_2\" href=\"javascript:;\">I</a>\r\n");
	templateBuilder.Append("            <a title=\"下划线\" style=\"text-indent: 0pt; text-decoration: underline;\" class=\"detailopt_underline\" onclick=\"switchhl(2, this, 'u')\" id=\"highlight_op_3\" href=\"javascript:;\">U</a>\r\n");
	templateBuilder.Append("		    <script type=\"text/javascript\">\r\n");
	templateBuilder.Append("		        function switchhl(op, obj, v)\r\n");
	templateBuilder.Append("		        {\r\n");
	templateBuilder.Append("		            if (op == 1)\r\n");
	templateBuilder.Append("		            {\r\n");
	templateBuilder.Append("		                $('highlight_color').value = obj.style.backgroundColor;\r\n");
	templateBuilder.Append("		                $('color_bg').style.backgroundColor = obj.style.backgroundColor;\r\n");
	templateBuilder.Append("		                $('color_menu').style.display = 'none';\r\n");
	templateBuilder.Append("		            } else if (op == 2)\r\n");
	templateBuilder.Append("		            {\r\n");
	templateBuilder.Append("		                if ($('highlight_style_' + v).checked)\r\n");
	templateBuilder.Append("		                {\r\n");
	templateBuilder.Append("		                    $('highlight_style_' + v).checked = false;\r\n");
	templateBuilder.Append("		                    obj.className = obj.className.replace(/ current/, '');\r\n");
	templateBuilder.Append("		                } else\r\n");
	templateBuilder.Append("		                {\r\n");
	templateBuilder.Append("		                    $('highlight_style_' + v).checked = true;\r\n");
	templateBuilder.Append("		                    obj.className += ' current';\r\n");
	templateBuilder.Append("		                }\r\n");
	templateBuilder.Append("		            }\r\n");
	templateBuilder.Append("		        }\r\n");
	templateBuilder.Append("            </");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("        </div>\r\n");
	templateBuilder.Append("		<!--高亮结束-->\r\n");

	}	//end if


	if (operation=="displayorder")
	{

	templateBuilder.Append("		<!--置顶开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");
	templateBuilder.Append("		    <ul class=\"inlinelist\">\r\n");

	if (displayorder>0)
	{

	templateBuilder.Append("<li class=\"wide\"><label><input type=\"radio\" value=\"0\" name=\"level\" class=\"radio\"/> 解除置顶</label></li>\r\n");

	}	//end if

	templateBuilder.Append("                <li class=\"wide\"><label><input type=\"radio\" value=\"1\" name=\"level\" class=\"radio\"\r\n");

	if (displayorder<=1)
	{

	templateBuilder.Append(" checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("/> 本版置顶</label></li>\r\n");
	templateBuilder.Append("                <li class=\"wide\"><label><input type=\"radio\" value=\"2\" name=\"level\" class=\"radio\"\r\n");

	if (displayorder==2)
	{

	templateBuilder.Append(" checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("/> 分类置顶</label></li>\r\n");
	templateBuilder.Append("                <li class=\"wide\"><label><input type=\"radio\" value=\"3\" name=\"level\" class=\"radio\"\r\n");

	if (displayorder==3)
	{

	templateBuilder.Append(" checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("/> 全局置顶</label></li>\r\n");
	templateBuilder.Append("            </ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<!--置顶结束-->\r\n");

	}	//end if


	if (operation=="digest")
	{

	templateBuilder.Append("		<!--精华开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");
	templateBuilder.Append("		    <ul class=\"inlinelist\">\r\n");

	if (digest>0)
	{

	templateBuilder.Append("<li class=\"wide\"><label><input type=\"radio\" value=\"0\" name=\"level\" class=\"radio\"/> 解除精华</label></li>\r\n");

	}	//end if

	templateBuilder.Append("                <li class=\"wide\"><label><input type=\"radio\" value=\"1\" name=\"level\" class=\"radio\"\r\n");

	if (digest<=1)
	{

	templateBuilder.Append(" checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("/> 一级精华</label></li>\r\n");
	templateBuilder.Append("                <li class=\"wide\"><label><input type=\"radio\" value=\"2\" name=\"level\" class=\"radio\"\r\n");

	if (digest==2)
	{

	templateBuilder.Append(" checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("/> 二级精华</label></li>\r\n");
	templateBuilder.Append("                <li class=\"wide\"><label><input type=\"radio\" value=\"3\" name=\"level\" class=\"radio\"\r\n");

	if (digest==3)
	{

	templateBuilder.Append(" checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("/> 三级精华</label></li>\r\n");
	templateBuilder.Append("            </ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<!--精华结束-->\r\n");

	}	//end if


	if (operation=="move")
	{

	templateBuilder.Append("		<!--移动开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");
	templateBuilder.Append("		    <p class=\"tah_body tah_fixiesel\">\r\n");
	templateBuilder.Append("                <label for=\"moveto\">目标版块:</label> <select onchange=\"if(this.value) $('moveext').style.display=''; else $('moveext').style.display='none';\" name=\"moveto\" id=\"moveto\">\r\n");
	templateBuilder.Append("                ");
	templateBuilder.Append(forumlist.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("                </select>\r\n");
	templateBuilder.Append("            </p>\r\n");
	templateBuilder.Append("            <p class=\"tah_body\"></p>\r\n");
	templateBuilder.Append("            <ul style=\"margin: 5px 0pt;display: none;\" id=\"moveext\" class=\"inlinelist\">\r\n");
	templateBuilder.Append("                <li class=\"wide\"><label><input type=\"radio\" checked=\"checked\" value=\"normal\" name=\"type\" class=\"radio\"/> 移动主题</label></li>\r\n");
	templateBuilder.Append("                <li class=\"wide\"><label><input type=\"radio\" value=\"redirect\" name=\"type\" class=\"radio\"/> 保留转向</label></li>\r\n");
	templateBuilder.Append("            </ul>\r\n");
	templateBuilder.Append("        </div>\r\n");
	templateBuilder.Append("		<!--移动结束-->\r\n");

	}	//end if


	if (operation=="close")
	{

	templateBuilder.Append("		<!--关闭开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");
	templateBuilder.Append("		    <ul style=\"margin: 5px 0pt;\" class=\"inlinelist\">\r\n");
	templateBuilder.Append("		        <li class=\"wide\"><label><input type=\"radio\" checked=\"checked\" value=\"0\" name=\"close\" class=\"radio\"/> 打开主题</label></li>\r\n");
	templateBuilder.Append("                <li class=\"wide\"><label><input type=\"radio\" value=\"1\" name=\"close\" class=\"radio\"/> 关闭主题</label></li>\r\n");
	templateBuilder.Append("		    </ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<!--关闭结束-->\r\n");

	}	//end if


	if (operation=="banpost")
	{

	templateBuilder.Append("		<!--屏蔽开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");
	templateBuilder.Append("		    <ul style=\"margin: 5px 0pt;\" class=\"inlinelist\">\r\n");
	templateBuilder.Append("		    	<input type=\"hidden\" size=\"10\" name=\"postid\" id=\"postid\" value=\"");
	templateBuilder.Append(postidlist.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		        <li class=\"wide\"><label><input id=\"banpost1\" type=\"radio\" value=\"0\" name=\"banpost\" class=\"radio\" checked=\"checked\"/> 取消屏蔽</label></li>\r\n");
	templateBuilder.Append("                <li class=\"wide\"><label><input id=\"banpost2\" type=\"radio\" value=\"-2\" name=\"banpost\" class=\"radio\"/> 屏蔽帖子</label></li>\r\n");
	templateBuilder.Append("		    </ul>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				var status = getQueryString(\"banstatus\");\r\n");
	templateBuilder.Append("				if (status == \"0\") {\r\n");
	templateBuilder.Append("					$(\"banpost1\").checked = true;\r\n");
	templateBuilder.Append("					$(\"banpost2\").checked = false;\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				else {\r\n");
	templateBuilder.Append("					$(\"banpost2\").checked = true;\r\n");
	templateBuilder.Append("					$(\"banpost1\").checked = false;\r\n");
	templateBuilder.Append("				}			\r\n");
	templateBuilder.Append("			</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<!--屏蔽结束-->\r\n");

	}	//end if


	if (operation=="bump")
	{

	templateBuilder.Append("		<!--提升开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");
	templateBuilder.Append("		    <ul style=\"margin: 5px 0pt;\" class=\"inlinelist\">\r\n");
	templateBuilder.Append("		        <li class=\"wide\"><label><input id=\"bumptype1\" type=\"radio\" checked=\"checked\" value=\"1\" name=\"bumptype\" class=\"radio\"/>提升</label></li>\r\n");
	templateBuilder.Append("                <li class=\"wide\"><label><input id=\"bumptype2\" type=\"radio\" value=\"-1\" name=\"bumptype\" class=\"radio\"/>下沉</label></li>\r\n");
	templateBuilder.Append("		    </ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<!--提升结束-->\r\n");

	}	//end if


	if (operation=="copy")
	{

	templateBuilder.Append("		<!--拷贝开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");
	templateBuilder.Append("		    <p class=\"tah_body tah_fixiesel\">\r\n");
	templateBuilder.Append("                <label for=\"copyto\">目标论坛/分类: </label><br />\r\n");
	templateBuilder.Append("                <select name=\"copyto\">");
	templateBuilder.Append(forumlist.ToString());
	templateBuilder.Append("</select>\r\n");
	templateBuilder.Append("            </p>\r\n");
	templateBuilder.Append("        </div>\r\n");
	templateBuilder.Append("		<!--拷贝结束-->\r\n");

	}	//end if


	if (operation=="split")
	{

	templateBuilder.Append("		<!--分割开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");
	templateBuilder.Append("		    <p class=\"tah_body tah_fixiesel\">\r\n");
	templateBuilder.Append("                <label for=\"subject\">新主题的标题:</label> <br />\r\n");
	templateBuilder.Append("                <input type=\"text\" name=\"subject\" size=\"32\" value=\"\" class=\"txt\"/>\r\n");
	templateBuilder.Append("            </p>\r\n");
	templateBuilder.Append("        </div>\r\n");
	templateBuilder.Append("        <p>选择内容:        \r\n");
	templateBuilder.Append("		    <div style=\"width:218px;height:60px;overflow:hidden;overflow-y:auto;\">\r\n");

	int post__loop__id=0;
	foreach(DataRow post in postlist.Rows)
	{
		post__loop__id++;

	templateBuilder.Append("<input name=\"postid\" type=\"checkbox\" value=\"" + post["pid"].ToString().Trim() + "\" /><strong>" + post["poster"].ToString().Trim() + "</strong><br />\r\n");
	templateBuilder.Append("				" + post["message"].ToString().Trim() + "<br />\r\n");

	}	//end loop

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("        </p>\r\n");
	templateBuilder.Append("		<!--分割结束-->\r\n");

	}	//end if


	if (operation=="merge")
	{

	templateBuilder.Append("		<!--合并开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");
	templateBuilder.Append("		    <table cellspacing=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n");
	templateBuilder.Append("		        <tr>\r\n");
	templateBuilder.Append("		            <td><label for=\"othertid\">合并 →</label></td>\r\n");
	templateBuilder.Append("		            <td>填写目标主题 ID (tid)</td>\r\n");
	templateBuilder.Append("		        </tr>\r\n");
	templateBuilder.Append("		        <tr>\r\n");
	templateBuilder.Append("		            <td></td>\r\n");
	templateBuilder.Append("		            <td><input size=\"10\" name=\"othertid\" id=\"othertid\"  class=\"txt\" title=\"\r\n");

	if (config.Aspxrewrite==1)
	{

	templateBuilder.Append("即将与这个主题合并的主题id,如showtopic-22.aspx,tid 为 22\r\n");

	}
	else
	{

	templateBuilder.Append(">即将与这个主题合并的主题id,<br />如showtopic.aspx?topicid=22,tid 为 22\r\n");

	}	//end if

	templateBuilder.Append("\" /></td>\r\n");
	templateBuilder.Append("		        </tr>\r\n");
	templateBuilder.Append("		    </table>		    \r\n");
	templateBuilder.Append("        </div>\r\n");
	templateBuilder.Append("		<!--合并结束-->\r\n");

	}	//end if


	if (operation=="type")
	{

	templateBuilder.Append("		<!--分类开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");
	templateBuilder.Append("            <p><label for=\"typeid\">分类:</label> <select id=\"typeid\" name=\"typeid\">");
	templateBuilder.Append(topictypeselectoptions.ToString());
	templateBuilder.Append("</select></p>\r\n");
	templateBuilder.Append("        </div>\r\n");
	templateBuilder.Append("		<!--分类结束-->\r\n");

	}	//end if


	if (operation=="rate")
	{

	templateBuilder.Append("		<!--评分开始-->\r\n");
	templateBuilder.Append("		<input type=\"hidden\" name=\"postid\" id=\"postid\" value=\"");
	templateBuilder.Append(postidlist.ToString());
	templateBuilder.Append("\" class=\"txt\" />\r\n");
	templateBuilder.Append("		<div class=\"rateopt\">\r\n");

	int score__loop__id=0;
	foreach(DataRow score in scorelist.Rows)
	{
		score__loop__id++;

	templateBuilder.Append("		    <div class=\"hasdropdownbtn ratelist s_clear\">\r\n");
	templateBuilder.Append("                <label title=\"今日还能评分 " + score["MaxInDay"].ToString().Trim() + " \" for=\"score" + score__loop__id.ToString() + "\"> " + score["ScoreName"].ToString().Trim() + "</label>\r\n");
	templateBuilder.Append("                <input type=\"text\" class=\"txt\" value=\"0\" name=\"score\" id=\"score" + score__loop__id.ToString() + "\"/>\r\n");
	templateBuilder.Append("                <input type=\"hidden\" value=\"" + score["ScoreCode"].ToString().Trim() + "\" name=\"extcredits\" />\r\n");
	templateBuilder.Append("                <a onclick=\"InFloat='floatlayout_rate';showselect(this, 'score" + score__loop__id.ToString() + "', 'scoreoption" + score__loop__id.ToString() + "')\" class=\"dropdownbtn\" href=\"javascript:;\">^</a>\r\n");
	templateBuilder.Append("                <ul style=\"display: none;\" id=\"scoreoption" + score__loop__id.ToString() + "\">" + score["options"].ToString().Trim() + "</ul>\r\n");
	templateBuilder.Append("            </div>\r\n");

	}	//end loop

	templateBuilder.Append("        </div>\r\n");
	templateBuilder.Append("		<!--评分结束-->\r\n");

	}	//end if


	if (operation=="cancelrate")
	{

	templateBuilder.Append("		<!--取消评分开始-->\r\n");
	templateBuilder.Append("		<input type=\"hidden\" name=\"postid\" id=\"postid\" value=\"");
	templateBuilder.Append(postidlist.ToString());
	templateBuilder.Append("\" class=\"txt\" />\r\n");
	templateBuilder.Append("		<div class=\"floatwrap\">\r\n");
	templateBuilder.Append("		    <table cellspacing=\"0\" cellpadding=\"0\" class=\"list\">\r\n");
	templateBuilder.Append("		        <thead>\r\n");
	templateBuilder.Append("		            <tr>\r\n");
	templateBuilder.Append("		                <td style=\"width:30px;\"> </td>\r\n");
	templateBuilder.Append("		                <td style=\"width:100px;\">用户名</td>\r\n");
	templateBuilder.Append("		                <td style=\"width:150px;\">时间</td>\r\n");
	templateBuilder.Append("		                <td style=\"width:80px;\">积分</td>\r\n");
	templateBuilder.Append("		                <td style=\"text-align:center;\">理由</td>\r\n");
	templateBuilder.Append("		            </tr>\r\n");
	templateBuilder.Append("		        </thead>\r\n");
	templateBuilder.Append("		        <tbody>\r\n");

	int rateloginfo__loop__id=0;
	foreach(DataRow rateloginfo in ratelog.Rows)
	{
		rateloginfo__loop__id++;

	templateBuilder.Append("                    <tr>\r\n");
	templateBuilder.Append("                        <td><input name=\"ratelogid\" type=\"checkbox\"  value=\"" + rateloginfo["id"].ToString().Trim() + "\" /></td>\r\n");
	templateBuilder.Append("                        <td><a href=\"\r\n");

	if (config.Aspxrewrite!=1)
	{

	templateBuilder.Append("userinfo.aspx?userid=" + rateloginfo["uid"].ToString().Trim() + "\r\n");

	}
	else
	{

	templateBuilder.Append("userinfo-" + rateloginfo["uid"].ToString().Trim() + ".aspx\r\n");

	}	//end if

	templateBuilder.Append("\">" + rateloginfo["username"].ToString().Trim() + "</a></td>\r\n");
	templateBuilder.Append("                        <td><span class=\"time\">" + rateloginfo["postdatetime"].ToString().Trim() + "</span></td>\r\n");
	templateBuilder.Append("                        <td>" + rateloginfo["extcreditname"].ToString().Trim() + " <span class=\"bold\">\r\n");

	if (!rateloginfo["score"].ToString().Trim().StartsWith("-"))
	{

	templateBuilder.Append("+" + rateloginfo["score"].ToString().Trim() + "\r\n");

	}
	else
	{

	templateBuilder.Append("" + rateloginfo["score"].ToString().Trim() + "\r\n");

	}	//end if

	templateBuilder.Append("</span></td>\r\n");
	templateBuilder.Append("                        <td>" + rateloginfo["reason"].ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("                    </tr>            \r\n");

	}	//end loop

	templateBuilder.Append("                </tbody>\r\n");
	templateBuilder.Append("            </table>\r\n");
	templateBuilder.Append("        </div>\r\n");
	templateBuilder.Append("		<!--取消评分结束-->\r\n");

	}	//end if


	if (operation=="identify")
	{

	templateBuilder.Append("		<!--鉴定开始-->\r\n");
	templateBuilder.Append("		");
	templateBuilder.Append(identifyjsarray.ToString());
	templateBuilder.Append("	\r\n");
	templateBuilder.Append("		<div>\r\n");
	templateBuilder.Append("            <p>鉴定: \r\n");
	templateBuilder.Append("                <select name=\"selectidentify\" id=\"selectidentify\" onchange=\"changeindentify(this.value)\">\r\n");
	templateBuilder.Append("				    <option value=\"0\" selected=\"selected\">请选择</option>\r\n");
	templateBuilder.Append("				    <option value=\"-1\">* 取消鉴定 *</option>\r\n");

	int identify__loop__id=0;
	foreach(TopicIdentify identify in identifylist)
	{
		identify__loop__id++;

	templateBuilder.Append("				    <option value=\"");
	templateBuilder.Append(identify.Identifyid.ToString().Trim());
	templateBuilder.Append("\"\r\n");

	if (identify__loop__id==1)
	{

	templateBuilder.Append(" selected=\"selected\"\r\n");

	}	//end if

	templateBuilder.Append(">");
	templateBuilder.Append(identify.Name.ToString().Trim());
	templateBuilder.Append("</option>						  \r\n");

	}	//end loop

	templateBuilder.Append("			    </select>	\r\n");
	templateBuilder.Append("            </p>\r\n");
	templateBuilder.Append("        </div>\r\n");
	templateBuilder.Append("        <p style=\"text-align:center;padding:2px;\"><img id=\"identify_preview\" src=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("images/identify/zc.gif\" onerror=\"changeindentify($('selectidentify').options[2].value)\" /></p>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("			function changeindentify(imgid)\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				if (imgid != \"0\" && imgid != \"-1\")\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					$(\"identify_preview\").src = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("images/identify/\" + topicidentify[imgid];\r\n");
	templateBuilder.Append("					$(\"identify_preview\").style.display = \"\";\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				else\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					$(\"identify_preview\").style.display = \"none\";\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("            }\r\n");
	templateBuilder.Append("            changeindentify($('selectidentify').options[2].value);\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>	\r\n");
	templateBuilder.Append("		<!--鉴定结束-->\r\n");

	}	//end if


	if (operation=="delete" || operation=="delposts")
	{

	templateBuilder.Append("		<!--删除帖子开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlow\">\r\n");

	if (operation=="delposts")
	{

	templateBuilder.Append("	        <input type=\"hidden\" size=\"10\" name=\"postid\" id=\"postid\" value=\"");
	templateBuilder.Append(postidlist.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("	        <input type=\"hidden\" size=\"10\" name=\"opinion\" id=\"opinion\" value=\"");
	templateBuilder.Append(opinion.ToString());
	templateBuilder.Append("\" />\r\n");

	}	//end if

	templateBuilder.Append("		    <ul class=\"inlinelist\">\r\n");
	templateBuilder.Append("			    <p>您确认要 <strong>删除</strong> 选择的主题么?</p>\r\n");
	templateBuilder.Append("		    </ul>\r\n");
	templateBuilder.Append("	    </div>\r\n");
	templateBuilder.Append("		<!--删除帖子结束-->\r\n");

	}	//end if


	if (operation!="identify"&&operation!="bonus"&&operation!="cancelrate")
	{

	templateBuilder.Append("		<!--操作说明开始-->\r\n");
	templateBuilder.Append("		<div class=\"topicadminlog\">\r\n");
	templateBuilder.Append("		    <h4>\r\n");
	templateBuilder.Append("		        <span class=\"hasdropdownbtn right\"><a href=\"javascript:;\" class=\"dropdownbtn\" onclick=\"InFloat='floatlayout_mods';showselect(this, 'reason', 'reasonselect')\">^</a></span>\r\n");
	templateBuilder.Append("		        操作说明:\r\n");
	templateBuilder.Append("		    </h4>\r\n");
	templateBuilder.Append("		    <p>\r\n");
	templateBuilder.Append("			    <textarea onkeyup=\"seditor_ctlent(event, '$(\\'moderateform\\').submit()')\" class=\"txtarea\" name=\"reason\" id=\"reason\" onkeydown=\"if(this.value.length>200){ alert('操作原因不能多于200个字符');return false; }\"></textarea>\r\n");
	templateBuilder.Append("		    </p>\r\n");
	templateBuilder.Append("		    <ul style=\"display: none;\" id=\"reasonselect\">\r\n");
	templateBuilder.Append("			    <li>广告/SPAM</li>\r\n");
	templateBuilder.Append("			    <li>恶意灌水</li>\r\n");
	templateBuilder.Append("			    <li>违规内容</li>\r\n");
	templateBuilder.Append("			    <li>文不对题</li>\r\n");
	templateBuilder.Append("			    <li>重复发帖</li>\r\n");
	templateBuilder.Append("			    <li></li>\r\n");
	templateBuilder.Append("			    <li>我很赞同</li>\r\n");
	templateBuilder.Append("			    <li>精品文章</li>\r\n");
	templateBuilder.Append("			    <li>原创内容</li>\r\n");
	templateBuilder.Append("		    </ul>\r\n");
	templateBuilder.Append("	    </div>\r\n");
	templateBuilder.Append("		<!--操作说明结束-->\r\n");

	}	//end if


	if (operation=="bonus")
	{

	templateBuilder.Append("		<!--结帖开始-->\r\n");
	templateBuilder.Append("		<div style=\"position: relative;\">\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				var reg = /^\\d+$/i;\r\n");
	templateBuilder.Append("				$('moderate').onsubmit = function (){\r\n");
	templateBuilder.Append("					if (getCostBonus() != ");
	templateBuilder.Append(topicinfo.Price.ToString().Trim());
	templateBuilder.Append(")\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						alert('分数总和与悬赏总分不相符');\r\n");
	templateBuilder.Append("						return false;\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					return true;\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function getCostBonus()\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					var bonusboxs = document.getElementsByName('postbonus');\r\n");
	templateBuilder.Append("					var costbonus = 0;\r\n");
	templateBuilder.Append("					for (var i = 0; i < bonusboxs.length ; i ++ )\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						var bonus = isNaN(parseInt(bonusboxs[i].value)) ? 0 : parseInt(bonusboxs[i].value);\r\n");
	templateBuilder.Append("						costbonus += bonus;\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					return costbonus;\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function checkInt(obj)\r\n");
	templateBuilder.Append("				{				\r\n");
	templateBuilder.Append("					if (!reg.test(obj.value))\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						obj.value = 0;\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function bonushint(obj)\r\n");
	templateBuilder.Append("				{							\r\n");
	templateBuilder.Append("					var costbonus = getCostBonus();\r\n");
	templateBuilder.Append("					var leftbonus = ");
	templateBuilder.Append(topicinfo.Price.ToString().Trim());
	templateBuilder.Append(" - costbonus;\r\n");
	templateBuilder.Append("					$('bonus_menu').innerHTML = '总悬赏分: ' + ");
	templateBuilder.Append(topicinfo.Price.ToString().Trim());
	templateBuilder.Append(" + '<br />当前可用: ' + leftbonus;\r\n");
	templateBuilder.Append("					$('bonus_menu').style.left = obj.offsetLeft + obj.offsetWidth/2 + 'px';\r\n");
	templateBuilder.Append("					$('bonus_menu').style.top = obj.offsetTop + obj.offsetHeight + 'px';\r\n");
	templateBuilder.Append("					$('bonus_menu').style.display = '';\r\n");
	templateBuilder.Append("					obj.focus();\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function closebonushint(obj)\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					$('bonus_menu').style.display = 'none';\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				var originalColor = '';\r\n");
	templateBuilder.Append("				var valuableColor = '#cce2f8';\r\n");
	templateBuilder.Append("				var bestColor = '#ff9d25';\r\n");
	templateBuilder.Append("				function rgbToColor(forecolor) {\r\n");
	templateBuilder.Append("					if(forecolor == null) {\r\n");
	templateBuilder.Append("						forecolor = '';\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					if(!is_moz && !is_opera) {\r\n");
	templateBuilder.Append("						if (forecolor.indexOf('#') == 0)\r\n");
	templateBuilder.Append("						{\r\n");
	templateBuilder.Append("							forecolor = forecolor.replace('#', '0x');	\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("						return rgbhexToColor(((forecolor >> 16) & 0xFF).toString(16), ((forecolor >> 8) & 0xFF).toString(16), (forecolor & 0xFF).toString(16));\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					if(forecolor.toLowerCase().indexOf('rgb') == 0) {\r\n");
	templateBuilder.Append("						var matches = forecolor.match(/^rgb\\s*\\(([0-9]+),\\s*([0-9]+),\\s*([0-9]+)\\)$/);\r\n");
	templateBuilder.Append("						if(matches) {\r\n");
	templateBuilder.Append("							return rgbhexToColor((matches[1] & 0xFF).toString(16), (matches[2] & 0xFF).toString(16), (matches[3] & 0xFF).toString(16));\r\n");
	templateBuilder.Append("						} else {\r\n");
	templateBuilder.Append("							return rgbToColor(null);\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("					} else {\r\n");
	templateBuilder.Append("						return forecolor;\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function rgbhexToColor(r, g, b) {\r\n");
	templateBuilder.Append("					var coloroptions = {'#000000' : 'Black', '#a0522d' : 'Sienna', '#556b2f' : 'DarkOliveGreen', '#006400' : 'DarkGreen', '#483d8b' : 'DarkSlateBlue', '#000080' : 'Navy', '#4b0082' : 'Indigo', '#2f4f4f' : 'DarkSlateGray', '#8b0000' : 'DarkRed', '#ff8c00' : 'DarkOrange', '#808000' : 'Olive', '#008000' : 'Green', '#008080' : 'Teal', '#0000ff' : 'Blue', '#708090' : 'SlateGray', '#696969' : 'DimGray', '#ff0000' : 'Red', '#f4a460' : 'SandyBrown', '#9acd32' : 'YellowGreen', '#2e8b57' : 'SeaGreen', '#48d1cc' : 'MediumTurquoise', '#4169e1' : 'RoyalBlue', '#800080' : 'Purple', '#808080' : 'Gray', '#ff00ff' : 'Magenta', '#ffa500' : 'Orange', '#ffff00' : 'Yellow', '#00ff00' : 'Lime', '#00ffff' : 'Cyan', '#00bfff' : 'DeepSkyBlue', '#9932cc' : 'DarkOrchid', '#c0c0c0' : 'Silver', '#ffc0cb' : 'Pink', '#f5deb3' : 'Wheat', '#fffacd' : 'LemonChiffon', '#98fb98' : 'PaleGreen', '#afeeee' : 'PaleTurquoise', '#add8e6' : 'LightBlue', '#dda0dd' : 'Plum', '#ffffff' : 'White'};\r\n");
	templateBuilder.Append("					var color = '#' + (str_pad(r, 2, 0) + str_pad(g, 2, 0) + str_pad(b, 2, 0));\r\n");
	templateBuilder.Append("					return coloroptions[color] ? coloroptions[color] : color;\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function str_pad(text, length, padstring) {\r\n");
	templateBuilder.Append("					text += '';\r\n");
	templateBuilder.Append("					padstring += '';\r\n");
	templateBuilder.Append("					if(text.length < length) {\r\n");
	templateBuilder.Append("						padtext = padstring;\r\n");
	templateBuilder.Append("						while(padtext.length < (length - text.length)) {\r\n");
	templateBuilder.Append("							padtext += padstring;\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("						text = padtext.substr(0, (length - text.length)) + text;\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					return text;\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function setValuableOrBestAnswer(obj, pid)\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					switch (rgbToColor(obj.style.backgroundColor))\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						case valuableColor:				\r\n");
	templateBuilder.Append("							var valuableAnswers = $('valuableAnswers').value.split(',');\r\n");
	templateBuilder.Append("							$('valuableAnswers').value = '';\r\n");
	templateBuilder.Append("							for (var i = 0; i < valuableAnswers.length ; i++)\r\n");
	templateBuilder.Append("							{\r\n");
	templateBuilder.Append("								if (valuableAnswers[i] != pid && valuableAnswers[i] != '')\r\n");
	templateBuilder.Append("								{\r\n");
	templateBuilder.Append("									$('valuableAnswers').value += ',' + valuableAnswers[i];\r\n");
	templateBuilder.Append("								}\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("							var options = document.getElementsByName('answeroption');\r\n");
	templateBuilder.Append("							for (var i = 0; i < options.length ; i++ )\r\n");
	templateBuilder.Append("							{\r\n");
	templateBuilder.Append("								if (options[i].style.backgroundColor == bestColor)\r\n");
	templateBuilder.Append("								{\r\n");
	templateBuilder.Append("									options[i].style.backgroundColor = valuableColor;\r\n");
	templateBuilder.Append("									$('valuableAnswers').value += ',' + $('bestAnswer').value;\r\n");
	templateBuilder.Append("								}										\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("							obj.style.backgroundColor = bestColor;\r\n");
	templateBuilder.Append("							$('bestAnswer').value = pid;\r\n");
	templateBuilder.Append("							break;\r\n");
	templateBuilder.Append("						case bestColor:\r\n");
	templateBuilder.Append("							obj.style.backgroundColor = originalColor;\r\n");
	templateBuilder.Append("							$('bestAnswer').value= '';\r\n");
	templateBuilder.Append("							break;\r\n");
	templateBuilder.Append("						default:\r\n");
	templateBuilder.Append("							obj.style.backgroundColor = valuableColor;\r\n");
	templateBuilder.Append("							if (!in_array(pid, $('valuableAnswers').value.split(',')))\r\n");
	templateBuilder.Append("							{\r\n");
	templateBuilder.Append("								$('valuableAnswers').value += ',' + pid;\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("							break;\r\n");
	templateBuilder.Append("					}							\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("			</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			提示: 每次点击答案可以切换\"最佳答案\"与\"有价值的答案\"的颜色状态.&nbsp;&nbsp;&nbsp;&nbsp;颜色含义:\r\n");
	templateBuilder.Append("			<span id=\"colorSpan\"></span>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("			    $(\"colorSpan\").innerHTML = '<span style=\"padding: 3px; color: #fff;background-color: ' + bestColor + ';\">最佳答案</span>'\r\n");
	templateBuilder.Append("			    + '<span style=\"margin-left: 3px;padding: 3px; color: #fff;background-color: ' + valuableColor + ';\">有价值的答案</span><br /><br />';\r\n");
	templateBuilder.Append("			</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("			<input type=\"hidden\" id=\"bestAnswer\" name=\"bestAnswer\" value=\"\" />\r\n");
	templateBuilder.Append("			<input type=\"hidden\" id=\"valuableAnswers\" name=\"valuableAnswers\" value=\"\" />\r\n");
	templateBuilder.Append("			<div style=\"width: 365px; height: 240px; overflow-x: hidden; overflow-y: auto;\">\r\n");

	int post__loop__id=0;
	foreach(DataRow post in postlist.Rows)
	{
		post__loop__id++;

	templateBuilder.Append("			    <div name=\"answeroption\" \r\n");

	if (Utils.StrToInt(post["posterid"].ToString().Trim(), 0)!=topicinfo.Posterid)
	{

	templateBuilder.Append("onclick=\"setValuableOrBestAnswer(this, " + post["pid"].ToString().Trim() + ");\" \r\n");
	templateBuilder.Append("			        style=\"cursor: pointer; width: 100%;\"\r\n");

	}	//end if

	templateBuilder.Append(">\r\n");
	templateBuilder.Append("			        <strong>" + post["poster"].ToString().Trim() + "</strong>&nbsp; \r\n");

	if (Utils.StrToInt(post["posterid"].ToString().Trim(), 0)!=topicinfo.Posterid)
	{

	templateBuilder.Append("得分: \r\n");
	templateBuilder.Append("			        <input name=\"postbonus\" id=\"bonus_" + post["pid"].ToString().Trim() + "\" type=\"text\" value=\"0\" size=\"3\" maxlength=\"9\" onblur=\"checkInt(this);\" \r\n");
	templateBuilder.Append("			            onmouseover=\"bonushint(this);\" onmouseout=\"closebonushint(this);\" />\r\n");
	templateBuilder.Append("			        <input name=\"addons\" type=\"hidden\" value=\"" + post["posterid"].ToString().Trim() + "|" + post["pid"].ToString().Trim() + "|" + post["poster"].ToString().Trim() + "\" />\r\n");

	}
	else
	{

	templateBuilder.Append("不能给自己分\r\n");

	}	//end if

	templateBuilder.Append("<br />\r\n");
	templateBuilder.Append("				    " + post["message"].ToString().Trim() + "<br />\r\n");
	templateBuilder.Append("			    </div><br />\r\n");

	}	//end loop

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div id=\"bonus_menu\" style=\"position: absolute; z-index: 50; background: yellow;\"></div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<!--结帖结束-->\r\n");

	}	//end if

	templateBuilder.Append("		<!--短消息通知开始-->\r\n");

	if (operation!="cancelrate")
	{

	templateBuilder.Append("		<p>\r\n");
	templateBuilder.Append("            <input type=\"submit\" value=\"确定\" name=\"modsubmit\"/>\r\n");

	if (operation=="delete" || operation=="delposts")
	{

	templateBuilder.Append("		    <!--保留附件开始-->\r\n");
	templateBuilder.Append("		    	<input name=\"reserveattach\" type=\"checkbox\" value=\"1\" /> <label for=\"reserveattach\">保留附件</label>\r\n");
	templateBuilder.Append("		    <!--保留附件结束-->\r\n");

	}	//end if


	if (issendmessage)
	{

	templateBuilder.Append("		        <input type=\"checkbox\" disabled checked=\"checked\"/>\r\n");
	templateBuilder.Append("		        <input name=\"sendmessage\" type=\"hidden\" id=\"sendmessage\" value=\"1\"/>\r\n");

	}
	else
	{

	templateBuilder.Append("		        <input name=\"sendmessage\" type=\"checkbox\" id=\"sendmessage\" value=\"1\"/>\r\n");

	}	//end if

	templateBuilder.Append(" <label for=\"sendmessage\">通知作者</label>\r\n");
	templateBuilder.Append("        </p>\r\n");

	}
	else
	{

	templateBuilder.Append("        <div class=\"topic_msg\">\r\n");
	templateBuilder.Append("            <p style=\"float: right;\">\r\n");
	templateBuilder.Append("                <input type=\"checkbox\" class=\"checkbox\" id=\"sendmessage\" name=\"sendmessage\"/> <label for=\"sendreasonpm\">通知作者</label>  \r\n");
	templateBuilder.Append("                操作说明: <input class=\"txt\" name=\"reason\"/>\r\n");
	templateBuilder.Append("            </p>\r\n");
	templateBuilder.Append("            <label><input name=\"chkall\" type=\"checkbox\"  onclick=\"checkall(this.form, 'ratelogid')\" /> 全选</label>\r\n");
	templateBuilder.Append("            <button name=\"ratesubmit\" value=\"true\" type=\"submit\" class=\"submit\">提交</button>\r\n");
	templateBuilder.Append("        </div>\r\n");

	}	//end if

	templateBuilder.Append("		<!--短消息通知结束-->\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<!--操作面板结束-->\r\n");
	templateBuilder.Append("    </form>\r\n");
	templateBuilder.Append("    </div>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}
	else
	{


	if (infloat==1)
	{


	if (titlemessage)
	{

	templateBuilder.Append("            ");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("\r\n");

	}
	else
	{

	templateBuilder.Append("            <div class=\"float\" id=\"floatlayout_mods\">\r\n");
	templateBuilder.Append("	            <h3 class=\"float_ctrl\">\r\n");
	templateBuilder.Append("	                <em id=\"em1\">");
	templateBuilder.Append(operationtitle.ToString());
	templateBuilder.Append("</em>\r\n");
	templateBuilder.Append("		            <span>\r\n");
	templateBuilder.Append("			            <a href=\"javascript:;\" class=\"float_close\" onclick=\"floatwin('close_mods')\" title=\"关闭\">关闭</a>\r\n");
	templateBuilder.Append("		            </span>\r\n");
	templateBuilder.Append("	            </h3>\r\n");
	templateBuilder.Append("		        <div class=\"float_message\">");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		            <br /><br /><button type=\"button\" onclick=\"floatwinreset = 1;floatwin('close_mods');\">关闭</button>\r\n");
	templateBuilder.Append("		        </div>\r\n");
	templateBuilder.Append("		    </div>\r\n");

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


	}	//end if


	}
	else
	{


	if (infloat==1)
	{

	templateBuilder.Append("        <script type=\"text/javascript\"  reload=\"1\">\r\n");
	templateBuilder.Append("            location.href = '");
	templateBuilder.Append(msgbox_url.ToString());
	templateBuilder.Append("';	\r\n");
	templateBuilder.Append("        </");
	templateBuilder.Append("script>\r\n");

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
