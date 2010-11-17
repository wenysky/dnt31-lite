<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Web.mallgoodslist" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2008/5/26 11:27:38.
		本页面代码由Discuz!NT模板引擎生成于 2008/5/26 11:27:38. 
	*/

	base.OnInit(e);

	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	templateBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	templateBuilder.Append("<head>\r\n");
	templateBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
	templateBuilder.Append("" + meta.ToString() + "\r\n");

	if (pagetitle=="首页")
	{

	templateBuilder.Append("<title>" + config.Forumtitle.ToString().Trim() + " - Powered by Discuz!NT</title>\r\n");

	}
	else
	{

	templateBuilder.Append("<title>" + pagetitle.ToString() + " " + config.Seotitle.ToString().Trim() + " - " + config.Forumtitle.ToString().Trim() + " - Powered by Discuz!NT</title>\r\n");

	}	//end if

	templateBuilder.Append("<link rel=\"icon\" href=\"favicon.ico\" type=\"image/x-icon\" />\r\n");
	templateBuilder.Append("<link rel=\"shortcut icon\" href=\"favicon.ico\" type=\"image/x-icon\" />\r\n");
	templateBuilder.Append("<!-- 调用样式表 -->\r\n");
	templateBuilder.Append("<link rel=\"stylesheet\" href=\"templates/" + templatepath.ToString() + "/mall.css\" type=\"text/css\" media=\"all\"  />\r\n");
	templateBuilder.Append("" + link.ToString() + "\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_report.js\"></" + "script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_utils.js\"></" + "script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/common.js\"></" + "script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/menu.js\"></" + "script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var aspxrewrite = " + config.Aspxrewrite.ToString().Trim() + ";\r\n");
	templateBuilder.Append("</" + "script>\r\n");
	templateBuilder.Append("" + script.ToString() + "\r\n");
	templateBuilder.Append("</head>\r\n");
	templateBuilder.Append("<body>\r\n");
	templateBuilder.Append("<div id=\"wraper\">\r\n");
	templateBuilder.Append("	<div id=\"header\">\r\n");
	templateBuilder.Append("		<h2><img src=\"templates/" + templatepath.ToString() + "/images/logo.gif\" alt=\"商城\"/></h2>\r\n");
	templateBuilder.Append("		<p id=\"topmenu\">\r\n");
	templateBuilder.Append("		    <a href=\"" + config.Forumurl.ToString().Trim() + "\">论坛</a>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("		    <a href=\"" + config.Spaceurl.ToString().Trim() + "\">" + config.Spacename.ToString().Trim() + "</a>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("		    <a href=\"" + config.Albumurl.ToString().Trim() + "\">" + config.Albumname.ToString().Trim() + "</a>\r\n");

	}	//end if


	if (config.Enablemall==2)
	{

	templateBuilder.Append("		    <a href=\"mallindex\" class=\"reg\">商城</a>\r\n");

	}	//end if


	if (userid==-1)
	{

	templateBuilder.Append("			<a href=\"" + forumurl.ToString() + "login.aspx\" class=\"reg\">登录</a>\r\n");
	templateBuilder.Append("			<a href=\"" + forumurl.ToString() + "register.aspx\" class=\"reg\">注册</a>\r\n");

	}
	else
	{

	templateBuilder.Append("			欢迎: " + username.ToString() + "&nbsp;\r\n");
	templateBuilder.Append("			<a href=\"" + forumurl.ToString() + "logout.aspx?userkey=" + userkey.ToString() + "\" class=\"reg\">退出</a>\r\n");
	templateBuilder.Append("			<a href=\"" + forumurl.ToString() + "usercp.aspx\" class=\"reg\">用户中心</a>\r\n");

	if (useradminid==1)
	{

	templateBuilder.Append("				<a href=\"" + forumurl.ToString() + "admin/index.aspx\" target=\"_blank\"  class=\"reg\">系统设置</a>\r\n");

	}	//end if


	}	//end if


	if (usergroupinfo.Allowsearch>0)
	{

	templateBuilder.Append("			<a href=\"" + forumurl.ToString() + "search.aspx\">搜索</a>\r\n");

	}	//end if

	templateBuilder.Append("		    <a href=\"" + forumurl.ToString() + "help.aspx\" target=\"_blank\">帮助</a>	\r\n");
	templateBuilder.Append("		</p>\r\n");

	if (headerad!="")
	{

	templateBuilder.Append("		    <div id=\"ad\">" + headerad.ToString() + "</div>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"menu\">\r\n");
	templateBuilder.Append("	    <span>商城</span>\r\n");
	templateBuilder.Append("		<ul>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("			<li><a href=\"" + forumurl.ToString() + "usercpinbox.aspx\">短消息</a></li>\r\n");

	}	//end if

	templateBuilder.Append("			<li><a href=\"" + forumurl.ToString() + "showuser.aspx\">会员</a></li>\r\n");

	if (userid!=-1)
	{

	templateBuilder.Append("			<li id=\"my\" onMouseOver=\"showMenu(this.id);\" onMouseOut=\"showMenu(this.id);\"><a href=\"###\" class=\"mycontent\">我的</a></li>\r\n");

	}	//end if

	templateBuilder.Append("			<li><a href=\"" + forumurl.ToString() + "tags.aspx\">标签</a></li>\r\n");
	templateBuilder.Append("			<li><a href=\"" + forumurl.ToString() + "showtemplate.aspx\">界面</a></li>\r\n");
	templateBuilder.Append("			<li><a href=\"" + forumurl.ToString() + "archiver/index.aspx\">简洁版本</a></li>\r\n");
	templateBuilder.Append("			<li class=\"noground\"><a href=\"" + forumurl.ToString() + "onlineuser.aspx\">在线</a></li>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"search\">\r\n");
	templateBuilder.Append("		<form method=\"post\" action=\"search.aspx\">\r\n");

	if (usergroupinfo.Allowsearch>0)
	{


	templateBuilder.Append("			<form method=\"post\" action=\"search.aspx\" target=\"_blank\" onsubmit=\"bind_keyword(this);\">\r\n");
	templateBuilder.Append("			<input type=\"hidden\" name=\"poster\" />\r\n");
	templateBuilder.Append("			<input type=\"hidden\" name=\"keyword\" />\r\n");
	templateBuilder.Append("			<input type=\"hidden\" name=\"type\" value=\"\" />\r\n");
	templateBuilder.Append("			<input id=\"keywordtype\" type=\"hidden\" name=\"keywordtype\" value=\"0\"/>\r\n");
	templateBuilder.Append("			<div id=\"searchbar\">\r\n");
	templateBuilder.Append("				<dl>\r\n");
	templateBuilder.Append("					<dt id=\"quicksearch\" class=\"s2\" onclick=\"showMenu(this.id, false);\" onmouseover=\"MouseCursor(this);\">帖子标题</dt>\r\n");
	templateBuilder.Append("					<dd class=\"textinput\"><input type=\"text\" name=\"keywordf\" value=\"\" class=\"text\"/></dd>\r\n");
	templateBuilder.Append("					<dd><input name=\"searchsubmit\" type=\"submit\" value=\"\" class=\"s3\"/></dd>\r\n");
	templateBuilder.Append("				</dl>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			</form>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">function bind_keyword(form){if(form.keywordtype.value=='8'){form.keyword.value='';form.poster.value=form.keywordf.value; } else { form.poster.value=''; form.keyword.value=form.keywordf.value;if(form.keywordtype.value == '2')form.type.value = 'spacepost';if(form.keywordtype.value == '3')form.type.value = 'album';}}</" + "script>\r\n");



	}	//end if

	templateBuilder.Append("		</form>\r\n");
	templateBuilder.Append("		<strong>公告:</strong>\r\n");
	templateBuilder.Append("		<marquee direction=\"left\" scrollamount=\"2\" scrolldelay=\"1\" onmouseover=\"this.stop();\" onmouseout=\"this.start();\">\r\n");

	int announcement__loop__id=0;
	foreach(DataRow announcement in announcementlist.Rows)
	{
		announcement__loop__id++;

	templateBuilder.Append("			" + announcement["starttime"].ToString().Trim() + "<a href=\"announcement.aspx#" + announcement["id"].ToString().Trim() + "\">" + announcement["title"].ToString().Trim() + "</a>\r\n");

	}	//end loop

	templateBuilder.Append("		</marquee>\r\n");
	templateBuilder.Append("	</div>\r\n");

	if (config.Enabletag==1)
	{

	templateBuilder.Append("<!--tag-->\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"cache/tag/closedtags.txt\"></" + "script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"cache/tag/colorfultags.txt\"></" + "script>\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/template_tags.js\"></" + "script>	\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/ajax.js\"></" + "script>\r\n");
	templateBuilder.Append("	<div id=\"keyword\">\r\n");
	templateBuilder.Append("		<div class=\"keywordbody\">\r\n");
	templateBuilder.Append("			<cite>热门标签:</cite><ul id=\"mallhottags\"><script type=\"text/javascript\" src=\"cache/hottags_mall_cache_jsonp.txt\" onerror=\"this.onerror=null;getajaxmallhottags();\"></" + "script></ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<!--tag end-->\r\n");

	}	//end if




	if (page_err==0)
	{

	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var templatepath = \"" + templatepath.ToString() + "\";\r\n");
	templateBuilder.Append("var forumpath = \"" + forumpath.ToString() + "\";\r\n");
	templateBuilder.Append("var aspxrewrite = " + config.Aspxrewrite.ToString().Trim() + ";\r\n");
	templateBuilder.Append("</" + "script>\r\n");
	templateBuilder.Append("<script language=\"javascript\" src=\"javascript/template_mallgoodslist.js\"></" + "script>\r\n");
	templateBuilder.Append("	<div id=\"pageinfo\">\r\n");
	templateBuilder.Append("		<em>当前位置:</em><a href=\"mallindex.aspx\">商城首页</a> &gt;&gt; " + goodscategoryinfo.Pathlist.ToString().Trim() + "\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"mainbox sortbox\">\r\n");
	templateBuilder.Append("		<dl>\r\n");
	templateBuilder.Append("			<dt>商品分类</dt>\r\n");
	templateBuilder.Append("			<dd id=\"categories\"></dd>\r\n");
	templateBuilder.Append("            <script language=\"javascript\">\r\n");
	templateBuilder.Append("		    " + subcategoriesjson.ToString() + "\r\n");
	templateBuilder.Append("		    loadcategory(" + config.Aspxrewrite.ToString().Trim() + ");\r\n");
	templateBuilder.Append("		    </" + "script>\r\n");
	templateBuilder.Append("		    </dl>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"mainbox\">\r\n");
	templateBuilder.Append("		<div id=\"contentbox\">\r\n");
	templateBuilder.Append("			<div class=\"theadbox\">\r\n");
	templateBuilder.Append("				<h4>全部商品</h4>\r\n");
	templateBuilder.Append("				<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
	templateBuilder.Append("		            <tr>\r\n");
	templateBuilder.Append("			            <td class=\"forumallpages\"><strong>" + pageid.ToString() + "</strong>&nbsp;&nbsp;/&nbsp;&nbsp;" + pagecount.ToString() + "&nbsp;&nbsp;页</td>\r\n");
	templateBuilder.Append("			            <td width=\"10\">&nbsp;</td>\r\n");
	templateBuilder.Append("			            <td class=\"forumallpages\">" + pagenumbers.ToString() + "</td>\r\n");
	templateBuilder.Append("			            <td class=\"forumallpages3\">跳转<input name=\"gopage\" type=\"text\" id=\"Text1\" onKeyDown=\"if(event.keyCode==13) { if(parseInt('" + config.Aspxrewrite.ToString().Trim() + "')==1) {window.location='mallgoodslist-" + categoryid.ToString() + "-' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1) + '" + config.Extname.ToString().Trim() + "';}else{window.location='mallgoodslist.aspx?categoryid=" + categoryid.ToString() + "&page=' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1)}}\" size=\"4\" maxlength=\"9\" class=\"colorblue2\"/>页</td>\r\n");
	templateBuilder.Append("		            </tr>\r\n");
	templateBuilder.Append("	            </table>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"commendbox\">\r\n");
	templateBuilder.Append("				排序:\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"shoplist\">\r\n");
	templateBuilder.Append("			<form id=\"shoplist\" name=\"shoplist\" method=\"post\" action=\"#\">\r\n");
	templateBuilder.Append("			<table width=100% cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n");
	templateBuilder.Append("			<thead>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<th class=\"selectpro\" colspan=\"2\"><input class=\"btn\" onclick=\"#\" type=\"button\" value=\"对比产品\" style=\"margin-left:25px;\" /></th>\r\n");
	templateBuilder.Append("					<th class=\"shoptitle\">宝贝名称/卖家</th>\r\n");
	templateBuilder.Append("					<th class=\"ntnumbers\">价格排序</th>\r\n");
	templateBuilder.Append("					<th class=\"ntnumbers\">运费</th>\r\n");
	templateBuilder.Append("					<th class=\"ntnumbers\">所在地</th>\r\n");
	templateBuilder.Append("					<th class=\"ntnumbers\">剩余时间</th>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("			</thead>\r\n");

	int goodsinfo__loop__id=0;
	foreach(Goodsinfo goodsinfo in goodslist)
	{
		goodsinfo__loop__id++;

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr class=\"list\" onmouseover=\"this.className='liston'\" onmouseout=\"this.className='list'\">\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(goodsinfo.Goodsid);
	
	templateBuilder.Append("				<td><input type=\"checkbox\" name=\"goodsid\" value=\"" + goodsinfo.Goodsid.ToString().Trim() + "\" /></td>\r\n");
	templateBuilder.Append("				<td><a href=\"" + aspxrewriteurl.ToString() + "\" target=\"_blank\">\r\n");

	if (goodsinfo.Goodspic=="")
	{

	templateBuilder.Append("				        <img width=\"50\" height=\"50\"  src=\"templates/" + templatepath.ToString() + "/images/mall/nogoods.gif\" onerror=\"this.onerror=null;this.src='" + goodsinfo.Goodspic.ToString().Trim() + "';\"  title=\"" + goodsinfo.Title.ToString().Trim() + "\">\r\n");

	}
	else
	{

	templateBuilder.Append("				        <img width=\"50\" height=\"50\"  src=\"upload/" + goodsinfo.Goodspic.ToString().Trim() + "\" onerror=\"this.onerror=null;this.src='" + goodsinfo.Goodspic.ToString().Trim() + "';\"  title=\"" + goodsinfo.Title.ToString().Trim() + "\">\r\n");

	}	//end if

	templateBuilder.Append("                    </a></td>		        \r\n");
	templateBuilder.Append("				<td class=\"goodstitle\">\r\n");
	templateBuilder.Append("						<h4><a href=\"" + aspxrewriteurl.ToString() + "\" target=\"_blank\">" + goodsinfo.Htmltitle.ToString().Trim() + "</a></h4>\r\n");
	templateBuilder.Append("						<p>卖家:\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(goodsinfo.Selleruid);
	
	templateBuilder.Append("						    <a href=\"" + aspxrewriteurl.ToString() + "\" target=\"_blank\">" + goodsinfo.Seller.ToString().Trim() + "</a></p>\r\n");
	templateBuilder.Append("						<p><a class=\"submitbutton\" href=\"usercppostpm.aspx?msgtoid=" + goodsinfo.Selleruid.ToString().Trim() + "\" target=\"_blank\">给我留言</a> <a class=\"selectall\" href=\"favorites.aspx?goodsid=" + goodsinfo.Goodsid.ToString().Trim() + "\">收藏</a></p>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("				<!--<td class=\"listitem\"><img src=\"http://img.taobao.com/2k7/sys/prepay/prepay_icon_00.gif\"></td>-->\r\n");
	templateBuilder.Append("				<td><p class=\"price\">" + goodsinfo.Price.ToString().Trim() + "</p></td>\r\n");
	templateBuilder.Append("				<td>" + goodsinfo.Ordinaryfee.ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("				<td>" + goodsinfo.Locus.ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("				<td>" + goodsinfo.Expiration.ToString().Trim() + "</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("			</table>\r\n");
	templateBuilder.Append("			</form>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"theadbox\">\r\n");
	templateBuilder.Append("			    <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
	templateBuilder.Append("		            <tr>\r\n");
	templateBuilder.Append("			            <td class=\"forumallpages\"><strong>" + pageid.ToString() + "</strong>&nbsp;&nbsp;/&nbsp;&nbsp;" + pagecount.ToString() + "&nbsp;&nbsp;页</td>\r\n");
	templateBuilder.Append("			            <td width=\"10\">&nbsp;</td>\r\n");
	templateBuilder.Append("			            <td class=\"forumallpages\">" + pagenumbers.ToString() + "</td>\r\n");
	templateBuilder.Append("			            <td class=\"forumallpages3\">跳转<input name=\"gopage\" type=\"text\" id=\"gopage\" onKeyDown=\"if(event.keyCode==13) { if(parseInt('" + config.Aspxrewrite.ToString().Trim() + "')==1) {window.location='mallgoodslist-" + categoryid.ToString() + "-' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1) + '" + config.Extname.ToString().Trim() + "';}else{window.location='mallgoodslist.aspx?categoryid=" + categoryid.ToString() + "&page=' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1)}}\" size=\"4\" maxlength=\"9\" class=\"colorblue2\"/>页</td>\r\n");
	templateBuilder.Append("		            </tr>\r\n");
	templateBuilder.Append("	            </table>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div id=\"sidebox\">\r\n");
	templateBuilder.Append("			<div class=\"box salebox\">\r\n");
	templateBuilder.Append("				<h2><strong>掌柜推荐</strong></h2>\r\n");
	templateBuilder.Append("				<div class=\"innerbox majorbox\">\r\n");
	templateBuilder.Append("					<dl>\r\n");
	templateBuilder.Append("						<dt><img src=\"images/mall/proimg.gif\" alt=\"产品名称\"/></dt>\r\n");
	templateBuilder.Append("						<dd class=\"title\"><a href=\"#\">弹力北极熊</a></dd>\r\n");
	templateBuilder.Append("						<dd>商家:<a href=\"#\">青云玩具店</a></dd>\r\n");
	templateBuilder.Append("						<dd>价格:<em>656</em>元</dd>\r\n");
	templateBuilder.Append("					</dl>\r\n");
	templateBuilder.Append("					<dl>\r\n");
	templateBuilder.Append("						<dt><img src=\"images/mall/proimg.gif\" alt=\"产品名称\"/></dt>\r\n");
	templateBuilder.Append("						<dd class=\"title\"><a href=\"#\">弹力北极熊</a></dd>\r\n");
	templateBuilder.Append("						<dd>商家:<a href=\"#\">青云玩具店</a></dd>\r\n");
	templateBuilder.Append("						<dd>价格:<em>656</em>元</dd>\r\n");
	templateBuilder.Append("					</dl>\r\n");
	templateBuilder.Append("					<dl>\r\n");
	templateBuilder.Append("						<dt><img src=\"images/mall/proimg.gif\" alt=\"产品名称\"/></dt>\r\n");
	templateBuilder.Append("						<dd class=\"title\"><a href=\"#\">弹力北极熊</a></dd>\r\n");
	templateBuilder.Append("						<dd>商家:<a href=\"#\">青云玩具店</a></dd>\r\n");
	templateBuilder.Append("						<dd>价格:<em>656</em>元</dd>\r\n");
	templateBuilder.Append("					</dl>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"box salebox\">\r\n");
	templateBuilder.Append("				<h2><strong>热荐店铺</strong></h2>\r\n");
	templateBuilder.Append("				<div class=\"innerbox majorbox\">\r\n");
	templateBuilder.Append("					<dl>\r\n");
	templateBuilder.Append("						<dt><img src=\"images/mall/proimg.gif\" alt=\"产品名称\"/></dt>\r\n");
	templateBuilder.Append("						<dd class=\"title\"><a href=\"#\">弹力北极熊</a></dd>\r\n");
	templateBuilder.Append("						<dd>商家:<a href=\"#\">青云玩具店</a></dd>\r\n");
	templateBuilder.Append("						<dd>价格:<em>656</em>元</dd>\r\n");
	templateBuilder.Append("					</dl>\r\n");
	templateBuilder.Append("					<dl>\r\n");
	templateBuilder.Append("						<dt><img src=\"images/mall/proimg.gif\" alt=\"产品名称\"/></dt>\r\n");
	templateBuilder.Append("						<dd class=\"title\"><a href=\"#\">弹力北极熊</a></dd>\r\n");
	templateBuilder.Append("						<dd>商家:<a href=\"#\">青云玩具店</a></dd>\r\n");
	templateBuilder.Append("						<dd>价格:<em>656</em>元</dd>\r\n");
	templateBuilder.Append("					</dl>\r\n");
	templateBuilder.Append("					<dl>\r\n");
	templateBuilder.Append("						<dt><img src=\"images/mall/proimg.gif\" alt=\"产品名称\"/></dt>\r\n");
	templateBuilder.Append("						<dd class=\"title\"><a href=\"#\">弹力北极熊</a></dd>\r\n");
	templateBuilder.Append("						<dd>商家:<a href=\"#\">青云玩具店</a></dd>\r\n");
	templateBuilder.Append("						<dd>价格:<em>656</em>元</dd>\r\n");
	templateBuilder.Append("					</dl>\r\n");
	templateBuilder.Append("					<dl>\r\n");
	templateBuilder.Append("						<dt><img src=\"images/mall/proimg.gif\" alt=\"产品名称\"/></dt>\r\n");
	templateBuilder.Append("						<dd class=\"title\"><a href=\"#\">弹力北极熊</a></dd>\r\n");
	templateBuilder.Append("						<dd>商家:<a href=\"#\">青云玩具店</a></dd>\r\n");
	templateBuilder.Append("						<dd>价格:<em>656</em>元</dd>\r\n");
	templateBuilder.Append("					</dl>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div class=\"box salebox\">\r\n");
	templateBuilder.Append("				<h2><strong>人气排行</strong></h2>				\r\n");
	templateBuilder.Append("				<div class=\"innerbox rankingbox\">\r\n");
	templateBuilder.Append("					<div class=\"tabsbox\">\r\n");
	templateBuilder.Append("						<ul>\r\n");
	templateBuilder.Append("						<li class=\"cur\"><a href=\"#\">女装</a></li>\r\n");
	templateBuilder.Append("						<li><a href=\"#\">手机</a></li>\r\n");
	templateBuilder.Append("						<li><a href=\"#\">男装</a></li>\r\n");
	templateBuilder.Append("						<li><a href=\"#\">彩妆</a></li>\r\n");
	templateBuilder.Append("						</ul>\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("					<div class=\"rankbox\">\r\n");
	templateBuilder.Append("						<ul>\r\n");
	templateBuilder.Append("						<li><cite>1</cite>日本HIGh品牌裤装</li>\r\n");
	templateBuilder.Append("						<li><cite>2</cite>日本HIGh品牌裤装</li>\r\n");
	templateBuilder.Append("						<li><cite>3</cite>日本HIGh品牌裤装</li>\r\n");
	templateBuilder.Append("						<li><cite>4</cite>日本HIGh品牌裤装</li>\r\n");
	templateBuilder.Append("						<li><cite>5</cite>日本HIGh品牌裤装</li>\r\n");
	templateBuilder.Append("						<li><cite>6</cite>日本HIGh品牌裤装</li>\r\n");
	templateBuilder.Append("						<li><cite>7</cite>日本HIGh品牌裤装</li>\r\n");
	templateBuilder.Append("						<li><cite>8</cite>日本HIGh品牌裤装</li>\r\n");
	templateBuilder.Append("						<li><cite>9</cite>日本HIGh品牌裤装</li>\r\n");
	templateBuilder.Append("						</ul>\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("				</div>\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}
	else
	{


	templateBuilder.Append("<div class=\"ntforumbox\">\r\n");
	templateBuilder.Append("	<div class=\"titlebar\">\r\n");
	templateBuilder.Append("		<h3>出现了" + page_err.ToString() + "个错误</h3>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"forumerror\">\r\n");
	templateBuilder.Append("				" + msgbox_text.ToString() + "\r\n");
	templateBuilder.Append("				<p class=\"errorback\">\r\n");
	templateBuilder.Append("						<script language=\"javascript\">\r\n");
	templateBuilder.Append("							if(" + msgbox_showbacklink.ToString() + ")\r\n");
	templateBuilder.Append("							{\r\n");
	templateBuilder.Append("								document.write(\"<a href=\\\"" + msgbox_backlink.ToString() + "\\\">返回上一步</a> &nbsp; &nbsp;|&nbsp; &nbsp  \");\r\n");
	templateBuilder.Append("							}\r\n");
	templateBuilder.Append("						</" + "script>\r\n");
	templateBuilder.Append("						<a href=\"forumindex.aspx\">论坛首页</a>\r\n");

	if (usergroupid==7)
	{

	templateBuilder.Append("						 &nbsp; &nbsp|&nbsp; &nbsp; <a href=\"register.aspx\">注册</a>\r\n");

	}	//end if

	templateBuilder.Append("				</p>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");



	}	//end if



	if (footerad!="")
	{

	templateBuilder.Append("<!--底部广告显示-->\r\n");
	templateBuilder.Append("<div id=\"bottomad\">" + footerad.ToString() + "</div>\r\n");
	templateBuilder.Append("<!--底部广告结束-->\r\n");

	}	//end if

	templateBuilder.Append("<div id=\"forumfooter\">\r\n");
	templateBuilder.Append("	<div class=\"footercopy\">\r\n");
	templateBuilder.Append("	 	<p>\r\n");
	templateBuilder.Append("			版权所有 <a href=\"" + config.Weburl.ToString().Trim() + "\" target=\"_blank\">" + config.Webtitle.ToString().Trim() + "</a>&nbsp; " + config.Linktext.ToString().Trim() + "\r\n");

	if (config.Sitemapstatus==1)
	{

	templateBuilder.Append("&nbsp;<a href=\"tools/sitemap.aspx\" target=\"_blank\" title=\"百度论坛收录协议\">Sitemap</a>\r\n");

	}	//end if

	templateBuilder.Append("			" + config.Statcode.ToString().Trim() + "\r\n");
	templateBuilder.Append("		</p>\r\n");
	templateBuilder.Append("		<span>Powered by <a href=\"http://nt.discuz.net\" target=\"_blank\" title=\"Discuz!NT 2.0 (.net Framework 2.x/3.x)\"><em>Discuz!NT</em></a>&nbsp;<em>2.5.0 \r\n");

	if (config.Licensed==1)
	{

	templateBuilder.Append("				(<a href=\"\" onclick=\"this.href='http://nt.discuz.net/certificate/?host='+location.href.substring(0, location.href.lastIndexOf('/'))\" target=\"_blank\">Licensed</a>)\r\n");

	}	//end if

	templateBuilder.Append("				&nbsp;&nbsp; " + config.Forumcopyright.ToString().Trim() + "</em>\r\n");

	if (config.Debug!=0)
	{

	templateBuilder.Append("<br/>\r\n");
	templateBuilder.Append("				Processed in " + this.Processtime.ToString().Trim() + " second(s)\r\n");

	if (isguestcachepage==1)
	{

	templateBuilder.Append("						(Cached).\r\n");

	}
	else if (querycount>1)
	{

	templateBuilder.Append("				        , " + querycount.ToString() + " queries.\r\n");

	}
	else
	{

	templateBuilder.Append("				        , " + querycount.ToString() + " query.\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("				" + config.Icp.ToString().Trim() + "\r\n");
	templateBuilder.Append("		 </span>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div class=\"footergoto\">\r\n");
	templateBuilder.Append("		<span><img src=\"templates/" + templatepath.ToString() + "/images/gototop2.gif\" alt=\"返顶部\" onclick=\"window.scrollTo(0,0)\" /></span>\r\n");

	if (config.Stylejump==1)
	{


	if (userid!=-1 || config.Guestcachepagetimeout<=0)
	{

	templateBuilder.Append("		<select onchange=\"if(this.options[this.selectedIndex].value != '') {window.location=('showtemplate.aspx?templateid='+this.options[this.selectedIndex].value) }\">\r\n");
	templateBuilder.Append("			<option selected>切换界面...</option>\r\n");
	templateBuilder.Append("			" + templatelistboxoptions.ToString() + "\r\n");
	templateBuilder.Append("		</select>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div id=\"my_menu\" class=\"ntdropmenu\" style=\"display: none;\">\r\n");
	templateBuilder.Append("		<a href=\"mytopics.aspx\">我的主题</a>\r\n");
	templateBuilder.Append("		<a href=\"myposts.aspx\">我的帖子</a>\r\n");
	templateBuilder.Append("		<a href=\"search.aspx?posterid=" + userid.ToString() + "&amp;type=digest\">我的精华</a>\r\n");
	templateBuilder.Append("        <a href=\"myattachment.aspx\">我的附件</a>\r\n");

	if (config.Enablespace==1)
	{

	templateBuilder.Append("		<a href=\"" + spaceurl.ToString() + "space/\">我的空间</a>\r\n");

	}	//end if


	if (config.Enablealbum==1)
	{

	templateBuilder.Append("		<a href=\"showalbumlist.aspx?uid=" + userid.ToString() + "\">我的相册</a>\r\n");

	}	//end if


	if (config.Enablemall>=1)
	{

	templateBuilder.Append("		<a href=\"usercpmygoods.aspx\">我的商品</a>\r\n");

	}	//end if

	templateBuilder.Append("		<script type=\"text/javascript\" src=\"javascript/mymenu.js\"></" + "script>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (querydetail!="")
	{

	templateBuilder.Append("<div id=\"debug_bar\" style=\"padding: 0pt 10px; background: rgb(232, 243, 253) none repeat scroll 0%; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; text-align: left;\">\r\n");
	templateBuilder.Append("<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n");
	templateBuilder.Append("<tbody>\r\n");
	templateBuilder.Append("<tr>\r\n");
	templateBuilder.Append("<td colspan=\"3\">\r\n");
	templateBuilder.Append("<span onclick=\"$('debug_bar').style.display = 'none'\" style=\"cursor: pointer;\">[关闭]</span>\r\n");
	templateBuilder.Append("<span onclick=\"debugdisplay('debugwinquery')\" style=\"cursor: pointer;\"> | [查询 " + querycount.ToString() + " 次]</span>\r\n");
	templateBuilder.Append("<!--\r\n");
	templateBuilder.Append("<span onclick=\"debugdisplay('debugwininclude')\" style=\"cursor: pointer;\"> | [引用19 个]</span>\r\n");
	templateBuilder.Append("<span onclick=\"debugdisplay('debugwindcookie')\" style=\"cursor: pointer;\"> | [DCOOKIE]</span>\r\n");
	templateBuilder.Append("<span onclick=\"debugdisplay('debugwindsession')\" style=\"cursor: pointer;\"> | [DSESSION]</span>\r\n");
	templateBuilder.Append("<span onclick=\"debugdisplay('debugwincache')\" style=\"cursor: pointer;\"> | [DCACHE]</span>\r\n");
	templateBuilder.Append("<span onclick=\"debugdisplay('debugwinplugin')\" style=\"cursor: pointer;\"> | [DPLUGIN]</span>\r\n");
	templateBuilder.Append("<span onclick=\"debugdisplay('debugwinsettings')\" style=\"cursor: pointer;\"> | [settings]</span>\r\n");
	templateBuilder.Append("<span onclick=\"debugdisplay('debugwinenv')\" style=\"cursor: pointer;\"> | [环境]</span>\r\n");
	templateBuilder.Append("-->\r\n");
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("</tr>\r\n");
	templateBuilder.Append("</tbody>\r\n");
	templateBuilder.Append("</table>\r\n");
	templateBuilder.Append("<div id=\"debugwinquery\" style=\"display: none;\">" + querydetail.ToString() + "</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("function debugdisplay(id)\r\n");
	templateBuilder.Append("{\r\n");
	templateBuilder.Append("    if ($(id).style.display == 'none')\r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        $(id).style.display = '';\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("    else\r\n");
	templateBuilder.Append("    {\r\n");
	templateBuilder.Append("        $(id).style.display = 'none';\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append("}\r\n");
	templateBuilder.Append("</" + "script>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if





	if (floatad!="")
	{

	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/template_floatadv.js\"></" + "script>\r\n");
	templateBuilder.Append("	" + floatad.ToString() + "\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">theFloaters.play();</" + "script>\r\n");

	}
	else if (doublead!="")
	{

	templateBuilder.Append("	<script type=\"text/javascript\" src=\"javascript/template_floatadv.js\"></" + "script>\r\n");
	templateBuilder.Append("	" + doublead.ToString() + "\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">theFloaters.play();</" + "script>\r\n");

	}	//end if



	templateBuilder.Append("" + mediaad.ToString() + "\r\n");
	templateBuilder.Append("" + inforumad.ToString() + "\r\n");

	templateBuilder.Append("<div id=\"quicksearch_menu\" class=\"searchmenu\" style=\"display: none;\">\r\n");
	templateBuilder.Append("				<div onclick=\"document.getElementById('keywordtype').value='0';document.getElementById('quicksearch').innerHTML='帖子标题';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">帖子标题</div>\r\n");
	templateBuilder.Append("				<div onclick=\"document.getElementById('keywordtype').value='2';document.getElementById('quicksearch').innerHTML='空间日志';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">空间日志</div>\r\n");
	templateBuilder.Append("				<div onclick=\"document.getElementById('keywordtype').value='3';document.getElementById('quicksearch').innerHTML='相册标题';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">相册标题</div>\r\n");
	templateBuilder.Append("				<div onclick=\"document.getElementById('keywordtype').value='8';document.getElementById('quicksearch').innerHTML='作&nbsp;&nbsp;者';document.getElementById('quicksearch_menu').style.display='none';\" onmouseover=\"MouseCursor(this);\">作&nbsp;&nbsp;者</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</body>\r\n");
	templateBuilder.Append("</html>\r\n");



	Response.Write(templateBuilder.ToString());
}
</script>
