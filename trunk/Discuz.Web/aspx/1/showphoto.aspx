<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Album.Pages.showphoto" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009/1/15 15:59:31.
		本页面代码由Discuz!NT模板引擎生成于 2009/1/15 15:59:31. 
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

	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/post.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("		var templatepath = '");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/template_showphoto.js\"></");
	templateBuilder.Append("script>\r\n");


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
	templateBuilder.Append("首页</a>  &raquo;  <a href=\"showalbumlist.aspx?cate=");
	templateBuilder.Append(albumcategory.Albumcateid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(albumcategory.Title.ToString().Trim());
	templateBuilder.Append("</a>  &raquo;  <a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(album.Title.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	   <div id=\"headsearch\">\r\n");
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
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	");
	templateBuilder.Append(navhomemenu.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("	<div id=\"ntforumbody\" style=\"overflow:visible;\">\r\n");

	if (!needpassword)
	{

	templateBuilder.Append("			<div class=\"modulebox\">\r\n");
	templateBuilder.Append("					<div class=\"forumtitle\">\r\n");
	templateBuilder.Append("						<h2>");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("</h2>\r\n");
	templateBuilder.Append("						<em>\r\n");

	if (config.Silverlight==1)
	{

	templateBuilder.Append("						<a id=\"silverlightalbum\" target=\"_blank\" title=\"Silverlight相册展示\" href=\"silverlight/album/index.html?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\">Silverlight酷炫体验</a>&nbsp;\r\n");

	}	//end if

	templateBuilder.Append("						<a title=\"幻灯片播放\" href=\"javascript:void(0);\" onclick=\"pptPhoto();\">幻灯展示</a>&nbsp;<a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\">+ 更多</a></em>\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("					<div class=\"scrollphoto\">\r\n");
	templateBuilder.Append("					<ul>\r\n");
	templateBuilder.Append("					<li id=\"scrollleft\" style='cursor: pointer;margin-top:8px;\"' onclick=\"scrollHiddenDiv($('photonav'), -90);\"><img src='templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/scrollarrowleft.jpg' alt='向左移动' />\r\n");
	templateBuilder.Append("					</li>\r\n");
	templateBuilder.Append("					<li style='width: 810px;'><div style='position:relative;'><div class='photonavbar' id=\"photonav\" style='overflow: hidden;width:810px;'>加载导航图，请稍候...</div></div>\r\n");
	templateBuilder.Append("					</li>\r\n");
	templateBuilder.Append("					<li id=\"scrollright\" style='cursor: pointer;margin-top:8px;\"' onclick=\"scrollHiddenDiv($('photonav'), 90);\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/scrollarrowright.jpg\" alt=\"向右移动\" />\r\n");
	templateBuilder.Append("					</li>\r\n");
	templateBuilder.Append("					</ul>\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("					<script type=\"text/javascript\">shownavbar(");
	templateBuilder.Append(photo.Albumid.ToString().Trim());
	templateBuilder.Append(", ");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append(");</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("					<div class=\"photoshowBox\">\r\n");
	templateBuilder.Append("					<div class=\"boxbody\">\r\n");
	templateBuilder.Append("						<div class=\"Photo\" style=\"margin: 10px 20px;\">\r\n");
	templateBuilder.Append("							<strong>\r\n");
	templateBuilder.Append("									<cite>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=");
	templateBuilder.Append(photo.Userid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(photo.Username.ToString().Trim());
	templateBuilder.Append("的空间</a>\r\n");

	}	//end if

	templateBuilder.Append("									</cite>\r\n");
	templateBuilder.Append("									<cite>\r\n");
	templateBuilder.Append("										<a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(photo.Userid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(photo.Username.ToString().Trim());
	templateBuilder.Append("的相册</a>\r\n");
	templateBuilder.Append("									</cite>\r\n");
	templateBuilder.Append("									<cite>大小:\r\n");
	templateBuilder.Append("											<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("												ShowFormatBytesStr(");
	templateBuilder.Append(photo.Filesize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("											</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("									</cite>		\r\n");
	templateBuilder.Append("									<cite>上传时间: ");
	templateBuilder.Append(photo.Postdate.ToString().Trim());
	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("									<cite>浏览量: ");
	templateBuilder.Append(photo.Views.ToString().Trim());
	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("									<cite>评论数: ");
	templateBuilder.Append(comments.Count.ToString().Trim());
	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("							</strong>\r\n");
	templateBuilder.Append("							<div class=\"PhotoPIc\" style=\"width: 685px\"><a id=\"nextImgOnPhoto\" href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("&go=next\" alt=\"点击图片查看下一张\" title=\"点击图片查看下一张\">\r\n");
	templateBuilder.Append("							<img border=\"0\" name=\"bannerPhotoADrotator\" style=\"FILTER: revealTrans(duration=2,transition=20); max-height: 550px;max-width:685px;\" onload=\"resizePhoto(this);\" alt=\"");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\" id=\"bannerPhotoADrotator\" title=\"");
	templateBuilder.Append(photo.Title.ToString().Trim());
	templateBuilder.Append("\" src=\"");
	templateBuilder.Append(photo.Filename.ToString().Trim());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("							</a></div>\r\n");
	templateBuilder.Append("							<br/>\r\n");
	templateBuilder.Append("							<div align=\"center\" valign=\"top\">\r\n");
	templateBuilder.Append("							<p>\r\n");
	templateBuilder.Append("							<div id=\"stopPhotobutton\" style=\"display: none;\">\r\n");
	templateBuilder.Append("							<input type=\"button\" name=\"stop\" value=\"停止播放\" onClick=\"stopPhoto();\" />\r\n");
	templateBuilder.Append("							</div>\r\n");
	templateBuilder.Append("							</p>\r\n");
	templateBuilder.Append("							</div>\r\n");
	templateBuilder.Append("							<div class=\"PageBox\">\r\n");
	templateBuilder.Append("								<div class=\"PageBoxLeft\"><a id=\"prevImg\" href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("&go=prev\">上一张</a><cite>第 <span id=\"photoIndex\"><em>1</em>/1</span> 张</cite> <a id=\"nextImg\" href=\"showphoto.aspx?photoid=");
	templateBuilder.Append(photo.Photoid.ToString().Trim());
	templateBuilder.Append("&go=next\">下一张</a></div>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("									<div class=\"Pageboxright\">\r\n");
	templateBuilder.Append("											<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("												enableinfo = '<img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/buttonreport.gif\" alt=\"举报此图片\" />';\r\n");
	templateBuilder.Append("												show_report_button(\"<img src=templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/album/reportfinish.gif alt=已经举报此图片 />\");\r\n");
	templateBuilder.Append("												enableinfo = '<span class=\"commenreport\">举报<span>';\r\n");
	templateBuilder.Append("											</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("									</div>\r\n");

	}	//end if

	templateBuilder.Append("							</div>\r\n");
	templateBuilder.Append("							<strong>");
	templateBuilder.Append(photo.Description.ToString().Trim());
	templateBuilder.Append("</strong>\r\n");

	if (editable || comments.Count>0)
	{

	templateBuilder.Append("							<p class=\"commentstitle\"><a name=\"comments\"></a>\r\n");

	if (editable)
	{

	templateBuilder.Append("									<form id=\"commentform\" name=\"commentform\" method=\"post\" action=\"\"><input name=\"delcommentid\" type=\"hidden\" /></form>\r\n");
	templateBuilder.Append("									<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("									function del_comment(cid)\r\n");
	templateBuilder.Append("									{\r\n");
	templateBuilder.Append("										if (confirm('确定要删除吗?'))\r\n");
	templateBuilder.Append("										{\r\n");
	templateBuilder.Append("											var form = $(\"commentform\");\r\n");
	templateBuilder.Append("											form.delcommentid.value = cid;\r\n");
	templateBuilder.Append("											form.submit();\r\n");
	templateBuilder.Append("										}\r\n");
	templateBuilder.Append("										return false;\r\n");
	templateBuilder.Append("									}\r\n");
	templateBuilder.Append("									</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	if (photo.Comments>0)
	{

	templateBuilder.Append("								评论 (");
	templateBuilder.Append(photo.Comments.ToString().Trim());
	templateBuilder.Append(")\r\n");

	}	//end if

	templateBuilder.Append("								</p>\r\n");

	}	//end if

	templateBuilder.Append("						</div>\r\n");
	int rowindex = 1;
	

	int comment__loop__id=0;
	foreach(PhotoCommentInfo comment in comments)
	{
		comment__loop__id++;

	templateBuilder.Append("							<div class=\"\r\n");

	if (rowindex%2==0)
	{

	templateBuilder.Append("reviewbox2\r\n");

	}
	else
	{

	templateBuilder.Append("reviewbox\r\n");

	}	//end if

	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("								<div class=\"reviewboxleft\">");
	templateBuilder.Append(rowindex.ToString());
	templateBuilder.Append(".</div>\r\n");
	templateBuilder.Append("								<p>");
	templateBuilder.Append(comment.Content.ToString().Trim());
	templateBuilder.Append("</p>\r\n");
	templateBuilder.Append("								<div class=\"reviewwriterbox\">\r\n");
	templateBuilder.Append("									<div class=\"ReviewManager\">\r\n");

	if (comment.Userid!=-1)
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(comment.Userid);
	
	templateBuilder.Append("									<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(comment.Username.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else
	{
	templateBuilder.Append(comment.Username.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("      ");
	templateBuilder.Append(comment.Postdatetime.ToString().Trim());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("									<em>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("											<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("												show_report_button('<span class=reportfinish>已举报</span>');\r\n");
	templateBuilder.Append("											</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	if (editable)
	{

	templateBuilder.Append("										<a id=\"e");
	templateBuilder.Append(comment.Commentid.ToString().Trim());
	templateBuilder.Append("\" title=\"删除此评论\" onclick=\"del_comment(");
	templateBuilder.Append(comment.Commentid.ToString().Trim());
	templateBuilder.Append(");\" href=\"###\" class=\"commenddelete\">删除</a></em>\r\n");

	}	//end if

	templateBuilder.Append("									</em>\r\n");
	templateBuilder.Append("								</div>\r\n");
	templateBuilder.Append("							</div>\r\n");
	 rowindex = rowindex+1;
	

	}	//end loop


	if (commentable)
	{

	templateBuilder.Append("							<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("							function validate(form)\r\n");
	templateBuilder.Append("							{\r\n");
	templateBuilder.Append("								if (form.message.value == \"\")\r\n");
	templateBuilder.Append("								{\r\n");
	templateBuilder.Append("									alert(\"请输入评论内容\");\r\n");
	templateBuilder.Append("									return false;\r\n");
	templateBuilder.Append("								}\r\n");
	templateBuilder.Append("								if(form.message.value.length > 2000) {\r\n");
	templateBuilder.Append("									alert(\"评论最多2000字\");\r\n");
	templateBuilder.Append("									return false;\r\n");
	templateBuilder.Append("								}\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("							</");
	templateBuilder.Append("script>							\r\n");
	templateBuilder.Append("							<form method=\"post\" id=\"postform\" onsubmit=\"return validate(this);\">\r\n");
	templateBuilder.Append("								<h3><a name=\"reply\"></a>发表评论</h3>\r\n");
	templateBuilder.Append("								<p>\r\n");
	templateBuilder.Append("									<textarea id=\"message\" tabindex=\"1\" name=\"message\" style=\"width: 400px;\" onKeyDown=\"ctlent(event,false);\" rows=\"8\" class=\"colorblue\"></textarea><br />\r\n");
	templateBuilder.Append("								</p>\r\n");
	templateBuilder.Append("								<p>						\r\n");
	templateBuilder.Append("									<input tabindex=\"2\" id=\"postsubmit\" name=\"post_comment\" class=\"lightbutton\" value=\"提交\" type=\"submit\">[完成后可按 Ctrl+Enter 发布]\r\n");
	templateBuilder.Append("									<input tabindex=\"3\" id=\"sendnotice\" name=\"sendnotice\" type=\"checkbox\" \r\n");

	if (album.Userid==userid)
	{

	templateBuilder.Append("disabled\r\n");

	}	//end if

	templateBuilder.Append(">发送评论通知\r\n");
	templateBuilder.Append("								</p>								\r\n");
	templateBuilder.Append("							</form>\r\n");

	}
	else
	{

	templateBuilder.Append("						<div style=\"margin: 15px 0 15px 20px\">\r\n");
	templateBuilder.Append("						<p>\r\n");
	templateBuilder.Append("						&nbsp;&nbsp;此图片禁止评论 或 登录用户才可评论\r\n");
	templateBuilder.Append("						</p>\r\n");
	templateBuilder.Append("						</div>\r\n");

	}	//end if

	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("					<div class=\"boxright\">\r\n");
	templateBuilder.Append("						<h3>一周热图总排行</h3>\r\n");
	templateBuilder.Append("						<ul>\r\n");

	int weekhotphoto__loop__id=0;
	foreach(PhotoInfo weekhotphoto in weekhotphotolist)
	{
		weekhotphoto__loop__id++;


	if (weekhotphoto.Title!="")
	{

	templateBuilder.Append("								<li><a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showphoto.aspx?photoid=");
	templateBuilder.Append(weekhotphoto.Photoid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(weekhotphoto.Title.ToString().Trim());
	templateBuilder.Append("</a> (<a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(weekhotphoto.Userid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(weekhotphoto.Username.ToString().Trim());
	templateBuilder.Append("</a>)</li>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("						</ul>\r\n");
	templateBuilder.Append("						<h3 style=\"background:transparent ; padding-left: 0;\">标签</h3>\r\n");
	templateBuilder.Append("						<ul id=\"tagcontainer\">正在加载...</ul>\r\n");
	templateBuilder.Append("						<script type=\"text/javascript\">showTags(");
	templateBuilder.Append(photoid.ToString());
	templateBuilder.Append(");</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("					</div>\r\n");
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

	}	//end if


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
