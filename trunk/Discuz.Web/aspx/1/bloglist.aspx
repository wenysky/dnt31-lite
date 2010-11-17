<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Space.Pages.bloglist" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:01.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:01. 
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
	templateBuilder.Append(config.Spacename.ToString().Trim());
	templateBuilder.Append(" - Powered by Discuz!NT</title>\r\n");
	templateBuilder.Append("<link rel=\"icon\" href=\"favicon.ico\" type=\"image/x-icon\" />\r\n");
	templateBuilder.Append("<link rel=\"shortcut icon\" href=\"favicon.ico\" type=\"image/x-icon\" /> \r\n");
	templateBuilder.Append("<!-- 调用样式表 -->\r\n");
	templateBuilder.Append("<link rel=\"stylesheet\" href=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/space/space.css\" type=\"text/css\" media=\"all\"  />\r\n");
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
	templateBuilder.Append("	<div id=\"submenu\">\r\n");
	templateBuilder.Append("		<div class=\"wrap s_clear\">\r\n");

	if (usergroupinfo.Allowsearch>0)
	{





	}	//end if

	templateBuilder.Append("		<span class=\"avataonline right\">\r\n");

	if (userid==-1)
	{

	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("login.aspx\" onClick=\"floatwin('open_login', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("login.aspx', 600, 410);return false;\">[登录]</a>\r\n");
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("register.aspx\" onClick=\"floatwin('open_register', '");
	templateBuilder.Append(rooturl.ToString());
	templateBuilder.Append("register.aspx', 600, 410);return false;\">[注册]</a\r\n");
	templateBuilder.Append("			>\r\n");

	}
	else
	{

	templateBuilder.Append("			欢迎<a class=\"drop\" id=\"viewpro\" onMouseOver=\"showMenu(this.id)\">");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("			<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("\">退出</a>\r\n");
	templateBuilder.Append("			<span class=\"pipe\">|</span>\r\n");

	}	//end if

	templateBuilder.Append("		</span>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("		<a href=\"");
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

	templateBuilder.Append("		<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpnotice.aspx?filter=all\" class=\"notice\">通知</a>\r\n");

	if (oluserinfo.Newnotices>0)
	{

	templateBuilder.Append("<cite>");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append("</cite>\r\n");

	}	//end if

	templateBuilder.Append("		<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercp.aspx\" class=\"usercp\">用户中心</a>\r\n");
	templateBuilder.Append("		<span class=\"pipe\">|</span>\r\n");

	if (useradminid==1)
	{

	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("admin/index.aspx\" target=\"_blank\" class=\"systemmanage\">系统设置</a>\r\n");
	templateBuilder.Append("		<span class=\"pipe\">|</span>\r\n");

	}	//end if

	templateBuilder.Append("		<a href=\"javascript:void(0);\" class=\"drop\" id=\"mymenu\" onMouseOver=\"showMenu(this.id, false);\" >我的</a>\r\n");
	templateBuilder.Append("		<ul class=\"popupmenu_popup headermenu_popup\" id=\"mymenu_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("mytopics.aspx\">我的主题</a></li>\r\n");
	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("myposts.aspx\">我的帖子</a></li>\r\n");
	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("search.aspx?posterid=current&type=digest\">我的精华</a></li>\r\n");
	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("myattachment.aspx\">我的附件</a></li>\r\n");
	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpsubscribe.aspx\">我的收藏</a></li>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("space/\">我的空间</a></li>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("\">我的相册</a></li>\r\n");

	}	//end if


	if (config.Enablemall==1)
	{

	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("usercpmygoods.aspx\">我的商品</a></li>\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");

	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"header\">\r\n");
	templateBuilder.Append("		<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("			<h2><a href=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("index.aspx\" title=\"Discuz!NT|BBS|论坛\"><img src=\"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/logo.gif\" alt=\"Discuz!NT|BBS|论坛\"/></a></h2>\r\n");

	if (headerad!="")
	{

	templateBuilder.Append("			<div id=\"ad_headerbanner\">");
	templateBuilder.Append(headerad.ToString());
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("			<ul id=\"menu\">\r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(mainnavigation.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");


	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("        <a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a> &raquo; <strong>个人空间</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (page_err==0)
	{

	templateBuilder.Append("<div class=\"wrap\">\r\n");
	templateBuilder.Append("<div class=\"left space_main s_clear\">\r\n");
	templateBuilder.Append("	<div class=\"modulebox\">\r\n");

	int __postinfo__loop__id=0;
	foreach(DataRow __postinfo in postslist.Rows)
	{
		__postinfo__loop__id++;

	templateBuilder.Append("		<div class=\"ntblog\">\r\n");
	templateBuilder.Append("			<h3><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=" + __postinfo["postid"].ToString().Trim() + "\">" + __postinfo["title"].ToString().Trim() + "</a></h3>\r\n");
	templateBuilder.Append("			<h4>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(__postinfo["uid"].ToString().Trim(),0);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">" + __postinfo["author"].ToString().Trim() + "</a>   " + __postinfo["postdatetime"].ToString().Trim() + " 【评论:" + __postinfo["commentcount"].ToString().Trim() + "】【阅读:" + __postinfo["views"].ToString().Trim() + "】 </h4>\r\n");
	templateBuilder.Append("			<P>\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(__postinfo["content"].ToString().Trim(),350,"..."));
	templateBuilder.Append("</p>\r\n");
	templateBuilder.Append("			<h4><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=" + __postinfo["postid"].ToString().Trim() + "\">阅读全文</a> >></h4>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end loop

	templateBuilder.Append("		<div class=\"ntforumpage\">");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div class=\"right space_side s_clear\">\r\n");

	templateBuilder.Append("<div class=\"sidebox\" style=\"padding:1px;\">\r\n");
	templateBuilder.Append("<script type='text/javascript'>\r\n");
	templateBuilder.Append("var imgwidth = 228;\r\n");
	templateBuilder.Append("var imgheight = 127;\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>			\r\n");
	templateBuilder.Append("<!--图片轮换代码开始-->\r\n");
	templateBuilder.Append("<script type='text/javascript' src='javascript/template_rotatepic.js'></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type='text/javascript'>\r\n");
	templateBuilder.Append("    var data = { };\r\n");
	templateBuilder.Append("    ");
	templateBuilder.Append(rotatepicdata.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("    var ri = new MzRotateImage();\r\n");
	templateBuilder.Append("    ri.dataSource = data;\r\n");
	templateBuilder.Append("    ri.width = 228;\r\n");
	templateBuilder.Append("    ri.height = 127;\r\n");
	templateBuilder.Append("    ri.interval = 3000;\r\n");
	templateBuilder.Append("    ri.duration = 2000;\r\n");
	templateBuilder.Append("    document.write(ri.render());\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<!--图片轮换代码结束-->	   	\r\n");
	templateBuilder.Append("</div>\r\n");


	templateBuilder.Append("	<div class=\"sidebox\">\r\n");
	templateBuilder.Append("		<h2>推荐日志</h2>\r\n");
	templateBuilder.Append("		<ul class=\"newslist\">\r\n");

	int __spacepostrecommend__loop__id=0;
	foreach(SpaceShortPostInfo __spacepostrecommend in spacepostlist)
	{
		__spacepostrecommend__loop__id++;

	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=");
	templateBuilder.Append(__spacepostrecommend.Postid.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(__spacepostrecommend.Title,30,"..."));
	templateBuilder.Append("</a> </li>	\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"sidebox\">\r\n");
	templateBuilder.Append("		<h4>最新空间评论</h4>\r\n");
	templateBuilder.Append("		<ul class=\"newslist\">\r\n");

	int comment__loop__id=0;
	foreach(DataRow comment in topspacecomments.Rows)
	{
		comment__loop__id++;

	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=" + comment["postid"].ToString().Trim() + "\">" + comment["content"].ToString().Trim() + "</a> [" + comment["author"].ToString().Trim() + "]</li>	\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>            \r\n");

	if (config.Enablealbum==1)
	{

	templateBuilder.Append("	<div class=\"sidebox\">\r\n");
	templateBuilder.Append("		<h4>推荐相册</h4>\r\n");
	templateBuilder.Append("		<ul class=\"newslist\">\r\n");

	int album__loop__id=0;
	foreach(AlbumInfo album in recommendalbumlist)
	{
		album__loop__id++;

	templateBuilder.Append("				<li><a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(album.Albumid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(album.Title.ToString().Trim());
	templateBuilder.Append("</a> (");
	templateBuilder.Append(album.Imgcount.ToString().Trim());
	templateBuilder.Append(") [<a href=\"showalbumlist.aspx?uid=");
	templateBuilder.Append(album.Userid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(album.Username.ToString().Trim());
	templateBuilder.Append("</a>]</li>	\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if

	templateBuilder.Append("	<div class=\"sidebox\">\r\n");
	templateBuilder.Append("		<h4>最近更新的空间</h4>\r\n");
	templateBuilder.Append("		<ul class=\"newslist\">\r\n");

	int __space__loop__id=0;
	foreach(DataRow __space in recentupdatespacelist.Rows)
	{
		__space__loop__id++;

	templateBuilder.Append("			<li><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=" + __space["userid"].ToString().Trim() + "\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(__space["spacetitle"].ToString().Trim(),28,"..."));
	templateBuilder.Append("</a></li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"sidebox\">\r\n");
	templateBuilder.Append("		<h2>新帖</h2>\r\n");
	templateBuilder.Append("		<ul class=\"newslist\">\r\n");

	int __newtopicinfo__loop__id=0;
	foreach(DataRow __newtopicinfo in newtopiclist.Rows)
	{
		__newtopicinfo__loop__id++;

	templateBuilder.Append("			<li>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(__newtopicinfo["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(__newtopicinfo["title"].ToString().Trim(),30,"..."));
	templateBuilder.Append("</a></li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		<h2>热帖</h2>\r\n");
	templateBuilder.Append("		<ul class=\"newslist\">\r\n");

	int __hottopicinfo__loop__id=0;
	foreach(DataRow __hottopicinfo in hottopiclist.Rows)
	{
		__hottopicinfo__loop__id++;

	templateBuilder.Append("		<li>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(__hottopicinfo["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(__hottopicinfo["title"].ToString().Trim(),30,"..."));
	templateBuilder.Append("</a></li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}
	else
	{





	}	//end if








	Response.Write(templateBuilder.ToString());
}
</script>
