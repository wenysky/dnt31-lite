<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.website" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:26:04.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:26:04. 
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
	templateBuilder.Append(config.Webtitle.ToString().Trim());
	templateBuilder.Append(" - Powered by Discuz!NT</title>\r\n");
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
	templateBuilder.Append("/website.css\" type=\"text/css\" media=\"all\"  />\r\n");
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
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("login.aspx\" onClick=\"floatwin('open_login', this.href, 600, 410);return false;\">[登录]</a>\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("register.aspx\" onClick=\"floatwin('open_register', this.href, 600, 410);return false;\">[注册]</a\r\n");
	templateBuilder.Append("		>\r\n");

	}
	else
	{

	templateBuilder.Append("		欢迎<a class=\"drop\" id=\"viewpro\" onMouseOver=\"showMenu(this.id)\">");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("		<span class=\"pipe\">|</span>\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("\">退出</a>\r\n");
	templateBuilder.Append("		<span class=\"pipe\">|</span>\r\n");

	}	//end if

	templateBuilder.Append("	</span>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("	<a href=\"");
	templateBuilder.Append(forumurl.ToString());
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

	if (oluserinfo.Newnotices>0)
	{

	templateBuilder.Append("	<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("usercpnotice.aspx?filter=all\" class=\"notice\">通知</a><cite>");
	templateBuilder.Append(oluserinfo.Newnotices.ToString().Trim());
	templateBuilder.Append("</cite>\r\n");
	templateBuilder.Append("	<span class=\"pipe\">|</span>\r\n");

	}	//end if

	templateBuilder.Append("	<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("usercp.aspx\" class=\"usercp\">用户中心</a>\r\n");
	templateBuilder.Append("	<span class=\"pipe\">|</span>\r\n");

	if (useradminid==1)
	{

	templateBuilder.Append("	<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("admin/index.aspx\" target=\"_blank\" class=\"systemmanage\">系统设置</a>\r\n");
	templateBuilder.Append("	<span class=\"pipe\">|</span>\r\n");

	}	//end if

	templateBuilder.Append("	<a href=\"javascript:void(0);\" class=\"drop\" id=\"mymenu\" onMouseOver=\"showMenu(this.id, false);\" >我的</a>\r\n");
	templateBuilder.Append("	<ul class=\"popupmenu_popup headermenu_popup\" id=\"mymenu_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("mytopics.aspx\">我的主题</a></li>\r\n");
	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("myposts.aspx\">我的帖子</a></li>\r\n");
	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("search.aspx?posterid=current&type=digest\">我的精华</a></li>\r\n");
	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("myattachment.aspx\">我的附件</a></li>\r\n");
	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("usercpsubscribe.aspx\">我的收藏</a></li>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("space/\">我的空间</a></li>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("showalbumlist.aspx?uid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("\">我的相册</a></li>\r\n");

	}	//end if


	if (config.Enablemall==1)
	{

	templateBuilder.Append("		<li><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("usercpmygoods.aspx\">我的商品</a></li>\r\n");

	}	//end if

	templateBuilder.Append("    </ul>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div id=\"header\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");
	templateBuilder.Append("		<h2><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("index.aspx\" title=\"Discuz!NT|BBS|论坛\"><img src=\"");
	templateBuilder.Append(forumurl.ToString());
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
	templateBuilder.Append("<div id=\"nav\">\r\n");
	templateBuilder.Append("	<div class=\"wrap s_clear\">\r\n");

	if (announcementcount>0)
	{

	templateBuilder.Append("		<div onmouseout=\"annstop = 0\" onmouseover=\"annstop = 1\" id=\"announcement\" class=\"right\">\r\n");
	templateBuilder.Append("			<div id=\"announcementbody\">\r\n");
	templateBuilder.Append("				<ul>		\r\n");

	int announcement__loop__id=0;
	foreach(DataRow announcement in announcementlist.Rows)
	{
		announcement__loop__id++;

	templateBuilder.Append("					<li><a href=\"announcement.aspx#" + announcement["id"].ToString().Trim() + "\">" + announcement["title"].ToString().Trim() + "<em>" + announcement["starttime"].ToString().Trim() + "</em></a></li>\r\n");

	}	//end loop

	templateBuilder.Append("				</ul>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\" src=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("javascript/template_announcement.js\"></");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("forumindex.aspx\" class=\"title\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("    </div>\r\n");
	templateBuilder.Append("</div>\r\n");



	if (page_err==0)
	{


	/*
	聚合首面方法说明
	
	///////////////////////////////////////////////////////////////////////////////////////////////
	
	方法名称: GetForumTopicList(count, views, forumid, timetype, ordertype, isdigest, onlyimg)
	方法说明: 返回指定条件的主题列表信息
	参数说明:
	          count : 返回的主题数 
	          views : 浏览量 [返回等于或大于当前浏览量的主题]
	          forumid : 版块ID [默认值 0 为所有版块]
	          timetype : 指定时间段内的主题 [ TopicTimeType.Day(一天内)  , TopicTimeType.Week(一周内),   TopicTimeType.Month(一个月内),   TopicTimeType.SixMonth(六个月内),  TopicTimeType.Year(一年内),  TopicTimeType.All(默认 从1754-1-1至今的所有主题)
	          ordertype : 排序字段(降序) [TopicOrderType.ID(默认 主题ID) , TopicOrderType.Views(浏览量),   TopicOrderType.LastPost(最后回复),    TopicOrderType.PostDateTime(按最新主题查),    TopicOrderType.Digest(按精华主题查),    TopicOrderType.Replies(按回复数)]  
	          isdigest : 是否精化 [true(仅返回精华主题)   false(不加限制)]
	          onlyimg : 是否包含附件 [true(仅返回包括图片附件的主题)   false(不加限制)]
	      
	//////////////////////////////////////////////////////////////////////////////////////////////    
	
	方法名称: GetHotForumList(count)   
	方法说明: 返回指定数量的热门版块列表
	参数说明:
	          count : 返回的版块数
	    
	//////////////////////////////////////////////////////////////////////////////////////////////      
	
	方法名称: GetForumList(forumid)   
	方法说明: 返回指定版块下的所有子段块列表
	参数说明:
	          forumid : 指定的版块id
	      
	//////////////////////////////////////////////////////////////////////////////////////////////  
	
	方法名称: GetLastPostList(forumid, count)   
	方法说明: 返回指定版块下的最新回帖列表
	参数说明:
	          forumid : 指定的版块id     
	          count : 返回的回帖数
	 
	//////////////////////////////////////////////////////////////////////////////////////////////  
	
	方法名称: GetAlbumList(photoconfig.Focusalbumshowtype, count, days)   
	方法说明: 返回指定条件的相册列表
	参数说明:
	          photoconfig.Focusalbumshowtype : 排序字段(降序) [1(浏览量), 2(照片数), 3(创建时间)]    注:管理后台聚合设置项
	          count : 返回的相册数
	          days :有效天数 [指定天数内的相册]
	      
	//////////////////////////////////////////////////////////////////////////////////////////////  
	
	方法名称: GetWeekHotPhotoList(photoconfig.Weekhot)
	方法说明: 返回指定数量的热门图片
	参数说明:
	          photoconfig.Weekhot : 返回的热图数量  注:管理后台聚合设置项
	          
	//////////////////////////////////////////////////////////////////////////////////////////////  
	
	方法名称: GetSpaceTopComments(count)
	方法说明: 返回指定数量的空间最新评论
	参数说明:
	          count : 返回的评论数
	          
	//////////////////////////////////////////////////////////////////////////////////////////////  
	
	方法名称: GetRecentUpdateSpaceList(count)
	方法说明: 返回指定数量的最新更新空间列表
	参数说明:
	          count : 返回的空间信息数
	
	
	//////////////////////////////////////////////////////////////////////////////////////////////  
	
	方法名称: GetGoodsList(condition, orderby, categoryid, count)
	方法说明: 返回指定数量的最新更新空间列表
	参数说明:
	          condition : 条件 [recommend(仅返回推荐商品, 商城模式下可用) , quality_new(仅返回全新(状态)商品),    quality_old(仅返回二手(状态)商品)]  
	          orderby: 排序字段(降序) [viewcount(按浏览量排序),    hotgoods(按商品交易量排序),  newgoods(按发布商品先后顺序排序) ]
	          categoryid : 商品所属分类id [默认值 0 为不加限制]
	          count : 返回的商品数
	          
	 
	//////////////////////////////////////////////////////////////////////////////////////////////  
	
	方法名称: GetUserList(count, orderby)
	方法说明: 返回指定数量及排序方式的用户列表
	参数说明:
	          count : 返回的用户数       
	          orderby: 排序字段(降序) [credits(用户积分), posts(用户发帖数), lastactivity(最后活动时间), joindate(注册时间), oltime(在线时间)]
	*/
	
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_website.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div class=\"main wrap s_clear\" id=\"wrap\">\r\n");
	templateBuilder.Append("	<div class=\"box firstbox\">\r\n");
	templateBuilder.Append("		<div class=\"focusbox\">\r\n");

	if (rotatepicdata!=null && rotatepicdata!="")
	{

	templateBuilder.Append("			<div class=\"modulebox sidebox\" style=\"padding:1px;\">\r\n");
	templateBuilder.Append("				<script type='text/javascript'>\r\n");
	templateBuilder.Append("				var imgwidth = 237;\r\n");
	templateBuilder.Append("				var imgheight = 210;\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>			\r\n");
	templateBuilder.Append("				<!--图片轮换代码开始-->\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\" src=\"javascript/template_rotatepic.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				var data = { };\r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(rotatepicdata.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				var ri = new MzRotateImage();\r\n");
	templateBuilder.Append("				ri.dataSource = data;\r\n");
	templateBuilder.Append("				ri.width = 237;\r\n");
	templateBuilder.Append("				ri.height = 210;\r\n");
	templateBuilder.Append("				ri.interval = 3000;\r\n");
	templateBuilder.Append("				ri.duration = 2000;\r\n");
	templateBuilder.Append("				document.write(ri.render());\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				<!--图片轮换代码结束-->\r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"box newtopicbox\">\r\n");

	if (postlist.Length>0)
	{


	int toppost__loop__id=0;
	foreach(PostInfo toppost in postlist)
	{
		toppost__loop__id++;


	if (toppost__loop__id==2)
	{

	templateBuilder.Append("				<ul class=\"topiclist\">\r\n");

	}	//end if


	if (toppost__loop__id==1)
	{

	templateBuilder.Append("				<dl>\r\n");
	templateBuilder.Append("				<dt><h1><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(ShowTopicAspxRewrite(toppost.Tid,0).ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(toppost.Title.ToString().Trim());
	templateBuilder.Append("</a></h1></dt>\r\n");
	templateBuilder.Append("				<dd>");
	templateBuilder.Append(toppost.Message.ToString().Trim());
	templateBuilder.Append(" </dd>\r\n");
	templateBuilder.Append("				</dl>\r\n");

	}
	else
	{

	templateBuilder.Append("				<li><cite>");
	templateBuilder.Append(toppost.Poster.ToString().Trim());
	templateBuilder.Append("</cite><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(ShowTopicAspxRewrite(toppost.Tid,0).ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(toppost.Title.ToString().Trim());
	templateBuilder.Append("</a></li>\r\n");

	}	//end if


	if (toppost__loop__id==postlist.Length)
	{

	templateBuilder.Append("				</ul>\r\n");

	}	//end if


	}	//end loop


	}	//end if


	if (postlist.Length<2)
	{

	templateBuilder.Append("		<ul class=\"topiclist\">\r\n");

	if (postlist.Length==1)
	{

	 topiclist = forumagg.GetForumTopicList(6, 0, 0, TopicTimeType.Day, TopicOrderType.Replies, false, false);
	

	}
	else if (postlist.Length==0)
	{

	 topiclist = forumagg.GetForumTopicList(10, 0, 0, TopicTimeType.Day, TopicOrderType.Replies, false, false);
	

	}	//end if


	int toptopicinfo__loop__id=0;
	foreach(DataRow toptopicinfo in topiclist.Rows)
	{
		toptopicinfo__loop__id++;

	templateBuilder.Append("            <li>\r\n");
	templateBuilder.Append("                <cite>\r\n");
	 aspxrewriteurl = this.ShowForumAspxRewrite(Utils.StrToInt(toptopicinfo["fid"].ToString().Trim(), 0),0,toptopicinfo["rewritename"].ToString().Trim());
	
	templateBuilder.Append("                    <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">" + toptopicinfo["name"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("                </cite>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(toptopicinfo["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("                <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(toptopicinfo["title"].ToString().Trim(),43,"..."));
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("           </li>            \r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"box sidebox\">\r\n");
	templateBuilder.Append("		<div class=\"titlebar\"><ul><li class=\"current\" id=\"li_hotforum\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_hotforum'));\">热门版块</a></li><li id=\"li_bbsmessage\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_bbsmessage'));\">论坛信息</a></li>\r\n");

	if (config.Enabletag==1)
	{

	templateBuilder.Append("<li id=\"li_hottags\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_hottags'));\">标签</a></li>\r\n");

	}	//end if

	templateBuilder.Append("</ul></div>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("		<ul id=\"hotforum\">\r\n");

	int __foruminfo__loop__id=0;
	foreach(DataRow __foruminfo in forumagg.GetHotForumList(10).Rows)
	{
		__foruminfo__loop__id++;

	 aspxrewriteurl = ShowForumAspxRewrite(Utils.StrToInt(__foruminfo["fid"].ToString().Trim(), 0),0, __foruminfo["rewritename"].ToString().Trim());
	
	templateBuilder.Append("			<li><em>" + __foruminfo["posts"].ToString().Trim() + "帖</em><cite \r\n");

	if (__foruminfo__loop__id==1)
	{

	templateBuilder.Append("class=\"first\"\r\n");

	}	//end if


	if (__foruminfo__loop__id==2)
	{

	templateBuilder.Append("class=\"second\"\r\n");

	}	//end if


	if (__foruminfo__loop__id==3)
	{

	templateBuilder.Append("class=\"third\"\r\n");

	}	//end if

	templateBuilder.Append(" > " + __foruminfo__loop__id.ToString() + "</cite><a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">" + __foruminfo["name"].ToString().Trim() + "</a></li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		<ul id=\"bbsmessage\"  style=\"display:none;\">\r\n");
	templateBuilder.Append("			<li>会员总数: <i>");
	templateBuilder.Append(totalusers.ToString());
	templateBuilder.Append("</i>人</li>\r\n");
	templateBuilder.Append("			<li>最新注册会员:<i>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(lastuserid);
	
	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(lastusername.ToString());
	templateBuilder.Append("</a></i></li>\r\n");
	templateBuilder.Append("			<li>主题数:<i>");
	templateBuilder.Append(totaltopic.ToString());
	templateBuilder.Append("</i>主题</li>\r\n");
	templateBuilder.Append("			<li>帖子数:<i>");
	templateBuilder.Append(totalpost.ToString());
	templateBuilder.Append("</i> 个(含回帖) </li>\r\n");
	templateBuilder.Append("			<li>今  日:<i>");
	templateBuilder.Append(todayposts.ToString());
	templateBuilder.Append("</i>帖  昨 日: <i>");
	templateBuilder.Append(yesterdayposts.ToString());
	templateBuilder.Append("</i> 帖</li>\r\n");

	if (highestpostsdate!="")
	{

	templateBuilder.Append("			    <li>	\r\n");
	templateBuilder.Append("		            最高日:<i>");
	templateBuilder.Append(highestposts.ToString());
	templateBuilder.Append("</i>帖\r\n");
	templateBuilder.Append("		        </li>\r\n");
	templateBuilder.Append("		        <li>	\r\n");
	templateBuilder.Append("		            最高发帖日:<i>");
	templateBuilder.Append(highestpostsdate.ToString());
	templateBuilder.Append("</i>\r\n");
	templateBuilder.Append("		        </li>\r\n");

	}	//end if

	templateBuilder.Append("			<li>在线总数:<i>");
	templateBuilder.Append(totalonline.ToString());
	templateBuilder.Append("</i>人</li>\r\n");
	templateBuilder.Append("			<li>最高在线:<i>");
	templateBuilder.Append(highestonlineusercount.ToString());
	templateBuilder.Append("</i> 人 </li>\r\n");
	templateBuilder.Append("			<li>发生于:<i>");
	templateBuilder.Append(highestonlineusertime.ToString());
	templateBuilder.Append("</i></li>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		<div id=\"hottags\"  class=\"forumtag\" style=\"display:none;\">\r\n");

	if (taglist.Length>0)
	{


	int tag__loop__id=0;
	foreach(TagInfo tag in taglist)
	{
		tag__loop__id++;

	templateBuilder.Append("				<a \r\n");

	if (config.Aspxrewrite==1)
	{

	templateBuilder.Append("					href=\"topictag-");
	templateBuilder.Append(tag.Tagid.ToString().Trim());
	templateBuilder.Append(".aspx\" \r\n");

	}
	else
	{

	templateBuilder.Append("					href=\"tags.aspx?t=topic&tagid=");
	templateBuilder.Append(tag.Tagid.ToString().Trim());
	templateBuilder.Append("\" \r\n");

	}	//end if


	if (tag.Color!="")
	{

	templateBuilder.Append("					style=\"color: #");
	templateBuilder.Append(tag.Color.ToString().Trim());
	templateBuilder.Append(";\"\r\n");

	}	//end if

	templateBuilder.Append("					title=\"");
	templateBuilder.Append(tag.Fcount.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(tag.Tagname.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end loop


	}
	else
	{

	templateBuilder.Append("		    暂无数据!\r\n");

	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var reco_topic = ");
	templateBuilder.Append(forumagg.GetTopicJsonFromFile().ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("var templatepath = \"");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("var aspxrewrite = ");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");

	int forumid__loop__id=0;
	foreach(int forumid in Discuz.Aggregation.AggregationFacade.ForumAggregation.GetRecommendForumID())
	{
		forumid__loop__id++;

	ForumInfo foruminfo = Forums.GetForumInfo(forumid);
	

	if (foruminfo!=null)
	{

	templateBuilder.Append("<div class=\"main wrap s_clear\">\r\n");
	templateBuilder.Append("	<div class=\"box topicbox\">\r\n");
	templateBuilder.Append("		<span>\r\n");

	int sub_forum__loop__id=0;
	foreach(DataRow sub_forum in Forums.GetForumList(forumid).Rows)
	{
		sub_forum__loop__id++;


	if (sub_forum__loop__id<=5)
	{

	 aspxrewriteurl = this.ShowForumAspxRewrite(Utils.StrToInt(sub_forum["fid"].ToString().Trim(), 0),0,sub_forum["rewritename"].ToString().Trim());
	
	templateBuilder.Append("		    <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" tabindex=\"_blank\">" + sub_forum["name"].ToString().Trim() + "</a>\r\n");

	}	//end if


	}	//end loop

	 aspxrewriteurl = this.ShowForumAspxRewrite(forumid,0,foruminfo.Rewritename);
	
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" tabindex=\"_blank\">更多&gt;&gt;</a>\r\n");
	templateBuilder.Append("		</span>\r\n");
	templateBuilder.Append("		<h2><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" tabindex=\"_blank\">");
	templateBuilder.Append(foruminfo.Name.ToString().Trim());
	templateBuilder.Append("</a></h2>\r\n");
	templateBuilder.Append("		<script type=\"text/javascript\">document.write(showtopicinfo(");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append(", " + forumid__loop__id.ToString() + "-1));</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		<ul class=\"topiclist\">\r\n");
	 topiclist = forumagg.GetForumTopicList(8, 0, forumid, TopicTimeType.All, TopicOrderType.PostDateTime, false, false);
	

	int newtopicinfo__loop__id=0;
	foreach(DataRow newtopicinfo in topiclist.Rows)
	{
		newtopicinfo__loop__id++;

	templateBuilder.Append("		   <li>\r\n");
	templateBuilder.Append("                <cite>\r\n");
	 aspxrewriteurl = ShowForumAspxRewrite(Utils.StrToInt(newtopicinfo["fid"].ToString().Trim(), 0),0,newtopicinfo["rewritename"].ToString().Trim());
	
	templateBuilder.Append("                    <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">" + newtopicinfo["name"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("                </cite>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(newtopicinfo["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("                <a title=\"" + newtopicinfo["title"].ToString().Trim() + "\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(newtopicinfo["title"].ToString().Trim(),43,"..."));
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("           </li>   \r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"box sidebox\">\r\n");
	templateBuilder.Append("		<div class=\"titlebar\"><ul><li class=\"current\" id=\"li_forum_");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("_topic\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_forum_");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("_topic'),");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append(");\">最热主题</a></li><li id=\"li_forum_");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("_reply\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_forum_");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("_reply'), ");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append(");\">最新回复</a></li><li id=\"li_forum_");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("_digest\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_forum_");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("_digest'), ");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append(");\">精华</a></li></ul></div>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("		<ul id=\"forum_");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("_topic\" class=\"topicdot\">\r\n");
	 topiclist = forumagg.GetForumTopicList(8, 0, forumid, TopicTimeType.All, TopicOrderType.Replies, false, false);
	

	if (topiclist.Rows.Count>0)
	{


	int hottopicinfo__loop__id=0;
	foreach(DataRow hottopicinfo in topiclist.Rows)
	{
		hottopicinfo__loop__id++;

	 aspxrewriteurl = this.ShowTopicAspxRewrite(hottopicinfo["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("            <li><em>" + hottopicinfo["replies"].ToString().Trim() + "</em><a title=\"" + hottopicinfo["title"].ToString().Trim() + "\" href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(hottopicinfo["title"].ToString().Trim(),28,"..."));
	templateBuilder.Append("</a></li> \r\n");

	}	//end loop


	}
	else
	{

	templateBuilder.Append("		    暂无数据!\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		<ul id=\"forum_");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("_reply\" class=\"topicdot\" style=\"display:none;\">\r\n");
	 topiclist = forumagg.GetForumTopicList(8, 0, forumid, TopicTimeType.All, TopicOrderType.LastPost, false, false);
	

	if (topiclist.Rows.Count>0)
	{


	int replytopic__loop__id=0;
	foreach(DataRow replytopic in topiclist.Rows)
	{
		replytopic__loop__id++;

	templateBuilder.Append("            <li><a title=\"" + replytopic["title"].ToString().Trim() + "\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("showtopic.aspx?topicid=" + replytopic["tid"].ToString().Trim() + "&page=end#lastpost\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(replytopic["title"].ToString().Trim(),28,"..."));
	templateBuilder.Append("</a></li> \r\n");

	}	//end loop


	}
	else
	{

	templateBuilder.Append("		    暂无数据!\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		<ul id=\"forum_");
	templateBuilder.Append(forumid.ToString());
	templateBuilder.Append("_digest\" class=\"topicdot\" style=\"display:none;\">\r\n");
	 topiclist = forumagg.GetForumTopicList(8, 0, forumid, TopicTimeType.All, TopicOrderType.LastPost, true, false);
	

	if (topiclist.Rows.Count>0)
	{


	int replytopic__loop__id=0;
	foreach(DataRow replytopic in topiclist.Rows)
	{
		replytopic__loop__id++;

	templateBuilder.Append("            <li><a title=\"" + replytopic["title"].ToString().Trim() + "\" href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append("showtopic.aspx?topicid=" + replytopic["tid"].ToString().Trim() + "&page=end#lastpost\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(replytopic["title"].ToString().Trim(),28,"..."));
	templateBuilder.Append("</a></li> \r\n");

	}	//end loop


	}
	else
	{

	templateBuilder.Append("		    暂无数据!\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("<!--<div class=\"adinner\"><img src=\"images/gather/ad.gif\" alt=\"广告\"/></div>-->\r\n");

	if (config.Enablealbum==1)
	{

	templateBuilder.Append("<div class=\"main wrap s_clear\">\r\n");
	templateBuilder.Append("	<div class=\"box albumbox\">\r\n");
	templateBuilder.Append("		<span>\r\n");

	int ac__loop__id=0;
	foreach(AlbumCategoryInfo ac in albumcategorylist)
	{
		ac__loop__id++;


	if (ac__loop__id<5)
	{

	templateBuilder.Append("				<a href=\"showalbumlist.aspx?cate=");
	templateBuilder.Append(ac.Albumcateid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(ac.Title.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("		<a href=\"albumindex.aspx\" target=\"_blank\">更多&gt;&gt;</a></span>\r\n");
	templateBuilder.Append("		<h2>推荐相册</h2>\r\n");

	int __albuminfo__loop__id=0;
	foreach(AlbumInfo __albuminfo in recommendalbumlist)
	{
		__albuminfo__loop__id++;


	if (__albuminfo__loop__id<=4)
	{

	templateBuilder.Append("			<dl>\r\n");
	templateBuilder.Append("			    <dd>\r\n");
	templateBuilder.Append("			        <a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showalbum.aspx?albumid=");
	templateBuilder.Append(__albuminfo.Albumid.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	if (__albuminfo.Logo!="")
	{

	templateBuilder.Append("			                <img src=\"");
	templateBuilder.Append(__albuminfo.Logo.ToString().Trim());
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(__albuminfo.Title.ToString().Trim());
	templateBuilder.Append("\" style=\"height: 75px; width: 115px\"/>\r\n");

	}
	else
	{

	templateBuilder.Append("							<img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/NoPhoto.jpg\" alt=\"");
	templateBuilder.Append(__albuminfo.Albumid.ToString().Trim());
	templateBuilder.Append("\"  style=\"height: 75px; width: 115px\"/>\r\n");

	}	//end if

	templateBuilder.Append("				    </a>\r\n");
	templateBuilder.Append("				</dd>\r\n");
	templateBuilder.Append("				<dt><a href=\"");
	templateBuilder.Append(albumurl.ToString());
	templateBuilder.Append("showalbum.aspx?albumid=");
	templateBuilder.Append(__albuminfo.Albumid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(__albuminfo.Title.ToString().Trim());
	templateBuilder.Append("</a> (");
	templateBuilder.Append(__albuminfo.Imgcount.ToString().Trim());
	templateBuilder.Append(")</dt>\r\n");
	templateBuilder.Append("		    </dl>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"box sidebox\">\r\n");
	templateBuilder.Append("		<div class=\"sidetitlebar\"><ul><li class=\"current\" id=\"li_album\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_album'));\">热门相册</a></li><li id=\"li_photo\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_photo'));\">热门相片</a></li></ul></div>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("		<ul id=\"albumlist\" class=\"topicdot\">\r\n");
	 albumlist = albumagg.GetAlbumList(photoconfig.Focusalbumshowtype, 7, 180);
	

	if (albumlist.Count>0)
	{


	int hotalbuminfo__loop__id=0;
	foreach(AlbumInfo hotalbuminfo in albumlist)
	{
		hotalbuminfo__loop__id++;

	templateBuilder.Append("			<li><em>");
	templateBuilder.Append(hotalbuminfo.Views.ToString().Trim());
	templateBuilder.Append("</em><a href=\"showalbum.aspx?albumid=");
	templateBuilder.Append(hotalbuminfo.Albumid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(hotalbuminfo.Title.ToString().Trim());
	templateBuilder.Append("</a> (<a href=\"showalbumlist.aspx?uid=");
	templateBuilder.Append(hotalbuminfo.Userid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(hotalbuminfo.Username.ToString().Trim());
	templateBuilder.Append("</a>)</li>\r\n");

	}	//end loop


	}
	else
	{

	templateBuilder.Append("		    暂无数据!\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		<ul id=\"photolist\" class=\"topicdot\" style=\"display:none;\">\r\n");
	templateBuilder.Append("		  <!--一周热图总排行-->\r\n");
	 photolist = albumagg.GetWeekHotPhotoList(photoconfig.Weekhot);
	

	if (photolist.Count>0)
	{


	int __photolist__loop__id=0;
	foreach(PhotoInfo __photolist in photolist)
	{
		__photolist__loop__id++;

	templateBuilder.Append("			<li><em>");
	templateBuilder.Append(__photolist.Views.ToString().Trim());
	templateBuilder.Append("</em><a href=\"showphoto.aspx?photoid=");
	templateBuilder.Append(__photolist.Photoid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(__photolist.Title.ToString().Trim());
	templateBuilder.Append("</a> (<a href=\"showalbumlist.aspx?uid=");
	templateBuilder.Append(__photolist.Userid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(__photolist.Username.ToString().Trim());
	templateBuilder.Append("</a>)</li>\r\n");

	}	//end loop


	}
	else
	{

	templateBuilder.Append("		    暂无数据!\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


	if (config.Enablespace==1)
	{

	templateBuilder.Append("<div class=\"main wrap s_clear\">\r\n");
	templateBuilder.Append("	<div class=\"box spacebox\">\r\n");
	templateBuilder.Append("		<span><a href=\"spaceindex.aspx\">更多&gt;&gt;</a></span>\r\n");
	templateBuilder.Append("		<h2>个人空间</h2>\r\n");

	int __spaceconfig__loop__id=0;
	foreach(SpaceConfigInfoExt __spaceconfig in spaceconfigs)
	{
		__spaceconfig__loop__id++;


	if (__spaceconfig__loop__id<=2)
	{

	templateBuilder.Append("		<dl>\r\n");
	templateBuilder.Append("			<dt><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=");
	templateBuilder.Append(__spaceconfig.Userid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\"><img src=\"");
	templateBuilder.Append(__spaceconfig.Spacepic.ToString().Trim());
	templateBuilder.Append("\" alt=\"blogphoto\" width=\"52\" height=\"56\" onerror=\"this.onerror=null;this.src='avatars/common/0.gif';\"/></a></dt>\r\n");
	templateBuilder.Append("			<dd class=\"spacetitle\"><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=");
	templateBuilder.Append(__spaceconfig.Userid.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(__spaceconfig.Spacetitle,20,"..."));
	templateBuilder.Append("</a></dd>\r\n");
	templateBuilder.Append("			<dd><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=");
	templateBuilder.Append(__spaceconfig.Postid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(__spaceconfig.Posttitle,20,"..."));
	templateBuilder.Append("</a></dd>\r\n");
	templateBuilder.Append("			<dd>日志: <em>");
	templateBuilder.Append(__spaceconfig.Postcount.ToString().Trim());
	templateBuilder.Append("</em>   \r\n");

	if (config.Enablealbum==1)
	{
	templateBuilder.Append(config.Albumname.ToString().Trim());
	templateBuilder.Append(": <em>");
	templateBuilder.Append(__spaceconfig.Albumcount.ToString().Trim());
	templateBuilder.Append("</em>\r\n");

	}	//end if

	templateBuilder.Append(" </dd>\r\n");
	templateBuilder.Append("		</dl>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"box journalbox\">\r\n");
	templateBuilder.Append("		<span><a href=\"bloglist.aspx\">更多&gt;&gt;</a></span>\r\n");
	templateBuilder.Append("		<h2>推荐日志</h2>\r\n");
	templateBuilder.Append("		<ul class=\"topiclist\">\r\n");

	int __spacepostinfo__loop__id=0;
	foreach(SpaceShortPostInfo __spacepostinfo in spacepostlist)
	{
		__spacepostinfo__loop__id++;

	templateBuilder.Append("		    <li><cite><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=");
	templateBuilder.Append(__spacepostinfo.Uid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(__spacepostinfo.Author.ToString().Trim());
	templateBuilder.Append("</a> ( <em title=\"回复数/浏览量\">");
	templateBuilder.Append(__spacepostinfo.Commentcount.ToString().Trim());
	templateBuilder.Append(" / ");
	templateBuilder.Append(__spacepostinfo.Views.ToString().Trim());
	templateBuilder.Append(" )</em></cite><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=");
	templateBuilder.Append(__spacepostinfo.Postid.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(__spacepostinfo.Title,56,"..."));
	templateBuilder.Append("</a> </li>\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"box sidebox\">\r\n");
	templateBuilder.Append("		<div class=\"sidetitlebar\"><ul><li class=\"current\" id=\"li_spacecomment\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_spacecomment'));\">最新评论</a></li><li id=\"li_space\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_space'));\">最新更新空间</a></li></ul></div>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("		<ul id=\"spacecommentlist\" class=\"topicdot\">\r\n");

	int comment__loop__id=0;
	foreach(DataRow comment in spaceagg.GetSpaceTopComments(7).Rows)
	{
		comment__loop__id++;

	templateBuilder.Append("		    <li><em>" + comment["author"].ToString().Trim() + "</em><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/viewspacepost.aspx?postid=" + comment["postid"].ToString().Trim() + "\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(Discuz.Common.Utils.HtmlEncode(comment["content"].ToString().Trim()),30,"..."));
	templateBuilder.Append("</a></li>\r\n");

	}	//end loop

	templateBuilder.Append("			<!--<li><em>fanzjgw</em><a href=\"#\">Discuz!NT程序发布</a></li>-->\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		<ul id=\"spacelist\" class=\"topicdot\" style=\"display:none;\">\r\n");

	int space__loop__id=0;
	foreach(DataRow space in spaceagg.GetRecentUpdateSpaceList(7).Rows)
	{
		space__loop__id++;

	templateBuilder.Append("		    <li><a href=\"");
	templateBuilder.Append(spaceurl.ToString());
	templateBuilder.Append("space/?uid=" + space["userid"].ToString().Trim() + "\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(space["spacetitle"].ToString().Trim(),30,"..."));
	templateBuilder.Append("</a></li>			\r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


	if (config.Enablemall==1)
	{

	templateBuilder.Append("<div class=\"main wrap s_clear\">\r\n");
	templateBuilder.Append("	<div class=\"box mallbox\">\r\n");
	templateBuilder.Append("		<span><a href=\"#\">更多&gt;&gt;</a></span>\r\n");
	templateBuilder.Append("		<h2>最新上架产品</h2>\r\n");
	templateBuilder.Append("		<ul>\r\n");
	 goodscoll = goodsagg.GetGoodsList("", "newgoods",0,6);
	

	if (goodscoll.Count>0)
	{


	int goodsinfo__loop__id=0;
	foreach(Goodsinfo goodsinfo in goodscoll)
	{
		goodsinfo__loop__id++;

	templateBuilder.Append("			<li>\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(goodsinfo.Goodsid);
	

	if (goodsinfo.Goodspic=="")
	{

	templateBuilder.Append("				        <img width=\"80\" height=\"80\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/mall/nogoods_small.gif\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("				        <img width=\"80\" height=\"80\" src=\"upload/");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}	//end if

	templateBuilder.Append("				<h4><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodsinfo.Htmltitle.ToString().Trim());
	templateBuilder.Append("</a></h4>\r\n");
	templateBuilder.Append("				<p>市场价:<strike>");
	templateBuilder.Append(goodsinfo.Price.ToString().Trim());
	templateBuilder.Append("</strike>元</p>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(goodsinfo.Selleruid);
	
	templateBuilder.Append("				<p class=\"price\">卖家:<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodsinfo.Seller.ToString().Trim());
	templateBuilder.Append("</a></p>\r\n");
	templateBuilder.Append("			</li>\r\n");

	}	//end loop


	}
	else
	{

	templateBuilder.Append("		    暂无数据!\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"box sidebox\">\r\n");
	templateBuilder.Append("		<div class=\"sidetitlebar\"><ul><li class=\"current\" id=\"li_hot_goods\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_hot_goods'));\">热门商品</a></li><li id=\"li_old_goods\"><a href=\"javascript:;\" onclick=\"javascript:tabselect($('li_old_goods'));\">二手商品</a></li></ul></div>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("		<ul id=\"hot_goodslist\" class=\"topicdot\" style=\"display:;\">\r\n");
	 goodscoll = goodsagg.GetGoodsList("quality_new", "hotgoods",0,7);
	

	if (goodscoll.Count>0)
	{


	int hot_goods__loop__id=0;
	foreach(Goodsinfo hot_goods in goodscoll)
	{
		hot_goods__loop__id++;

	templateBuilder.Append("		    <li>\r\n");
	templateBuilder.Append("		        <em>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(hot_goods.Selleruid);
	
	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(hot_goods.Seller.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("		        </em>\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(hot_goods.Goodsid);
	
	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(hot_goods.Title,20,"..."));
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("		    </li>\r\n");

	}	//end loop


	}
	else
	{

	templateBuilder.Append("		    暂无数据!\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		<ul id=\"old_goodslist\" class=\"topicdot\" style=\"display:none;\">\r\n");
	 goodscoll = goodsagg.GetGoodsList("quality_old", "" ,0,7);
	

	if (goodscoll.Count>0)
	{


	int reco_goods__loop__id=0;
	foreach(Goodsinfo reco_goods in goodscoll)
	{
		reco_goods__loop__id++;

	templateBuilder.Append("		    <li>\r\n");
	templateBuilder.Append("		        <em>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(reco_goods.Selleruid);
	
	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(reco_goods.Seller.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("		        </em>\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(reco_goods.Goodsid);
	
	templateBuilder.Append("<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(reco_goods.Title,20,"..."));
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("		    </li>\r\n");

	}	//end loop


	}
	else
	{

	templateBuilder.Append("		    暂无数据!\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("<!--<div class=\"adinner\"><img src=\"images/gather/ad.gif\" alt=\"广告\"/></div>-->\r\n");
	templateBuilder.Append("<div id=\"statistics\" class=\"main wrap s_clear\">\r\n");
	templateBuilder.Append("	<div class=\"box sidebox\">\r\n");
	templateBuilder.Append("		<div class=\"titlebar\"><ul><li class=\"current\">论坛点击量排行</li></ul></div>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("		<ul id=\"topic1\">\r\n");
	 topiclist = forumagg.GetForumTopicList(10, 0, 0, TopicTimeType.All, TopicOrderType.Views, false, false);
	

	int views_topicinfo__loop__id=0;
	foreach(DataRow views_topicinfo in topiclist.Rows)
	{
		views_topicinfo__loop__id++;

	templateBuilder.Append("            <li>\r\n");
	templateBuilder.Append("                <em>" + views_topicinfo["views"].ToString().Trim() + "</em><cite \r\n");

	if (views_topicinfo__loop__id==1)
	{

	templateBuilder.Append("class=\"first\"\r\n");

	}	//end if


	if (views_topicinfo__loop__id==2)
	{

	templateBuilder.Append("class=\"second\"\r\n");

	}	//end if


	if (views_topicinfo__loop__id==3)
	{

	templateBuilder.Append("class=\"third\"\r\n");

	}	//end if

	templateBuilder.Append(">" + views_topicinfo__loop__id.ToString() + "</cite>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(views_topicinfo["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("                <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(views_topicinfo["title"].ToString().Trim(),26,""));
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("           </li>            \r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"box sidebox\">\r\n");
	templateBuilder.Append("		<div class=\"titlebar\"><ul><li class=\"current\">论坛精华排行</li></ul></div>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("		<ul id=\"topic2\">\r\n");
	 topiclist = forumagg.GetForumTopicList(10, 0, 0, TopicTimeType.All, TopicOrderType.Replies, true, false);
	

	int digest_topicinfo__loop__id=0;
	foreach(DataRow digest_topicinfo in topiclist.Rows)
	{
		digest_topicinfo__loop__id++;

	templateBuilder.Append("           <li>\r\n");
	templateBuilder.Append("                <em>" + digest_topicinfo["views"].ToString().Trim() + "</em><cite \r\n");

	if (digest_topicinfo__loop__id==1)
	{

	templateBuilder.Append("class=\"first\"\r\n");

	}	//end if


	if (digest_topicinfo__loop__id==2)
	{

	templateBuilder.Append("class=\"second\"\r\n");

	}	//end if


	if (digest_topicinfo__loop__id==3)
	{

	templateBuilder.Append("class=\"third\"\r\n");

	}	//end if

	templateBuilder.Append(">" + digest_topicinfo__loop__id.ToString() + "</cite>\r\n");
	 aspxrewriteurl = this.ShowTopicAspxRewrite(digest_topicinfo["tid"].ToString().Trim(),0);
	
	templateBuilder.Append("                <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(digest_topicinfo["title"].ToString().Trim(),26,""));
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("           </li>            \r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"box sidebox\">\r\n");
	templateBuilder.Append("		<div class=\"titlebar\"><ul><li class=\"current\">用户积分排行</li></ul></div>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("		<ul id=\"hottopic\">\r\n");
	 userlist = forumagg.GetUserList(10, "credits");
	

	int credits_user__loop__id=0;
	foreach(DataRow credits_user in userlist.Rows)
	{
		credits_user__loop__id++;

	templateBuilder.Append("		   <li>\r\n");
	templateBuilder.Append("                <em>" + credits_user["credits"].ToString().Trim() + "</em><cite \r\n");

	if (credits_user__loop__id==1)
	{

	templateBuilder.Append("class=\"first\"\r\n");

	}	//end if


	if (credits_user__loop__id==2)
	{

	templateBuilder.Append("class=\"second\"\r\n");

	}	//end if


	if (credits_user__loop__id==3)
	{

	templateBuilder.Append("class=\"third\"\r\n");

	}	//end if

	templateBuilder.Append(">" + credits_user__loop__id.ToString() + "</cite>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(credits_user["uid"].ToString().Trim());
	
	templateBuilder.Append("                <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(credits_user["username"].ToString().Trim(),20,"..."));
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("           </li> \r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"box sidebox\" style=\"float:right; margin-right:0;\">\r\n");
	templateBuilder.Append("		<div class=\"titlebar\"><ul><li class=\"current\">在线时长排行</li></ul></div>\r\n");
	templateBuilder.Append("		<div class=\"sideinner\">\r\n");
	templateBuilder.Append("		<ul id=\"hottopic\">\r\n");
	 userlist = forumagg.GetUserList(10, "oltime");
	

	int oltime_user__loop__id=0;
	foreach(DataRow oltime_user in userlist.Rows)
	{
		oltime_user__loop__id++;

	templateBuilder.Append("		   <li>\r\n");
	templateBuilder.Append("                <em>" + oltime_user["oltime"].ToString().Trim() + "分</em><cite \r\n");

	if (oltime_user__loop__id==1)
	{

	templateBuilder.Append("class=\"first\"\r\n");

	}	//end if


	if (oltime_user__loop__id==2)
	{

	templateBuilder.Append("class=\"second\"\r\n");

	}	//end if


	if (oltime_user__loop__id==3)
	{

	templateBuilder.Append("class=\"third\"\r\n");

	}	//end if

	templateBuilder.Append(">" + oltime_user__loop__id.ToString() + "</cite>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(oltime_user["uid"].ToString().Trim());
	
	templateBuilder.Append("                <a href=\"");
	templateBuilder.Append(forumurl.ToString());
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append(Utils.GetUnicodeSubString(oltime_user["username"].ToString().Trim(),20,"..."));
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("           </li> \r\n");

	}	//end loop

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (forumlinkcount>0)
	{

	templateBuilder.Append("<div class=\"main wrap s_clear\">\r\n");
	templateBuilder.Append("<div class=\"box links\" id=\"forumlinks\">\r\n");
	templateBuilder.Append("	<h4>友情链接</h4>\r\n");
	bool forumlinkend = false;
	

	int forumlink__loop__id=0;
	foreach(DataRow forumlink in forumlinklist.Rows)
	{
		forumlink__loop__id++;


	if (forumlink__loop__id==1)
	{

	templateBuilder.Append("	<div class=\"forumlinks\">	\r\n");
	templateBuilder.Append("		<ul>	\r\n");

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

	templateBuilder.Append("	</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if

	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");

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


	templateBuilder.Append("</div>\r\n");

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
