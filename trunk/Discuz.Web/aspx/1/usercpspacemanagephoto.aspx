<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Album.Pages.usercpphotomanage" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009/1/15 15:59:25.
		本页面代码由Discuz!NT模板引擎生成于 2009/1/15 15:59:25. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;


	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	templateBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	templateBuilder.Append("<head>\r\n");
	templateBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	templateBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=7\" />\r\n");
	templateBuilder.Append(meta.ToString());
	templateBuilder.Append("\r\n");

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

	templateBuilder.Append("<link rel=\"icon\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("favicon.ico\" type=\"image/x-icon\" />\r\n");
	templateBuilder.Append("<link rel=\"shortcut icon\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("favicon.ico\" type=\"image/x-icon\" />\r\n");
	templateBuilder.Append("<!-- 调用样式表 -->\r\n");
	templateBuilder.Append("<link rel=\"stylesheet\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/dnt.css\" type=\"text/css\" media=\"all\"  />\r\n");
	templateBuilder.Append(link.ToString());
	templateBuilder.Append("\r\n");
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
	templateBuilder.Append("javascript/common.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("javascript/menu.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var aspxrewrite = ");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append(script.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("</head>\r\n");


	templateBuilder.Append("<body>\r\n");
	templateBuilder.Append("<div id=\"append_parent\"></div><div id=\"ajaxwaitid\"></div>\r\n");
	templateBuilder.Append("<div class=\"wrap\">\r\n");
	templateBuilder.Append("<div id=\"header\">\r\n");
	templateBuilder.Append("	<h2><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("index.aspx\" title=\"Discuz!NT|BBS|论坛 - Powered by Discuz!NT\"><img src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/logo.gif\" alt=\"Discuz! Board NT|BBS|论坛\"/></a>\r\n");
	templateBuilder.Append("	</h2>\r\n");

	if (headerad!="")
	{

	templateBuilder.Append("		<div id=\"ad_headerbanner\">");
	templateBuilder.Append(headerad.ToString());
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div id=\"menu\">\r\n");

	if (config.Isframeshow!=0)
	{

	templateBuilder.Append("	<div class=\"frameswitch\">\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("			if(top == self) {\r\n");
	templateBuilder.Append("			    document.write('<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("frame.aspx?f=1\" target=\"_top\">分栏模式<\\/a>');\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if

	templateBuilder.Append("	<span class=\"avataonline\">\r\n");

	if (userid==-1)
	{

	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("login.aspx\" class=\"reg\">登录</a>\r\n");
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("register.aspx\" class=\"reg\">注册</a>\r\n");

	}
	else
	{


	if (oluserinfo.Newpms>0)
	{

	templateBuilder.Append("			&nbsp;<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("usercpinbox.aspx\" class=\"new_info\"><img src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/message_1.gif\" alt=\"");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append("条新短消息\"  title=\"");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append("条新短消息\"/></a>&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("			<cite>欢迎:<a class=\"dropmenu\" id=\"viewpro\" onMouseOver=\"showMenu(this.id)\">");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("</a></cite>\r\n");

	if (oluserinfo.Newnotices>0)
	{

	templateBuilder.Append("			&nbsp;<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("usercpnotice.aspx?filter=all\" class=\"new_info\">");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append("个新通知</a>&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("\">退出</a>\r\n");

	}	//end if

	templateBuilder.Append("	</span>\r\n");
	templateBuilder.Append("	<ul>\r\n");
	templateBuilder.Append("		");
	templateBuilder.Append(mainnavigation.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("	</ul>\r\n");
	templateBuilder.Append("</div>\r\n");


	templateBuilder.Append("<!--header end-->\r\n");
	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"home\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <a href=\"usercp.aspx\">用户中心</a>  &raquo; <a href=\"usercpspacemanagealbum.aspx\">管理");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("</a>  &raquo;<strong>管理图片</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"headsearch\">\r\n");
	templateBuilder.Append("		<div id=\"search\">\r\n");

	templateBuilder.Append("			<form method=\"post\" action=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\">\r\n");
	templateBuilder.Append("				<input type=\"hidden\" name=\"poster\" />\r\n");
	templateBuilder.Append("				<input type=\"hidden\" name=\"keyword\" />\r\n");
	templateBuilder.Append("				<input type=\"hidden\" name=\"type\" value=\"\" />\r\n");
	templateBuilder.Append("				<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\"/>\r\n");
	templateBuilder.Append("				<div id=\"searchbar\">\r\n");
	templateBuilder.Append("					<dl>\r\n");
	templateBuilder.Append("						<dt id=\"quicksearch\" class=\"s2\" onclick=\"showMenu(this.id, false);\" onmouseover=\"MouseCursor(this);\">帖子标题</dt>\r\n");
	templateBuilder.Append("						<dd class=\"textinput\"><input type=\"text\" name=\"keywordf\" value=\"\" class=\"text\"/></dd>\r\n");
	templateBuilder.Append("						<dd><input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"s3\"/></dd>\r\n");
	templateBuilder.Append("					</dl>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</form>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">function bind_keyword(form){if(form.keywordtype.value=='8'){form.keyword.value='';form.poster.value=form.keywordf.value; } else { form.poster.value=''; form.keyword.value=form.keywordf.value;if(form.keywordtype.value == '2')form.type.value = 'spacepost';if(form.keywordtype.value == '3')form.type.value = 'album';}}</");
	templateBuilder.Append("script>\r\n");


	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<!--主体-->\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	function checkAll(bCheck,theform)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		for (var i = 0;i < theform.elements.length;i++)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			var e = theform.elements[i];\r\n");
	templateBuilder.Append("			if (e.name == \"photoid\")\r\n");
	templateBuilder.Append("				e.checked = bCheck;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function delePhoto(theform)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var checkPhoto = isCheckPhoto(theform);	\r\n");
	templateBuilder.Append("		if(!checkPhoto)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			alert(\"您没有选中所要删除的图片！\");\r\n");
	templateBuilder.Append("			return false;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			if(confirm(\"您真要删除下面所选图片吗？删除后将无法恢复！\"))\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				$(\"active\").value = \"delete\";\r\n");
	templateBuilder.Append("				theform.submit();\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			else\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				return false;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function changeAlbum(theform)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var checkPhoto = isCheckPhoto(theform);	\r\n");
	templateBuilder.Append("		if(!checkPhoto)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			alert(\"您没有选中所要转移的图片！\");\r\n");
	templateBuilder.Append("			return false;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			o = $(\"alibumList\");\r\n");
	templateBuilder.Append("			if(confirm(\"您确认要将相册中所选图片转移到 \" + o.options[o.selectedIndex].text + \" 相册中吗？\"))\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				$(\"active\").value = \"change\";\r\n");
	templateBuilder.Append("				return true;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			else\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				return false;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function setLogo(theform)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		o = $(\"logoList\");\r\n");
	templateBuilder.Append("		var currentablumname = '");
	templateBuilder.Append(currentalbumname.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("		if(confirm(\"您确认要将 \" + o.options[o.selectedIndex].text + \" 图片设置为当前相册的封面吗？\"))\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			$(\"active\").value = \"setlogo\";\r\n");
	templateBuilder.Append("			theform.submit();\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			return false;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function isCheckPhoto(theform)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var checkPhoto = false;\r\n");
	templateBuilder.Append("		for (var i=0;i<theform.elements.length;i++)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			var e = theform.elements[i];\r\n");
	templateBuilder.Append("			if (e.name == \"photoid\" && e.checked)\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				return true;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		return false;\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div class=\"controlpannel\">\r\n");

	templateBuilder.Append("<div class=\"pannelmenu\">\r\n");

	if (userid>0)
	{


	if (pagename=="usercptopic.aspx"||pagename=="usercppost.aspx"||pagename=="usercpdigest.aspx"||pagename=="usercpprofile.aspx"      ||pagename=="usercpnewpassword.aspx"||pagename=="usercppreference.aspx")
	{

	templateBuilder.Append("	   <a href=\"usercpprofile.aspx\" class=\"current\"><span>个人设置</span></a>\r\n");

	}
	else
	{

	templateBuilder.Append("	   <a href=\"usercpprofile.aspx\">个人设置</a>\r\n");

	}	//end if


	if (pagename=="usercpinbox.aspx"||pagename=="usercpsentbox.aspx"||pagename=="usercpdraftbox.aspx"||pagename=="usercppostpm.aspx"||pagename=="usercpshowpm.aspx"||pagename=="usercppmset.aspx")
	{

	templateBuilder.Append("	   <a href=\"usercpinbox.aspx\" class=\"current\"><span>短消息</span></a>\r\n");

	}
	else
	{

	templateBuilder.Append("	   <a href=\"usercpinbox.aspx\">短消息</a>\r\n");

	}	//end if


	if (pagename=="usercpsubscribe.aspx")
	{

	templateBuilder.Append("	   <a href=\"usercpsubscribe.aspx\" class=\"current\"><span>收藏夹</span></a>\r\n");

	}
	else
	{

	templateBuilder.Append("	   <a href=\"usercpsubscribe.aspx\">收藏夹</a>\r\n");

	}	//end if


	if (pagename=="usercpcreditspay.aspx"||pagename=="usercpcreditstransfer.aspx"||pagename=="usercpcreditspayoutlog.aspx"||pagename=="usercpcreditspayinlog.aspx"	   ||pagename=="usercpcreaditstransferlog.aspx")
	{

	templateBuilder.Append("       <a href=\"usercpcreditspay.aspx\" class=\"current\"><span>积分交易</span></a>\r\n");

	}
	else
	{

	templateBuilder.Append("       <a href=\"usercpcreditspay.aspx\">积分交易</a>\r\n");

	}	//end if


	if (config.Enablespace==1 && user.Spaceid>0)
	{


	if (pagename=="usercpspacepostblog.aspx"||pagename=="usercpspacemanageblog.aspx"||pagename=="usercpspaceeditblog.aspx"||pagename=="usercpspacelinklist.aspx"||pagename=="usercpspacelinkedit.aspx"||pagename=="usercpspacelinkadd.aspx"||pagename=="usercpspacecomment.aspx"||pagename=="usercpspacemanagecategory.aspx"||pagename=="usercpspacecategoryadd.aspx"||pagename=="usercpspacecategoryedit.aspx"||pagename=="usercpspacemanageattachment.aspx"||pagename=="usercpspaceset.aspx")
	{

	templateBuilder.Append("		   <a href=\"usercpspacemanageblog.aspx\" class=\"current\"><span>");
	templateBuilder.Append(config.Spacename.ToString().Trim());
	templateBuilder.Append("管理</span></a>\r\n");

	}
	else
	{

	templateBuilder.Append("		   <a href=\"usercpspacemanageblog.aspx\">");
	templateBuilder.Append(config.Spacename.ToString().Trim());
	templateBuilder.Append("管理</a>\r\n");

	}	//end if


	}	//end if


	if (config.Enablealbum==1)
	{


	if (pagename=="usercpspacemanagealbum.aspx"||pagename=="usercpspacemanagephoto.aspx"||pagename=="usercpspacephotoadd.aspx"||pagename=="usercpeditphoto.aspx")
	{

	templateBuilder.Append("	            <a href=\"usercpspacemanagealbum.aspx\" class=\"current\"><span>");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("管理</span></a>\r\n");

	}
	else
	{

	templateBuilder.Append("	            <a href=\"usercpspacemanagealbum.aspx\">");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("管理</a>\r\n");

	}	//end if


	}	//end if


	if (config.Enablemall>=1)
	{


	if (pagename=="usercpmygoods.aspx")
	{

	templateBuilder.Append("	            <a href=\"usercpmygoods.aspx\" class=\"current\"><span>交易管理</span></a>\r\n");

	}
	else
	{

	templateBuilder.Append("	            <a href=\"usercpmygoods.aspx\">交易管理</a>\r\n");

	}	//end if


	}	//end if


	if (config.Enablemall==2)
	{


	if (pagename=="usercpshopcategory.aspx")
	{

	templateBuilder.Append("	            <a href=\"usercpshopcategory.aspx?item=shopcategory\" class=\"current\"><span>店铺管理</span></a>\r\n");

	}
	else
	{

	templateBuilder.Append("	            <a href=\"usercpshopcategory.aspx?item=shopcategory\">店铺管理</a>\r\n");

	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("	</div>\r\n");


	templateBuilder.Append("	<div class=\"pannelcontent\">\r\n");
	templateBuilder.Append("		<div class=\"pcontent\">\r\n");
	templateBuilder.Append("			<div class=\"panneldetail\">\r\n");


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("				<div class=\"panneltabs\">\r\n");

	if (userid>0)
	{

	templateBuilder.Append("					 <a href=\"usercpspacemanagealbum.aspx\"\r\n");

	if (pagename=="usercpspacemanagealbum.aspx"||pagename=="usercpspacemanagephoto.aspx"||pagename=="usercpspacephotoadd.aspx")
	{

	templateBuilder.Append("					 class=\"current\"\r\n");

	}	//end if

	templateBuilder.Append(">管理");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("				</div>	\r\n");

	}	//end if



	templateBuilder.Append("				<div class=\"pannelbody\">\r\n");
	templateBuilder.Append("					<div class=\"pannellist\">\r\n");

	if (page_err==0)
	{


	if (ispost)
	{


	templateBuilder.Append("<div class=\"box message\">\r\n");
	templateBuilder.Append("	<h1>Discuz!NT Board 提示信息</h1>\r\n");
	templateBuilder.Append("	<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n");

	if (msgbox_url!="")
	{

	templateBuilder.Append("	<p><a href=\"");
	templateBuilder.Append(msgbox_url.ToString());
	templateBuilder.Append("\">如果浏览器没有转向, 请点击这里.</a></p>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");



	}
	else
	{

	templateBuilder.Append("						<form id=\"photolist\" name=\"photolist\" action=\"\" method=\"post\">\r\n");
	templateBuilder.Append("						<h3>");
	templateBuilder.Append(currentalbumname.ToString());
	templateBuilder.Append("(<strong style=\"color:#000;font-weight:bold;\">");
	templateBuilder.Append(photocount.ToString());
	templateBuilder.Append("</strong>)</h3>\r\n");
	templateBuilder.Append("						<div style=\"line-height:36px;\">\r\n");
	templateBuilder.Append("							<input type=\"checkbox\" onclick=\"checkAll(this.checked,this.form)\" />全选&nbsp;&nbsp;\r\n");
	templateBuilder.Append("							<a href=\"###\" onclick=\"return delePhoto($('photolist'))\"  class=\"OtherButton\">删除图片</a>&nbsp;&nbsp;&nbsp;\r\n");
	templateBuilder.Append("							<a href=\"###\" onclick=\"if(changeAlbum($('photolist'))) $('photolist').submit();\">转移图片</a>到\r\n");
	templateBuilder.Append("							<select name=\"alibumList\" id=\"alibumList\">\r\n");

	int alibum__loop__id=0;
	foreach(DataRow alibum in albumList.Rows)
	{
		alibum__loop__id++;

	templateBuilder.Append("								<option value=\"" + alibum["albumid"].ToString().Trim() + "\">" + alibum["title"].ToString().Trim() + "</option>\r\n");

	}	//end loop

	templateBuilder.Append("							</select>\r\n");
	templateBuilder.Append("							&nbsp;&nbsp;&nbsp;\r\n");
	templateBuilder.Append("							将\r\n");
	templateBuilder.Append("							<select name=\"logoList\" id=\"logoList\">\r\n");

	int logo__loop__id=0;
	foreach(DataRow logo in logoList.Rows)
	{
		logo__loop__id++;

	templateBuilder.Append("								<option value=\"" + logo["photoid"].ToString().Trim() + "\">" + logo["PhotoOrder"].ToString().Trim() + "</option>\r\n");

	}	//end loop

	templateBuilder.Append("							</select>\r\n");
	templateBuilder.Append("							<a href=\"###\" onclick=\"return setLogo($('photolist'))\">设置为封面</a>&nbsp;&nbsp;&nbsp;\r\n");
	templateBuilder.Append("							<a href=\"usercpspacephotoadd.aspx?albumid=");
	templateBuilder.Append(albumid.ToString());
	templateBuilder.Append("\"  class=\"ImpButton\">增加图片</a>\r\n");
	templateBuilder.Append("							<input type=\"hidden\" name=\"active\" id=\"active\" value=\"\" />\r\n");
	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("						<div class=\"compartline\">&nbsp;</div>\r\n");
	templateBuilder.Append("						<ul id=\"photo\">\r\n");

	int singlePhotoInfo__loop__id=0;
	foreach(DataRow singlePhotoInfo in photoList.Rows)
	{
		singlePhotoInfo__loop__id++;

	templateBuilder.Append("							<li>\r\n");
	templateBuilder.Append("							    <div class=\"Ntphotoimg\">\r\n");
	templateBuilder.Append("								<a href='showphoto.aspx?photoid=" + singlePhotoInfo["photoid"].ToString().Trim() + "' target='_blank'>\r\n");
	templateBuilder.Append("								<img src='" + singlePhotoInfo["TFileName"].ToString().Trim() + "' border='0' title='" + singlePhotoInfo["Description"].ToString().Trim() + "' style='border: 1px solid rgb(0, 0, 0);padding:4px' style=\"max-width: 150px; max-height: 150px;\"></a>\r\n");

	if (singlePhotoInfo["isattachment"].ToString()=="1")
	{

	templateBuilder.Append("								<span style='position:relative;left:-15px;top:0px;z-index:1'><img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/attphoto.gif' width='30' height='37' border='0' title=\"来自附件\"></span>\r\n");

	}	//end if

	templateBuilder.Append("								</div>\r\n");
	templateBuilder.Append("								<div class=\"NtPhotoDetail\">\r\n");
	templateBuilder.Append("								<input type='checkbox' name='photoid' value='" + singlePhotoInfo["PhotoId"].ToString().Trim() + "' /> " + singlePhotoInfo["PhotoOrder"].ToString().Trim() + "&nbsp;&nbsp; <a href=\"usercpeditphoto.aspx?photoid=" + singlePhotoInfo["photoid"].ToString().Trim() + "\">编辑</a>\r\n");
	templateBuilder.Append("								<br />" + singlePhotoInfo["title"].ToString().Trim() + "\r\n");
	templateBuilder.Append("								<br />\r\n");
	templateBuilder.Append("								上传时间：" + singlePhotoInfo["PostDate"].ToString().Trim() + "\r\n");
	templateBuilder.Append("								</div>\r\n");
	templateBuilder.Append("							</li>\r\n");

	}	//end loop

	templateBuilder.Append("						</ul>\r\n");
	templateBuilder.Append("						</form>\r\n");
	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("						<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("							<div class=\"pages\">\r\n");
	templateBuilder.Append("								<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("								<kbd>跳转<input name=\"gopage\" type=\"text\" id=\"gopage\" onKeyDown=\"if(event.keyCode==13) window.location='usercpspacemanagephoto.aspx?albumid=");
	templateBuilder.Append(albumid.ToString());
	templateBuilder.Append("&page=' + this.value\"  size=\"4\" maxlength=\"9\"/>页</kbd>\r\n");
	templateBuilder.Append("							</div>\r\n");
	templateBuilder.Append("						</div>\r\n");

	}	//end if

	templateBuilder.Append("						</div>\r\n");

	}
	else
	{


	templateBuilder.Append("<div class=\"box message\">\r\n");
	templateBuilder.Append("	<h1>错误显示</h1>\r\n");
	templateBuilder.Append("	<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n");
	templateBuilder.Append("	<p class=\"errorback\">\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("			if(");
	templateBuilder.Append(msgbox_showbacklink.ToString());
	templateBuilder.Append(")\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				document.write(\"<a href=\\\"");
	templateBuilder.Append(msgbox_backlink.ToString());
	templateBuilder.Append("\\\">返回上一步</a> &nbsp; &nbsp;|  \");\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		&nbsp; &nbsp; <a href=\"forumindex.aspx\">论坛首页</a>\r\n");

	if (usergroupid==7)
	{

	templateBuilder.Append("		 |&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n");

	}	//end if

	templateBuilder.Append("	</p>\r\n");
	templateBuilder.Append("</div>\r\n");



	}	//end if

	templateBuilder.Append("			  </div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");


	if (footerad!="")
	{

	templateBuilder.Append("<!--底部广告显示-->\r\n");
	templateBuilder.Append("<div id=\"ad_footerbanner\">");
	templateBuilder.Append(footerad.ToString());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<!--底部广告结束-->\r\n");

	}	//end if

	templateBuilder.Append("<div id=\"footer\">\r\n");
	templateBuilder.Append("	<div class=\"wrap\">\r\n");
	templateBuilder.Append("		<div id=\"footlinks\">\r\n");
	templateBuilder.Append("			<p><a href=\"");
	templateBuilder.Append(config.Weburl.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(config.Webtitle.ToString().Trim());
	templateBuilder.Append("</a>&nbsp; ");
	templateBuilder.Append(config.Linktext.ToString().Trim());
	templateBuilder.Append("\r\n");

	if (config.Sitemapstatus==1)
	{

	templateBuilder.Append("&nbsp;<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("tools/sitemap.aspx\" target=\"_blank\" title=\"百度论坛收录协议\">Sitemap</a>\r\n");

	}	//end if

	templateBuilder.Append("				");
	templateBuilder.Append(config.Statcode.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(config.Icp.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</p>\r\n");
	templateBuilder.Append("			<p>\r\n");
	templateBuilder.Append("			<a href=\"http://www.comsenz.com/\" target=\"_blank\">Comsenz Technology Ltd</a>\r\n");
	templateBuilder.Append("			- <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("archiver/index.aspx\" target=\"_blank\">简洁版本</a>\r\n");
	templateBuilder.Append("			- <span class=\"scrolltop\" onclick=\"window.scrollTo(0,0);\">TOP</span>\r\n");

	if (config.Stylejump==1)
	{


	if (userid!=-1 || config.Guestcachepagetimeout<=0)
	{

	templateBuilder.Append("			- <span id=\"styleswitcher\" class=\"dropmenu\" onmouseover=\"showMenu(this.id)\" onclick=\"window.location.href='");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("showtemplate.aspx'\">界面风格</span>\r\n");
	templateBuilder.Append("				<div id=\"styleswitcher_menu\" class=\"popupmenu_popup\" style=\"display: none;\">\r\n");
	templateBuilder.Append("					<ul>\r\n");
	templateBuilder.Append("						");
	templateBuilder.Append(templatelistboxoptions.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("					</ul>\r\n");
	templateBuilder.Append("				</div>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			</p>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<a title=\"Powered by Discuz!NT\" target=\"_blank\" href=\"http://nt.discuz.net\"><img border=\"0\" alt=\"Discuz!NT\" src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/discuznt_logo.gif\"/></a>\r\n");
	templateBuilder.Append("		<p id=\"copyright\">\r\n");
	templateBuilder.Append("			Powered by <strong><a href=\"http://nt.discuz.net\" target=\"_blank\" title=\"Discuz!NT 2.6 (.NET Framework 2.0/3.x)\">Discuz!NT</a></strong> <em>2.6.0</em>\r\n");

	if (config.Licensed==1)
	{

	templateBuilder.Append("				(<a href=\"\" onclick=\"this.href='http://nt.discuz.net/certificate/?host='+location.href.substring(0, location.href.lastIndexOf('/'))\" target=\"_blank\">Licensed</a>)\r\n");

	}	//end if

	templateBuilder.Append("				");
	templateBuilder.Append(config.Forumcopyright.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</p>\r\n");
	templateBuilder.Append("		<p id=\"debuginfo\">\r\n");

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
	templateBuilder.Append("<ul class=\"popupmenu_popup\" id=\"viewpro_menu\" style=\"display: none\">\r\n");

	if (useravatar!="")
	{

	templateBuilder.Append("		<img src=\"");
	templateBuilder.Append(useravatar.ToString());
	templateBuilder.Append("\"/>\r\n");

	}	//end if

	 aspxrewriteurl = this.UserInfoAspxRewrite(userid);
	
	templateBuilder.Append("	<li class=\"popuser\"><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">我的资料</a></li>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("	 <li class=\"poplink\">\r\n");
	templateBuilder.Append("	<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/\">我的空间</a>\r\n");
	templateBuilder.Append("	</li>\r\n");

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

	templateBuilder.Append("<div id=\"quicksearch_menu\" class=\"searchmenu\" style=\"display: none;\">\r\n");
	templateBuilder.Append("	<div onclick=\"document.getElementById('keywordtype').value='0';document.getElementById('quicksearch').innerHTML='帖子标题';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">帖子标题</div>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("	<div onclick=\"document.getElementById('keywordtype').value='2';document.getElementById('quicksearch').innerHTML='空间日志';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">空间日志</div>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("	<div onclick=\"document.getElementById('keywordtype').value='3';document.getElementById('quicksearch').innerHTML='相册标题';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">相册标题</div>\r\n");

	}	//end if

	templateBuilder.Append("	<div onclick=\"document.getElementById('keywordtype').value='8';document.getElementById('quicksearch').innerHTML='作&nbsp;&nbsp;者';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">作&nbsp;&nbsp;者</div>\r\n");
	templateBuilder.Append("</div>\r\n");



	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</body>\r\n");
	templateBuilder.Append("</html>\r\n");



	Response.Write(templateBuilder.ToString());
}
</script>
