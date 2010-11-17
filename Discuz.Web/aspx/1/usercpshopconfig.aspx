<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.usercpshopconfig" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:59.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:59. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	templateBuilder.Append("<!--header end-->\r\n");
	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"home\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <a href=\"usercp.aspx\">用户中心</a>  &raquo; <strong>管理店铺</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"headsearch\">\r\n");
	templateBuilder.Append("		<div id=\"search\">\r\n");



	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<!--主体-->\r\n");
	templateBuilder.Append("<div class=\"controlpannel\">\r\n");



	templateBuilder.Append("	<div class=\"pannelcontent\">\r\n");
	templateBuilder.Append("		<div class=\"pcontent\">\r\n");
	templateBuilder.Append("		<!--panneldetail start-->\r\n");
	templateBuilder.Append("			<div class=\"panneldetail\">\r\n");



	templateBuilder.Append("				<!--pannelbody start-->\r\n");
	templateBuilder.Append("                <div class=\"pannelbody\">\r\n");
	templateBuilder.Append("					<div class=\"pannellist\">\r\n");

	if (page_err==0)
	{


	if (ispost)
	{





	}
	else
	{

	templateBuilder.Append("					<form id=\"shopconfig\" name=\"shopconfig\" method=\"post\" enctype=\"multipart/form-data\" action=\"\">\r\n");
	templateBuilder.Append("					    <label for=\"user\">店 铺 名:</label>\r\n");
	templateBuilder.Append("						<input name=\"shopname\" type=\"text\" id=\"shopname\" value=\"");
	templateBuilder.Append(shopinfo.Shopname.ToString().Trim());
	templateBuilder.Append("\" size=\"40\" maxlength=\"50\"/>(50个汉字以内)<br />\r\n");
	templateBuilder.Append("                        <label for=\"user\">店铺类别:</label>\r\n");
	templateBuilder.Append("						<select id=\"categoryid\" name=\"categoryid\">");
	templateBuilder.Append(categoryoptions.ToString());
	templateBuilder.Append("</select><br />\r\n");
	templateBuilder.Append("						<label for=\"email\">店铺风格:</label>\r\n");
	templateBuilder.Append("						<select id=\"themeid\" name=\"themeid\">");
	templateBuilder.Append(themeoptions.ToString());
	templateBuilder.Append("</select><br />\r\n");
	templateBuilder.Append("						<label for=\"comment\">店   标:</label>\r\n");
	templateBuilder.Append("						<input type=\"file\" onchange=\"PhotoView(this.value,document.getElementById('previewImage'))\" id=\"upfileshoppic\" name=\"postfile\" size=\"40\" /> \r\n");
	templateBuilder.Append("						<div class=\"shoplogo\" id=\"previewImage\">\r\n");

	if (shopinfo.Logo!="")
	{

	templateBuilder.Append("<img width=\"75\" height=\"75\" src=\"/upload/");
	templateBuilder.Append(shopinfo.Logo.ToString().Trim());
	templateBuilder.Append("\" border=\"0\" alt=\"\" />\r\n");

	}
	else
	{

	templateBuilder.Append("暂无图片\r\n");

	}	//end if

	templateBuilder.Append("</div><br />\r\n");
	templateBuilder.Append("						<label for=\"email\">所 在 地:</label>\r\n");
	templateBuilder.Append("                        ");
	templateBuilder.Append(shopinfo.Locus.ToString().Trim());
	templateBuilder.Append(" &nbsp;<a href=\"#\" onclick=\"javascript:$('span_locus').style.display='block';\">选择</a>	\r\n");
	templateBuilder.Append("                        <span id=\"span_locus\" style=\"display:none;\"><select class=\"input_gray\" style=\"width: 130px;\"  id=\"locus_1\" name=\"locus_1\"></select>城市:<select class=\"input_gray\" style=\"width: 90px;\" id=\"locus_2\" name=\"locus_2\"></select></span><br />	\r\n");
	templateBuilder.Append("						<label for=\"email\">公   告:</label>\r\n");
	templateBuilder.Append("						<textarea name=\"bulletin\" cols=\"30\" rows=\"4\" id=\"bulletin\" maxlength=\"500\" onkeyup=\"return ismaxlen(this);\" style=\"width:60%; font-size:12px;\" maxlength=\"200\">");
	templateBuilder.Append(shopinfo.Bulletin.ToString().Trim());
	templateBuilder.Append("</textarea>(500个汉字以内)<br />\r\n");
	templateBuilder.Append("						<label for=\"email\">店铺介绍:</label>\r\n");
	templateBuilder.Append("						<textarea name=\"introduce\" cols=\"30\" rows=\"4\" id=\"introduce\" maxlength=\"500\" onkeyup=\"return ismaxlen(this);\"  style=\"width:60%; font-size:12px;\" maxlength=\"200\">");
	templateBuilder.Append(shopinfo.Introduce.ToString().Trim());
	templateBuilder.Append("</textarea>(500个汉字以内)<br />\r\n");
	templateBuilder.Append("						<input id=\"submitshopconfig\" name=\"submitshopconfig\" type=\"submit\" value=\"确定\" />\r\n");
	templateBuilder.Append("					</form>\r\n");

	}	//end if


	}
	else
	{





	}	//end if

	templateBuilder.Append("			        </div>\r\n");
	templateBuilder.Append("			    </div>   \r\n");
	templateBuilder.Append("			    <!--pannelbody end-->\r\n");
	templateBuilder.Append("    	   </div>\r\n");
	templateBuilder.Append("    	   <!--panneldetail end-->\r\n");
	templateBuilder.Append("	   </div>\r\n");
	templateBuilder.Append("   </div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/locations.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_usercpshopconfig.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<!--主体-->\r\n");







	Response.Write(templateBuilder.ToString());
}
</script>
