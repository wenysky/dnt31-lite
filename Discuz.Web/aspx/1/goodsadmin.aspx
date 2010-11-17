<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.goodsadmin" %>
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



	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div class=\"userinfo\">\r\n");
	templateBuilder.Append("		<h2><a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <span> ");
	templateBuilder.Append(forumnav.ToString());
	templateBuilder.Append("</span>  &raquo; <strong>");
	templateBuilder.Append(operationtitle.ToString());
	templateBuilder.Append("</strong></h2>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (DNTRequest.GetString("operation")=="")
	{


	if (page_err==0)
	{

	templateBuilder.Append("<div class=\"mainbox\">\r\n");
	templateBuilder.Append("<form id=\"moderate\" name=\"moderate\" method=\"post\" action=\"goodsadmin.aspx?action=moderate&operation=");
	templateBuilder.Append(operation.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("		<input type=\"hidden\" name=\"goodsid\" value=\"");
	templateBuilder.Append(goodslist.ToString());
	templateBuilder.Append("\" />\r\n");
	templateBuilder.Append("		<input type=\"hidden\" name=\"categoryid\" value=\"");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append("\" />\r\n");

	if (config.Aspxrewrite==1)
	{

	templateBuilder.Append("		<input type=\"hidden\" name=\"referer\" value=\"showgoodslist-");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("\" />\r\n");

	}
	else
	{

	templateBuilder.Append("		<input type=\"hidden\" name=\"referer\" value=\"showgoodslist.aspx?categoryid=");
	templateBuilder.Append(categoryid.ToString());
	templateBuilder.Append("\">\r\n");

	}	//end if


	if (operation=="delposts")
	{

	templateBuilder.Append("<input type=\"hidden\" size=\"10\" name=\"postid\" ID=\"postid\" value=\"postidlist\" />\r\n");

	}	//end if

	templateBuilder.Append("	<h3>");
	templateBuilder.Append(operationtitle.ToString());
	templateBuilder.Append("</h3>\r\n");
	templateBuilder.Append("	<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" summary=\"管理商品\">\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>用户名:</th>\r\n");
	templateBuilder.Append("			<td>&nbsp;");
	templateBuilder.Append(username.ToString());
	templateBuilder.Append("&nbsp;<a href=\"logout.aspx?userkey=");
	templateBuilder.Append(userkey.ToString());
	templateBuilder.Append("\">退出登录</a></td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	if (operation=="highlight")
	{

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>字体样式:</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input type=\"checkbox\" name=\"highlight_style_b\" value=\"B\" /> <strong>粗体</strong>\r\n");
	templateBuilder.Append("				<input type=\"checkbox\" name=\"highlight_style_i\" value=\"I\" /> <em>斜体</em>\r\n");
	templateBuilder.Append("				<input type=\"checkbox\" name=\"highlight_style_u\" value=\"U\" /> <u>下划线</u>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>字体颜色:</th>\r\n");
	templateBuilder.Append("			<td>					\r\n");
	templateBuilder.Append("				<script type=\"text/javascript\" src=\"javascript/template_colorpicker.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("				<input type=\"text\" value=\"\" name=\"highlight_color\" id=\"highlight_color\" size=\"7\" />\r\n");
	templateBuilder.Append("				<select name=\"highlight_colorselect\" id=\"highlight_colorselect\" onChange=\"selectoptioncolor(this)\" style=\"margin-bottom:2px;\">\r\n");
	templateBuilder.Append("					<option value=\"\">默认</option>  \r\n");
	templateBuilder.Append("					<option style=\"background:#FF0000\" value=\"#FF0000\"></option>  \r\n");
	templateBuilder.Append("					<option style=\"background:#FFA500\" value=\"#FFA500\"></option> \r\n");
	templateBuilder.Append("					<option style=\"background:#FFFF00\" value=\"#FFFF00\"></option> \r\n");
	templateBuilder.Append("					<option style=\"background:#008000\" value=\"#008000\"></option> \r\n");
	templateBuilder.Append("					<option style=\"background:#00FFFF\" value=\"#00FFFF\"></option> \r\n");
	templateBuilder.Append("					<option style=\"background:#0000FF\" value=\"#0000FF\"></option> \r\n");
	templateBuilder.Append("					<option style=\"background:#800080\" value=\"#800080\"></option> \r\n");
	templateBuilder.Append("					<option style=\"background:#808080\" value=\"#808080\"></option>\r\n");
	templateBuilder.Append("				</select>\r\n");
	templateBuilder.Append("				<img class=\"img\" title=\"选择颜色\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/colorpicker.gif\" id=s_bgcolor onclick=\"IsShowColorPanel(this);\" style=\"cursor:hand; border:0px;\" />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end if


	if (operation=="close")
	{

	templateBuilder.Append("		<!--\r\n");
	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>操作：</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("				<input type=\"radio\" value=\"1\" name=\"close\" checked=\"checked\"/> 关闭商品\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		-->\r\n");

	}	//end if


	if (operation=="movecategory")
	{

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>商品分类:</th>\r\n");
	templateBuilder.Append("			<td>\r\n");

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


	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("		<script language=\"javascript\" src=\"javascript/goodscategories.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("        <script language=\"javascript\" src=\"javascript/template_goodsadmin.js\"></");
	templateBuilder.Append("script>\r\n");

	}	//end if


	if (operation!="identify")
	{

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>操作原因:</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("			<select id=\"selectreason\" name=\"selectreason\" size=\"6\" style=\"width: 8em;height:8em; \" onchange=\"this.form.reason.value=this.value\" >\r\n");
	templateBuilder.Append("			  <option value=\"\">自定义</option>\r\n");
	templateBuilder.Append("			  <option value=\"\">--------</option>\r\n");
	templateBuilder.Append("			  <option value=\"广告/SPAM\">广告</option>\r\n");
	templateBuilder.Append("			  <option value=\"恶意灌水\">恶意灌水</option>\r\n");
	templateBuilder.Append("			  <option value=\"违规内容\">违规内容</option>\r\n");
	templateBuilder.Append("			  <option value=\"文不对题\">文不对题</option>\r\n");
	templateBuilder.Append("			  <option value=\"屡教不改\">屡教不改</option>\r\n");
	templateBuilder.Append("			  <option value=\"已经过期\">已经过期</option>\r\n");
	templateBuilder.Append("			</select>\r\n");
	templateBuilder.Append("			<textarea name=\"reason\" style=\"height: 8em; width:20em; margin-bottom:-2px;\" onkeydown=\"if(this.value.length>200){ alert('操作原因不能多于200个字符');return false; }\"></textarea>\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end if


	if (donext==1)
	{

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>后续:</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("			<input name=\"next\" type=\"radio\" checked=\"checked\" value=\"\" />无\r\n");

	if (operation!="highlight")
	{

	templateBuilder.Append("			<input type=\"radio\" value=\"highlight\" name=\"next\" />高亮显示\r\n");

	}	//end if


	if (operation!="close")
	{

	templateBuilder.Append("			<input type=\"radio\" value=\"close\" name=\"next\" />关闭商品\r\n");

	}	//end if

	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");

	}	//end if

	templateBuilder.Append("		<tbody>\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("			<th>&nbsp;</th>\r\n");
	templateBuilder.Append("			<td>\r\n");
	templateBuilder.Append("			<input type=\"submit\" value=\"提  交\" name=\"modsubmit\" />\r\n");
	templateBuilder.Append("			</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("		</tbody>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</form>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (operation=="highlight")
	{

	templateBuilder.Append("<div id=\"ColorPicker\" title=\"ColorPicker\" style=\"display:none;cursor:crosshair;border: black 1px solid;position: absolute; z-index: 10;background-color: aliceblue; width:250px;background: #FFFFFF;padding: 4px; margin-left:150px;\" onmouseover=\"ShowColorPanel();\">\r\n");
	templateBuilder.Append("	<table border=\"0\" cellPadding=\"0\" cellSpacing=\"10\" onmouseover=\"ShowColorPanel();\">\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("	<td>\r\n");
	templateBuilder.Append("	<table border=\"0\" cellPadding=\"0\" cellSpacing=\"0\" id=\"ColorTable\" style=\"cursor:crosshair;\"  onmouseover=\"ShowColorPanel();\">\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	function wc(r, g, b, n){\r\n");
	templateBuilder.Append("		r = ((r * 16 + r) * 3 * (15 - n) + 0x80 * n) / 15;\r\n");
	templateBuilder.Append("		g = ((g * 16 + g) * 3 * (15 - n) + 0x80 * n) / 15;\r\n");
	templateBuilder.Append("		b = ((b * 16 + b) * 3 * (15 - n) + 0x80 * n) / 15;\r\n");
	templateBuilder.Append("		document.write('<td BGCOLOR=#' + ToHex(r) + ToHex(g) + ToHex(b) + ' title=\"#' + ToHex(r) + ToHex(g) + ToHex(b) + '\" height=8 width=8 onmouseover=\"ColorTableMouseOver(this)\" onmousedown=\"ColorTableMouseDown(this)\"  onmouseout=\"ColorTableMouseOut(this)\" ></TD>');\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	var cnum = new Array(1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0);\r\n");
	templateBuilder.Append("	for(i = 0; i < 16; i ++){\r\n");
	templateBuilder.Append("		document.write('<TR>');\r\n");
	templateBuilder.Append("		for(j = 0; j < 30; j ++){\r\n");
	templateBuilder.Append("			n1 = j % 5;\r\n");
	templateBuilder.Append("			n2 = Math.floor(j / 5) * 3;\r\n");
	templateBuilder.Append("			n3 = n2 + 3;\r\n");
	templateBuilder.Append("			wc((cnum[n3] * n1 + cnum[n2] * (5 - n1)),\r\n");
	templateBuilder.Append("			(cnum[n3 + 1] * n1 + cnum[n2 + 1] * (5 - n1)),\r\n");
	templateBuilder.Append("			(cnum[n3 + 2] * n1 + cnum[n2 + 2] * (5 - n1)), i);\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		document.writeln('</TR>');\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</table></td>\r\n");
	templateBuilder.Append("	<td>\r\n");
	templateBuilder.Append("	<table border=\"0\" cellPadding=\"0\" cellSpacing=\"0\" id=\"GrayTable\" style=\"CURSOR: hand;cursor:crosshair;\"  onmouseover=\"ShowColorPanel();\">\r\n");
	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	for(i = 255; i >= 0; i -= 8.5)\r\n");
	templateBuilder.Append("	document.write('<tr BGCOLOR=#' + ToHex(i) + ToHex(i) + ToHex(i) + '><td TITLE=' + Math.floor(i * 16 / 17) + ' height=4 width=20 onmouseover=\"GrayTableMouseOver(this)\" onmousedown=\"GrayTableMouseDown(this)\"  onmouseout=\"GrayTableMouseOut(this)\" ></td></tr>');\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</table></td></tr></table>\r\n");
	templateBuilder.Append("	<table border=\"0\" cellPadding=\"0\" cellSpacing=\"10\" onmouseover=\"ShowColorPanel();\">\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("	<td rowSpan=\"2\">选中色彩\r\n");
	templateBuilder.Append("	<table border=\"1\" cellPadding=\"0\" cellSpacing=\"0\" height=\"30\" id=\"ShowColor\" width=\"40\" bgcolor=\"\">\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("	<td></td></tr></table></td>\r\n");
	templateBuilder.Append("	<td rowSpan=2>基色: <span id=\"RGB\"></span><br />亮度: <span id=\"GRAY\">120</span><br />代码: <input id=\"SelColor\" size=\"7\" value=\"\" border=\"0\" name=\"SelColor\" /></TD>\r\n");
	templateBuilder.Append("	<td><input type=\"button\" onclick=\"javascript:ColorPickerOK();\" value=\"确定\" ID=\"ok\" class=\"lightbutton\" /></td></tr>\r\n");
	templateBuilder.Append("	<tr>\r\n");
	templateBuilder.Append("	<td><input type=\"button\" onclick=\"javascript:document.getElementById('highlight_color').value='';document.getElementById('s_bgcolor').style.background='#FFFFFF';HideColorPanel();\" value=\"取消\" ID=\"Button2\" NAME=\"Button2\" class=\"lightbutton\"  /></td></tr></table>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("	<!--colorpicker层显示结束-->\r\n");

	}	//end if


	}
	else
	{





	}	//end if


	}
	else
	{


	if (page_err==0)
	{





	}
	else
	{





	}	//end if


	}	//end if

	templateBuilder.Append("</div>\r\n");







	Response.Write(templateBuilder.ToString());
}
</script>
