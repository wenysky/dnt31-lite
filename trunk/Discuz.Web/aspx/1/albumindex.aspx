<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Album.Pages.albumindex" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:48.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:48. 
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



	templateBuilder.Append("<div id=\"foruminfo\">\r\n");

	if (announcementcount>0)
	{

	templateBuilder.Append("	<div id=\"userinfo\">\r\n");
	templateBuilder.Append("	<marquee width=\"70%\" direction=\"left\" scrollamount=\"2\" scrolldelay=\"1\" onmouseover=\"this.stop();\" onmouseout=\"this.start();\">\r\n");

	int announcement__loop__id=0;
	foreach(DataRow announcement in announcementlist.Rows)
	{
		announcement__loop__id++;

	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("announcement.aspx#" + announcement["id"].ToString().Trim() + "\">" + announcement["title"].ToString().Trim() + "</a><cite>\r\n");
	templateBuilder.Append(Convert.ToDateTime(announcement["starttime"].ToString().Trim()).ToString("MM.dd"));
	templateBuilder.Append("</cite>\r\n");

	}	//end loop

	templateBuilder.Append("	</marquee>\r\n");
	templateBuilder.Append("	</div>		\r\n");

	}	//end if

	templateBuilder.Append("	<div id=\"headsearch\">\r\n");
	templateBuilder.Append("		<div id=\"search\">\r\n");



	templateBuilder.Append("		</div> \r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div id=\"ntforumbody\">\r\n");
	templateBuilder.Append("<div id=\"albumleft\">\r\n");
	templateBuilder.Append("	<div class=\"albumbox commendalbum\" style=\"margin-top:0;\">\r\n");
	templateBuilder.Append("	<div class=\"forumtitle \">					\r\n");
	templateBuilder.Append("		<h2>推荐图片</h2>\r\n");
	templateBuilder.Append("		<em><a href=\"showalbumlist.aspx\">更多...</a></em>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"Photo\">\r\n");
	templateBuilder.Append("		<ul>\r\n");

	int photo__loop__id=0;
	foreach(PhotoInfo photo in recommendphotolist)
	{
		photo__loop__id++;

	templateBuilder.Append("			<li>\r\n");
	templateBuilder.Append("				<div Class=\"albumimg\">\r\n");
	templateBuilder.Append("					<a href=\"showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(photo.Filename.ToString().Trim());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/errorphoto.gif';\" alt=\"");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\" title=\"");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\" /></a>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<h3><a href=\"showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	if (photo.Title=="")
	{

	templateBuilder.Append("暂无标题\r\n");

	}
	else
	{
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("</a>&nbsp;</h3>\r\n");
	templateBuilder.Append("			</li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div style=\"text-align:center;\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/albumLine.gif\" /></div>\r\n");
	templateBuilder.Append("	<div class=\"focustitle\">					\r\n");
	templateBuilder.Append("		<h2 style=\"background:url(templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/focusbg.gif) no-repeat left center;\">焦点</h2>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"Photo\">\r\n");
	templateBuilder.Append("		<ul>\r\n");

	int focusphoto__loop__id=0;
	foreach(PhotoInfo focusphoto in focusphotolist)
	{
		focusphoto__loop__id++;

	templateBuilder.Append("			<li>\r\n");
	templateBuilder.Append("				<div Class=\"albumimg\">\r\n");
	templateBuilder.Append("					<a href=\"showphoto.aspx?photoid=");
	templateBuilder.Append(focusphoto.Photoid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(focusphoto.Filename.ToString().Trim());
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(focusphoto.Title.ToString().Trim());
	templateBuilder.Append("\" title=\"");
	templateBuilder.Append(focusphoto.Title.ToString().Trim());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/errorphoto.gif';\" /></a>	\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("				<h3><a href=\"showphoto.aspx?photoid=");
	templateBuilder.Append(focusphoto.Photoid.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	if (focusphoto.Title=="")
	{

	templateBuilder.Append("暂无标题\r\n");

	}
	else
	{
	templateBuilder.Append(focusphoto.Title.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("</a></h3>\r\n");
	templateBuilder.Append("			</li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div class=\"commendphoto\">\r\n");
	templateBuilder.Append("	<div class=\"forumtitle \">					\r\n");
	templateBuilder.Append("			<h2>推荐相册</h2>\r\n");
	templateBuilder.Append("			<em><a href=\"showalbumlist.aspx\">更多...</a></em>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"Photo\" style=\"background:#FCFCF8;\">\r\n");
	templateBuilder.Append("		<ul>\r\n");

	int album__loop__id=0;
	foreach(AlbumInfo album in recommendalbumlist)
	{
		album__loop__id++;

	templateBuilder.Append("			<li>\r\n");

	if (album.Logo!="")
	{

	templateBuilder.Append("				<div class=\"PhotoPicture\">\r\n");
	templateBuilder.Append("					<a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(album.Logo.ToString().Trim());
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(album.Title.ToString().Trim());
	templateBuilder.Append("\" style=\"max-height: 80px; max-width: 105px\" /></a>\r\n");
	templateBuilder.Append("				</div>\r\n");

	}
	else
	{

	templateBuilder.Append("				<div class=\"nopicture\">\r\n");
	templateBuilder.Append("					<a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/nophoto.jpg\" alt=\"");
	templateBuilder.Append(album.Title.ToString().Trim());
	templateBuilder.Append("\" /></a>\r\n");
	templateBuilder.Append("				</div>\r\n");

	}	//end if

	templateBuilder.Append("				<h3><a href=\"showalbumlist.aspx?uid=");
	templateBuilder.Append(album.Userid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(album.Username.ToString().Trim());
	templateBuilder.Append("</a>的相册</h3>\r\n");
	templateBuilder.Append("				<p><a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(album.Title.ToString().Trim());
	templateBuilder.Append("</a> (");
	templateBuilder.Append(album.Imgcount.ToString().Trim());
	templateBuilder.Append(")</p>\r\n");
	templateBuilder.Append("			</li>	\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div style=\"text-align:center;\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/albumLine2.gif\" /></div>\r\n");
	templateBuilder.Append("	<div class=\"focustitle\">		\r\n");
	templateBuilder.Append("			<h2  style=\"background:url(templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/photobg.gif) no-repeat left center;\">焦点</h2>\r\n");
	templateBuilder.Append("			<em><a href=\"showalbumlist.aspx\">更多...</a></em>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"Photo\">\r\n");
	templateBuilder.Append("		<ul>\r\n");

	int focusalbum__loop__id=0;
	foreach(AlbumInfo focusalbum in focusalbumlist)
	{
		focusalbum__loop__id++;

	templateBuilder.Append("			<li>\r\n");

	if (focusalbum.Logo!="")
	{

	templateBuilder.Append("				<div class=\"PhotoPicture\">\r\n");
	templateBuilder.Append("					<a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(focusalbum.Albumid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"");
	templateBuilder.Append(focusalbum.Logo.ToString().Trim());
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(focusalbum.Title.ToString().Trim());
	templateBuilder.Append("\" style=\"max-height: 80px; max-width: 105px\"/></a>\r\n");
	templateBuilder.Append("				</div>\r\n");

	}
	else
	{

	templateBuilder.Append("				<div class=\"nopicture\">\r\n");
	templateBuilder.Append("					<a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(focusalbum.Albumid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/nophoto.jpg\" alt=\"");
	templateBuilder.Append(focusalbum.Title.ToString().Trim());
	templateBuilder.Append("\" /></a>\r\n");
	templateBuilder.Append("				</div>\r\n");

	}	//end if

	templateBuilder.Append("				<h3><a href=\"showalbumlist.aspx?uid=");
	templateBuilder.Append(focusalbum.Userid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(focusalbum.Username.ToString().Trim());
	templateBuilder.Append("</a>的相册</h3>\r\n");
	templateBuilder.Append("				<p><a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(focusalbum.Albumid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(focusalbum.Title.ToString().Trim());
	templateBuilder.Append("</a> (");
	templateBuilder.Append(focusalbum.Imgcount.ToString().Trim());
	templateBuilder.Append(")</p>\r\n");
	templateBuilder.Append("			</li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div id=\"albumright\">\r\n");
	templateBuilder.Append("	<div class=\"rankbox\">\r\n");
	templateBuilder.Append("		<h2>一周热图总排行</h2>\r\n");
	templateBuilder.Append("		<ul>\r\n");

	int weekhotphoto__loop__id=0;
	foreach(PhotoInfo weekhotphoto in weekhotphotolist)
	{
		weekhotphoto__loop__id++;

	templateBuilder.Append("				<li><a href=\"showphoto.aspx?photoid=");
	templateBuilder.Append(weekhotphoto.Photoid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(weekhotphoto.Title.ToString().Trim());
	templateBuilder.Append("</a> (<a href=\"showalbumlist.aspx?uid=");
	templateBuilder.Append(weekhotphoto.Userid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(weekhotphoto.Username.ToString().Trim());
	templateBuilder.Append("</a>)</li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");

	if (rotatepicdata!=null && rotatepicdata!="")
	{

	templateBuilder.Append("	<div class=\"modulebox sidebox\" style=\"padding:1px;\">\r\n");
	templateBuilder.Append("		<script type='text/javascript'>\r\n");
	templateBuilder.Append("		var imgwidth = 227;\r\n");
	templateBuilder.Append("		var imgheight = 127;\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>			\r\n");
	templateBuilder.Append("		<!--图片轮换代码开始-->\r\n");
	templateBuilder.Append("		<script type='text/javascript' src='javascript/template_rotatepic.js'></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<script type='text/javascript'>\r\n");
	templateBuilder.Append("		var data = { };\r\n");
	templateBuilder.Append("		");
	templateBuilder.Append(rotatepicdata.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		var ri = new MzRotateImage();\r\n");
	templateBuilder.Append("		ri.dataSource = data;\r\n");
	templateBuilder.Append("		ri.width = 226;\r\n");
	templateBuilder.Append("		ri.height = 127;\r\n");
	templateBuilder.Append("		ri.interval = 3000;\r\n");
	templateBuilder.Append("		ri.duration = 2000;\r\n");
	templateBuilder.Append("		document.write(ri.render());\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<!--图片轮换代码结束-->	   	\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if

	templateBuilder.Append("	<div class=\"albumcategories\">\r\n");
	templateBuilder.Append("		<h2>\r\n");
	templateBuilder.Append("            相册分类</h2>\r\n");
	templateBuilder.Append("		<ul>\r\n");

	int ac__loop__id=0;
	foreach(AlbumCategoryInfo ac in albumcategorylist)
	{
		ac__loop__id++;

	templateBuilder.Append("				<li><a href=\"showalbumlist.aspx?cate=");
	templateBuilder.Append(ac.Albumcateid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(ac.Title.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");

	if (config.Enabletag==1)
	{

	templateBuilder.Append("		<script type=\"text/javascript\" src=\"cache/tag/closedtags.txt\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" src=\"cache/tag/colorfultags.txt\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" src=\"javascript/template_tags.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<div class=\"sidebox sideboxbg\">\r\n");
	templateBuilder.Append("		<h4>热门标签</h4>\r\n");
	templateBuilder.Append("		<ul id=\"photohottags\">\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\" src=\"cache/hottags_photo_cache_jsonp.txt\" onerror=\"this.onerror=null;getajaxphotohottags();\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if


	if (config.Enablespace==1)
	{

	templateBuilder.Append("	<div class=\"updatespace\">\r\n");
	templateBuilder.Append("		<h2>最近更新的空间</h2>\r\n");
	templateBuilder.Append("		<ul>\r\n");

	int spaceinfo__loop__id=0;
	foreach(DataRow spaceinfo in recentupdatespaceList.Rows)
	{
		spaceinfo__loop__id++;

	templateBuilder.Append("				<li><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=" + spaceinfo["userid"].ToString().Trim() + "\">" + spaceinfo["spacetitle"].ToString().Trim() + "</a></li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");

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








	Response.Write(templateBuilder.ToString());
}
</script>
