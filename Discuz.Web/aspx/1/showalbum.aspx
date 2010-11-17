<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Album.Pages.showalbum" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009/1/15 15:59:17.
		本页面代码由Discuz!NT模板引擎生成于 2009/1/15 15:59:17. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	templateBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	templateBuilder.Append("<head>\r\n");
	templateBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	templateBuilder.Append(meta.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("<title>");
	templateBuilder.Append(pagetitle.ToString());
	templateBuilder.Append(" ");
	templateBuilder.Append(config.Seotitle.ToString().Trim());
	templateBuilder.Append(" - ");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append(" - Powered by Discuz!NT</title>\r\n");
	templateBuilder.Append("<link rel=\"icon\" href=\"favicon.ico\" type=\"image/x-icon\" />\r\n");
	templateBuilder.Append("<link rel=\"shortcut icon\" href=\"favicon.ico\" type=\"image/x-icon\" /> \r\n");
	templateBuilder.Append("<!-- 调用样式表 -->\r\n");
	templateBuilder.Append("<link rel=\"stylesheet\" href=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/main.css\" type=\"text/css\" media=\"all\"  />\r\n");
	templateBuilder.Append(link.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_report.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_utils.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/common.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/menu.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\"> \r\n");
	templateBuilder.Append("	var aspxrewrite = ");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append(script.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("</head>\r\n");
	templateBuilder.Append("<body>\r\n");
	templateBuilder.Append("<div id=\"container\">\r\n");
	templateBuilder.Append("<!--header start-->\r\n");
	templateBuilder.Append("<div id=\"header\">\r\n");
	templateBuilder.Append("	<h2><a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" title=\"Discuz!NT|BBS|论坛 - Powered by Discuz!NT\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/logo.gif\" alt=\"Discuz!NT|BBS|论坛\"/></a>\r\n");
	templateBuilder.Append("	</h2>\r\n");

	if (headerad!="")
	{

	templateBuilder.Append("		<div id=\"ad_headerbanner\">");
	templateBuilder.Append(headerad.ToString());
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div id=\"menu\">\r\n");
	templateBuilder.Append("	<span class=\"avataonline\">\r\n");

	if (userid==-1)
	{

	templateBuilder.Append("		<form id=\"loginform\" name=\"login\" method=\"post\" action=\"login.aspx?loginsubmit=true\">\r\n");
	templateBuilder.Append("			<input type=\"hidden\" name=\"referer\" value=\"website.aspx\" />\r\n");
	templateBuilder.Append("			<input onclick=\"if(this.value=='用户名')this.value = ''\" value=\"用户名\" tabindex=\"1\" maxlength=\"40\" size=\"15\" name=\"postusername\" id=\"username\" type=\"text\" />\r\n");
	templateBuilder.Append("			<input type=\"password\" size=\"10\" name=\"password\" id=\"password\" tabindex=\"2\" />\r\n");
	templateBuilder.Append("			<button value=\"true\" type=\"submit\" name=\"userlogin\"> 登录 </button>\r\n");
	templateBuilder.Append("		</form>\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(userid);
	
	templateBuilder.Append("		   <cite>欢迎:<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("</a></cite>\r\n");
	templateBuilder.Append("		   <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("&reurl=website.aspx\">退出</a>\r\n");

	}	//end if

	templateBuilder.Append("	</span>\r\n");
	templateBuilder.Append("	<ul>\r\n");
	templateBuilder.Append("	");
	templateBuilder.Append(mainnavigation.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("	</ul>\r\n");
	templateBuilder.Append("</div>\r\n");



	if (page_err==0)
	{



	if (config.Enablealbum==1)
	{

	templateBuilder.Append("	<div id=\"info\">\r\n");
	templateBuilder.Append("		<a href=\"showphotolist.aspx?type=2\">最新图片</a>\r\n");
	templateBuilder.Append("		<a href=\"showphotolist.aspx?type=1\">最多评论</a>\r\n");
	templateBuilder.Append("		<a href=\"showphotolist.aspx?type=3\" class=\"notabs\">最多收藏</a>\r\n");
	templateBuilder.Append("	</div> \r\n");

	}	//end if



	templateBuilder.Append("	<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("		<div id=\"userinfo\">\r\n");
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(config.Albumurl.ToString().Trim());
	templateBuilder.Append("\" id=\"NavHome\" onmouseover=\"showMenu(this.id);\" onmouseout=\"showMenu(this.id);\">");
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append("首页</a>  &raquo;  <a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showalbumlist.aspx?cate=");
	templateBuilder.Append(albumcategory.Albumcateid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(albumcategory.Title.ToString().Trim());
	templateBuilder.Append("</a>  &raquo;  ");
	templateBuilder.Append(album.Title.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		 <div id=\"headsearch\">\r\n");
	templateBuilder.Append("			<div id=\"search\">\r\n");

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


	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("	    </div>\r\n");
	templateBuilder.Append("	</div> \r\n");
	templateBuilder.Append("	");
	templateBuilder.Append(navhomemenu.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("	<div id=\"ntforumbody\">\r\n");

	if (!needpassword)
	{

	templateBuilder.Append("			<div class=\"modulebox\">\r\n");
	templateBuilder.Append("					<div class=\"forumtitle spacetitle\">\r\n");
	templateBuilder.Append("						<h2>						\r\n");
	templateBuilder.Append("							");
	templateBuilder.Append(album.Title.ToString().Trim());
	templateBuilder.Append("	<strong>\r\n");
	templateBuilder.Append("							<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("								document.write(window.location);\r\n");
	templateBuilder.Append("							</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("							</strong>(<a href=\"###\" onclick=\"setcopy(window.location.href.replace('###','') + '&page=");
	templateBuilder.Append(currentpage.ToString());
	templateBuilder.Append("', '已经复制到剪贴板');\" class=\"copylink\">复制到剪帖板</a>)\r\n");
	templateBuilder.Append("						</h2>\r\n");
	templateBuilder.Append("						<em>\r\n");

	if (config.Silverlight==1)
	{

	templateBuilder.Append("							<a id=\"silverlightalbum\" target=\"_blank\" title=\"Silverlight相册展示\" href=\"silverlight/album/index.html?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/button_seeit.gif\" alt=\"展开\" /></a>\r\n");

	}	//end if

	templateBuilder.Append("						 </em>\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("					<div class=\"controlPhoto\">\r\n");
	templateBuilder.Append("						<p>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=");
	templateBuilder.Append(album.Userid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/dotspace.gif\" />");
	templateBuilder.Append(album.Username.ToString().Trim());
	templateBuilder.Append("的空间</a>\r\n");

	}	//end if

	 aspxrewriteurl = this.UserInfoAspxRewrite(album.Userid);
	
	templateBuilder.Append("							<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/user_info.gif\"  alt=\"用户信息:\"/>");
	templateBuilder.Append(album.Username.ToString().Trim());
	templateBuilder.Append("的用户资料</a>\r\n");
	templateBuilder.Append("							<a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(album.Userid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/user_album.gif\"  alt=\"用户相册\"/>");
	templateBuilder.Append(album.Username.ToString().Trim());
	templateBuilder.Append("的全部相册</a>\r\n");
	templateBuilder.Append("						</p>\r\n");
	templateBuilder.Append("						<p>\r\n");

	if (album.Userid==userid)
	{

	templateBuilder.Append("							 <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("usercpspacemanagephoto.aspx?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/album_edit.gif\" />管理</a>\r\n");

	}	//end if

	templateBuilder.Append("						<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("favorites.aspx?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/album_fav.gif\" alt=\"收藏\" title=\"收藏\" />收藏</a>\r\n");
	templateBuilder.Append("						</p>\r\n");
	templateBuilder.Append("					</div>\r\n");

	if (photolist.Count>0)
	{

	templateBuilder.Append("						<div class=\"Photo\">\r\n");
	templateBuilder.Append("							<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	int photoindex = 1;
	

	int photo__loop__id=0;
	foreach(PhotoInfo photo in photolist)
	{
		photo__loop__id++;


	if (photoindex==1)
	{

	templateBuilder.Append("									<tr>\r\n");

	}	//end if

	templateBuilder.Append("									<td>\r\n");
	templateBuilder.Append("									<div>\r\n");
	templateBuilder.Append("										<a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(photo.Filename.ToString().Trim());
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\" title=\"");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\" /></a>\r\n");
	templateBuilder.Append("									</div>\r\n");
	templateBuilder.Append("									<p>\r\n");
	templateBuilder.Append("										<script language=\"javascript\" type=\"text/javascript\">\r\n");
	templateBuilder.Append("											ShowFormatBytesStr(");
	templateBuilder.Append(photo.Filesize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("										</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("									</p>\r\n");
	templateBuilder.Append("									<h5><a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("</a></h5>\r\n");
	templateBuilder.Append("									</td>													\r\n");

	if (photoindex==4)
	{

	templateBuilder.Append("									</tr>\r\n");
	 photoindex = 1;
	

	}
	else
	{

	 photoindex = photoindex+1;
	

	}	//end if


	}	//end loop

	templateBuilder.Append("							</table>\r\n");
	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("						<div class=\"ntforumpage\" style=\"margin-left:45px;\">\r\n");
	templateBuilder.Append("						");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("						</div>\r\n");

	}
	else
	{


	templateBuilder.Append("<div class=\"box message\">\r\n");
	templateBuilder.Append("	<h1>相册 提示信息</h1>\r\n");
	templateBuilder.Append("	<p>");
	templateBuilder.Append(msgbox_text.ToString());
	templateBuilder.Append("</p>\r\n");

	if (msgbox_url!="")
	{

	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(msgbox_url.ToString());
	templateBuilder.Append("\">如果浏览器没有转向, 请点击这里.</a>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");



	}	//end if

	templateBuilder.Append("			</div>\r\n");

	}
	else
	{

	templateBuilder.Append("			<div class=\"modulebox\">\r\n");
	templateBuilder.Append("				<div class=\"forumtitle\">\r\n");
	templateBuilder.Append("					<h2>此相册已被设置密码</h2>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<div class=\"forumpassword\">\r\n");
	templateBuilder.Append("					<form id=\"enteralbum\" name=\"enteralbum\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("							<label for=\"password\">请输入密码:</label><input name=\"albumpassword\" type=\"password\" id=\"albumpassword\" size=\"20\" class=\"colorblue\" onfocus=\"this.className='colorfocus';\" onblur=\"this.className='colorblue';\" />\r\n");
	templateBuilder.Append("							<p><input type=\"submit\"  value=\"确定\" class=\"lightbutton\"/></p>\r\n");
	templateBuilder.Append("					</form>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");

	}
	else
	{


	templateBuilder.Append("<div class=\"box message\">\r\n");
	templateBuilder.Append("	<h1>出现了");
	templateBuilder.Append(page_err.ToString());
	templateBuilder.Append("个错误</h1>\r\n");
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
	templateBuilder.Append("\\\">返回上一步</a> &nbsp; &nbsp;|&nbsp; &nbsp  \");\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<a href=\"forumindex.aspx\">论坛首页</a>\r\n");

	if (usergroupid==7)
	{

	templateBuilder.Append("		 &nbsp; &nbsp|&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n");

	}	//end if

	templateBuilder.Append("	</p>\r\n");
	templateBuilder.Append("</div>\r\n");



	}	//end if



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
