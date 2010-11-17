<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.usercpshopcategory" %>
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



	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_usercpshopcategory.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<style type=\"text/css\">\r\n");
	templateBuilder.Append(" body {\r\n");
	templateBuilder.Append("    overflow-x:auto;\r\n");
	templateBuilder.Append("    font-size:12px;\r\n");
	templateBuilder.Append(" }\r\n");
	templateBuilder.Append(" .contral{\r\n");
	templateBuilder.Append("    cursor:default;\r\n");
	templateBuilder.Append("    margin:0 auto;\r\n");
	templateBuilder.Append(" }\r\n");
	templateBuilder.Append(" .contral input{\r\n");
	templateBuilder.Append("    cursor:hand;\r\n");
	templateBuilder.Append("    valign:middle;\r\n");
	templateBuilder.Append(" }\r\n");
	templateBuilder.Append(" .treenode_move {\r\n");
	templateBuilder.Append("    position:absolute;\r\n");
	templateBuilder.Append("    width:200px;\r\n");
	templateBuilder.Append("    line-height:18px;\r\n");
	templateBuilder.Append("    filter:alpha(opacity=50);\r\n");
	templateBuilder.Append("    opacity:0.5;\r\n");
	templateBuilder.Append("    z-index:110;\r\n");
	templateBuilder.Append("    display:none;\r\n");
	templateBuilder.Append("    padding-left:10px;\r\n");
	templateBuilder.Append(" }\r\n");
	templateBuilder.Append(" .treenode_0_noselected,.treenode_0_over{\r\n");
	templateBuilder.Append("    height:4px;\r\n");
	templateBuilder.Append("    line-height:4px;\r\n");
	templateBuilder.Append("    overflow:hidden;\r\n");
	templateBuilder.Append("    z-index:100;\r\n");
	templateBuilder.Append(" }\r\n");
	templateBuilder.Append(" .treenode_0_over{\r\n");
	templateBuilder.Append("    background: #c0ddfc;\r\n");
	templateBuilder.Append("    height:6px;\r\n");
	templateBuilder.Append("    line-height:6px;\r\n");
	templateBuilder.Append(" }\r\n");
	templateBuilder.Append(" .treenode_noselected,.treenode_selected, .treenode_over{\r\n");
	templateBuilder.Append("    line-height:15px;\r\n");
	templateBuilder.Append("    z-index:100;\r\n");
	templateBuilder.Append("    border-bottom: 1px solid #CCCCCC;\r\n");
	templateBuilder.Append("	padding: 2px;\r\n");
	templateBuilder.Append(" }\r\n");
	templateBuilder.Append(" .treenode_selected,.treenode_over{\r\n");
	templateBuilder.Append("    background: #c0ddfc;\r\n");
	templateBuilder.Append("    color:#ffffff;	\r\n");
	templateBuilder.Append("    }\r\n");
	templateBuilder.Append(" .treenode_over{\r\n");
	templateBuilder.Append("    cursor:poiter;	\r\n");
	templateBuilder.Append(" }\r\n");
	templateBuilder.Append(".TopicButton{border:1px solid #ccc;margin-right:4px;padding:1px 2px; line-height:14px;}\r\n");
	templateBuilder.Append("	*html .TopicButton { margin-right:2px;  font-size:12px;}\r\n");
	templateBuilder.Append("	*+html .TopicButton { margin-right:2px;  font-size:12px;}\r\n");
	templateBuilder.Append("	.TopicButton img{ margin-bottom:-3px; height:15px; padding-right:2px;}\r\n");
	templateBuilder.Append("	a.TopicButton:link,a.TopicButton:visited {color:#000; text-decoration:none;}\r\n");
	templateBuilder.Append("	a.TopicButton:hover,a.TopicButton:active {color:#000; text-decoration:none;}\r\n");
	templateBuilder.Append(" </style>\r\n");
	templateBuilder.Append("<!--header end-->\r\n");
	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"home\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <a href=\"usercp.aspx\">用户中心</a>  &raquo; <strong>撰写短消息</strong>\r\n");
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
	templateBuilder.Append("			<div class=\"panneldetail\">\r\n");



	templateBuilder.Append("                <div class=\"pannelbody\">\r\n");
	templateBuilder.Append("					<div class=\"pannellist\">\r\n");
	templateBuilder.Append("					<form id=\"postcategory\" name=\"postcategory\" method=\"post\" action=\"usercpshopcategory.aspx?item=");
	templateBuilder.Append(item.ToString());
	templateBuilder.Append("&shopid=");
	templateBuilder.Append(shopid.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("					<input type=\"hidden\" id=\"operation\" name=\"operation\" value=\"edit\"/>\r\n");
	templateBuilder.Append("					<input type=\"hidden\" id=\"categoryid\" name=\"categoryid\" value=\"0\"/>\r\n");
	templateBuilder.Append("					<input type=\"hidden\" id=\"targetcategoryid\" name=\"targetcategoryid\" value=\"0\"/>\r\n");
	templateBuilder.Append("					<input type=\"hidden\" id=\"isaschildnode\" name=\"isaschildnode\" value=\"0\"/>\r\n");
	templateBuilder.Append("					<input type=\"hidden\" id=\"editcategoryname\" name=\"editcategoryname\" value=\"\"/>\r\n");
	templateBuilder.Append("					<input type=\"submit\" id=\"shopcategorysubmit\" name=\"shopcategorysubmit\" style=\"display: none\" />\r\n");

	if (page_err==0)
	{


	if (ispost)
	{





	}
	else
	{


	if (shopcategorydt_count>0)
	{

	templateBuilder.Append("						  <div style=\"border: 1px dotted rgb(219, 221, 211); padding: 15px 10px 10px 56px; background: rgb(253, 255, 242) url(admin/images/hint.gif) no-repeat scroll 20px 15px; clear: both; margin-top: 10px; position: relative; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; margin-bottom: 10px; text-align: left; font-size: 12px;\">\r\n");
	templateBuilder.Append("                            <li>支持鼠标拖拽</li>\r\n");
	templateBuilder.Append("                          </div>\r\n");

	}	//end if

	templateBuilder.Append("						  <div id=\"treecategory\"></div>\r\n");
	templateBuilder.Append("                          <script type=\"text/javascript\">\r\n");
	templateBuilder.Append("                            var cats = ");
	templateBuilder.Append(shopcategorydata.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("                            var newtree = new tree('newtree',cats,'reSetTree');\r\n");
	templateBuilder.Append("                          </");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("                          <div style=\"text-align:center;background:#F5F5F5 none repeat scroll 0%;border:1px solid #DDDDDD;font-size:14px;margin-top:10px;padding:10px;\">\r\n");
	templateBuilder.Append("					        新分类名称: <input type=\"text\" value=\"\" maxlength=\"50\" size=\"20\" id=\"addcategoryname\" name=\"addcategoryname\">\r\n");

	if (shopcategorydt_count>0)
	{

	templateBuilder.Append("					        位置:       <select id=\"selectcategoryid\" name=\"selectcategoryid\">\r\n");
	templateBuilder.Append("					                        ");
	templateBuilder.Append(categoryoptions.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("					                    </select>\r\n");
	templateBuilder.Append("					        添加方式: <select id=\"addtype\"  name=\"addtype\" tabindex=\"52\">\r\n");
	templateBuilder.Append("					                     <option value=\"1\" >作为同级分类</option>\r\n");
	templateBuilder.Append("		                                 <option value=\"2\" >做为子分类</option>\r\n");
	templateBuilder.Append("                  	                  </select>\r\n");

	}	//end if

	templateBuilder.Append("                  	      <button class=\"mallbutton\" type=\"button\" onclick=\"javascript:$('operation').value='add';$('shopcategorysubmit').click();\">添加分类</button>\r\n");
	templateBuilder.Append("                          </div>\r\n");

	}	//end if


	}
	else
	{





	}	//end if

	templateBuilder.Append("					</form>\r\n");
	templateBuilder.Append("			        </div>\r\n");
	templateBuilder.Append("			    </div>         \r\n");
	templateBuilder.Append("    	   </div>\r\n");
	templateBuilder.Append("	   </div>\r\n");
	templateBuilder.Append("   </div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<!--主体-->\r\n");







	Response.Write(templateBuilder.ToString());
}
</script>
