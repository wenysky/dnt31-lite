<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.editgoods" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:50.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:50. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_calendar.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var postminchars = parseInt('");
	templateBuilder.Append(config.Minpostsize.ToString().Trim());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var postmaxchars = parseInt('");
	templateBuilder.Append(config.Maxpostsize.ToString().Trim());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var disablepostctrl = parseInt('");
	templateBuilder.Append(disablepost.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("var tradepost = 1;\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<!--TheCurrent start-->\r\n");

	if (page_err==0)
	{


	if (ispost)
	{





	}
	else
	{

	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"home\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <strong>");
	templateBuilder.Append(goodscategoryinfo.Pathlist.ToString().Trim());
	templateBuilder.Append("</strong> &raquo; <strong>编辑商品</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"headsearch\">\r\n");
	templateBuilder.Append("		<div id=\"search\">\r\n");



	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div class=\"mainbox\">\r\n");
	templateBuilder.Append("<h3>编辑商品</h3>\r\n");
	templateBuilder.Append("<form method=\"post\" name=\"postform\" id=\"postform\" action=\"\" enctype=\"multipart/form-data\" onsubmit=\"\">\r\n");
	templateBuilder.Append("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");



	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"navformcommend\"  colspan=\"2\">商品信息</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>商品类目:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");

	if (goodscategoryinfo==null || goodscategoryinfo.Categoryname=="")
	{

	templateBuilder.Append("			    <input type=\"hidden\" id=\"goodscategoryid\" name=\"goodscategoryid\" value=\"-1\"/>			    \r\n");
	templateBuilder.Append("				<span id=\"goodstypeinfo\">暂无分类</span>				 \r\n");

	}
	else
	{

	templateBuilder.Append("			    <input type=\"hidden\" id=\"goodscategoryid\" name=\"goodscategoryid\" value=\"");
	templateBuilder.Append(goodscategoryinfo.Categoryid.ToString().Trim());
	templateBuilder.Append("\"/>\r\n");
	templateBuilder.Append("				<span id=\"goodstypeinfo\">");
	templateBuilder.Append(goodscategoryinfo.Categoryname.ToString().Trim());
	templateBuilder.Append("</span>\r\n");

	}	//end if


	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var enablemall = parseInt('");
	templateBuilder.Append(config.Enablemall.ToString().Trim());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("[<a href=\"javascript:;\" onclick=\"setCategory('goodscategoryid');boxShow('editcategoryinfo');\">选择...</a>]\r\n");

	if (config.Enablemall==1)
	{

	templateBuilder.Append("				<div id=\"BOX_overlay\" style=\"background: #000; position: absolute; z-index:100; filter:alpha(opacity=50);-moz-opacity: 0.6;opacity: 0.6;\"></div>\r\n");
	templateBuilder.Append("					<div id=\"editcategoryinfo\" style=\"display: none; background :#fff; padding:10px; border:1px solid #999; width:740px;\">\r\n");
	templateBuilder.Append("					<h3 style=\"line-height:270%;margin-top:15px;\"><a name=\"edit\" />请选择已绑定版块的商品分类(不带*号):</a></h3>\r\n");
	templateBuilder.Append("					<div class=\"CompartLine\">&nbsp;</div>\r\n");
	templateBuilder.Append("					<div id=\"categoryselector\">\r\n");
	templateBuilder.Append("					<ul id=\"categorylevel0\" class=\"\"></ul>\r\n");
	templateBuilder.Append("					<ul id=\"categorylevel1\" class=\"blank\"/></ul>\r\n");
	templateBuilder.Append("					<ul id=\"categorylevel2\" class=\"blank\"/></ul>\r\n");
	templateBuilder.Append("					<ul id=\"categorylevel3\" class=\"blank\"/></ul>\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("					<div style=\"padding-top:5px;text-align:center;\" >					\r\n");
	templateBuilder.Append("					<input type=\"button\" name=\"submit\" value=\"确定\" onclick=\"submitCategory();\" /> &nbsp; \r\n");
	templateBuilder.Append("					<input type=\"button\" name=\"cancel\" value=\"取消\" onclick=\"boxRemove('editcategoryinfo');\" /> &nbsp; 							\r\n");
	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("				</div>\r\n");

	}	//end if

	templateBuilder.Append("<script language=\"javascript\" src=\"javascript/template_goodsadmin.js\"></");
	templateBuilder.Append("script>\r\n");


	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>商品类型:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<select id=\"quality\" name=\"quality\" tabindex=\"51\">\r\n");
	templateBuilder.Append("				<option value=\"1\" \r\n");

	if (goodsinfo.Quality==1)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">全新</option>\r\n");
	templateBuilder.Append("				<option value=\"2\" \r\n");

	if (goodsinfo.Quality==2)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">二手</option>\r\n");
	templateBuilder.Append("			</select>\r\n");
	templateBuilder.Append("			<select id=\"itemtype\"  name=\"itemtype\" tabindex=\"52\">\r\n");
	templateBuilder.Append("				<option value=\"1\" \r\n");

	if (goodsinfo.Itemtype==1)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">商品</option>\r\n");
	templateBuilder.Append("				<option value=\"2\" \r\n");

	if (goodsinfo.Itemtype==2)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">服务</option>\r\n");
	templateBuilder.Append("				<option value=\"3\" \r\n");

	if (goodsinfo.Itemtype==3)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">拍卖</option>\r\n");
	templateBuilder.Append("				<option value=\"4\" \r\n");

	if (goodsinfo.Itemtype==4)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">捐赠</option>\r\n");
	templateBuilder.Append("				<option value=\"5\" \r\n");

	if (goodsinfo.Itemtype==5)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">邮费</option>\r\n");
	templateBuilder.Append("				<option value=\"6\" \r\n");

	if (goodsinfo.Itemtype==6)
	{

	templateBuilder.Append("selected\r\n");

	}	//end if

	templateBuilder.Append(">奖金</option>\r\n");
	templateBuilder.Append("			</select>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>商品标题:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<span id=\"ticketTitle\" style=\"display: none;\"></span>\r\n");
	templateBuilder.Append("			<input id=\"title\" name=\"title\" maxlength=\"60\" size=\"40\" value=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\" class=\"colorblue\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\" >\r\n");

	if (canhtmltitle)
	{

	templateBuilder.Append("				<a id=\"titleEditorButton\" href=\"###\" onclick=\"\">高级编辑</a>\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\" src=\"javascript/dnteditor.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				<div id=\"titleEditorDiv\" style=\"display: none;\">\r\n");
	templateBuilder.Append("				<textarea name=\"htmltitle\" id=\"htmltitle\" cols=\"80\" rows=\"10\"></textarea>\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("					var forumpath = '");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("					var templatepath = '");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("					var temptitle = $('faketitle');\r\n");
	templateBuilder.Append("					var titleEditor = null;\r\n");
	templateBuilder.Append("					function AdvancedTitleEditor() {\r\n");
	templateBuilder.Append("						$('title').style.display = 'none';\r\n");
	templateBuilder.Append("						$('titleEditorDiv').style.display = '';\r\n");
	templateBuilder.Append("						$('titleEditorButton').style.display = 'none';\r\n");
	templateBuilder.Append("						titleEditor = new DNTeditor('htmltitle', '500', '50', '");
	templateBuilder.Append(htmltitle.ToString());
	templateBuilder.Append("'==''?$('title').value:'");
	templateBuilder.Append(htmltitle.ToString());
	templateBuilder.Append("');\r\n");
	templateBuilder.Append("						titleEditor.OnChange = function(){\r\n");
	templateBuilder.Append("							//temptitle.innerHTML = html2bbcode(titleEditor.GetHtml().replace(/<[^>]*>/ig, ''));\r\n");
	templateBuilder.Append("						}\r\n");
	templateBuilder.Append("						titleEditor.Basic = true;\r\n");
	templateBuilder.Append("						titleEditor.IsAutoSave = false;\r\n");
	templateBuilder.Append("						titleEditor.Style = forumpath + 'templates/' + templatepath + '/editor.css';\r\n");
	templateBuilder.Append("						titleEditor.BasePath = forumpath;\r\n");
	templateBuilder.Append("						titleEditor.ReplaceTextarea();\r\n");
	templateBuilder.Append("					}\r\n");
	templateBuilder.Append("					$('titleEditorButton').onclick = function(){\r\n");
	templateBuilder.Append("						AdvancedTitleEditor();\r\n");
	templateBuilder.Append("					};\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				</div>\r\n");

	if (htmltitle!="")
	{

	templateBuilder.Append("					<script type=\"text/javascript\">				\r\n");
	templateBuilder.Append("						AdvancedTitleEditor();\r\n");
	templateBuilder.Append("					</");
	templateBuilder.Append("script>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>上传图片:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<div style=\"float:left; padding-top:25px;\">\r\n");
	templateBuilder.Append("			<input type=\"file\" onchange=\"PhotoView(this.value,document.getElementById('previewImage'))\" id=\"upfilegoodspic\" name=\"postfile\" size=\"40\" class=\"colorfocus\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\"/> \r\n");
	templateBuilder.Append("			<br/><span class=\"posttip\">图片限定jpg或gif格式, 请确保图片在浏览器中可以正常打开.</span> &nbsp; &nbsp;&nbsp;\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div style=\"float:left; border: 1px solid #DDD; width: 75px; height: 75px; text-align:center;line-height:75px;\" id=\"previewImage\">\r\n");

	if (goodsinfo.Goodspic!="")
	{

	templateBuilder.Append("				<img width=\"75\" height=\"75\" src=\"/upload/");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("\" border=\"0\" alt=\"\" />\r\n");

	}
	else
	{

	templateBuilder.Append("				暂无图片\r\n");

	}	//end if

	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<!--编辑器代码段开始-->\r\n");



	templateBuilder.Append("	<!--编辑器代码段结束-->\r\n");

	if (allowviewattach && canpostattach)
	{

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>&nbsp;</th>\r\n");
	templateBuilder.Append("		<td><input type=\"button\" value=\"查看已上传附件>>\" onclick=\"expandoptions('attachfilelist');\" class=\"lightbutton\"/></td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>	\r\n");
	templateBuilder.Append("	<!--附件列表开始-->\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("	    <td colspan=\"2\"  style=\"border-top:none;\">\r\n");
	templateBuilder.Append("	    <div id=\"attachfilelist\" style=\"display:none\">\r\n");

	if (attachmentlist.Count>0)
	{

	templateBuilder.Append("				<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("				var attachments = new Array();\r\n");
	templateBuilder.Append("				var attachimgurl = new Array();\r\n");
	templateBuilder.Append("				function restore(aid) {\r\n");
	templateBuilder.Append("				obj = $('attach' + aid);\r\n");
	templateBuilder.Append("				objupdate = $('attachupdate' + aid);\r\n");
	templateBuilder.Append("				obj.style.display = '';\r\n");
	templateBuilder.Append("				objupdate.innerHTML = '<input type=\"file\" name=\"attachupdated\" style=\"display: none;\">';\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function attachupdate(aid) {\r\n");
	templateBuilder.Append("				obj = $('attach' + aid);\r\n");
	templateBuilder.Append("				objupdate = $('attachupdate' + aid);\r\n");
	templateBuilder.Append("				obj.style.display = 'none';\r\n");
	templateBuilder.Append("				objupdate.innerHTML = '<input type=\"file\" name=\"attachupdated\" class=\"colorblue\" onfocus=\"this.className=\\'colorfocus\\';\" onblur=\"this.className=\\'colorblue\\';\"  size=\"15\" /><input type=\"hidden\" value=\"' + aid + '\" name=\"attachupdatedid\" /> <input  onfocus=\"this.className=\\'colorfocus\\';\" onblur=\"this.className=\\'colorblue\\';\" class=\"colorblue\" type=\"button\" value=\"取 &nbsp; 消\" onclick=\"restore(\\'' + aid + '\\')\" />';\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function insertAttachTag(aid) {\r\n");
	templateBuilder.Append("				if (bbinsert && wysiwyg) {\r\n");
	templateBuilder.Append("				insertText('[attach]' + aid + '[/attach]', false);\r\n");
	templateBuilder.Append("				} else {\r\n");
	templateBuilder.Append("				AddText('[attach]' + aid + '[/attach]');\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				function insertAttachimgTag(aid) {\r\n");
	templateBuilder.Append("				if (bbinsert && wysiwyg) {\r\n");
	templateBuilder.Append("				var attachimgurl = eval('attachimgurl_' + aid);\r\n");
	templateBuilder.Append("				insertText('<img src=\"' + attachimgurl[0] + '\" border=\"0\" aid=\"attachimg_' + aid + '\" alt=\"\" />', false);\r\n");
	templateBuilder.Append("				} else {\r\n");
	templateBuilder.Append("				AddText('[attachimg]' + aid + '[/attachimg]');\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				}\r\n");
	templateBuilder.Append("				</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	    <table width=\"100%\" border=\"0\" align=\"center\" cellpadding=\"4\" cellspacing=\"0\">\r\n");
	templateBuilder.Append("              <tr style=\"line-height:25px;\">\r\n");
	templateBuilder.Append("                <td width=\"5%\" align=\"center\">删除</td>\r\n");
	templateBuilder.Append("                <td width=\"5%\" >附件ID</td>\r\n");
	templateBuilder.Append("                <td width=\"25%\">文件名</td>\r\n");
	templateBuilder.Append("                <td width=\"15%\">时间</td>\r\n");
	templateBuilder.Append("                <td width=\"10%\">附件大小</td>\r\n");
	templateBuilder.Append("                <td width=\"5%\">阅读权限</td>\r\n");
	templateBuilder.Append("                <td width=\"20%\">描述</td>\r\n");
	templateBuilder.Append("              </tr>\r\n");

	int attachment__loop__id=0;
	foreach(Goodsattachmentinfo attachment in attachmentlist)
	{
		attachment__loop__id++;


	if (Utils.StrToInt(attachment.Goodsid, 0)==goodsinfo.Goodsid)
	{

	templateBuilder.Append("              <tr onmouseover=\"this.style.backgroundColor='#fff'\" onmouseout=\"this.style.backgroundColor='#F5FBFF'\">\r\n");
	templateBuilder.Append("                <td align=\"center\"><input class=\"checkbox\" name=\"deleteaid\" value=\"");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\" type=\"checkbox\"></td>\r\n");
	templateBuilder.Append("                <td >");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("<input type=\"hidden\" value=\"");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\" name=\"attachupdateid\" /></td>\r\n");
	templateBuilder.Append("                <td>\r\n");
	templateBuilder.Append("					<div id=\"attach");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("						<a href=\"###\" class=\"right\" onclick=\"attachupdate('");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("')\">[更新]</a>\r\n");
	templateBuilder.Append("						<a href=\"###\" class=\"right\" onclick=\"\r\n");

	if (attachment.Filetype.IndexOf("image")>-1)
	{

	templateBuilder.Append("insertAttachimgTag('");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("');\r\n");

	}
	else
	{

	templateBuilder.Append("insertAttachTag('");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("');\r\n");

	}	//end if

	templateBuilder.Append("\" title=\"点击这里将本附件插入帖子内容中当前光标的位置\">[插入]</a>\r\n");
	templateBuilder.Append("						<script type=\"text/javascript\">attachimgurl_");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append(" = ['attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("', 400];</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("						<span id=\"imgpreview_");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\" \r\n");

	if (attachment.Filetype.IndexOf("image")>-1)
	{

	templateBuilder.Append("onmouseover=\"if($('imgpreview_");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("_image').width > 400)$('imgpreview_");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("_image').width = 400;showMenu(this.id, 0, 0, 1, 0);\"\r\n");

	}	//end if

	templateBuilder.Append("><a href=\"attachment.aspx?attachmentid=");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(attachment.Attachment.ToString().Trim());
	templateBuilder.Append("</a></span>\r\n");

	if (attachment.Filetype.IndexOf("image")>-1)
	{

	templateBuilder.Append("<div class=\"popupmenu_popup\" id=\"imgpreview_");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("_menu\" style=\"display: none;margin-left:20px;\"><img id=\"imgpreview_");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("_image\" src=\"upload/");
	templateBuilder.Append(attachment.Filename.ToString().Trim());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(attachment.Filename.ToString().Trim());
	templateBuilder.Append("';\" /></div>\r\n");

	}	//end if

	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("					<span id=\"attachupdate");
	templateBuilder.Append(attachment.Aid.ToString().Trim());
	templateBuilder.Append("\"><input type=\"file\" name=\"attachupdated\" style=\"display: none;\"></span>\r\n");
	templateBuilder.Append("				</td>\r\n");
	templateBuilder.Append("                <td>");
	templateBuilder.Append(attachment.Postdatetime.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("                <td>");
	templateBuilder.Append(attachment.Filesize.ToString().Trim());
	templateBuilder.Append(" 字节</td>\r\n");
	templateBuilder.Append("                <td><input type=\"text\" name=\"attachupdatereadperm\" size=\"1\" class=\"colorblue\" onfocus=\"this.className='colorfocus';\" onblur=\"this.className='colorblue';\" value=");
	templateBuilder.Append(attachment.Readperm.ToString().Trim());
	templateBuilder.Append(" /></td>\r\n");
	templateBuilder.Append("                <td><input type=\"text\" name=\"attachupdatedesc\" size=\"25\" class=\"colorblue\" onfocus=\"this.className='colorfocus';\" onblur=\"this.className='colorblue';\" value=");
	templateBuilder.Append(attachment.Description.ToString().Trim());
	templateBuilder.Append(" /></td>\r\n");
	templateBuilder.Append("              </tr>\r\n");

	}	//end if


	}	//end loop

	templateBuilder.Append("			</table>\r\n");

	}	//end if

	templateBuilder.Append("        </div>\r\n");

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("		<!--附件列表结束-->\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>总数:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			 <input maxlength=\"6\" size=\"5\" value=\"");
	templateBuilder.Append(goodsinfo.Amount.ToString().Trim());
	templateBuilder.Append("\" name=\"amount\" class=\"colorblue\" id=\"amount\">&nbsp;件\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"navformcommend\"  colspan=\"2\">交易信息</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>商品原价:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input id=\"costprice\" maxlength=\"12\" size=\"12\" name=\"costprice\" value=\"");
	templateBuilder.Append(goodsinfo.Costprice.ToString().Trim());
	templateBuilder.Append("\" type=\"text\" class=\"colorblue\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\">元 \r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>商品现价:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input id=\"price\" maxlength=\"12\" size=\"12\" name=\"price\" value=\"");
	templateBuilder.Append(goodsinfo.Price.ToString().Trim());
	templateBuilder.Append("\" type=\"text\" class=\"colorblue\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\">元 \r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>所在地点:</th>\r\n");
	templateBuilder.Append("		<td>");
	templateBuilder.Append(goodsinfo.Locus.ToString().Trim());
	templateBuilder.Append(" &nbsp;								\r\n");
	templateBuilder.Append("			<select class=\"input_gray\" style=\"width: 130px;\"  id=\"locus_1\" name=\"locus_1\"></select>\r\n");
	templateBuilder.Append("			城市:<select class=\"input_gray\" style=\"width: 90px;\" id=\"locus_2\" name=\"locus_2\"></select>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>物流方式:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input class=\"radio\" type=\"radio\" name=\"transport\" value=\"0\" tabindex=\"160\"  \r\n");

	if (goodsinfo.Transport==0)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(" onclick=\"$('logisticssetting').style.display='none'\" /> 虚拟物品或无需邮递\r\n");
	templateBuilder.Append("			<input class=\"radio\" type=\"radio\" name=\"transport\" value=\"1\" tabindex=\"161\"  \r\n");

	if (goodsinfo.Transport==1)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(" onclick=\"$('logisticssetting').style.display=''\" /> 卖家承担运费\r\n");
	templateBuilder.Append("			<input class=\"radio\" type=\"radio\" name=\"transport\" value=\"2\" tabindex=\"162\"  \r\n");

	if (goodsinfo.Transport==2)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(" onclick=\"$('logisticssetting').style.display=''\" /> 买家承担运费\r\n");
	templateBuilder.Append("			<input class=\"radio\" type=\"radio\" name=\"transport\" value=\"3\" tabindex=\"163\"  \r\n");

	if (goodsinfo.Transport==3)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(" onclick=\"$('logisticssetting').style.display=''\" /> 支付给物流公司\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody id=\"logisticssetting\" style=\"\r\n");

	if (goodsinfo.Transport==0)
	{

	templateBuilder.Append("display:none;\r\n");

	}
	else
	{

	templateBuilder.Append("display:;\r\n");

	}	//end if

	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>运费:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			平邮 <input type=\"text\" id=\"postage_mail\" name=\"postage_mail\" size=\"3\" value=\"\r\n");

	if (goodsinfo.Ordinaryfee>0)
	{
	templateBuilder.Append(goodsinfo.Ordinaryfee.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\" tabindex=\"164\" class=\"colorblue\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\" /> 元 <em class=\"tips\">(不填表示不提供平邮)</em><br />\r\n");
	templateBuilder.Append("			快递 <input type=\"text\" id=\"postage_express\" name=\"postage_express\" size=\"3\" value=\"\r\n");

	if (goodsinfo.Expressfee>0)
	{
	templateBuilder.Append(goodsinfo.Expressfee.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\" tabindex=\"165\" class=\"colorblue\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\" /> 元 <em class=\"tips\">(不填表示不提供快递)</em><br />\r\n");
	templateBuilder.Append("			EMS  <input type=\"text\" id=\"postage_ems\" name=\"postage_ems\" size=\"3\" value=\"\r\n");

	if (goodsinfo.Emsfee>0)
	{
	templateBuilder.Append(goodsinfo.Emsfee.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\" tabindex=\"166\"  class=\"colorblue\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\" /> 元 <em class=\"tips\">(不填表示不提供 EMS)</em><br />\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>发票:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input \r\n");

	if (goodsinfo.Invoice==0)
	{

	templateBuilder.Append("checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("  value=\"0\" name=\"invoice\" id=\"invoiceN\" type=\"radio\"><label for=\"invoiceN\">无</label>\r\n");
	templateBuilder.Append("			<input \r\n");

	if (goodsinfo.Invoice==1)
	{

	templateBuilder.Append("checked=\"checked\"\r\n");

	}	//end if

	templateBuilder.Append("  value=\"1\" name=\"invoice\" id=\"invoiceY\" type=\"radio\"><label for=\"invoiceY\">有</label>    	    \r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>保修期:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input type=\"text\"  value=\"\r\n");

	if (goodsinfo.Repair!=0)
	{
	templateBuilder.Append(goodsinfo.Repair.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\" name=\"repair\" id=\"repair\" class=\"colorblue\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\"> 单位:天, 不填表示不提供保修\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"navformcommend\"  colspan=\"2\">支付宝</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>交易方式:</th>\r\n");
	templateBuilder.Append("		<td> 					\r\n");
	templateBuilder.Append("			<input id=\"tradetype_1\" name=\"tradetype\" onclick=\"$('tradeaccount').style.display = ''\" value=\"1\" \r\n");

	if (goodsinfo.Tradetype==1)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append("  type=\"radio\" > 支付宝在线交易 \r\n");
	templateBuilder.Append("			<input id=\"tradetype_2\" name=\"tradetype\" onclick=\"$('tradeaccount').style.display = 'none'\" value=\"0\" \r\n");

	if (goodsinfo.Tradetype==0)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(" type=\"radio\"> 线下交易\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody id=\"tradeaccount\" style=\"display: \r\n");

	if (goodsinfo.Tradetype==1)
	{

	templateBuilder.Append(";\r\n");

	}
	else
	{

	templateBuilder.Append("none\r\n");

	}	//end if

	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>支付宝账户:</th>\r\n");
	templateBuilder.Append("		<td> 	\r\n");
	templateBuilder.Append("			<input type=\"text\" id=\"account\" name=\"account\" size=\"30\" value=\"");
	templateBuilder.Append(goodsinfo.Account.ToString().Trim());
	templateBuilder.Append("\" class=\"colorblue\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\" />\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"navformcommend\"  colspan=\"2\"><span style=\"color:#999; font-size:10px; padding-right:2px;\"></span>其它信息</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>开始时间:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input id=\"serverdatetime\" name=\"serverdatetime\" value=\"");
	templateBuilder.Append(serverdatetime.ToString());
	templateBuilder.Append("\" type=\"hidden\">\r\n");
	templateBuilder.Append("			<input name=\"_now\" value=\"0\" id=\"_now0\" onclick=\"setTimeEnableAndInStock(false, 0)\" type=\"radio\"><label for=\"_now0\">立刻</label>\r\n");
	templateBuilder.Append("			<br>\r\n");
	templateBuilder.Append("			<input name=\"_now\" value=\"1\" id=\"_now1\" onclick=\"setTimeEnableAndInStock(true, 1)\" type=\"radio\"><label for=\"_now1\">设定</label>\r\n");
	templateBuilder.Append("			<select disabled=\"disabled\" id=\"_date\" name=\"_date\" onchange=\"changeDate()\"></select>\r\n");
	templateBuilder.Append("			<select disabled=\"disabled\" id=\"_hour\" name=\"_hour\" onchange=\"changeHour()\"></select>时\r\n");
	templateBuilder.Append("			<select disabled=\"disabled\" id=\"_minute\" name=\"_minute\" onchange=\"setMinute()\"></select>分\r\n");
	templateBuilder.Append("			<span class=\"posttip\" style=\"font-size: 12px;\" id=\"durainfo\">您可以设定商品的正式开始销售时间</span>\r\n");
	templateBuilder.Append("			<br>\r\n");
	templateBuilder.Append("			<input name=\"_now\"  value=\"2\" id=\"inStock\" onclick=\"setTimeEnableAndInStock(false, 2)\" type=\"radio\"><label for=\"inStock\">暂不设置</label>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>有效期至:</th>\r\n");
	templateBuilder.Append("		<td> \r\n");
	templateBuilder.Append("			<input name=\"expiration\" type=\"text\" id=\"expiration\" size=\"20\" value=\"");
	templateBuilder.Append(goodsinfo.Expiration.ToString().Trim());
	templateBuilder.Append("\" style=\"cursor:default\" class=\"colorblue\" onClick=\"showcalendar(event, 'expiration', 'cal_startdate', 'cal_enddate', '");
	templateBuilder.Append(expiration.ToString());
	templateBuilder.Append("');\" readonly=\"readonly\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\" /></span>\r\n");
	templateBuilder.Append("			<input type=\"hidden\" name=\"cal_startdate\" id=\"cal_startdate\" size=\"20\"  value=\"");
	templateBuilder.Append(goodsinfo.Expiration.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("			<input type=\"hidden\" name=\"cal_enddate\" id=\"cal_enddate\" size=\"20\"  value=\"\">\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	if (enabletag)
	{

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>标签(Tags):</th>\r\n");
	templateBuilder.Append("		<td><input type=\"text\" name=\"tags\" id=\"tags\" value=\"");
	templateBuilder.Append(goodstags.ToString());
	templateBuilder.Append("\" class=\"colorblue\" onblur=\"this.className='colorblue';\" onfocus=\"this.className='colorfocus';\" /><input type=\"button\" onclick=\"relatekw();\" value=\"可用标签\" />(用空格隔开多个标签，最多可填写 5 个)</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end if


	if (config.Enablemall==2)
	{

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>推荐商品:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input name=\"recommend\" id=\"recommend\" type=\"checkbox\" \r\n");

	if (goodsinfo.Recommend==1)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(">\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end if


	if (config.Enablemall==2)
	{

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>	    \r\n");
	templateBuilder.Append("		<th>上架:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input name=\"displayorder\" id=\"displayorder\" type=\"checkbox\" \r\n");

	if (goodsinfo.Displayorder>=0)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(">\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end if


	if (config.Enablemall==1)
	{


	if (goodsinfo.Displayorder<0)
	{

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>状态:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");

	if (goodsinfo.Displayorder==-1)
	{

	templateBuilder.Append("				 回收站\r\n");

	}	//end if


	if (goodsinfo.Displayorder==-2)
	{

	templateBuilder.Append("				 待审核\r\n");

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end if


	if (useradminid==1 || goodsinfo.Selleruid==userid)
	{

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>	    \r\n");
	templateBuilder.Append("		<th>上架:</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input name=\"displayorder\" id=\"displayorder\" type=\"checkbox\" \r\n");

	if (goodsinfo.Displayorder>=0)
	{

	templateBuilder.Append("checked\r\n");

	}	//end if

	templateBuilder.Append(">\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end if


	}	//end if


	if (isseccode)
	{

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>验证码</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<div style=\"position: relative;\">\r\n");



	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end if

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td colspan=\"2\" class=\"formarea\">\r\n");
	templateBuilder.Append("			    <input name=\"goodssubmit\" id=\"postsubmit\" value=\"编辑商品\" class=\"sbutton\" style=\"margin-bottom: -3px; margin-right: 10px;\" type=\"submit\">\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("</table>\r\n");
	templateBuilder.Append("</form>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script language=\"javascript\" src=\"javascript/goodscategories.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script language=\"javascript\" src=\"javascript/locations.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script language=\"javascript\" src=\"javascript/template_editgoods.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


	}
	else
	{




	templateBuilder.Append("</div>\r\n");

	}	//end if








	Response.Write(templateBuilder.ToString());
}
</script>
