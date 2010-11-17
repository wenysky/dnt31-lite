<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.showgoods" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:55.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:55. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	templateBuilder.Append("<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("var templatepath = \"");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("var postminchars = 1;\r\n");
	templateBuilder.Append("var postmaxchars = 200;\r\n");
	templateBuilder.Append("var disablepostctrl = parseInt(");
	templateBuilder.Append(disablepostctrl.ToString());
	templateBuilder.Append(");\r\n");
	templateBuilder.Append("var forumpath = \"");
	templateBuilder.Append(forumpath.ToString());
	templateBuilder.Append("\";\r\n");
	templateBuilder.Append("var useradminid = ");
	templateBuilder.Append(useradminid.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/ajax.js\"></");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("<script type=\"text/javascript\" src=\"javascript/template_showgoods.js\"></");
	templateBuilder.Append("script>\r\n");

	if (page_err==0)
	{


	if (ispost || isdeleteop)
	{





	}
	else
	{

	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("		<a id=\"A1\" href=\"forumindex.aspx\" onmouseover=\"showMenu(this.id);\" onmouseout=\"showMenu(this.id);\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; ");
	templateBuilder.Append(goodscategoryinfo.Pathlist.ToString().Trim());
	templateBuilder.Append("  &raquo; <strong>");
	templateBuilder.Append(goodsinfo.Htmltitle.ToString().Trim());
	templateBuilder.Append("</strong>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"headsearch\">\r\n");
	templateBuilder.Append("		<div id=\"search\">\r\n");

	if (usergroupinfo.Allowsearch>0)
	{





	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>	\r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("	");
	templateBuilder.Append(navhomemenu.ToString());
	templateBuilder.Append("\r\n");

	}	//end if




	templateBuilder.Append("<div class=\"mainbox viewthread\">\r\n");
	templateBuilder.Append("	<span class=\"headactions\">\r\n");

	if (goodsinfo.Selleruid==userid)
	{

	templateBuilder.Append("			<a href=\"editgoods.aspx?goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\">编辑商品</a>\r\n");

	}	//end if


	if (goodsinfo.Selleruid==userid || ismoder==1)
	{

	templateBuilder.Append("			<a onclick=\"return confirm('确定要删除吗?');\" href=\"showgoods.aspx?deletegoods=1&goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\">删除商品</a>			\r\n");

	}	//end if

	templateBuilder.Append("		<a href=\"usercppostpm.aspx?msgtoid=");
	templateBuilder.Append(goodsinfo.Selleruid.ToString().Trim());
	templateBuilder.Append("\" target=\"_blank\">给我留言</a> <a href=\"favorites.aspx?goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\">收藏</a>\r\n");
	templateBuilder.Append("	</span>\r\n");
	templateBuilder.Append("	<h1>\r\n");
	templateBuilder.Append("		");
	templateBuilder.Append(goodsinfo.Htmltitle.ToString().Trim());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("	</h1>\r\n");
	templateBuilder.Append("	<table cellspacing=\"0\" cellpadding=\"0\" summary=\"");
	templateBuilder.Append(goodsinfo.Htmltitle.ToString().Trim());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("		<tr>\r\n");
	templateBuilder.Append("		<td class=\"postcontent\">\r\n");
	templateBuilder.Append("		<div class=\"imageviewer\">\r\n");
	templateBuilder.Append("			<ul>\r\n");
	templateBuilder.Append("				<li>\r\n");

	if (goodsinfo.Goodspic=="")
	{

	templateBuilder.Append("					<img id=\"goodspic\" style=\"width:250px\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/mall/nogoods_big.gif\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("					<span style=\"position: absolute; display: none;\" onmouseover=\"showMenu(this.id, 0, 1)\" id=\"attach_");
	templateBuilder.Append(goodsinfo.Aid.ToString().Trim());
	templateBuilder.Append("\"><img border=\"0\" src=\"images/attachicons/attachimg.gif\" /></span><img id=\"goodspic\" style=\"width:250px\" src=\"upload/");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("\" onload=\"attachimg(this, 'load');\" onmouseover=\"attachimginfo(this, 'attach_");
	templateBuilder.Append(goodsinfo.Aid.ToString().Trim());
	templateBuilder.Append("', 1);attachimg(this, 'mouseover')\" onclick=\"zoom(this);\" onmouseout=\"attachimginfo(this, 'attach_");
	templateBuilder.Append(goodsinfo.Aid.ToString().Trim());
	templateBuilder.Append("', 0, event)\"  onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\"/>\r\n");

	}	//end if

	templateBuilder.Append("				<li><a href=\"javascript:;\" onclick=\"zoom($('goodspic'));\"><img border=\"0\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/zoomin.gif\" style=\"margin-bottom:-6px;margin-right: 4px\" />点击放大图片</a></li>\r\n");
	templateBuilder.Append("				<li><!--<img src=\"images/recommend_to_friend.gif\" alt=\"推荐给好友\">--><a href=\"favorites.aspx?goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/add_to_watched_item.gif\" alt=\"收藏这件宝贝\"></li></a>\r\n");
	templateBuilder.Append("			</ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div class=\"itemsummary\">\r\n");
	templateBuilder.Append("			<ul id=\"priceinfo\">\r\n");
	templateBuilder.Append("			    <li ><span>原　　价:</span><del>");
	templateBuilder.Append(goodsinfo.Costprice.ToString().Trim());
	templateBuilder.Append("</del>元</li>\r\n");
	templateBuilder.Append("				<li class=\"currentprice\" style=\"padding-bottom: 5px;\"><span style=\"margin-top: 5px;\">现　　价:</span><em>");
	templateBuilder.Append(goodsinfo.Price.ToString().Trim());
	templateBuilder.Append("</em>元</li>\r\n");
	templateBuilder.Append("				<li class=\"shippingcost\"><span>运　　费:</span>\r\n");

	if (goodsinfo.Transport==0)
	{

	templateBuilder.Append("					    虚拟物品或无需邮递 \r\n");

	}	//end if


	if (goodsinfo.Transport==1)
	{

	templateBuilder.Append("					    卖家承担运费\r\n");

	}	//end if


	if (goodsinfo.Transport>1)
	{


	if (goodsinfo.Ordinaryfee>0)
	{

	templateBuilder.Append("	    				   平邮: ");
	templateBuilder.Append(goodsinfo.Ordinaryfee.ToString().Trim());
	templateBuilder.Append("元\r\n");

	}	//end if


	if (goodsinfo.Emsfee>0)
	{

	templateBuilder.Append("	    				   EMS:");
	templateBuilder.Append(goodsinfo.Emsfee.ToString().Trim());
	templateBuilder.Append("元\r\n");

	}	//end if


	if (goodsinfo.Expressfee>0)
	{

	templateBuilder.Append("	    				   快递:");
	templateBuilder.Append(goodsinfo.Expressfee.ToString().Trim());
	templateBuilder.Append("元\r\n");

	}	//end if


	if (goodsinfo.Ordinaryfee<=0 && goodsinfo.Emsfee<=0)
	{


	if (goodsinfo.Expressfee<=0)
	{

	templateBuilder.Append("    				         无运费\r\n");

	}	//end if


	}	//end if


	}	//end if

	templateBuilder.Append("				</li>\r\n");

	if (goodsinfo.Transport==3)
	{

	templateBuilder.Append("					<li class=\"shippingcost\"><span>　　</span>买家收到货物后直接支付给物流公司 </li>\r\n");

	}	//end if

	templateBuilder.Append("			</ul>\r\n");

	if (goodsinfo.Selleruid!=-1 && userid!=goodsinfo.Selleruid)
	{


	if (goodsinfo.Closed==0 && goodsinfo.Amount>0)
	{

	templateBuilder.Append("						<div class=\"buttonbuynow\"><a href=\"buygoods.aspx?goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\" class=\"eventcode\" title=\"点击此按钮，到下一步确认购买信息。\">立刻购买</a></div>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			<div id=\"otherinfobox\">\r\n");
	templateBuilder.Append("				<ul id=\"otherinfo\">\r\n");
	templateBuilder.Append("					<li class=\"timeleft\"><span>剩余时间:</span> <label class=\"lefttime1\" id=\"remaintime\"></label></li>\r\n");
	templateBuilder.Append("					<li class=\"totalsalenum\"><span>累计售出:</span>");
	templateBuilder.Append(goodsinfo.Totalitems.ToString().Trim());
	templateBuilder.Append("件 <!--(已有<a href=\"#\" target=\"_blank\" style=\"\"> 4 </a>条评价)</li>-->\r\n");
	templateBuilder.Append("					<li class=\"neworold\"><span>宝贝类型:</span> \r\n");

	if (goodsinfo.Quality==1)
	{

	templateBuilder.Append("全新\r\n");

	}
	else
	{

	templateBuilder.Append("二手\r\n");

	}	//end if

	templateBuilder.Append(" </li>\r\n");

	if (goodsinfo.Locus!="")
	{

	templateBuilder.Append("					<li class=\"location\"><span>所 在 地:</span> ");
	templateBuilder.Append(goodsinfo.Locus.ToString().Trim());
	templateBuilder.Append("</li>\r\n");

	}	//end if

	templateBuilder.Append("					<li class=\"amount\"><span>宝贝数量:</span> \r\n");

	if (goodsinfo.Amount>0)
	{
	templateBuilder.Append(goodsinfo.Amount.ToString().Trim());
	templateBuilder.Append("\r\n");

	}
	else
	{

	templateBuilder.Append("0\r\n");

	}	//end if

	templateBuilder.Append(" 件</li>\r\n");
	templateBuilder.Append("					<li class=\"viewtimes\"><span>浏 览 量:</span><label>");
	templateBuilder.Append(goodsinfo.Viewcount.ToString().Trim());
	templateBuilder.Append("</label> 次</li>\r\n");
	templateBuilder.Append("				</ul>\r\n");
	templateBuilder.Append("				<div class=\"havkbox\"></div>\r\n");
	templateBuilder.Append("			 </div>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		<td class=\"postauthor\">\r\n");
	templateBuilder.Append("			<div class=\"authormessage\">掌柜档案</div>\r\n");
	templateBuilder.Append("			<div class=\"authorname\">\r\n");
	 aspxrewriteurl = this.UserInfoAspxRewrite(goodsinfo.Selleruid);
	
	templateBuilder.Append("				<a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">");
	templateBuilder.Append(goodsinfo.Seller.ToString().Trim());
	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("		    </div>\r\n");
	templateBuilder.Append("			<dl>\r\n");
	templateBuilder.Append("				<dt>卖家信用</dt><dd><span id=\"sellercreditnum\"></span></dd>\r\n");
	templateBuilder.Append("				<dt>买家信用</dt><dd><span id=\"buyercreditnum\"></span></dd>\r\n");
	templateBuilder.Append("				<dt>卖家好评率</dt><dd><span id=\"sellergoodrate\"></span></dd>\r\n");
	templateBuilder.Append("				<dt>买家好评率</dt><dd><span id=\"buyergoodrate\"></span></dd>\r\n");
	templateBuilder.Append("				<dt>注册时间</dt><dd>");
	templateBuilder.Append(joindate.ToString());
	templateBuilder.Append("</dd>\r\n");
	templateBuilder.Append("			</dl>\r\n");
	templateBuilder.Append("			<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("			    getTime('");
	templateBuilder.Append(goodsinfo.Expiration.ToString().Trim());
	templateBuilder.Append("','remaintime');\r\n");
	templateBuilder.Append("                var creditrulesjsondata = ");
	templateBuilder.Append(creditrulesjsondata.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("                var templatepath = '");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("';\r\n");
	templateBuilder.Append("                var usercredit_data = ");
	templateBuilder.Append(sb_usercredit.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("                gettradecredit(usercredit_data[0].sixmonth + usercredit_data[0].sixmonthago, true, 'sellercreditnum',");
	templateBuilder.Append(goodsinfo.Selleruid.ToString().Trim());
	templateBuilder.Append("); //卖家信用\r\n");
	templateBuilder.Append("                gettradecredit(usercredit_data[3].sixmonth + usercredit_data[3].sixmonthago, false, 'buyercreditnum',");
	templateBuilder.Append(goodsinfo.Selleruid.ToString().Trim());
	templateBuilder.Append("); //买家信用\r\n");
	templateBuilder.Append("                loadratedata(0,3,'sellercredit','sellergoodrate');   \r\n");
	templateBuilder.Append("                loadratedata(3,6,'buyercredit','buyergoodrate');   \r\n");
	templateBuilder.Append("            </");
	templateBuilder.Append("script> \r\n");

	if (config.Enablemall==2)
	{

	templateBuilder.Append("			    <div class=\"moregoods\"><a href=\"shop.aspx?userid=");
	templateBuilder.Append(goodsinfo.Shopid.ToString().Trim());
	templateBuilder.Append("\"><img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/moregoods.gif\" alt=\"查看更多商品\"/></a></div>\r\n");

	}	//end if

	templateBuilder.Append("		</td>\r\n");
	templateBuilder.Append("		</tr>\r\n");
	templateBuilder.Append("	</table>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<div class=\"mainbox othergoodsinfo\">\r\n");
	templateBuilder.Append("	<ul class=\"tabs\">\r\n");
	templateBuilder.Append("		 <li id=\"li_showdetail\" class=\"current\"><a onclick=\"showgoodsinfo('showdetail')\" href=\"javascript:;\">宝贝详情</a></li>\r\n");
	templateBuilder.Append("		 <li id=\"li_othermessage\"><a onclick=\"showgoodsinfo('othermessage')\" href=\"javascript:;\">其他信息</a></li>\r\n");
	templateBuilder.Append("		 <li id=\"li_pricelist\"><a onclick=\"showgoodsinfo('pricelist')\" href=\"javascript:;\">出价记录</a></li>\r\n");
	templateBuilder.Append("		 <li id=\"li_messagebox\"><a onclick=\"showgoodsinfo('messagebox')\" href=\"javascript:;\">留言簿</a></li>\r\n");
	templateBuilder.Append("		 <li style=\"display: none;\" id=\"ad_relatedtrade\"/>\r\n");
	templateBuilder.Append("	</ul>\r\n");
	templateBuilder.Append("	<div id=\"showdetail\">\r\n");
	templateBuilder.Append("		<div class=\"postmessage\">");
	templateBuilder.Append(message.ToString());
	templateBuilder.Append("</div>\r\n");

	if (config.Enablemall==2)
	{

	templateBuilder.Append("		<div class=\"othergoods\">\r\n");
	templateBuilder.Append("			<h4><img width=\"12\" height=\"12\" align=\"middle\" alt=\"\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/rec_item_title_icon.gif\"/>掌柜推荐的宝贝</h4>\r\n");
	templateBuilder.Append("			<ul> \r\n");

	int recgoodsinfo__loop__id=0;
	foreach(Goodsinfo recgoodsinfo in recommendgoodslist)
	{
		recgoodsinfo__loop__id++;

	templateBuilder.Append("			   <li>\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(recgoodsinfo.Goodsid);
	

	if (recgoodsinfo.Goodspic=="")
	{

	templateBuilder.Append("				        <a target=\"_blank\" href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\"><img style=\"width:80px\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/nogoods_small.jpg\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(recgoodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(recgoodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\"></a>\r\n");

	}
	else
	{

	templateBuilder.Append("				        <a target=\"_blank\" href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\"><img style=\"width:80px\" src=\"upload/");
	templateBuilder.Append(recgoodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(recgoodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(recgoodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\"></a>\r\n");

	}	//end if

	templateBuilder.Append("			   <em>");
	templateBuilder.Append(recgoodsinfo.Price.ToString().Trim());
	templateBuilder.Append(" 元</em>\r\n");
	templateBuilder.Append("			   <span><a target=\"_blank\" href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\">");
	templateBuilder.Append(recgoodsinfo.Htmltitle.ToString().Trim());
	templateBuilder.Append("</a></span>\r\n");
	templateBuilder.Append("			   </li>\r\n");

	}	//end loop

	templateBuilder.Append("		   </ul>\r\n");
	templateBuilder.Append("		   <div class=\"openshop\">挑选更多宝贝>> <a target=\"_blank\" href=\"shop.aspx?userid=");
	templateBuilder.Append(goodsinfo.Shopid.ToString().Trim());
	templateBuilder.Append("\"><img align=\"absmiddle\" alt=\"进入掌柜店铺\" src=\"http://pics.taobao.com/bao/album/sys/auction/stroll_shop_icon2.gif\"/></a></div>\r\n");
	templateBuilder.Append("		</div>\r\n");

	}	//end if

	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"othermessage\">\r\n");
	templateBuilder.Append("		<h3 id=\"othermessage_h3\">其他信息</h3>\r\n");
	templateBuilder.Append("		<ul>\r\n");
	templateBuilder.Append("			<li><span>开始:</span>");
	templateBuilder.Append(goodsinfo.Dateline.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			<li><span>发票:</span>\r\n");

	if (goodsinfo.Invoice==1)
	{

	templateBuilder.Append("有\r\n");

	}
	else
	{

	templateBuilder.Append("无\r\n");

	}	//end if

	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			<li><span>结束:</span>");
	templateBuilder.Append(goodsinfo.Expiration.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			<li><span>保修:</span>\r\n");

	if (goodsinfo.Repair==0)
	{

	templateBuilder.Append("无\r\n");

	}
	else
	{
	templateBuilder.Append(goodsinfo.Repair.ToString().Trim());
	templateBuilder.Append(" 天\r\n");

	}	//end if

	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			<li><span>最后编辑时间:</span>");
	templateBuilder.Append(goodsinfo.Lastupdate.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			<li><span>编号:</span>");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("</li>\r\n");
	templateBuilder.Append("			<li><span>运费:</span>			\r\n");

	if (goodsinfo.Transport==0)
	{

	templateBuilder.Append("					    虚拟物品或无需邮递 \r\n");

	}	//end if


	if (goodsinfo.Transport==1)
	{

	templateBuilder.Append("					    卖家承担运费\r\n");

	}	//end if


	if (goodsinfo.Transport>1)
	{


	if (goodsinfo.Ordinaryfee>0)
	{

	templateBuilder.Append("	    				   平邮: ");
	templateBuilder.Append(goodsinfo.Ordinaryfee.ToString().Trim());
	templateBuilder.Append("元\r\n");

	}	//end if


	if (goodsinfo.Emsfee>0)
	{

	templateBuilder.Append("	    				   EMS:");
	templateBuilder.Append(goodsinfo.Emsfee.ToString().Trim());
	templateBuilder.Append("元\r\n");

	}	//end if


	if (goodsinfo.Expressfee>0)
	{

	templateBuilder.Append("	    				   快递:");
	templateBuilder.Append(goodsinfo.Expressfee.ToString().Trim());
	templateBuilder.Append("元\r\n");

	}	//end if


	if (goodsinfo.Ordinaryfee<=0 && goodsinfo.Emsfee<=0)
	{


	if (goodsinfo.Expressfee<=0)
	{

	templateBuilder.Append("    				         无运费\r\n");

	}	//end if


	}	//end if


	if (goodsinfo.Transport==3)
	{

	templateBuilder.Append("    				    (买家收到货物后直接支付给物流公司)\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("			</li>\r\n");
	templateBuilder.Append("			<!--<li><span>付款方式:</span></li>-->\r\n");
	templateBuilder.Append("		</ul>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"pricelist\">\r\n");
	templateBuilder.Append("		<h3 id=\"pricelist_h3\">出价记录</h3>\r\n");
	templateBuilder.Append("		<div id=\"summaryinfo\">\r\n");
	templateBuilder.Append("            <ul>\r\n");
	templateBuilder.Append("                <li class=\"price\">价格: <em>");
	templateBuilder.Append(goodsinfo.Price.ToString().Trim());
	templateBuilder.Append("</em>元</li>\r\n");
	templateBuilder.Append("				<li class=\"timeleft\">剩余时间: <label id=\"remaintime2\">");
	templateBuilder.Append(goodsinfo.Expiration.ToString().Trim());
	templateBuilder.Append("</label></li>\r\n");

	if (goodsinfo.Selleruid!=-1 && userid!=goodsinfo.Selleruid)
	{


	if (goodsinfo.Closed==0 && goodsinfo.Amount>0)
	{

	templateBuilder.Append("                           <li class=\"btnbuynowsmall\"><a href=\"buygoods.aspx?goodsid=");
	templateBuilder.Append(goodsinfo.Goodsid.ToString().Trim());
	templateBuilder.Append("\"><img width=\"127\" height=\"33\" title=\"点击此按钮, 到下一步确认购买信息。\" title=\"立刻购买\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/button_buynow.gif\"/></a></li>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("            </ul>\r\n");
	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("		<div id=\"tradelog_html\" class=\"salerlist\"></div>\r\n");
	templateBuilder.Append("		<div id=\"listpage\" class=\"listpage\"></div>\r\n");
	templateBuilder.Append("		<script>\r\n");
	templateBuilder.Append("		   getTime('");
	templateBuilder.Append(goodsinfo.Expiration.ToString().Trim());
	templateBuilder.Append("','remaintime2');\r\n");
	templateBuilder.Append("		   var page_recordcount = ");
	templateBuilder.Append(tradecount.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("		   var page_pagesize = ");
	templateBuilder.Append(pptradelog.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("		   var page_goodsid = ");
	templateBuilder.Append(goodsid.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("		   var page_currentpage = 1;\r\n");
	templateBuilder.Append("		   var path = 'templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/';\r\n");
	templateBuilder.Append("		   ajaxgettradelog(page_goodsid, page_pagesize, page_currentpage);\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("	<div id=\"messagebox\">\r\n");
	templateBuilder.Append("	    <h3 id=\"messagebox_h3\">留言簿</h3>\r\n");
	templateBuilder.Append("	    <div id=\"leavewordlist\"></div>\r\n");
	templateBuilder.Append("        <div id=\"leaveword_listpage\" class=\"listpage\"></div>\r\n");
	templateBuilder.Append("		<script>\r\n");
	templateBuilder.Append("		   var leaveword_page_recordcount = ");
	templateBuilder.Append(leavewordcount.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("		   var leaveword_page_pagesize = 10;\r\n");
	templateBuilder.Append("		   var leaveword_page_currentpage = ");
	templateBuilder.Append(leaveword_page_currentpage.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("		   var userid = ");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("		   var isseller = '");
	templateBuilder.Append(isseller.ToString());
	templateBuilder.Append("'=='True'?true:false;\r\n");
	templateBuilder.Append("		   ajaxgetleaveword(page_goodsid, leaveword_page_pagesize, leaveword_page_currentpage);\r\n");
	templateBuilder.Append("		</");
	templateBuilder.Append("script>\r\n");



	templateBuilder.Append("	</div>	\r\n");
	templateBuilder.Append("	<script language=\"javascript\">showgoodsinfo('showdetail');</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("</div>\r\n");

	if (config.Enablemall==1)
	{

	templateBuilder.Append("<div id=\"footfilter\" class=\"box\">\r\n");

	if (config.Forumjump==1)
	{

	templateBuilder.Append("		<select onchange=\"if(this.options[this.selectedIndex].value != '') { jumpurl(this.options[this.selectedIndex].value,");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(",'");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("');}\">\r\n");
	templateBuilder.Append("				<option>论坛跳转...</option>\r\n");
	templateBuilder.Append("				");
	templateBuilder.Append(forumlistboxoptions.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</select>\r\n");

	}	//end if


	if (config.Visitedforums>0)
	{

	templateBuilder.Append("		<select name=\"select2\" onchange=\"if(this.options[this.selectedIndex].value != '') {jumpurl(this.options[this.selectedIndex].value,");
	templateBuilder.Append(config.Aspxrewrite.ToString().Trim());
	templateBuilder.Append(",'");
	templateBuilder.Append(config.Extname.ToString().Trim());
	templateBuilder.Append("');}\">\r\n");
	templateBuilder.Append("			  <option>最近访问...</option>");
	templateBuilder.Append(visitedforumsoptions.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("		</select>\r\n");

	}	//end if

	templateBuilder.Append("	<script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	var categorydata = ");
	templateBuilder.Append(goodscategoryfid.ToString());
	templateBuilder.Append(";\r\n");
	templateBuilder.Append("	function jumpurl(fid, aspxrewrite, extname) {\r\n");
	templateBuilder.Append("		for(var i in categorydata) {\r\n");
	templateBuilder.Append("		   if(categorydata[i].fid == fid) {\r\n");
	templateBuilder.Append("			   if(aspxrewrite) {\r\n");
	templateBuilder.Append("				   window.location='showgoodslist-' +categorydata[i].categoryid + extname;\r\n");
	templateBuilder.Append("			   }\r\n");
	templateBuilder.Append("			   else {\r\n");
	templateBuilder.Append("				   window.location='showgoodslist.aspx?categoryid=' +categorydata[i].categoryid;\r\n");
	templateBuilder.Append("			   }\r\n");
	templateBuilder.Append("			   return;\r\n");
	templateBuilder.Append("		   } \r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		if(aspxrewrite) {\r\n");
	templateBuilder.Append("			window.location='showforum-' + fid + extname;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("		else {\r\n");
	templateBuilder.Append("			window.location='showforum.aspx?forumid=' + fid ;\r\n");
	templateBuilder.Append("		}\r\n");
	templateBuilder.Append("	}\r\n");
	templateBuilder.Append("	</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append("</div>\r\n");

	}	//end if


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

	templateBuilder.Append("</div>\r\n");










	Response.Write(templateBuilder.ToString());
}
</script>
