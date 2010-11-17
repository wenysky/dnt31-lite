<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.showgoodslist" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:56.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:56. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");

	if (page_err==0)
	{

	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var templatepath = \"");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("	var fid = parseInt(");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("	var postminchars = parseInt(");
	templateBuilder.Append(config.Minpostsize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("	var postmaxchars = parseInt(");
	templateBuilder.Append(config.Maxpostsize.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("	var disablepostctrl = parseInt(");
	templateBuilder.Append(disablepostctrl.ToString());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");

	}	//end if

	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/locations.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_showgoodslist.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"headsearch\">\r\n");
	templateBuilder.Append("		<div id=\"search\">\r\n");

	if (usergroupinfo.Allowsearch>0)
	{





	}	//end if

	templateBuilder.Append("		</div>\r\n");

	if (page_err==0)
	{

	templateBuilder.Append("		<p>\r\n");
	templateBuilder.Append("			<a href=\"showtopiclist.aspx?type=digest&amp;forums=");
	templateBuilder.Append(forum.Fid.ToString().Trim());
	templateBuilder.Append("\">精华帖区</a>\r\n");

	if (forumallowrss!=0)
	{

	 aspxrewriteurl = this.RssAspxRewrite(forum.Fid);
	
	templateBuilder.Append("				<a href=\"tools/");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/rss.gif\" alt=\"Rss\"/></a>\r\n");

	}	//end if

	templateBuilder.Append("		</p>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("		<div class=\"userinfolist\">\r\n");

	if (page_err==0)
	{

	templateBuilder.Append("		<p><a id=\"forumlist\" href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" \r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("		onmouseover=\"showMenu(this.id);\" onmouseout=\"showMenu(this.id);\"\r\n");

	}	//end if

	templateBuilder.Append("		>");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; ");
	templateBuilder.Append(goodscategoryinfo.Pathlist.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</p>\r\n");
	templateBuilder.Append("			<p> 版主: \r\n");
	templateBuilder.Append("			<em>\r\n");

	if (forum.Moderators!="")
	{

	templateBuilder.Append("				");
	templateBuilder.Append(forum.Moderators.ToString().Trim());
	templateBuilder.Append("\r\n");

	}
	else
	{

	templateBuilder.Append("				*空缺中*\r\n");

	}	//end if

	templateBuilder.Append("			</em>\r\n");
	templateBuilder.Append("			</p>\r\n");

	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("	");
	templateBuilder.Append(navhomemenu.ToString());
	templateBuilder.Append("\r\n");

	}	//end if


	if (page_err==0)
	{

	templateBuilder.Append("<table cellspacing=\"1\" cellpadding=\"0\" class=\"portalbox\" summary=\"HeadBox\">\r\n");
	templateBuilder.Append("<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("	<td>\r\n");
	templateBuilder.Append("		<h3>商品分类</h3>\r\n");
	templateBuilder.Append("		<ul id=\"categories\">\r\n");
	templateBuilder.Append("		<script language=\"javascript\">\r\n");
	templateBuilder.Append("		");
	templateBuilder.Append(subcategoriesjson.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		loadcategory(");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("</tbody> \r\n");
	templateBuilder.Append("</table>\r\n");

	if (showforumlogin==1)
	{

	templateBuilder.Append("<div class=\"mainbox formbox\">\r\n");
	templateBuilder.Append("	<h3>本版块已经被管理员设置了密码</h3>\r\n");
	templateBuilder.Append("	<form id=\"forumlogin\" name=\"forumlogin\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">\r\n");
	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>请输入密码:</th>\r\n");
	templateBuilder.Append("				<td><input name=\"forumpassword\" type=\"password\" id=\"forumpassword\" size=\"20\"/></td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			</tbody>\r\n");

	if (isseccode)
	{

	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>输入验证码:</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<div style=\"position: relative;\">\r\n");



	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("		        </td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			</tbody>\r\n");

	}	//end if

	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<th>&nbsp;</th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<input type=\"submit\"  value=\"确定\" class=\"sbutton\"/>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");
	templateBuilder.Append("	</form>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	}
	else
	{





	if (forum.Rules!="")
	{

	templateBuilder.Append("		<table class=\"portalbox\" cellspacing=\"1\" cellpadding=\"0\" summary=\"rules and recommend\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("			<td id=\"rules\">\r\n");
	templateBuilder.Append("				<span class=\"headactions recommendrules\"><img id=\"rules_img\" title=\"收起/展开\" onclick=\"$('rules_link').style.display = '';toggle_collapse('rules', 1);\" alt=\"收起/展开\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/collapsed_no.gif\" /></span> <h3>本版规则</h3>");
	templateBuilder.Append(forum.Rules.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		</table>\r\n");

	}	//end if





	if (forum.Layer!=0)
	{

	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			<kbd>跳转<input name=\"gopage\" type=\"text\" id=\"Text1\" onKeyDown=\"if(event.keyCode==13) { if(parseInt('");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append("')==1) {window.location='showgoodslist-");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append("-' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1) + '");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("';}else{window.location='showgoodslist.aspx?categoryid=");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append("&page=' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1)}}\" size=\"4\" maxlength=\"9\"/>页</kbd>\r\n");
	templateBuilder.Append("		</div>\r\n");

	if (canposttopic)
	{

	templateBuilder.Append("			<span class=\"postbtn\"><a href=\"postgoods.aspx?categoryid=");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append("\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/postshop.gif\" alt=\"发布商品\" /></a></span>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<form id=\"moderate\" name=\"moderate\" method=\"post\" action=\"goodsadmin.aspx?action=moderate&categoryid=");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("	<div class=\"mainbox threadlist shoplist\">\r\n");
	templateBuilder.Append("		<h3>\r\n");
	 aspxrewriteurl = this.ShowGoodsListAspxRewrite(categoryid, 1);
	
	templateBuilder.Append("			<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(goodscategoryinfo.Categoryname.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("			<em>(商品:");
	templateBuilder.Append(goodscount.ToString());
	templateBuilder.Append(")</em>\r\n");
	templateBuilder.Append("		</h3>\r\n");
	templateBuilder.Append("		<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\" style=\"table-layout:fixed;\">\r\n");
	templateBuilder.Append("			<thead class=\"category\">\r\n");
	templateBuilder.Append("			<tr>\r\n");
	templateBuilder.Append("				<td class=\"folder\">&nbsp;</td>\r\n");
	templateBuilder.Append("				<td style=\"width:100px;\">&nbsp;</td>\r\n");
	templateBuilder.Append("				<th>商品名称/卖家</th>\r\n");
	templateBuilder.Append("				<td class=\"nums\">数量</td>\r\n");
	templateBuilder.Append("				<td class=\"nums\">价格</td>\r\n");
	templateBuilder.Append("				<td class=\"nums\">运费</td>\r\n");
	templateBuilder.Append("				<td class=\"nums\">所在地</td>\r\n");
	templateBuilder.Append("				<td class=\"author\" style=\"text-align:center;\">截至日期</td>\r\n");
	templateBuilder.Append("			</tr>\r\n");
	templateBuilder.Append("			</thead>\r\n");
	templateBuilder.Append("			<!--announcement start-->\r\n");

	int announcement__loop__id=0;
	foreach(DataRow announcement in announcementlist.Rows)
	{
		announcement__loop__id++;

	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	templateBuilder.Append("					<td><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/announcement.gif\" alt=\"announcement\" /></td>\r\n");
	templateBuilder.Append("					<td>&nbsp;</td>\r\n");
	templateBuilder.Append("					<th>\r\n");
	templateBuilder.Append("						<a href=\"announcement.aspx#" + announcement["id"].ToString().Trim() + "\">" + announcement["title"].ToString().Trim() + "</a>\r\n");
	templateBuilder.Append("					</th>\r\n");
	templateBuilder.Append("					<td colspan=3>\r\n");

	if (Utils.StrToInt(announcement["posterid"].ToString().Trim(), 0)==-1)
	{

	templateBuilder.Append("								游客\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(announcement["posterid"].ToString().Trim());
	
	templateBuilder.Append("								<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">" + announcement["poster"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("					</td>\r\n");
	templateBuilder.Append("					<td>-</td>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("			</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("			<!--announcement end-->\r\n");
	templateBuilder.Append("			<!--goodslist start-->\r\n");

	int goodsinfo__loop__id=0;
	foreach(Goodsinfo goodsinfo in goodslist)
	{
		goodsinfo__loop__id++;

	templateBuilder.Append("			<tbody>\r\n");
	templateBuilder.Append("				<tr>\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(goodsinfo.Goodsid);
	
	templateBuilder.Append("					<td><input type=\"checkbox\" name=\"goodsid\" value=\"");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\" /></td>\r\n");
	templateBuilder.Append("					<td class=\"shoppicture\">\r\n");
	templateBuilder.Append("						<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");

	if (goodsinfo.Goodspic=="")
	{

	templateBuilder.Append("							<img width=\"80\" height=\"80\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/mall/nogoods_small.gif\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("							<img width=\"80\" height=\"80\" src=\"upload/");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}	//end if

	templateBuilder.Append("						</a>\r\n");
	templateBuilder.Append("					</td>		        \r\n");
	templateBuilder.Append("					<th>\r\n");
	templateBuilder.Append("						<p><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodsinfo.Htmltitle.ToString().Trim());
	templateBuilder.Append("</a></p>\r\n");
	templateBuilder.Append("						<p>卖家:\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(goodsinfo.Selleruid);
	
	templateBuilder.Append("							<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodsinfo.Seller.ToString().Trim());
	templateBuilder.Append("</a></p>\r\n");
	templateBuilder.Append("						<p><a class=\"buybutton\" href=\"usercppostpm.aspx?msgtoid=");
	templateBuilder.Append(goodsinfo.Selleruid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">给我留言</a> <a class=\"buybutton\" href=\"favorites.aspx?goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\">收藏</a></p>\r\n");
	templateBuilder.Append("					</th>\r\n");
	templateBuilder.Append("					<td class=\"nums\">");
	templateBuilder.Append(goodsinfo.Amount.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("					<td class=\"nums\"><p class=\"price\">");
	templateBuilder.Append(goodsinfo.Price.ToString().Trim());
	templateBuilder.Append("</p></td>\r\n");
	templateBuilder.Append("					<td class=\"nums\">");
	templateBuilder.Append(goodsinfo.Ordinaryfee.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("					<td class=\"nums\">");
	templateBuilder.Append(goodsinfo.Locus.ToString().Trim());
	templateBuilder.Append("&nbsp;</td>\r\n");
	templateBuilder.Append("					<td>");
	templateBuilder.Append(goodsinfo.Expiration.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("				</tr>\r\n");
	templateBuilder.Append("			</tbody>\r\n");

	}	//end loop

	templateBuilder.Append("			<!--goodslist end-->\r\n");
	templateBuilder.Append("		</table>\r\n");

	if (useradminid>0 && ismoder)
	{

	templateBuilder.Append("		<div class=\"footoperation\"><strong>批量管理选项</strong> &nbsp;\r\n");
	templateBuilder.Append("			<input class=\"radio\" name=\"operat\" type=\"hidden\" />\r\n");
	templateBuilder.Append("			<input class=\"checkbox\" name=\"chkall\" onclick=\"checkall(this.form, 'goodsid')\" type=\"checkbox\" />全选\r\n");
	templateBuilder.Append("			<button onclick=\"document.moderate.operat.value = 'delete';document.moderate.submit()\"/>删除商品</button>\r\n");
	templateBuilder.Append("			<button onclick=\"document.moderate.operat.value = 'highlight';document.moderate.submit()\" />高亮显示</button>\r\n");
	templateBuilder.Append("			<button onclick=\"document.moderate.operat.value = 'close';document.moderate.submit()\" />关闭商品</button>\r\n");
	templateBuilder.Append("			<button onclick=\"document.moderate.operat.value = 'movecategory';document.moderate.submit()\" />移动商品</button>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	</form>\r\n");
	templateBuilder.Append("	<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("		<div class=\"pages\">\r\n");
	templateBuilder.Append("			<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			<kbd>跳转<input name=\"gopage\" type=\"text\" id=\"Text1\" onKeyDown=\"if(event.keyCode==13) { if(parseInt('");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append("')==1) {window.location='showgoodslist-");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append("-' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1) + '");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("';}else{window.location='showgoodslist.aspx?categoryid=");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append("&page=' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1)}}\" size=\"4\" maxlength=\"9\"/>页</kbd>\r\n");
	templateBuilder.Append("		</div>\r\n");

	if (canposttopic)
	{

	templateBuilder.Append("			<span class=\"postbtn\"><a href=\"postgoods.aspx?categoryid=");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append("\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/postshop.gif\" alt=\"发布商品\" /></a></span>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"footfilter\" class=\"box\">\r\n");
	templateBuilder.Append("		<form name=\"LookBySearch\" method=\"post\" action=\"showgoodslist.aspx?search=1&categoryid=");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("		所在地点:<select class=\"input_gray\" style=\"width: 130px;\"  id=\"locus_1\" name=\"locus_1\"></select>\r\n");
	templateBuilder.Append("			城市:<select class=\"input_gray\" style=\"width: 90px;\" id=\"locus_2\" name=\"locus_2\"></select>\r\n");
	templateBuilder.Append("				 <script language=\"javascript\">var locus = '");
	templateBuilder.Append(locus.ToString());
	templateBuilder.Append("'; initstate();</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("		排序方式:<select name=\"order\" id=\"order\">\r\n");
	templateBuilder.Append("					<option value=\"1\" \r\n");

	if (order==1)
	{

	templateBuilder.Append("selected \r\n");

	}	//end if

	templateBuilder.Append(">商品价格</option>\r\n");
	templateBuilder.Append("					<option value=\"2\" \r\n");

	if (order==2)
	{

	templateBuilder.Append("selected \r\n");

	}	//end if

	templateBuilder.Append(">截至日期</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				<select name=\"direct\" id=\"direct\">\r\n");
	templateBuilder.Append("				  <option value=\"0\" \r\n");

	if (direct==0)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">按升序排列</option>\r\n");
	templateBuilder.Append("				  <option value=\"1\" \r\n");

	if (direct==1)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">按降序排列</option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				<button type=\"submit\">提交</button>\r\n");
	templateBuilder.Append("		</form>\r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("			<select onchange=\"if(this.options[this.selectedIndex].value != '') { jumpurl(this.options[this.selectedIndex].value,");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(",'");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("');}\">\r\n");
	templateBuilder.Append("					<option>论坛跳转...</option>\r\n");
	templateBuilder.Append("					");
	templateBuilder.Append(forumlistboxoptions.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</select>\r\n");

	}	//end if


	if (config.Visitedforums>0)
	{

	templateBuilder.Append("			<select name=\"select2\" onchange=\"if(this.options[this.selectedIndex].value != '') {jumpurl(this.options[this.selectedIndex].value,");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(",'");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("');}\">\r\n");
	templateBuilder.Append("				  <option>最近访问...</option>");
	templateBuilder.Append(visitedforumsoptions.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("			</select>\r\n");

	}	//end if

	templateBuilder.Append("		<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("		var categorydata = ");
	templateBuilder.Append(goodscategoryfid.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("		function jumpurl(fid, aspxrewrite, extname) {\r\n");
	templateBuilder.Append("			for(var i in categorydata) {\r\n");
	templateBuilder.Append("			   if(categorydata[i].fid == fid) {\r\n");
	templateBuilder.Append("				   if(aspxrewrite) {\r\n");
	templateBuilder.Append("					   window.location='showgoodslist-' +categorydata[i].categoryid + extname;\r\n");
	templateBuilder.Append("				   }\r\n");
	templateBuilder.Append("				   else {\r\n");
	templateBuilder.Append("					   window.location='showgoodslist.aspx?categoryid=' +categorydata[i].categoryid;\r\n");
	templateBuilder.Append("				   }\r\n");
	templateBuilder.Append("				   return;\r\n");
	templateBuilder.Append("			   } \r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			if(aspxrewrite) {\r\n");
	templateBuilder.Append("				window.location='showforum-' + fid + extname;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("			else {\r\n");
	templateBuilder.Append("				window.location='showforum.aspx?forumid=' + fid ;\r\n");
	templateBuilder.Append("			}\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</div>\r\n");

	}	//end if


	if (config.Whosonlinestatus!=0 && config.Whosonlinestatus!=1)
	{

	templateBuilder.Append("<div class=\"box\" id=\"online\">\r\n");
	templateBuilder.Append("	<span class=\"headactions\">\r\n");

	if (DNTRequest.GetString("showonline")=="no")
	{

	templateBuilder.Append("			<a href=\"?showonline=yes#online\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/collapsed_yes.gif\" alt=\"展开/收起\" />\r\n");

	}
	else
	{

	templateBuilder.Append("			<a href=\"?showonline=no#online\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/collapsed_no.gif\" alt=\"展开/收起\" />\r\n");

	}	//end if

	templateBuilder.Append("		</a>\r\n");
	templateBuilder.Append("	</span>\r\n");
	templateBuilder.Append("	<h4>\r\n");
	templateBuilder.Append("		<strong>在线用户:");
	templateBuilder.Append(forumtotalonline.ToString());
	templateBuilder.Append("人</strong>\r\n");
	templateBuilder.Append("	</h4>\r\n");
	templateBuilder.Append("	<dl id=\"onlinelist\">\r\n");
	templateBuilder.Append("		<dt>");
	templateBuilder.Append(onlineiconlist.ToString());
	templateBuilder.Append("</dt>\r\n");
	templateBuilder.Append("		<dd>\r\n");
	templateBuilder.Append("		<ul id=\"online\">\r\n");

	if (showforumonline)
	{


	int onlineuser__loop__id=0;
	foreach(OnlineUserInfo onlineuser in onlineuserlist)
	{
		onlineuser__loop__id++;


	if (onlineuser.Invisible==1)
	{

	templateBuilder.Append("							<li>(隐身会员)</li>\r\n");

	}
	else
	{

	templateBuilder.Append("							<li>");
	templateBuilder.Append(onlineuser.Olimg.ToString().Trim());
	templateBuilder.Append("\r\n");

	if (onlineuser.Userid==-1)
	{

	templateBuilder.Append("									");
	templateBuilder.Append(onlineuser.Username.ToString().Trim());
	templateBuilder.Append("\r\n");

	}
	else
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(onlineuser.Userid);
	
	templateBuilder.Append("									<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(onlineuser.Username.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}	//end if

	templateBuilder.Append("							</li>\r\n");

	}	//end if


	}	//end loop


	}
	else
	{

	templateBuilder.Append("				<li style=\"width: auto\"><a href=\"?showonline=yes#online\">点击查看在线列表</a></li>\r\n");

	}	//end if

	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("		</dd>\r\n");
	templateBuilder.Append("	</dl>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if

	templateBuilder.Append("		</div>\r\n");

	}	//end if


	}
	else
	{


	if (needlogin)
	{





	}
	else
	{





	}	//end if

	templateBuilder.Append("	</div>\r\n");

	}	//end if
	templateBuilder.Append(mediaad.ToString());
	templateBuilder.Append("\r\n");




	Response.Write(templateBuilder.ToString());
}
</script>
