<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.usercpshoplink" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:25:00.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:25:00. 
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
	templateBuilder.Append("</a>  &raquo; <a href=\"usercp.aspx\">用户中心</a>  &raquo; <strong>友情链接列表</strong>\r\n");
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

	templateBuilder.Append("					<form id=\"shoplink\" name=\"shoplink\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("					   <script type=\"text/javascript\">\r\n");
	templateBuilder.Append("					       function checkgoodsbox(form,objtag) {\r\n");
	templateBuilder.Append("                               for(var i = 0; i < form.elements.length; i++) {\r\n");
	templateBuilder.Append("                                   var e = form.elements[i];\r\n");
	templateBuilder.Append("                                   if(e.name == \"shoplinkid\") {\r\n");
	templateBuilder.Append("                                       e.checked = objtag.checked;\r\n");
	templateBuilder.Append("                                   }\r\n");
	templateBuilder.Append("                               }\r\n");
	templateBuilder.Append("                               objtag.checked = !objtag.checked;\r\n");
	templateBuilder.Append("                           }\r\n");
	templateBuilder.Append("                       </");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("                       <input type=\"hidden\" id=\"operation\" name=\"operation\" value=\"add\"/>\r\n");
	templateBuilder.Append("					   <input type=\"submit\" id=\"shoplinksubmit\" name=\"shoplinksubmit\" style=\"display: none\" />\r\n");

	if (shoplinkinfolist.Count<16)
	{

	templateBuilder.Append("					   <div style=\"text-align:center;background:#F5F5F5 none repeat scroll 0%;border:1px solid #DDDDDD;font-size:14px;margin-top:10px;padding:10px;\">\r\n");
	templateBuilder.Append("					        店主姓名: <input type=\"text\" value=\"\" maxlength=\"50\" size=\"20\" id=\"username\" name=\"username\">\r\n");
	templateBuilder.Append("                  	        <button class=\"mallbutton\" type=\"button\" onclick=\"javascript:$('operation').value='add';$('shoplinksubmit').click();\">添加</button>\r\n");
	templateBuilder.Append("                       </div>\r\n");

	}	//end if

	templateBuilder.Append("					    <div class=\"shopsearch\"><strong>友情链接列表</strong></div>\r\n");
	templateBuilder.Append("                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n");
	templateBuilder.Append("                            <thead>\r\n");
	templateBuilder.Append("                                <tr>\r\n");
	templateBuilder.Append("                                    <th></th> \r\n");
	templateBuilder.Append("                                    <th>店铺名称</th>\r\n");
	templateBuilder.Append("                                    <th>排序位置</th>\r\n");
	templateBuilder.Append("                                </tr>\r\n");
	templateBuilder.Append("                            </thead>\r\n");
	templateBuilder.Append("                            <!--NtGoodsList start-->\r\n");

	int shoplink__loop__id=0;
	foreach(Shoplinkinfo shoplink in shoplinkinfolist)
	{
		shoplink__loop__id++;

	templateBuilder.Append("		                    <tbody>\r\n");
	templateBuilder.Append("                                <tr class=\"messagetable\" onmouseover=\"this.className='messagetableon'\" onmouseout=\"this.className='messagetable'\">\r\n");
	templateBuilder.Append("                                    <td style=\"width: 30px;\"><input name=\"shoplinkid\" type=\"checkbox\" id=\"shoplink_");
	templateBuilder.Append(shoplink.Id.ToString().Trim());
	templateBuilder.Append("\" value=\"");
	templateBuilder.Append(shoplink.Id.ToString().Trim());
	templateBuilder.Append("\" style=\"margin-top:8px;\" /></td>\r\n");
	templateBuilder.Append("                                    <td style=\"width: 120px; padding:2px 0;\"><a href=\"shop.aspx?shopid=");
	templateBuilder.Append(shoplink.Linkshopid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(shoplink.Name.ToString().Trim());
	templateBuilder.Append("</a></td>\r\n");
	templateBuilder.Append("                                    <td align=\"center\"><input value=\"");
	templateBuilder.Append(shoplink.Displayorder.ToString().Trim());
	templateBuilder.Append("\" name=\"displayorder_");
	templateBuilder.Append(shoplink.Id.ToString().Trim());
	templateBuilder.Append("\" size=\"2\"/></td>\r\n");
	templateBuilder.Append("                                </tr>\r\n");
	templateBuilder.Append("                            </tbody>\r\n");
	templateBuilder.Append("                            <!--NtGoodsList end-->                         \r\n");

	}	//end loop

	templateBuilder.Append("                        </table>   \r\n");
	templateBuilder.Append("					   <div style=\"text-align:center;background:#F5F5F5 none repeat scroll 0%;border:1px solid #DDDDDD;font-size:14px;margin-top:10px;padding:10px;\">\r\n");
	templateBuilder.Append("					        <a href=\"javascript:;\"  onclick=\"checkgoodsbox($('goodslist'),this)\" checked=\"true\" class=\"selectall\">全选</a>&nbsp;&nbsp;&nbsp;\r\n");
	templateBuilder.Append("                  	        <button class=\"mallbutton\" type=\"button\" onclick=\"javascript:$('operation').value='delete';$('shoplinksubmit').click();\">删除</button> \r\n");
	templateBuilder.Append("                  	        <button class=\"mallbutton\" type=\"button\" onclick=\"javascript:$('operation').value='updatedisplayorder';$('shoplinksubmit').click();\">更新显示顺序</button>\r\n");
	templateBuilder.Append("                  	        注：目前系统允许您最多添加 16 个友情链接，您当前已经添加 ");
	templateBuilder.Append(shoplinkinfolist.Count.ToString().Trim());
	templateBuilder.Append(" 个。\r\n");
	templateBuilder.Append("                       </div>\r\n");
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
	templateBuilder.Append("<!--主体-->\r\n");







	Response.Write(templateBuilder.ToString());
}
</script>
