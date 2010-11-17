<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.usercpshopgoodsmanage" %>
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



	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_usercpshopgoodsmanage.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<!--header end-->\r\n");
	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"home\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <a href=\"usercp.aspx\">用户中心</a>  &raquo; <strong>推荐商品列表</strong>\r\n");
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

	templateBuilder.Append("					<form id=\"goodslist\" name=\"goodslist\" method=\"post\" action=\"usercpshopgoodsmanage.aspx?item=");
	templateBuilder.Append(item.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("						<input type=\"hidden\" id=\"operation\" name=\"operation\" value=\"movecategory\"/>\r\n");
	templateBuilder.Append("					    <input type=\"hidden\" id=\"removeshopgoodscategoryid\" name=\"removeshopgoodscategoryid\" value=\"0\"/>\r\n");
	templateBuilder.Append("					    <input type=\"hidden\" id=\"removegoodsid\" name=\"removegoodsid\" value=\"0\"/>\r\n");
	templateBuilder.Append("					    <input type=\"hidden\" id=\"shopgoodscategoryid\" name=\"shopgoodscategoryid\" value=\"");
	templateBuilder.Append(shopgoodscategoryid.ToString());
	templateBuilder.Append("\"/>\r\n");
	templateBuilder.Append("					    <input type=\"submit\" id=\"shopcategorysubmit\" name=\"shopcategorysubmit\" style=\"display: none\" />\r\n");

	if (item=="recommend")
	{

	templateBuilder.Append("						     <div class=\"shopsearch\"><strong>推荐商品列表</strong></div>\r\n");

	if (recommendgoodslist.Count>0)
	{

	templateBuilder.Append("						        <input type=\"submit\" id=\"shoprecommendsubmit\" name=\"shoprecommendsubmit\" style=\"display: none\" />\r\n");
	templateBuilder.Append("						        <input type=\"hidden\" id=\"cancelrecommendgoodsid\" name=\"cancelrecommendgoodsid\" value=\"updatedisplayorder\"/>\r\n");
	templateBuilder.Append("						     <ul id=\"photo\">\r\n");

	int recommendgoodsinfo__loop__id=0;
	foreach(Goodsinfo recommendgoodsinfo in recommendgoodslist)
	{
		recommendgoodsinfo__loop__id++;

	templateBuilder.Append("						         <li style=\"text-align:center; min-height:200px;\">\r\n");
	templateBuilder.Append("							        <div class=\"pictureimg\">\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(recommendgoodsinfo.Goodsid);
	
	templateBuilder.Append("								         <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");

	if (recommendgoodsinfo.Goodspic=="")
	{

	templateBuilder.Append("												   <img width=\"80\" height=\"80\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/NoPhoto.jpg\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(recommendgoodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(recommendgoodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("												   <img width=\"80\" height=\"80\" src=\"upload/");
	templateBuilder.Append(recommendgoodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(recommendgoodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(recommendgoodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}	//end if

	templateBuilder.Append("                                         </a>\r\n");
	templateBuilder.Append("							        </div>\r\n");
	templateBuilder.Append("							        <h4><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(recommendgoodsinfo.Title.ToString().Trim());
	templateBuilder.Append("</a> <a href=\"editgoods.aspx?goodsid=");
	templateBuilder.Append(recommendgoodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">[编辑]</a></h4>\r\n");
	templateBuilder.Append("							        <p class=\"fontfamily\">显示顺序:<input value=\"");
	templateBuilder.Append(recommendgoodsinfo.Displayorder.ToString().Trim());
	templateBuilder.Append("\" name=\"displayorder_");
	templateBuilder.Append(recommendgoodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\" size=\"1\"/></p>\r\n");
	templateBuilder.Append("							        <p><a href=\"#\"  class=\"submitbutton\" onclick=\"javascript:$('operation').value='cancelrecommend';$('cancelrecommendgoodsid').value=");
	templateBuilder.Append(recommendgoodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append(";$('shoprecommendsubmit').click();\">取消推荐</a>\r\n");
	templateBuilder.Append("							        </p>\r\n");
	templateBuilder.Append("						        </li>\r\n");

	}	//end loop

	templateBuilder.Append("						    </ul>\r\n");
	templateBuilder.Append("						    <a href=\"#\"  class=\"submitbutton\" onclick=\"javascript:$('operation').value='updatedisplayorder';$('shoprecommendsubmit').click();\">更新商品摆放顺序</a> <br />\r\n");
	templateBuilder.Append("						     </div>\r\n");

	}
	else
	{

	templateBuilder.Append("                               <div style=\"text-align:center; border: 1px solid rgb(221, 221, 221); padding: 10px; background: rgb(245, 245, 245) none repeat scroll 0% 50%; -moz-background-clip: -moz-initial; -moz-background-origin: -moz-initial; -moz-background-inline-policy: -moz-initial; font-size: 14px; margin-top: 10px;\">\r\n");
	templateBuilder.Append("                                   暂无推荐商品!\r\n");
	templateBuilder.Append("                               </div><BR />\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("                        <div class=\"shopsearch\"><strong>商品分类:\r\n");
	templateBuilder.Append("                            <select id=\"jumpcategoryid\" name=\"jumpcategoryid\" onchange=\"javascript:window.location.href='usercpshopgoodsmanage.aspx?item=shopcategory&shopgoodscategoryid=' + this.value;\">\r\n");
	templateBuilder.Append("				              <option value=\"-1\">全部商品</option>\r\n");

	if (shopcategorydt_count>0)
	{

	templateBuilder.Append("				                     ");
	templateBuilder.Append(categoryoptions.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("				            </select></strong>\r\n");
	templateBuilder.Append("                        </div>\r\n");
	templateBuilder.Append("                        <script type=\"text/javascript\">\r\n");
	templateBuilder.Append("                            var cats = ");
	templateBuilder.Append(shopcategorydata.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("                            selectcategory($('jumpcategoryid'), $('shopgoodscategoryid').value);\r\n");
	templateBuilder.Append("                        </");
	templateBuilder.Append("script>         \r\n");
	templateBuilder.Append("                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n");
	templateBuilder.Append("                            <thead>\r\n");
	templateBuilder.Append("                                <tr>\r\n");
	templateBuilder.Append("                                    <th></th>\r\n");
	templateBuilder.Append("                                    <th colspan=\"2\" style=\"text-align: center;\">商品名称</th>\r\n");
	templateBuilder.Append("                                    <th>查看交易</th>\r\n");

	if (item=="recommend")
	{

	templateBuilder.Append("<th>推荐</th>\r\n");

	}	//end if


	if (item=="shopcategory")
	{

	templateBuilder.Append("<th>所属分类</th>\r\n");

	}	//end if

	templateBuilder.Append("                                    <th>上架</th> \r\n");
	templateBuilder.Append("                                    <th>关闭</th> \r\n");
	templateBuilder.Append("                                    <th>最后交易</th>\r\n");
	templateBuilder.Append("                                </tr>\r\n");
	templateBuilder.Append("                            </thead>\r\n");
	templateBuilder.Append("                            <!--NtGoodsList start-->\r\n");

	int goodsinfo__loop__id=0;
	foreach(Goodsinfo goodsinfo in goodslist)
	{
		goodsinfo__loop__id++;

	templateBuilder.Append("		                    <tbody>\r\n");
	templateBuilder.Append("                                <tr class=\"messagetable\" onmouseover=\"this.className='messagetableon'\" onmouseout=\"this.className='messagetable'\">\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(goodsinfo.Goodsid);
	
	templateBuilder.Append("                                    <td style=\"width: 30px;\"><input name=\"goodsid\" type=\"checkbox\" id=\"goodsid_");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\" value=\"");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\" style=\"margin-top:8px;\" \r\n");

	if (item=="recommend" && goodsinfo.Recommend>0)
	{

	templateBuilder.Append("disabled=\"true\"\r\n");

	}	//end if

	templateBuilder.Append("/></td>\r\n");
	templateBuilder.Append("                                    <td style=\"width: 120px; padding:2px 0;\"><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append("                                        <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");

	if (goodsinfo.Goodspic=="")
	{

	templateBuilder.Append("				                            <img width=\"50\" height=\"50\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/NoPhoto.jpg\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("				                            <img width=\"50\" height=\"50\" src=\"upload/");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}	//end if

	templateBuilder.Append("                                        </a>\r\n");
	templateBuilder.Append("                                    </td>\r\n");
	templateBuilder.Append("                                    <td style=\"text-align: left;\"><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("</a> <a href=\"editgoods.aspx?goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">[编辑]</a></td>\r\n");
	templateBuilder.Append("                                    <td><a href=\"usercpmygoods.aspx?item=selltrade&goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">进入</td>\r\n");

	if (item=="recommend")
	{

	templateBuilder.Append("                                    <td>\r\n");

	if (goodsinfo.Recommend>0)
	{

	templateBuilder.Append("<font color=\"red\">已推荐</font>\r\n");

	}
	else
	{

	templateBuilder.Append("未推荐\r\n");

	}	//end if

	templateBuilder.Append("</td>\r\n");

	}	//end if


	if (item=="shopcategory")
	{

	templateBuilder.Append("                                    <td ><script type=\"text/javascript\">bindshopgoodscategory('");
	templateBuilder.Append(goodsinfo.Shopcategorylist.ToString().Trim());
	templateBuilder.Append("',");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append(");</");
	templateBuilder.Append("script></td>\r\n");

	}	//end if

	templateBuilder.Append("                                    <td>\r\n");

	if (goodsinfo.Displayorder>=0)
	{

	templateBuilder.Append("已上架\r\n");

	}
	else
	{

	templateBuilder.Append("未上架\r\n");

	}	//end if

	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("                                    <td>\r\n");

	if (goodsinfo.Closed==1)
	{

	templateBuilder.Append("未关闭\r\n");

	}
	else
	{

	templateBuilder.Append("已关闭\r\n");

	}	//end if

	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("                                    <td>\r\n");

	if (goodsinfo.Lastbuyer!="")
	{

	templateBuilder.Append("<a href=\"redirect.php?tid=45&goto=lastpost#lastpost\">");
	templateBuilder.Append(goodsinfo.Lasttrade.ToString().Trim());
	templateBuilder.Append("</a><br/> by ");
	templateBuilder.Append(goodsinfo.Lastbuyer.ToString().Trim());
	templateBuilder.Append("\r\n");

	}
	else
	{

	templateBuilder.Append("暂无交易\r\n");

	}	//end if

	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("                                </tr>\r\n");
	templateBuilder.Append("                            </tbody>\r\n");
	templateBuilder.Append("                            <!--NtGoodsList end-->                         \r\n");

	}	//end loop

	templateBuilder.Append("                        </table>   \r\n");
	templateBuilder.Append("					    <div class=\"pannelmessage\">\r\n");
	templateBuilder.Append("							    <div class=\"pannelleft\" style=\"width: 100%;\">\r\n");
	templateBuilder.Append("								    <a href=\"javascript:;\"  onclick=\"checkgoodsbox($('goodslist'),this)\" checked=\"true\" class=\"selectall\">全选</a>&nbsp;&nbsp;&nbsp;\r\n");

	if (item=="shopcategory")
	{

	templateBuilder.Append("移动商品到分类: \r\n");

	if (shopcategorydt_count>0)
	{

	templateBuilder.Append("				                          <select id=\"selectcategoryid\" name=\"selectcategoryid\">\r\n");
	templateBuilder.Append("				                              ");
	templateBuilder.Append(categoryoptions.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("				                          </select>\r\n");

	}	//end if

	templateBuilder.Append("              	                   <a href=\"#\"  class=\"selectall\" onclick=\"javascript:$('operation').value='movecategory';$('shopcategorysubmit').click();\">移动</a>\r\n");

	}	//end if


	if (item=="recommend" && recommendgoodslist.Count<5)
	{

	templateBuilder.Append("              	                   <a href=\"#\"  class=\"selectall\" onclick=\"javascript:$('operation').value='recommend';$('shopcategorysubmit').click();\">推荐</a> 您最多可推荐的商品数: 5\r\n");

	}	//end if

	templateBuilder.Append("							    </div>\r\n");
	templateBuilder.Append("					    </div>\r\n");
	templateBuilder.Append("					</form>\r\n");
	templateBuilder.Append("					<div class=\"pages_btns\">\r\n");
	templateBuilder.Append("						<div class=\"pages\">\r\n");
	templateBuilder.Append("							<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("							<kbd>跳转<input name=\"gopage\" type=\"text\" id=\"gopage\" onKeyDown=\"if(event.keyCode==13) { window.location.href='usercpshopgoodsmanage.aspx?item=");
	templateBuilder.Append(item.ToString());
	templateBuilder.Append("&shopcategoryid=");
	templateBuilder.Append(shopgoodscategoryid.ToString());
	templateBuilder.Append("&page=' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1);}\" size=\"4\" maxlength=\"9\"/>页</kbd>\r\n");
	templateBuilder.Append("						</div>\r\n");
	templateBuilder.Append("					</div>\r\n");

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
