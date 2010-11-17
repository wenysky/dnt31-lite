<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.forumlist" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:19.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:19. 
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


	templateBuilder.Append("<style>\r\n");
	templateBuilder.Append("body{\r\n");
	templateBuilder.Append(" text-align:left;background:#F5FAFD;\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append(".collapse,.expand{position: absolute;background-image:url(templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/collapse.gif);background-repeat:no-repeat;background-position:50% 50%;width:6px; height:50px;}\r\n");
	templateBuilder.Append(".expand {background-image:url(templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/expand.gif);}\r\n");
	templateBuilder.Append("</style>\r\n");
	templateBuilder.Append("<body onLoad=\"window_load();\">\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("		var NoUser = ");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append(" == -1 ? true : false;\r\n");
	templateBuilder.Append("		var lastA = null;		\r\n");
	templateBuilder.Append("		function window_load(){\r\n");
	templateBuilder.Append("			documentbody = document.documentElement.clientHeight > document.body.clientHeight ? document.documentElement : document.body;\r\n");
	templateBuilder.Append("			var leftbar = document.getElementById('leftbar')\r\n");
	templateBuilder.Append("			leftbar.style.height = documentbody.clientHeight +'px';\r\n");
	templateBuilder.Append("			leftbar.style.left = 0; //document.body.clientWidth - 6;\r\n");
	templateBuilder.Append("			leftbar.style.top = documentbody.scrollTop + 'px'; //document.body.clientWidth - 6;\r\n");
	templateBuilder.Append("			document.onscroll = function(){ \r\n");
	templateBuilder.Append("											leftbar.style.height=documentbody.clientHeight +'px';\r\n");
	templateBuilder.Append("											leftbar.style.top=documentbody.scrollTop + 'px'; \r\n");
	templateBuilder.Append("										}\r\n");
	templateBuilder.Append("			document.onresize = function(){ \r\n");
	templateBuilder.Append("											leftbar.style.height=documentbody.clientHeight +'px';\r\n");
	templateBuilder.Append("											leftbar.style.top=documentbody.scrollTop + 'px'; \r\n");
	templateBuilder.Append("										}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		function resizediv_onClick(){\r\n");
	templateBuilder.Append("			if (document.getElementById('menubar').style.display != 'none'){\r\n");
	templateBuilder.Append("				top.document.getElementsByTagName('FRAMESET')[0].cols = \"6,*\";\r\n");
	templateBuilder.Append("				document.getElementById('menubar').style.display = 'none';\r\n");
	templateBuilder.Append("				document.getElementById('leftbar').className = \"expand\";\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			else{\r\n");
	templateBuilder.Append("				top.document.getElementsByTagName('FRAMESET')[0].cols = \"210,*\";\r\n");
	templateBuilder.Append("				document.getElementById('leftbar').className = \"collapse\";\r\n");
	templateBuilder.Append("				document.getElementById('menubar').style.display = '';\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		//↓----------获得版块的树形列表相关脚本-------------------------\r\n");
	templateBuilder.Append("		function changeExtImg(objImg){\r\n");
	templateBuilder.Append("			if (!objImg){ return; }	\r\n");
	templateBuilder.Append("			var fileName = objImg.src.toLowerCase().substring(objImg.src.lastIndexOf(\"/\"));\r\n");
	templateBuilder.Append("			switch(fileName){\r\n");
	templateBuilder.Append("				case \"/p0.gif\":\r\n");
	templateBuilder.Append("					objImg.src = \"images/tree/m0.gif\";\r\n");
	templateBuilder.Append("					break;\r\n");
	templateBuilder.Append("				case \"/p1.gif\":\r\n");
	templateBuilder.Append("					objImg.src = \"images/tree/m1.gif\";\r\n");
	templateBuilder.Append("					break;\r\n");
	templateBuilder.Append("				case \"/p2.gif\":\r\n");
	templateBuilder.Append("					objImg.src = \"images/tree/m2.gif\";\r\n");
	templateBuilder.Append("					break;\r\n");
	templateBuilder.Append("				case \"/p3.gif\":\r\n");
	templateBuilder.Append("					objImg.src = \"images/tree/m3.gif\";\r\n");
	templateBuilder.Append("					break;\r\n");
	templateBuilder.Append("				case \"/m0.gif\":\r\n");
	templateBuilder.Append("					objImg.src = \"images/tree/p0.gif\";\r\n");
	templateBuilder.Append("					break;\r\n");
	templateBuilder.Append("				case \"/m1.gif\":\r\n");
	templateBuilder.Append("					objImg.src = \"images/tree/p1.gif\";\r\n");
	templateBuilder.Append("					break;\r\n");
	templateBuilder.Append("				case \"/m2.gif\":\r\n");
	templateBuilder.Append("					objImg.src = \"images/tree/p2.gif\";\r\n");
	templateBuilder.Append("					break;\r\n");
	templateBuilder.Append("				case \"/m3.gif\":\r\n");
	templateBuilder.Append("					objImg.src = \"images/tree/p3.gif\";\r\n");
	templateBuilder.Append("					break;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		function changeFolderImg(objImg){\r\n");
	templateBuilder.Append("			if (!objImg){ return; }	\r\n");
	templateBuilder.Append("			var fileName = objImg.src.toLowerCase().substring(objImg.src.lastIndexOf(\"/\"));\r\n");
	templateBuilder.Append("			switch(fileName){\r\n");
	templateBuilder.Append("				case \"/folder.gif\":\r\n");
	templateBuilder.Append("					objImg.src = \"images/tree/folderopen.gif\";\r\n");
	templateBuilder.Append("					break;\r\n");
	templateBuilder.Append("				case \"/folderopen.gif\":\r\n");
	templateBuilder.Append("					objImg.src = \"images/tree/folder.gif\";\r\n");
	templateBuilder.Append("					break;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		function a_click(objA){\r\n");
	templateBuilder.Append("			if (lastA){\r\n");
	templateBuilder.Append("				lastA.className=''; \r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			objA.className='bold'; \r\n");
	templateBuilder.Append("			lastA = objA; \r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		function writesubforum(objreturn,fid,AtEnd){\r\n");
	templateBuilder.Append("			var process = document.getElementById(\"process_\" + fid);\r\n");
	templateBuilder.Append("			var forum = document.getElementById(\"forum_\" + fid);\r\n");
	templateBuilder.Append("			var dataArray = objreturn.getElementsByTagName('forum');\r\n");
	templateBuilder.Append("			var dataArrayLen = dataArray.length;\r\n");
	templateBuilder.Append("			changeExtImg(document.getElementById(\"forumExt_\" + fid));\r\n");
	templateBuilder.Append("			changeFolderImg(document.getElementById(\"forumFolder_\" + fid));\r\n");
	templateBuilder.Append("			for (i=0;i<dataArrayLen;i++){\r\n");
	templateBuilder.Append("				var thisfid = dataArray[i].getAttribute(\"fid\");\r\n");
	templateBuilder.Append("				var subforumcount = dataArray[i].getAttribute(\"subforumcount\");\r\n");
	templateBuilder.Append("				var thisEnd = i==dataArrayLen-1;\r\n");
	templateBuilder.Append("				var layer = dataArray[i].getAttribute(\"layer\");\r\n");
	templateBuilder.Append("					//显示树型线\r\n");
	templateBuilder.Append("					list = \"\";\r\n");
	templateBuilder.Append("					for (l=1;l<=layer;l++){\r\n");
	templateBuilder.Append("						if (AtEnd && NoUser){\r\n");
	templateBuilder.Append("							list += \"<nobr><img src = \\\"images/tree/L5.gif\\\" align=\\\"absmiddle\\\" />\";\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("						else{\r\n");
	templateBuilder.Append("							list += \"<img src = \\\"images/tree/L4.gif\\\" align=\\\"absmiddle\\\" />\";\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					if (subforumcount>0){\r\n");
	templateBuilder.Append("						folder = \"folder.gif\";\r\n");
	templateBuilder.Append("						if (layer==0 && thisEnd){\r\n");
	templateBuilder.Append("							if (NoUser){\r\n");
	templateBuilder.Append("								src = \"p2.gif\";\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("							else{\r\n");
	templateBuilder.Append("								src = \"p1.gif\";\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("						else{\r\n");
	templateBuilder.Append("							if (thisEnd && layer>0){\r\n");
	templateBuilder.Append("								src = \"P2.gif\";\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("							else{\r\n");
	templateBuilder.Append("								//if (i==0 && layer==0){\r\n");
	templateBuilder.Append("								//	src = \"P0.gif\";\r\n");
	templateBuilder.Append("								//}\r\n");
	templateBuilder.Append("								//else{\r\n");
	templateBuilder.Append("									src = \"P1.gif\";\r\n");
	templateBuilder.Append("								//}\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else{\r\n");
	templateBuilder.Append("						folder = \"file.gif\";\r\n");
	templateBuilder.Append("						if (layer==0 && thisEnd){\r\n");
	templateBuilder.Append("							if (NoUser){\r\n");
	templateBuilder.Append("								src = \"m2.gif\";\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("							else{\r\n");
	templateBuilder.Append("								src = \"m1.gif\";\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("						else{\r\n");
	templateBuilder.Append("							if (thisEnd){\r\n");
	templateBuilder.Append("								src = \"L2.gif\";\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("							else{\r\n");
	templateBuilder.Append("								//if (i==0 && layer==0){\r\n");
	templateBuilder.Append("								//	src = \"L0.gif\";\r\n");
	templateBuilder.Append("								//}\r\n");
	templateBuilder.Append("								//else{\r\n");
	templateBuilder.Append("									src = \"L1.gif\";\r\n");
	templateBuilder.Append("								//}\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					if(");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(")\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						list += \"<img id=\\\"forumExt_\" + thisfid + \"\\\" src = \\\"images/tree/\" + src + \"\\\" align=\\\"absmiddle\\\" /><img id=\\\"forumFolder_\" + thisfid + \"\\\" src = \\\"images/tree/\" + folder + \"\\\" align=\\\"absmiddle\\\" /> <a href=\\\"showforum-\" + thisfid + \".aspx\\\" target=\\\"main\\\" title=\\\"\" + dataArray[i].getAttribute(\"name\") + \"\\\" onclick=\\\"a_click(this);\\\">\" + dataArray[i].getAttribute(\"name\") + \"</a></nobr>\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					else\r\n");
	templateBuilder.Append("					{\r\n");
	templateBuilder.Append("						list += \"<img id=\\\"forumExt_\" + thisfid + \"\\\" src = \\\"images/tree/\" + src + \"\\\" align=\\\"absmiddle\\\" /><img id=\\\"forumFolder_\" + thisfid + \"\\\" src = \\\"images/tree/\" + folder + \"\\\" align=\\\"absmiddle\\\" /> <a href=\\\"showforum.aspx?forumid=\" + thisfid + \"\\\" target=\\\"main\\\" title=\\\"\" + dataArray[i].getAttribute(\"name\") + \"\\\" onclick=\\\"a_click(this);\\\">\" + dataArray[i].getAttribute(\"name\") + \"</a></nobr>\";\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("				var div_forumtitle =  document.createElement(\"DIV\");\r\n");
	templateBuilder.Append("					div_forumtitle.id = \"forumtitle_\" + thisfid;\r\n");
	templateBuilder.Append("					div_forumtitle.className = \"tree_forumtitle\";\r\n");
	templateBuilder.Append("					if (subforumcount>0){\r\n");
	templateBuilder.Append("						div_forumtitle.onclick = new Function(\"getsubforum(\" + thisfid + \",\" + thisEnd + \");\");\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					div_forumtitle.innerHTML = list;\r\n");
	templateBuilder.Append("					forum.appendChild(div_forumtitle);\r\n");
	templateBuilder.Append("				var div_forum = document.createElement(\"DIV\");\r\n");
	templateBuilder.Append("					div_forum.id = \"forum_\" + thisfid;\r\n");
	templateBuilder.Append("					div_forum.className = \"tree_forum\";\r\n");
	templateBuilder.Append("					forum.appendChild(div_forum);\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			process.style.display=\"none\";\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		function getsubforum(fid,AtEnd){\r\n");
	templateBuilder.Append("			if (!document.getElementById(\"forum_\" + fid)){\r\n");
	templateBuilder.Append("				document.writeln(\"<div id=\\\"forum_\" + fid + \"\\\"></div>\");\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			if (!document.getElementById(\"process_\" + fid)){\r\n");
	templateBuilder.Append("				var div = document.createElement(\"DIV\");\r\n");
	templateBuilder.Append("				div.id = \"process_\" + fid;\r\n");
	templateBuilder.Append("				div.className = \"tree_process\";\r\n");
	templateBuilder.Append("				div.innerHTML = \"<img src='images/common/loading.gif' />载入中...\";\r\n");
	templateBuilder.Append("				document.getElementById(\"forum_\" + fid).appendChild(div);\r\n");
	templateBuilder.Append("				ajaxRead(\"tools/ajax.aspx?t=forumtree&fid=\" + fid, \"writesubforum(obj,\" + fid+ \",\" + AtEnd + \");\");\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			else{\r\n");
	templateBuilder.Append("				changeExtImg(document.getElementById(\"forumExt_\" + fid));\r\n");
	templateBuilder.Append("				changeFolderImg(document.getElementById(\"forumFolder_\" + fid));\r\n");
	templateBuilder.Append("				if (document.getElementById(\"forum_\" + fid).style.display == \"none\"){\r\n");
	templateBuilder.Append("					document.getElementById(\"forum_\" + fid).style.display = \"block\";\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				else{												\r\n");
	templateBuilder.Append("					document.getElementById(\"forum_\" + fid).style.display = \"none\";\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		//↑----------获得版块的树形列表相关脚本-------------------------\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div id=\"leftbar\" class=\"collapse\" onmouseover=\"this.style.backgroundColor='#A7E8F3';\" onmouseout=\"this.style.backgroundColor = '';\" onclick=\"resizediv_onClick()\" style=\"width:6px; cursor:pointer\" title=\"打开/关闭导航\"></div>\r\n");
	templateBuilder.Append("<div id=\"menubar\" style=\"white-space:nowrap;\">\r\n");
	templateBuilder.Append("	<div id=\"frameback\">\r\n");
	templateBuilder.Append("		<A href=\"###\" onClick=\"resizediv_onClick()\" class=\"hideside\">隐藏侧栏</a><A href=\"forumindex.aspx?f=0\" target=\"_top\" class=\"back\">平板模式</a>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"framemenu\">\r\n");
	templateBuilder.Append("	<ul>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("		<li>欢迎访问");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("		<li>\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(userinfo.Uid);
	
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"main\" class=\"lightlink\">");
	templateBuilder.Append(userinfo.Username.ToString().Trim());
	templateBuilder.Append("</a> [ <a href=\"logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("&amp;reurl=index.aspx\" target=\"main\">退出</a> ]</li>\r\n");
	templateBuilder.Append("		<li>积分: <span class=\"lightlink\">");
	templateBuilder.Append(userinfo.Credits.ToString().Trim());
	templateBuilder.Append("</span>  [<span id=\"creditlist\" onMouseOver=\"showMenu(this.id, false);\" style=\"CURSOR:pointer\">详细积分</span>]</li>\r\n");
	templateBuilder.Append("		<li>头衔: ");
	templateBuilder.Append(usergroupinfo.Grouptitle.ToString().Trim());
	templateBuilder.Append("\r\n");

	if (useradminid==1)
	{

	templateBuilder.Append("				| <a href=\"admin/index.aspx\" target=\"_blank\">系统设置</a>\r\n");

	}	//end if

	templateBuilder.Append("		</li>\r\n");

	}
	else
	{

	templateBuilder.Append("		<li>头衔: 游客\r\n");
	templateBuilder.Append("			[<a href=\"register.aspx\" target=\"main\">注册</a>] \r\n");
	templateBuilder.Append("			[<a href=\"login.aspx?reurl=index.aspx\" target=\"main\">登录</a>]\r\n");
	templateBuilder.Append("		</li>\r\n");

	}	//end if


	if (oluserinfo.Newpms>0)
	{

	templateBuilder.Append("		<li>\r\n");
	templateBuilder.Append("			新的短消息<a href=\"usercpinbox.aspx\" target=\"main\"><span id=\"newpmcount\" class=\"lightlink\">");
	templateBuilder.Append(oluserinfo.Newpms.ToString().Trim());
	templateBuilder.Append("</span></a>条\r\n");
	templateBuilder.Append("		</li>\r\n");

	}	//end if

	templateBuilder.Append("		<li><hr class=\"solidline\"/></li>\r\n");
	templateBuilder.Append("		<li>\r\n");
	templateBuilder.Append("			<img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/home.gif\">\r\n");
	templateBuilder.Append("			<a href=\"forumindex.aspx\" target=\"main\">论坛首页</a>\r\n");
	templateBuilder.Append("		</li>\r\n");
	templateBuilder.Append("		<li>\r\n");
	templateBuilder.Append("			<img src=\"images/tree/L1.gif\" width=\"20\" height=\"20\" /><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/folder_new.gif\" width=\"20\" height=\"20\" />\r\n");
	templateBuilder.Append("			<a href=\"showtopiclist.aspx?type=newtopic&amp;newtopic=");
	templateBuilder.Append(newtopicminute.ToString());
	templateBuilder.Append("&amp;forums=all\" target=\"main\">查看新帖</a>\r\n");
	templateBuilder.Append("		</li>\r\n");
	templateBuilder.Append("		<li>\r\n");
	templateBuilder.Append("			<img src=\"images/tree/L1.gif\" width=\"20\" height=\"20\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/showdigest.gif\" width=\"20\" height=\"20\" />\r\n");
	templateBuilder.Append("			<a href=\"showtopiclist.aspx?type=digest&amp;forums=all\" target=\"main\">精华帖区</a>\r\n");
	templateBuilder.Append("		</li>\r\n");
	templateBuilder.Append("	</ul>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("		//生成版块列表\r\n");
	templateBuilder.Append("		getsubforum(0);\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("	<div onClick=\"getsubforum(-1,true);\">\r\n");
	templateBuilder.Append("		<img id=\"forumExt_-1\" src=\"images/tree/M2.gif\" width=\"20\" height=\"20\" /><img id=\"forumFolder_-1\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/mytopic.gif\" /><span class=\"cursor\">用户功能区</span>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"process_-1\"></div>\r\n");
	templateBuilder.Append("	<div id=\"forum_-1\" style=\"display:block;\">\r\n");
	templateBuilder.Append("		<div><img src=\"images/tree/L5.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"images/tree/L1.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/folder_mytopic.gif\" width=\"16\" height=\"16\">\r\n");
	templateBuilder.Append("			<a href=\"mytopics.aspx\" target=\"main\">我的主题</a></div>\r\n");
	templateBuilder.Append("		<div><img src=\"images/tree/L5.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"images/tree/L1.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/folder_s.gif\" width=\"16\" height=\"16\">\r\n");
	templateBuilder.Append("			<a href=\"myposts.aspx\" target=\"main\">我的帖子</a></div>\r\n");
	templateBuilder.Append("		<div><img src=\"images/tree/L5.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"images/tree/L1.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/digest.gif\">\r\n");
	templateBuilder.Append("			<a href=\"search.aspx?posterid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("&amp;type=digest\" target=\"main\">我的精华</a></div>\r\n");
	templateBuilder.Append("		<div><img src=\"images/tree/L5.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"images/tree/L1.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/favorite.gif\">\r\n");
	templateBuilder.Append("			<a href=\"usercpsubscribe.aspx\" target=\"main\">我的收藏</a></div>\r\n");
	templateBuilder.Append("		<div><img src=\"images/tree/L5.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"images/tree/L1.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/usericon.gif\">\r\n");
	templateBuilder.Append("			<a href=\"usercp.aspx\" target=\"main\">用户中心</a></div>\r\n");
	templateBuilder.Append("		<div><img src=\"images/tree/L5.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"images/tree/L2.gif\" width=\"20\" height=\"20\" border=\"0\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/pm_1.gif\" width=\"16\" height=\"16\">\r\n");
	templateBuilder.Append("			<a href=\"usercppostpm.aspx\" target=\"main\">撰写短消息</a></div>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<hr class=\"solidline\"/>\r\n");
	templateBuilder.Append("	<div class=\"framemenu\">\r\n");
	templateBuilder.Append("		<ul>\r\n");
	templateBuilder.Append("			<li>在线用户: </li>\r\n");
	templateBuilder.Append("			<li>");
	templateBuilder.Append(totalonline.ToString());
	templateBuilder.Append("人在线  (");
	templateBuilder.Append(totalonlineuser.ToString());
	templateBuilder.Append("位会员) </li>\r\n");

	if (config.Rssstatus!=0)
	{

	templateBuilder.Append("			<li>\r\n");
	templateBuilder.Append("			<a href=\"tools/rss.aspx\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/rss2.gif\" alt=\"RSS订阅全部论坛\"></a>\r\n");
	templateBuilder.Append("			</li>\r\n");

	}	//end if

	templateBuilder.Append("		 </ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	templateBuilder.Append("</body>\r\n");
	templateBuilder.Append("</html>\r\n");

	}
	else
	{

	templateBuilder.Append("]]></root>\r\n");

	}	//end if



	templateBuilder.Append("<ul id=\"creditlist_menu\" class=\"popupmenu_popup\" style=\"display:none;\">\r\n");

	if (score[1].ToString().Trim()!="")
	{

	templateBuilder.Append("	<li>" + score[1].ToString().Trim() + ": ");
	templateBuilder.Append(userinfo.Extcredits1.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (score[2].ToString().Trim()!="")
	{

	templateBuilder.Append("	<li>" + score[2].ToString().Trim() + ": ");
	templateBuilder.Append(userinfo.Extcredits2.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (score[3].ToString().Trim()!="")
	{

	templateBuilder.Append("	<li>" + score[3].ToString().Trim() + ": ");
	templateBuilder.Append(userinfo.Extcredits3.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (score[4].ToString().Trim()!="")
	{

	templateBuilder.Append("	<li>" + score[4].ToString().Trim() + ": ");
	templateBuilder.Append(userinfo.Extcredits4.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (score[5].ToString().Trim()!="")
	{

	templateBuilder.Append("	<li>" + score[5].ToString().Trim() + ": ");
	templateBuilder.Append(userinfo.Extcredits5.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (score[6].ToString().Trim()!="")
	{

	templateBuilder.Append("	<li>" + score[6].ToString().Trim() + ": ");
	templateBuilder.Append(userinfo.Extcredits6.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (score[7].ToString().Trim()!="")
	{

	templateBuilder.Append("	<li>" + score[7].ToString().Trim() + ": ");
	templateBuilder.Append(userinfo.Extcredits7.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if


	if (score[8].ToString().Trim()!="")
	{

	templateBuilder.Append("	<li>" + score[8].ToString().Trim() + ": ");
	templateBuilder.Append(userinfo.Extcredits8.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if

	templateBuilder.Append("</ul>\r\n");

	Response.Write(templateBuilder.ToString());
}
</script>
