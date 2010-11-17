<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.postgoods" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:54.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:54. 
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
	templateBuilder.Append("var tradepost =1\r\n");
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
	templateBuilder.Append("</strong> &raquo; <strong>发表新商品</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"headsearch\">\r\n");
	templateBuilder.Append("		<div id=\"search\">\r\n");

	if (usergroupinfo.Allowsearch>0)
	{





	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div class=\"mainbox\">\r\n");
	templateBuilder.Append("<h3>发表新商品</h3>\r\n");
	templateBuilder.Append("<form method=\"post\" name=\"postform\" id=\"postform\" action=\"\" enctype=\"multipart/form-data\" onsubmit=\"\">\r\n");
	templateBuilder.Append("<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");



	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"navformcommend\"  colspan=\"2\">商品信息</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"goodscategoryid\">商品类目</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			 <input type=\"hidden\" id=\"goodscategoryid\" name=\"goodscategoryid\" value=\"");
	templateBuilder.Append(goodscategoryinfo.Categoryid.ToString().Trim());
	templateBuilder.Append("\"/>\r\n");
	templateBuilder.Append("			 <span id=\"goodstypeinfo\">\r\n");

	if (goodscategoryinfo.Categoryname=="")
	{

	templateBuilder.Append("				暂无分类\r\n");

	}
	else
	{

	templateBuilder.Append("				");
	templateBuilder.Append(goodscategoryinfo.Categoryname.ToString().Trim());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("</span>\r\n");

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
	templateBuilder.Append("		<th><label for=\"quality\">商品类型</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<select id=\"quality\" name=\"quality\" tabindex=\"51\">\r\n");
	templateBuilder.Append("				<option value=\"1\" >全新</option>\r\n");
	templateBuilder.Append("				<option value=\"2\" >二手</option>\r\n");
	templateBuilder.Append("			</select>\r\n");
	templateBuilder.Append("			<select id=\"itemtype\"  name=\"itemtype\" tabindex=\"52\">\r\n");
	templateBuilder.Append("				<option value=\"1\" >商品</option>\r\n");
	templateBuilder.Append("				<option value=\"2\" >服务</option>\r\n");
	templateBuilder.Append("				<option value=\"3\" >拍卖</option>\r\n");
	templateBuilder.Append("				<option value=\"4\" >捐赠</option>\r\n");
	templateBuilder.Append("				<option value=\"5\" >邮费</option>\r\n");
	templateBuilder.Append("				<option value=\"6\" >奖金</option>\r\n");
	templateBuilder.Append("			</select>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"title\">商品标题</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<span id=\"ticketTitle\" style=\"display: none;\"></span>\r\n");
	templateBuilder.Append("			<input id=\"title\" name=\"title\" maxlength=\"60\" size=\"40\" value=\"\" >\r\n");

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
	templateBuilder.Append("						titleEditor = new DNTeditor('htmltitle', '500', '50', $('title').value);\r\n");
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

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"postfile\">上传图片</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<div style=\"float:left; padding-top:25px;\">\r\n");
	templateBuilder.Append("			<input type=\"file\" onchange=\"PhotoView(this.value,document.getElementById('previewImage'))\" id=\"upfilegoodspic\" name=\"postfile\" size=\"40\" /> \r\n");
	templateBuilder.Append("			<br/><span class=\"posttip\">图片限定jpg或gif格式, 请确保图片在浏览器中可以正常打开.</span> &nbsp; &nbsp;&nbsp;\r\n");
	templateBuilder.Append("			</div>\r\n");
	templateBuilder.Append("			<div style=\"float:left; border: 1px solid #DDD; width: 75px; height: 75px; text-align:center;line-height:75px;\" id=\"previewImage\">暂无图片</div>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<!--编辑器代码段开始-->\r\n");



	templateBuilder.Append("	<!--编辑器代码段结束-->\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"amount\">总数</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			 <input maxlength=\"6\" size=\"5\" value=\"1\" name=\"amount\" id=\"amount\">&nbsp;件\r\n");
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
	templateBuilder.Append("		<th><label for=\"costprice\">商品原价</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input id=\"costprice\" maxlength=\"12\" size=\"12\" name=\"costprice\" value=\"1\" type=\"text\">元 \r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"price\">商品现价</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input id=\"price\" maxlength=\"12\" size=\"12\" name=\"price\" value=\"1\" type=\"text\" >元 \r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"locus_1\">所在地点</label></th>\r\n");
	templateBuilder.Append("		<td>								\r\n");
	templateBuilder.Append("			<select class=\"input_gray\" style=\"width: 130px;\"  id=\"locus_1\" name=\"locus_1\"></select>\r\n");
	templateBuilder.Append("			城市:<select class=\"input_gray\" style=\"width: 90px;\" id=\"locus_2\" name=\"locus_2\"></select>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"transport\">物流方式</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input class=\"radio\" type=\"radio\" name=\"transport\" value=\"0\" tabindex=\"160\"  onclick=\"$('logisticssetting').style.display='none'\" /> 虚拟物品或无需邮递\r\n");
	templateBuilder.Append("			<input class=\"radio\" type=\"radio\" name=\"transport\" value=\"1\" tabindex=\"161\"  onclick=\"$('logisticssetting').style.display=''\" /> 卖家承担运费\r\n");
	templateBuilder.Append("			<input class=\"radio\" type=\"radio\" name=\"transport\" value=\"2\" tabindex=\"162\"  checked=\"checked\" onclick=\"$('logisticssetting').style.display=''\" /> 买家承担运费\r\n");
	templateBuilder.Append("			<input class=\"radio\" type=\"radio\" name=\"transport\" value=\"3\" tabindex=\"163\"  onclick=\"$('logisticssetting').style.display=''\" /> 支付给物流公司\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody id=\"logisticssetting\" style=\"display:;\">\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"postage_mail\">运费</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			平邮 <input type=\"text\" id=\"postage_mail\" name=\"postage_mail\" size=\"3\" value=\"\" tabindex=\"164\" /> 元 <em class=\"tips\">(不填表示不提供平邮)</em><br />\r\n");
	templateBuilder.Append("			快递 <input type=\"text\" id=\"postage_express\" name=\"postage_express\" size=\"3\" value=\"\" tabindex=\"165\"  /> 元 <em class=\"tips\">(不填表示不提供快递)</em><br />\r\n");
	templateBuilder.Append("			EMS  <input type=\"text\" id=\"postage_ems\" name=\"postage_ems\" size=\"3\" value=\"\" tabindex=\"166\" /> 元 <em class=\"tips\">(不填表示不提供 EMS)</em><br />\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"invoice\">发票</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input checked=\"checked\" value=\"0\" name=\"invoice\" id=\"invoiceN\" type=\"radio\"><label for=\"invoiceN\">无</label>\r\n");
	templateBuilder.Append("			<input value=\"1\" name=\"invoice\" id=\"invoiceY\" type=\"radio\"><label for=\"invoiceY\">有</label>    	    \r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"repair\">保修期</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input type=\"text\"  value=\"\" name=\"repair\" id=\"repair\" > 单位:天, 不填表示不提供保修\r\n");
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
	templateBuilder.Append("		<th><label for=\"tradetype\">交易方式</label></th>\r\n");
	templateBuilder.Append("		<td> 					\r\n");
	templateBuilder.Append("			<input id=\"tradetype_1\" name=\"tradetype\" onclick=\"$('tradeaccount').style.display = ''\" value=\"1\" type=\"radio\" > 支付宝在线交易\r\n");
	templateBuilder.Append("			<input id=\"tradetype_2\" name=\"tradetype\" onclick=\"$('tradeaccount').style.display = 'none'\" value=\"0\" checked=\"checked\" type=\"radio\"> 线下交易\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody id=\"tradeaccount\" style=\"display: none\">\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("	<th><label for=\"account\">支付宝账户</label></th>\r\n");
	templateBuilder.Append("	<td> 	\r\n");
	templateBuilder.Append("		<input type=\"text\" id=\"account\" name=\"account\" size=\"30\" value=\"\" />\r\n");
	templateBuilder.Append("	</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<td class=\"navformcommend\"  colspan=\"2\"><span style=\"color:#999; font-size:10px; padding-right:2px;\"></span>其它信息</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"_now\">开始时间</label></th>\r\n");
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
	templateBuilder.Append("			<input name=\"_now\" value=\"2\" id=\"inStock\" onclick=\"setTimeEnableAndInStock(false, 2)\" type=\"radio\"><label for=\"inStock\">暂不设置</label>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");
	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"expiration\">有效期至</label></th>\r\n");
	templateBuilder.Append("		<td> \r\n");
	templateBuilder.Append("			<input name=\"expiration\" type=\"text\" id=\"expiration\" size=\"10\" value=\"");
	templateBuilder.Append(expiration.ToString());
	templateBuilder.Append("\" style=\"cursor:default\" onClick=\"showcalendar(event, 'expiration', 'cal_startdate', 'cal_enddate', '");
	templateBuilder.Append(expiration.ToString());
	templateBuilder.Append("');\" readonly=\"readonly\" /></span>\r\n");
	templateBuilder.Append("			<input type=\"hidden\" name=\"cal_startdate\" id=\"cal_startdate\" size=\"10\"  value=\"");
	templateBuilder.Append(expiration.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("			<input type=\"hidden\" name=\"cal_enddate\" id=\"cal_enddate\" size=\"10\"  value=\"\">\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	if (enabletag)
	{

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"tags\">标签(Tags)</label></th>\r\n");
	templateBuilder.Append("		<td><input type=\"text\" name=\"tags\" id=\"tags\" value=\"\"/><input type=\"button\" onclick=\"relatekw();\" value=\"可用标签\" />(用空格隔开多个标签，最多可填写 5 个)</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end if


	if (config.Enablemall==2)
	{

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"recommend\">推荐商品</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input name=\"recommend\" id=\"recommend\" type=\"checkbox\">\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end if

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"displayorder\">上架</label></th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input name=\"displayorder\" id=\"displayorder\" type=\"checkbox\" checked>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	if (isseccode)
	{

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th><label for=\"vcode\">验证码</label></th>\r\n");
	templateBuilder.Append("				<td>\r\n");
	templateBuilder.Append("					<div style=\"position: relative;\">\r\n");



	templateBuilder.Append("					</div>\r\n");
	templateBuilder.Append("		        </td>\r\n");
	templateBuilder.Append("	</tr>\r\n");
	templateBuilder.Append("	</tbody>\r\n");

	}	//end if

	templateBuilder.Append("	<tbody>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("		<th>&nbsp;</th>\r\n");
	templateBuilder.Append("		<td>\r\n");
	templateBuilder.Append("			<input name=\"topicsubmit\" id=\"postsubmit\" value=\"发布商品\" style=\"margin-bottom: -3px; margin-right: 10px;\" type=\"submit\" >\r\n");
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
	templateBuilder.Append("<script language=\"javascript\" src=\"javascript/template_postgoods.js\"></");
	templateBuilder.Append("script>\r\n");

	}	//end if


	}
	else
	{




	templateBuilder.Append("</div>\r\n");

	}	//end if








	Response.Write(templateBuilder.ToString());
}
</script>
