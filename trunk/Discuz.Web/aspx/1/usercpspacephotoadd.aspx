<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Album.Pages.usercpphotoadd" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009/1/15 15:59:34.
		本页面代码由Discuz!NT模板引擎生成于 2009/1/15 15:59:34. 
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
	templateBuilder.Append("</a>  &raquo; <a href=\"usercp.aspx\">用户中心</a>  &raquo; <a href=\"usercpspacemanagealbum.aspx\">管理相册</a>&raquo; <a href=\"usercpspacemanagephoto.aspx?albumid=");
	templateBuilder.Append(albumid.ToString());
	templateBuilder.Append("\">管理图片</a>&raquo; <strong>增加图片</strong>\r\n");
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
	templateBuilder.Append("<img id=\"img_hidden\" alt=\"1\" style=\"position:absolute;top:-100000px;filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image');width:400;height:300\"></img>\r\n");
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

	templateBuilder.Append("						<form action=\"\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
	templateBuilder.Append("						<div id=\"freePhotoSize\" style=\"padding:10px 0;\"></div>\r\n");
	templateBuilder.Append("						<table id=\"tab1\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\">\r\n");
	templateBuilder.Append("						    <tr>\r\n");
	templateBuilder.Append("							    <td style=\"text-align:left; width:600px;\">\r\n");
	templateBuilder.Append("								    <label for=\"phototitle1\" style=\"text-align:left;\">标题:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototitle1\" type=\"text\" id=\"phototitle1\" style=\"width:400px\" size=\"20\" maxlength=\"50\" /><br />\r\n");
	templateBuilder.Append("								    <label for=\"description1\">描述:</label>\r\n");
	templateBuilder.Append("								    <textarea name=\"description1\" rows=\"4\" style=\"width:400px\"></textarea>\r\n");

	if (config.Enabletag==1)
	{

	templateBuilder.Append("									<label for=\"phototag1\" style=\"text-align:left;\">标签:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototag1\" type=\"text\" id=\"phototag1\" style=\"width:400px\" size=\"20\" maxlength=\"55\" /><br />\r\n");

	}	//end if

	templateBuilder.Append("								    <label for=\"phototitle1\">&nbsp;</label><input type=\"file\" id=\"photo1\" onchange=\"PhotoView(1)\" size=\"50\" name=\"photo1\">\r\n");
	templateBuilder.Append("							    </td>\r\n");
	templateBuilder.Append("							    <td id=\"td1\" style=\"text-align:left;\"><img src=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/manage/images/invalid.gif\" width=\"100\" height=\"75\" id=\"view1\"></td>\r\n");
	templateBuilder.Append("						    </tr>\r\n");
	templateBuilder.Append("						</table>\r\n");
	templateBuilder.Append("						<table id=\"tab2\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"display:none\">\r\n");
	templateBuilder.Append("						    <tr>\r\n");
	templateBuilder.Append("							   <td style=\"text-align:left; width:600px;\">\r\n");
	templateBuilder.Append("								    <label for=\"phototitle2\" style=\"text-align:left;\">标题:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototitle2\" type=\"text\" id=\"phototitle2\" style=\"width:400px\" size=\"20\" class=\"colorblue\"\r\n");
	templateBuilder.Append("								    onfocus=\"this.className='colorfocus';\" onblur=\"this.className='colorblue';\" maxlength=\"50\" /><br />\r\n");
	templateBuilder.Append("								    <label for=\"description2\">描述:</label>\r\n");
	templateBuilder.Append("								    <textarea name=\"description2\" rows=\"4\" style=\"width:400px\" ></textarea>\r\n");

	if (config.Enabletag==1)
	{

	templateBuilder.Append("									<label for=\"phototag2\" style=\"text-align:left;\">标签:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototag2\" type=\"text\" id=\"phototag2\" style=\"width:400px\" size=\"20\" class=\"colorblue\"\r\n");
	templateBuilder.Append("								    onfocus=\"this.className='colorfocus';\" onblur=\"this.className='colorblue';\" maxlength=\"55\" /><br />\r\n");

	}	//end if

	templateBuilder.Append("								    <label for=\"phototitle2\">&nbsp;</label><input type=\"file\" id=\"photo2\" onchange=\"PhotoView(2)\" size=\"50\" name=\"photo2\" >\r\n");
	templateBuilder.Append("							    </td>\r\n");
	templateBuilder.Append("							    <td id=\"td2\" style=\"text-align:left;\"><img src=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/manage/images/invalid.gif\" width=\"100\" height=\"75\" id=\"view2\"></td>\r\n");
	templateBuilder.Append("						    </tr>\r\n");
	templateBuilder.Append("						</table>\r\n");
	templateBuilder.Append("						<table id=\"tab3\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"display:none\">\r\n");
	templateBuilder.Append("						    <tr>\r\n");
	templateBuilder.Append("							    <td style=\"text-align:left; width:600px;\">\r\n");
	templateBuilder.Append("								    <label for=\"phototitle3\" style=\"text-align:left;\">标题:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototitle3\" type=\"text\" id=\"phototitle3\" style=\"width:400px\" size=\"20\" class=\"colorblue\"\r\n");
	templateBuilder.Append("								    onfocus=\"this.className='colorfocus';\" onblur=\"this.className='colorblue';\" maxlength=\"50\" /><br />\r\n");
	templateBuilder.Append("								    <label for=\"description3\">描述:</label>\r\n");
	templateBuilder.Append("								    <textarea name=\"description3\" rows=\"4\" style=\"width:400px\" ></textarea>\r\n");

	if (config.Enabletag==1)
	{

	templateBuilder.Append("									<label for=\"phototag3\" style=\"text-align:left;\">标签:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototag3\" type=\"text\" id=\"phototag3\" style=\"width:400px\" size=\"20\" class=\"colorblue\"\r\n");
	templateBuilder.Append("								    onfocus=\"this.className='colorfocus';\" onblur=\"this.className='colorblue';\" maxlength=\"55\" /><br />\r\n");

	}	//end if

	templateBuilder.Append("								    <label for=\"phototitle3\">&nbsp;</label><input type=\"file\" id=\"photo3\" onchange=\"PhotoView(3)\" size=\"50\" name=\"photo3\" >\r\n");
	templateBuilder.Append("							    </td>\r\n");
	templateBuilder.Append("							    <td id=\"td3\" style=\"text-align:left;\"><img src=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/manage/images/invalid.gif\" width=\"100\" height=\"75\" id=\"view3\"></td>\r\n");
	templateBuilder.Append("						    </tr>\r\n");
	templateBuilder.Append("						</table>\r\n");
	templateBuilder.Append("						<table id=\"tab4\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"display:none\">\r\n");
	templateBuilder.Append("						    <tr>\r\n");
	templateBuilder.Append("							  <td style=\"text-align:left; width:600px;\">\r\n");
	templateBuilder.Append("								    <label for=\"phototitle4\" style=\"text-align:left;\">标题:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototitle4\" type=\"text\" id=\"phototitle4\" style=\"width:400px\" size=\"20\" maxlength=\"50\" /><br />\r\n");
	templateBuilder.Append("								    <label for=\"description4\">描述:</label>\r\n");
	templateBuilder.Append("								    <textarea name=\"description4\" rows=\"4\" style=\"width:400px\" ></textarea>\r\n");

	if (config.Enabletag==1)
	{

	templateBuilder.Append("									<label for=\"phototag4\" style=\"text-align:left;\">标签:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototag4\" type=\"text\" id=\"phototag4\" style=\"width:400px\" size=\"20\" class=\"colorblue\"\r\n");
	templateBuilder.Append("								    onfocus=\"this.className='colorfocus';\" onblur=\"this.className='colorblue';\" maxlength=\"55\" /><br />\r\n");

	}	//end if

	templateBuilder.Append("								    <label for=\"phototitle4\">&nbsp;</label><input type=\"file\" id=\"photo4\" onchange=\"PhotoView(4)\" size=\"50\" name=\"photo4\" >\r\n");
	templateBuilder.Append("							    </td>\r\n");
	templateBuilder.Append("							    <td id=\"td4\" style=\"text-align:left;\"><img src=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/manage/images/invalid.gif\" width=\"100\" height=\"75\" id=\"view4\"></td>\r\n");
	templateBuilder.Append("						    </tr>\r\n");
	templateBuilder.Append("						</table>\r\n");
	templateBuilder.Append("						<table id=\"tab5\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"display:none\">\r\n");
	templateBuilder.Append("						    <tr>\r\n");
	templateBuilder.Append("							   <td style=\"text-align:left; width:600px;\">\r\n");
	templateBuilder.Append("								    <label for=\"phototitle5\" style=\"text-align:left;\">标题:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototitle5\" type=\"text\" id=\"phototitle5\" style=\"width:400px\" size=\"20\"  maxlength=\"50\" /><br />\r\n");
	templateBuilder.Append("								    <label for=\"description5\">描述:</label>\r\n");
	templateBuilder.Append("								    <textarea name=\"description5\" rows=\"4\" style=\"width:400px\"></textarea>\r\n");

	if (config.Enabletag==1)
	{

	templateBuilder.Append("									<label for=\"phototag5\" style=\"text-align:left;\">标签:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototag5\" type=\"text\" id=\"phototag5\" style=\"width:400px\" size=\"20\" maxlength=\"55\" /><br />\r\n");

	}	//end if

	templateBuilder.Append("								    <label for=\"phototitle5\">&nbsp;</label><input type=\"file\" id=\"photo5\" onchange=\"PhotoView(5)\" size=\"50\" name=\"photo5\">\r\n");
	templateBuilder.Append("							    </td>\r\n");
	templateBuilder.Append("							    <td id=\"td5\" style=\"text-align:left;\"><img src=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/manage/images/invalid.gif\" width=\"100\" height=\"75\" id=\"view5\"></td>\r\n");
	templateBuilder.Append("						    </tr>\r\n");
	templateBuilder.Append("						</table>\r\n");
	templateBuilder.Append("						<table id=\"tab6\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"display:none\">\r\n");
	templateBuilder.Append("						    <tr>\r\n");
	templateBuilder.Append("							   <td style=\"text-align:left; width:600px;\">\r\n");
	templateBuilder.Append("								    <label for=\"phototitle6\" style=\"text-align:left;\">标题:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototitle6\" type=\"text\" id=\"phototitle6\" style=\"width:400px\" size=\"20\" class=\"colorblue\"\r\n");
	templateBuilder.Append("								    onfocus=\"this.className='colorfocus';\" onblur=\"this.className='colorblue';\" maxlength=\"50\" /><br />\r\n");
	templateBuilder.Append("								    <label for=\"description6\">描述:</label>\r\n");
	templateBuilder.Append("								    <textarea name=\"description6\" rows=\"4\" style=\"width:400px\" ></textarea>\r\n");

	if (config.Enabletag==1)
	{

	templateBuilder.Append("									<label for=\"phototag6\" style=\"text-align:left;\">标签:</label>\r\n");
	templateBuilder.Append("								    <input name=\"phototag6\" type=\"text\" id=\"phototag6\" style=\"width:400px\" size=\"20\"  maxlength=\"55\" /><br />\r\n");

	}	//end if

	templateBuilder.Append("								    <label for=\"phototitle6\">&nbsp;</label><input type=\"file\" id=\"photo6\" onchange=\"PhotoView(6)\" size=\"50\" name=\"photo6\" >\r\n");
	templateBuilder.Append("							    </td>\r\n");
	templateBuilder.Append("							    <td id=\"td6\" style=\"text-align:left;\"><img src=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/manage/images/invalid.gif\" width=\"100\" height=\"75\" id=\"view6\"></td>\r\n");
	templateBuilder.Append("						    </tr>\r\n");
	templateBuilder.Append("					</table>\r\n");
	templateBuilder.Append("					<div style=\"padding-top:10px; padding-left:40px;\">\r\n");
	templateBuilder.Append("						<input type=\"submit\" name=\"Submit\" value=\"上传\"/>\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("						</form>\r\n");

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
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var currentFreePhotoSize = ");
	templateBuilder.Append(freephotosize.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("	SetMessage(currentFreePhotoSize);\r\n");
	templateBuilder.Append("	function PhotoView(layer)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var file = $(\"photo\" + layer).value;\r\n");
	templateBuilder.Append("		if (file != \"\")\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			var patn = /\\.jpg$|\\.jpeg$|\\.gif$|\\.png$/i;\r\n");
	templateBuilder.Append("			if (!patn.test(file))\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				clearFileInput($(\"photo\" + layer));\r\n");
	templateBuilder.Append("				alert(\"相册只允许jpg、jpeg、gif或png格式的图片!\");\r\n");
	templateBuilder.Append("				return;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			if(document.all) //IE执行\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("                insertImage(layer);\r\n");
	templateBuilder.Append("            }			\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			$(\"view\" + layer).src = \"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/manage/images/invalid.gif\";\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		setTimeout(\"CalSize()\", 500);\r\n");
	templateBuilder.Append("		if(layer != 6)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("		    $(\"tab\" + (layer + 1)).style.display = 'block'; //显示隐藏的上传框\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		document.documentElement.scrollTop = document.documentElement.scrollHeight; //始终将滚动条定位到底部\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function insertImage(id) \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("    var localimgpreview = '';\r\n");
	templateBuilder.Append("    var path = $('photo' + id).value;\r\n");
	templateBuilder.Append("    var ext = path.lastIndexOf('.') == -1 ? '' : path.substr(path.lastIndexOf('.') + 1, path.length).toLowerCase();\r\n");
	templateBuilder.Append("    var re = new RegExp(\"(^|\\\\s|,)\" + ext + \"($|\\\\s|,)\", \"ig\");\r\n");
	templateBuilder.Append("    var localfile = $('photo' + id).value.substr($('photo' + id).value.replace(/\\\\/g, '/').lastIndexOf('/') + 1);\r\n");
	templateBuilder.Append("    if(path == '') \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        return;\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    var err = false;\r\n");
	templateBuilder.Append("    $('img_hidden').alt = id;\r\n");
	templateBuilder.Append("    try \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        $('img_hidden').filters.item(\"DXImageTransform.Microsoft.AlphaImageLoader\").sizingMethod = 'image';\r\n");
	templateBuilder.Append("    } \r\n");
	templateBuilder.Append("    catch (e) \r\n");
	templateBuilder.Append("    {err = true;}\r\n");
	templateBuilder.Append("    try \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        $('img_hidden').filters.item(\"DXImageTransform.Microsoft.AlphaImageLoader\").src = $('photo' + id).value;\r\n");
	templateBuilder.Append("    } \r\n");
	templateBuilder.Append("    catch (e) \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("		alert('无效的图片文件。');\r\n");
	templateBuilder.Append("		delAttach(id);\r\n");
	templateBuilder.Append("		err = true;		\r\n");
	templateBuilder.Append("        return;\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    var wh = {'w' : $('img_hidden').offsetWidth, 'h' : $('img_hidden').offsetHeight};\r\n");
	templateBuilder.Append("    if (wh['w']>100) \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        wh['h']*= 100/wh['w'];\r\n");
	templateBuilder.Append("        wh['w']=100;\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    if (wh['h']>100) \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        wh['w']*= 100/wh['h'];\r\n");
	templateBuilder.Append("        wh['h']=100;\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    $('img_hidden').style.width = wh['w'];\r\n");
	templateBuilder.Append("    $('img_hidden').style.height = wh['h'];\r\n");
	templateBuilder.Append("    try \r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        $('img_hidden').filters.item(\"DXImageTransform.Microsoft.AlphaImageLoader\").sizingMethod = 'scale';\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    catch (e)\r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    if (err == true)\r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        $('img_hidden').src = $('photo' + id).value;\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    div = document.createElement('div');\r\n");
	templateBuilder.Append("    $('td' + id).removeChild($('td' + id).children(0));\r\n");
	templateBuilder.Append("    $('td' + id).appendChild(div);\r\n");
	templateBuilder.Append("    div.innerHTML = '<img style=\"filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=\\'scale\\',src=\\'' + $('photo' + id).value+'\\');width:'+wh['w']+';height:'+wh['h']+'\" src=\\'images/common/none.gif\\' border=\"0\" id=\"view' + id + '\" aid=\"view'+ id +'\" alt=\"\" />';\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("	function clearFileInput(file){\r\n");
	templateBuilder.Append("		var form = document.createElement('form');\r\n");
	templateBuilder.Append("		document.body.appendChild(form);\r\n");
	templateBuilder.Append("		var pos = file.nextSibling;\r\n");
	templateBuilder.Append("		form.appendChild(file);\r\n");
	templateBuilder.Append("		form.reset();\r\n");
	templateBuilder.Append("		pos.parentNode.insertBefore(file, pos);\r\n");
	templateBuilder.Append("		document.body.removeChild(form);\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function ShowFormatBytesStr(bytes)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		if(bytes > 1073741824)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			return((Math.round((bytes/1073741824)*100)/100).toString()+' GB');\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else if(bytes > 1048576)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			return((Math.round((bytes/1048576)*100)/100).toString()+' MB');\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else if(bytes > 1024)\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			return((Math.round((bytes/1024)*100)/100).toString()+' KB');\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			return(bytes.toString()+' 字节');\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function CalSize()\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		var sumsize = 0;\r\n");
	templateBuilder.Append("			for(i = 1 ; i < 7 ; i++)\r\n");
	templateBuilder.Append("			{\r\n");
	templateBuilder.Append("				if($(\"photo\" + i).value != \"\")\r\n");
	templateBuilder.Append("				{\r\n");
	templateBuilder.Append("					var photoSize = $(\"view\" + i).fileSize;\r\n");
	templateBuilder.Append("					sumsize += parseInt(photoSize);\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			SetMessage(currentFreePhotoSize - sumsize);\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	function SetMessage(bytesize)\r\n");
	templateBuilder.Append("	{\r\n");
	templateBuilder.Append("		if (is_ie && $(\"freePhotoSize\"))\r\n");
	templateBuilder.Append("		{\r\n");
	templateBuilder.Append("			if(bytesize >= 0)\r\n");
	templateBuilder.Append("				$(\"freePhotoSize\").innerHTML = \"您还有<font color='#009900'>\" + ShowFormatBytesStr(parseInt(bytesize)) + \"</font>的上传空间\";\r\n");
	templateBuilder.Append("			else\r\n");
	templateBuilder.Append("				$(\"freePhotoSize\").innerHTML = \"<font color='#ff0000'>警告：您已经超过最大上传空间\" + -bytesize + \"字节</font>\";\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<!--主体-->\r\n");
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
