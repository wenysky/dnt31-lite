<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.usercpmygoods" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:58.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:58. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;



	templateBuilder.Append("<!--header end-->\r\n");

	if (page_err==0)
	{

	templateBuilder.Append("<div id=\"foruminfo\">\r\n");
	templateBuilder.Append("	<div id=\"nav\">\r\n");
	templateBuilder.Append("		<a href=\"");
	templateBuilder.Append(config.Forumurl.ToString().Trim());
	templateBuilder.Append("\" class=\"home\">");
	templateBuilder.Append(config.Forumtitle.ToString().Trim());
	templateBuilder.Append("</a>  &raquo; <a href=\"usercp.aspx\">用户中心</a>  &raquo; <strong>我的商品</strong>\r\n");
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
	templateBuilder.Append("				<div class=\"panneltabs\">\r\n");
	templateBuilder.Append("				   <a href=\"usercpmygoods.aspx?item=tradestats\" \r\n");

	if (item=="tradestats")
	{

	templateBuilder.Append("class=\"current\"\r\n");

	}	//end if

	templateBuilder.Append(">交易统计</a>\r\n");
	templateBuilder.Append("				   <a id=\"buyergoods\" onMouseOver=\"showMenu(this.id);\" onMouseOut=\"showMenu(this.id);\" href=\"usercpmygoods.aspx?item=buytrade\" onclick=\"javascript:window.location.href=this.href;\"  class=\"\r\n");

	if (item=="buytrade")
	{

	templateBuilder.Append("current\r\n");

	}	//end if

	templateBuilder.Append(" dropmenu\">我是买家</a>\r\n");
	templateBuilder.Append("                   <a id=\"sellergoods\" onMouseOver=\"showMenu(this.id);\" onMouseOut=\"showMenu(this.id);\" href=\"usercpmygoods.aspx?item=selltrade\" onclick=\"javascript:window.location.href=this.href;\" class=\"\r\n");

	if (item=="selltrade")
	{

	templateBuilder.Append("current\r\n");

	}	//end if

	templateBuilder.Append(" dropmenu\">我是卖家</a>\r\n");
	templateBuilder.Append("                   <a href=\"eccredit.aspx?uid=");
	templateBuilder.Append(userid.ToString());
	templateBuilder.Append("\" target=\"_blank\">信用评价</a>\r\n");
	templateBuilder.Append("				</div>	\r\n");
	templateBuilder.Append("				<ul class=\"popupmenu_popup headermenu_popup\" id=\"buyergoods_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=buytrade\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">进行中的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=buytrade&filter=attention\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">关注的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=buytrade&filter=eccredit\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">评价的交易</a></li>\r\n");
	templateBuilder.Append("                   <li><a href=\"usercpmygoods.aspx?item=buytrade&filter=success\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">成功的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=buytrade&filter=refund\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">退款的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=buytrade&filter=closed\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">失败的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=buytrade&filter=unstart\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">未生效的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=buytrade&filter=all\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">全部交易</a></li>\r\n");
	templateBuilder.Append("                </ul>\r\n");
	templateBuilder.Append("              	<ul class=\"popupmenu_popup headermenu_popup\" id=\"sellergoods_menu\" style=\"display: none\">\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=selltrade\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">进行中的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=selltrade&filter=attention\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">关注的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=selltrade&filter=eccredit\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">评价的交易</a></li>\r\n");
	templateBuilder.Append("                   <li><a href=\"usercpmygoods.aspx?item=selltrade&filter=success\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">成功的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=selltrade&filter=refund\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">退款的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=selltrade&filter=closed\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">失败的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=selltrade&filter=unstart\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">未生效的交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=selltrade&filter=all\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">全部交易</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=selltrade&filter=onsell\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">出售中的商品</a></li>\r\n");
	templateBuilder.Append("		           <li><a href=\"usercpmygoods.aspx?item=selltrade&filter=allgoods\r\n");

	if (goodsidlist!="")
	{

	templateBuilder.Append("&goodsid=");
	templateBuilder.Append(goodsidlist.ToString());
	templateBuilder.Append("\r\n");

	}	//end if

	templateBuilder.Append("\">全部商品</a></li>\r\n");

	if (config.Enablemall==2)
	{

	templateBuilder.Append("                   <li><a href=\"postgoods.aspx\" target=\"_blank\">我要卖</a></li>\r\n");

	}	//end if

	templateBuilder.Append("                </ul>\r\n");
	templateBuilder.Append("                <div class=\"pannelbody\">\r\n");
	templateBuilder.Append("					<div class=\"pannellist mallcount\">\r\n");

	if (page_err==0)
	{


	if (ispost)
	{





	}
	else
	{


	if (item=="tradestats")
	{

	templateBuilder.Append("	            <div class=\"tradestats\">\r\n");
	templateBuilder.Append("					<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	templateBuilder.Append("					<thead>\r\n");
	templateBuilder.Append("						<tr>\r\n");
	templateBuilder.Append("							<td colspan=\"2\">买家提醒区</td>\r\n");
	templateBuilder.Append("						</tr>\r\n");
	templateBuilder.Append("					</thead>\r\n");
	templateBuilder.Append("					<tbody>\r\n");
	templateBuilder.Append("						<tr>\r\n");
	templateBuilder.Append("							<th><a href=\"usercpmygoods.aspx?item=buytrade\">我买入的商品</a></th>\r\n");
	templateBuilder.Append("							<td>\r\n");

	if (tradestatisticinfo.Buyertrading>0)
	{

	templateBuilder.Append("								    <a href=\"usercpmygoods.aspx?item=buytrade\">您有 ");
	templateBuilder.Append(tradestatisticinfo.Buyertrading.ToString().Trim());
	templateBuilder.Append(" 个正在进行中的交易</a>\r\n");

	}	//end if


	if (tradestatisticinfo.Buyerattention>0)
	{

	templateBuilder.Append("								    <a href=\"usercpmygoods.aspx?item=buytrade&filter=attention\">您有 ");
	templateBuilder.Append(tradestatisticinfo.Buyerattention.ToString().Trim());
	templateBuilder.Append(" 个交易需要关注</a>\r\n");

	}	//end if


	if (tradestatisticinfo.Buyerrate>0)
	{

	templateBuilder.Append("								    <a href=\"usercpmygoods.aspx?item=buytrade&filter=eccredit\">您有 ");
	templateBuilder.Append(tradestatisticinfo.Buyerrate.ToString().Trim());
	templateBuilder.Append(" 个需要评价的交易</a> \r\n");

	}	//end if

	templateBuilder.Append("								<!--<br />\r\n");
	templateBuilder.Append("								<div class=\"lighttxt\" style=\"padding-left: 1em\">包括如下内容:<div style=\"padding-left: 2em\">2 个交易，等待您付款<br /></div></div>-->\r\n");
	templateBuilder.Append("							</td>\r\n");
	templateBuilder.Append("						</tr>\r\n");
	templateBuilder.Append("						<tr>\r\n");
	templateBuilder.Append("							<th><a href=\"usercpmygoods.aspx?item=buytrade&filter=unstart\" title=\"(您)买家确认但卖家未确认的交易\">未生效的交易</a></th>	\r\n");
	templateBuilder.Append("							<td></td>						\r\n");
	templateBuilder.Append("						</tr>\r\n");
	templateBuilder.Append("					</tbody>\r\n");
	templateBuilder.Append("					<thead>\r\n");
	templateBuilder.Append("						<tr>\r\n");
	templateBuilder.Append("							<td colspan=\"2\">卖家提醒区</td>\r\n");
	templateBuilder.Append("						</tr>\r\n");
	templateBuilder.Append("					</thead>\r\n");
	templateBuilder.Append("					<tbody>\r\n");
	templateBuilder.Append("						<tr>\r\n");
	templateBuilder.Append("							<th><a href=\"usercpmygoods.aspx?item=selltrade&filter=onsell\">出售中的商品</a></th>\r\n");
	templateBuilder.Append("							<td>\r\n");

	if (reccount>0)
	{

	templateBuilder.Append("							       <a href=\"usercpmygoods.aspx?item=selltrade&filter=onsell\">您有 ");
	templateBuilder.Append(reccount.ToString());
	templateBuilder.Append(" 个正在出售中的商品</a>\r\n");

	}
	else
	{

	templateBuilder.Append("							        您目前没有正在出售中的商品\r\n");

	}	//end if

	templateBuilder.Append("							</td>\r\n");
	templateBuilder.Append("						</tr>\r\n");
	templateBuilder.Append("						<tr>\r\n");
	templateBuilder.Append("							<th><a href=\"usercpmygoods.aspx?item=selltrade\">交易中的商品</a></th>\r\n");
	templateBuilder.Append("							<td>\r\n");

	if (tradestatisticinfo.Sellertrading>0)
	{

	templateBuilder.Append("								    <a href=\"usercpmygoods.aspx?item=selltrade\">您有 ");
	templateBuilder.Append(tradestatisticinfo.Sellertrading.ToString().Trim());
	templateBuilder.Append(" 个正在进行中的交易</a><br />\r\n");

	}	//end if


	if (tradestatisticinfo.Sellerattention>0)
	{

	templateBuilder.Append("								    <a href=\"usercpmygoods.aspx?item=selltrade&filter=attention\">您有 ");
	templateBuilder.Append(tradestatisticinfo.Sellerattention.ToString().Trim());
	templateBuilder.Append(" 个交易需要关注</a>\r\n");

	}	//end if


	if (tradestatisticinfo.Sellerrate>0)
	{

	templateBuilder.Append("								    <br /><a href=\"usercpmygoods.aspx?item=selltrade&filter=eccredit\">您有 ");
	templateBuilder.Append(tradestatisticinfo.Sellerrate.ToString().Trim());
	templateBuilder.Append(" 个需要评价的交易</a> \r\n");

	}	//end if

	templateBuilder.Append("						</td>\r\n");
	templateBuilder.Append("						</tr>\r\n");
	templateBuilder.Append("						<tr>\r\n");
	templateBuilder.Append("							<th><a href=\"usercpmygoods.aspx?item=selltrade&filter=unstart\" title=\"(您)卖家未确认的交易\">未生效的交易</a></th>	\r\n");
	templateBuilder.Append("							<td></td>				\r\n");
	templateBuilder.Append("						</tr>\r\n");
	templateBuilder.Append("					</tbody>\r\n");
	templateBuilder.Append("					<thead>\r\n");
	templateBuilder.Append("						<tr>\r\n");
	templateBuilder.Append("							<td colspan=\"2\">交易统计</td>\r\n");
	templateBuilder.Append("						</tr>\r\n");
	templateBuilder.Append("					</thead>\r\n");
	templateBuilder.Append("					<tbody>\r\n");
	templateBuilder.Append("						<tr>\r\n");
	templateBuilder.Append("							<td colspan=\"2\">售出商品总数: ");
	templateBuilder.Append(tradestatisticinfo.Sellnumbersum.ToString().Trim());
	templateBuilder.Append("<br />销售成交总额: ");
	templateBuilder.Append(tradestatisticinfo.Selltradesum.ToString().Trim());
	templateBuilder.Append(" 元 </td>\r\n");
	templateBuilder.Append("						</tr>\r\n");
	templateBuilder.Append("						<tr>\r\n");
	templateBuilder.Append("							<td colspan=\"2\">买入商品总数: ");
	templateBuilder.Append(tradestatisticinfo.Buynumbersum.ToString().Trim());
	templateBuilder.Append("<br />买入成交总额: ");
	templateBuilder.Append(tradestatisticinfo.Buytradesum.ToString().Trim());
	templateBuilder.Append(" 元 </td>\r\n");
	templateBuilder.Append("						</tr>\r\n");
	templateBuilder.Append("					</tbody>\r\n");
	templateBuilder.Append("					</table>\r\n");
	templateBuilder.Append("		    </div>\r\n");

	}
	else
	{

	templateBuilder.Append("                        <div class=\"shopsearch\">\r\n");
	templateBuilder.Append("                            <!--\r\n");
	templateBuilder.Append("                            <div class=\"mysearch\">\r\n");
	templateBuilder.Append("                                <input type=\"hidden\" id=\"item\" name=\"item\" value=\"");
	templateBuilder.Append(item.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("                                <input type=\"hidden\" id=\"filter\" name=\"filter\" value=\"");
	templateBuilder.Append(filter.ToString());
	templateBuilder.Append("\">\r\n");
	templateBuilder.Append("                                商品名称<input class=\"colorblue\" value=\"\" name=\"srchkey\" size=\"27\" /><button class=\"lightbutton\" value=\"true\" type=\"submit\" name=\"submit\">搜索</button>\r\n");
	templateBuilder.Append("                            </div>\r\n");
	templateBuilder.Append("                            -->\r\n");
	templateBuilder.Append("                            <strong>我是\r\n");

	if (item=="buytrade")
	{

	templateBuilder.Append("买家\r\n");

	}	//end if


	if (item=="selltrade")
	{

	templateBuilder.Append("卖家\r\n");

	}	//end if

	templateBuilder.Append("                                 —— \r\n");

	if (filter=="")
	{

	templateBuilder.Append("进行中的交易\r\n");

	}	//end if


	if (filter=="attention")
	{

	templateBuilder.Append("进行中的交易\r\n");

	}	//end if


	if (filter=="eccredit")
	{

	templateBuilder.Append("评价的交易\r\n");

	}	//end if


	if (filter=="success")
	{

	templateBuilder.Append("成功的交易\r\n");

	}	//end if


	if (filter=="refund")
	{

	templateBuilder.Append("退款的交易\r\n");

	}	//end if


	if (filter=="closed")
	{

	templateBuilder.Append("失败的交易\r\n");

	}	//end if


	if (filter=="unstart")
	{

	templateBuilder.Append("未生效的交易\r\n");

	}	//end if


	if (filter=="all")
	{

	templateBuilder.Append("全部交易\r\n");

	}	//end if


	if (filter=="onsell")
	{

	templateBuilder.Append("出售中的商品\r\n");

	}	//end if


	if (filter=="allgoods")
	{

	templateBuilder.Append("全部商品\r\n");

	}	//end if

	templateBuilder.Append("                            </strong>\r\n");
	templateBuilder.Append("                        </div>\r\n");

	if (filter=="allgoods" || filter=="onsell")
	{

	templateBuilder.Append("                    <form id=\"goodslist\" name=\"goodslist\" method=\"post\" action=\"\">\r\n");
	templateBuilder.Append("                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n");
	templateBuilder.Append("                        <script type=\"text/javascript\">\r\n");
	templateBuilder.Append("	                        function checkGoodsBox(form,objtag)	{\r\n");
	templateBuilder.Append("		                        for(var i = 0; i < form.elements.length; i++) {\r\n");
	templateBuilder.Append("			                        var e = form.elements[i];\r\n");
	templateBuilder.Append("			                        if(e.name == \"goodsid\") {\r\n");
	templateBuilder.Append("				                        e.checked = objtag.checked;\r\n");
	templateBuilder.Append("			                        }\r\n");
	templateBuilder.Append("		                        }\r\n");
	templateBuilder.Append("		                        objtag.checked = !objtag.checked;\r\n");
	templateBuilder.Append("	                        }\r\n");
	templateBuilder.Append("                        </");
	templateBuilder.Append("script>                    \r\n");
	templateBuilder.Append("                            <thead>\r\n");
	templateBuilder.Append("                                <tr>\r\n");
	templateBuilder.Append("                                    <th colspan=\"3\">商品名称</th>\r\n");
	templateBuilder.Append("                                    <th>查看交易</th>\r\n");

	if (filter=="allgoods")
	{

	templateBuilder.Append("                                    <th>上架</th> \r\n");
	templateBuilder.Append("                                    <th>关闭</th> \r\n");

	}	//end if

	templateBuilder.Append("                                    <th>售出数</th>\r\n");
	templateBuilder.Append("                                    <th>库存数</th>\r\n");
	templateBuilder.Append("                                    <th>销售额(元)</th>\r\n");
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
	templateBuilder.Append("\" style=\"margin-top:8px;\"/></td>\r\n");
	templateBuilder.Append("                                    <td style=\"width: 120px; padding:2px 0;\"><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");
	templateBuilder.Append("                                        <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");

	if (goodsinfo.Goodspic=="")
	{

	templateBuilder.Append("				                            <img width=\"80\" src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/NoPhoto.jpg\" onerror=\"this.onerror=null;this.src='");
	templateBuilder.Append(goodsinfo.Goodspic.ToString().Trim());
	templateBuilder.Append("';\"  title=\"");
	templateBuilder.Append(goodsinfo.Title.ToString().Trim());
	templateBuilder.Append("\">\r\n");

	}
	else
	{

	templateBuilder.Append("				                            <img width=\"80\" src=\"upload/");
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

	if (filter=="allgoods")
	{


	if (goodsinfo.Displayorder>=0)
	{

	templateBuilder.Append("                                            <td>已上架</td>\r\n");

	}
	else
	{

	templateBuilder.Append("                                            <td>未上架</td>\r\n");

	}	//end if


	if (goodsinfo.Closed==1)
	{

	templateBuilder.Append("                                            <td>已关闭</td>\r\n");

	}
	else
	{

	templateBuilder.Append("                                            <td>未关闭</td>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("                                    <td>");
	templateBuilder.Append(goodsinfo.Totalitems.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("                                    <td class=\"fontfamily\">");
	templateBuilder.Append(goodsinfo.Amount.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("                                    <td>");
	templateBuilder.Append(goodsinfo.Tradesum.ToString().Trim());
	templateBuilder.Append("</td>\r\n");
	templateBuilder.Append("                                    <td>\r\n");

	if (goodsinfo.Lastbuyer!="")
	{

	templateBuilder.Append("                                        ");
	templateBuilder.Append(goodsinfo.Lasttrade.ToString().Trim());
	templateBuilder.Append("<br/>\r\n");
	templateBuilder.Append("                                        by <a href=\"userinfo.aspx?username=");
	templateBuilder.Append(goodsinfo.Lastbuyer.ToString().Trim());
	templateBuilder.Append("\">");
	templateBuilder.Append(goodsinfo.Lastbuyer.ToString().Trim());
	templateBuilder.Append("</a>\r\n");

	}
	else
	{

	templateBuilder.Append("                                            暂无交易\r\n");

	}	//end if

	templateBuilder.Append("                                    </td>\r\n");
	templateBuilder.Append("                                </tr>\r\n");
	templateBuilder.Append("                            </tbody>\r\n");
	templateBuilder.Append("                            <!--NtGoodsList end-->                         \r\n");

	}	//end loop

	templateBuilder.Append("                     </table>      \r\n");
	templateBuilder.Append("					 </form>\r\n");
	templateBuilder.Append("					 <div class=\"pannelmessage\">\r\n");
	templateBuilder.Append("							<div class=\"pannelleft\" style=\"width: 160px;\">\r\n");
	templateBuilder.Append("								<a href=\"javascript:;\"  onclick=\"checkGoodsBox($('goodslist'),this)\" checked=\"true\" class=\"selectall\">全选</a>&nbsp;&nbsp;&nbsp;\r\n");
	templateBuilder.Append("								<input type=\"hidden\" id=\"operation\" name=\"operation\" value=\"deletegoods\">\r\n");
	templateBuilder.Append("								<a href=\"###\" onclick=\"$('operation').value = 'deletegoods';$('goodslist').submit();\" class=\"selectall\">删除</a> \r\n");
	templateBuilder.Append("								<!--\r\n");
	templateBuilder.Append("								<a href=\"###\" onclick=\"$('goodslist').submit()\" class=\"selectall\">上架</a>\r\n");
	templateBuilder.Append("								<a href=\"###\" onclick=\"$('goodslist').submit()\" class=\"selectall\">下架</a>-->\r\n");
	templateBuilder.Append("							</div>\r\n");
	templateBuilder.Append("					 </div>\r\n");

	}	//end if


	if (istradeloglist)
	{

	templateBuilder.Append("	                 <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\r\n");
	templateBuilder.Append("		                    <thead>\r\n");
	templateBuilder.Append("                                <tr>\r\n");
	templateBuilder.Append("                                    <th colspan=\"2\">商品名称</th>\r\n");
	templateBuilder.Append("                                    <th>\r\n");

	if (item=="buytrade")
	{

	templateBuilder.Append("卖家\r\n");

	}	//end if


	if (item=="selltrade")
	{

	templateBuilder.Append("买家\r\n");

	}	//end if

	templateBuilder.Append("</th>\r\n");
	templateBuilder.Append("                                    <th>交易金额（元）</th>\r\n");
	templateBuilder.Append("                                    <th>交易状态</th>\r\n");

	if (isshowrate)
	{

	templateBuilder.Append("                                    <th>信用评价</th>\r\n");

	}	//end if

	templateBuilder.Append("                                </tr>\r\n");
	templateBuilder.Append("                            </thead>\r\n");

	int __mygoodstradelog__loop__id=0;
	foreach(DataRow __mygoodstradelog in goodstradeloglist.Rows)
	{
		__mygoodstradelog__loop__id++;

	templateBuilder.Append("		                    <!--NtTradeLogList start-->\r\n");
	templateBuilder.Append("		                    <tbody>\r\n");
	templateBuilder.Append("                                <tr class=\"messagetable\" onmouseover=\"this.className='messagetableon'\" onmouseout=\"this.className='messagetable'\">\r\n");
	 aspxrewriteurl = this.ShowGoodsAspxRewrite(__mygoodstradelog["goodsid"].ToString().Trim());
	
	templateBuilder.Append("                                    <td style=\"width: 120px;vertical-align:middle;\">\r\n");
	templateBuilder.Append("                                        <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">\r\n");

	if (__mygoodstradelog["goodspic"].ToString().Trim()=="")
	{

	templateBuilder.Append("				                            <img src=\"templates/");
	templateBuilder.Append(templatepath.ToString());
	templateBuilder.Append("/images/NoPhoto.jpg\" width=\"80\" onerror=\"this.onerror=null;this.src='" + __mygoodstradelog["goodspic"].ToString().Trim() + "';\"  title=\"" + __mygoodstradelog["title"].ToString().Trim() + "\" style=\"margin-top:2px;\">\r\n");

	}
	else
	{

	templateBuilder.Append("				                            <img src=\"upload/" + __mygoodstradelog["goodspic"].ToString().Trim() + "\" width=\"80\" onerror=\"this.onerror=null;this.src='" + __mygoodstradelog["goodspic"].ToString().Trim() + "';\"  title=\"" + __mygoodstradelog["title"].ToString().Trim() + "\" style=\"margin-top:2px;\">\r\n");

	}	//end if

	templateBuilder.Append("                                        </a>\r\n");
	templateBuilder.Append("                                    </td>\r\n");
	templateBuilder.Append("                                    <td style=\"text-align: left;\"><a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">" + __mygoodstradelog["title"].ToString().Trim() + "</a></td>\r\n");
	templateBuilder.Append("                                    <td>\r\n");

	if (item=="buytrade")
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(__mygoodstradelog["sellerid"].ToString().Trim());
	
	templateBuilder.Append("                                            <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">" + __mygoodstradelog["seller"].ToString().Trim() + "</a>\r\n");

	}	//end if


	if (item=="selltrade")
	{

	 aspxrewriteurl = this.UserInfoAspxRewrite(__mygoodstradelog["buyerid"].ToString().Trim());
	
	templateBuilder.Append("                                            <a href=\"");
	templateBuilder.Append(aspxrewriteurl.ToString());
	templateBuilder.Append("\" target=\"_blank\">" + __mygoodstradelog["buyer"].ToString().Trim() + "</a>\r\n");

	}	//end if

	templateBuilder.Append("                                    </td>\r\n");
	templateBuilder.Append("                                    <td class=\"fontfamily\">" + __mygoodstradelog["tradesum"].ToString().Trim() + "</td>   \r\n");
	templateBuilder.Append("                                    <td>\r\n");
	templateBuilder.Append("                                        <a href=\"\r\n");

	if (__mygoodstradelog["offline"].ToString().Trim()=="1")
	{

	templateBuilder.Append("offlinetrade\r\n");

	}
	else
	{

	templateBuilder.Append("onlinetrade\r\n");

	}	//end if

	templateBuilder.Append(".aspx?goodstradelogid=" + __mygoodstradelog["id"].ToString().Trim() + "\" target=\"_blank\">	\r\n");

	if (__mygoodstradelog["status"].ToString().Trim()=="0")
	{

	templateBuilder.Append("				                            未生效的交易\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="1")
	{

	templateBuilder.Append("				                            等待买家付款\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="2")
	{

	templateBuilder.Append("				                            交易已创建, 等待卖家确认\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="3")
	{

	templateBuilder.Append("				                            确认买家付款中,暂勿发货\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="4")
	{

	templateBuilder.Append("			                                买家已付款,等待卖家发货\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="5")
	{

	templateBuilder.Append("			                                卖家已发货,买家确认中\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="6")
	{

	templateBuilder.Append("			                                买家确认收到货,等待支付宝打款给卖家\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="7")
	{

	templateBuilder.Append("			                                交易成功结束\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="8")
	{

	templateBuilder.Append("			                                交易中途关闭(未完成)\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="10")
	{

	templateBuilder.Append("			                                等待卖家同意退款\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="11")
	{

	templateBuilder.Append("			                                卖家拒绝买家条件，等待买家修改条件\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="12")
	{

	templateBuilder.Append("			                                卖家同意退款，等待买家退货\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="13")
	{

	templateBuilder.Append("			                                等待卖家收货\r\n");

	}	//end if


	if (__mygoodstradelog["status"].ToString().Trim()=="17")
	{

	templateBuilder.Append("			                                退款成功\r\n");

	}	//end if

	templateBuilder.Append("</a>\r\n");
	templateBuilder.Append("                                        <p class=\"fontfamily\">" + __mygoodstradelog["lastupdate"].ToString().Trim() + "</p>\r\n");
	templateBuilder.Append("                                    </td>\r\n");
	templateBuilder.Append("                                     <td> \r\n");

	if (isshowrate)
	{


	if (__mygoodstradelog["ratestatus"].ToString().Trim()=="0")
	{

	templateBuilder.Append("                                          <a href =\"goodsrate.aspx?goodstradelogid=" + __mygoodstradelog["id"].ToString().Trim() + "\" target=\"_blank\">评价</a>\r\n");

	}	//end if


	if (item=="selltrade" && __mygoodstradelog["ratestatus"].ToString().Trim()=="1")
	{

	templateBuilder.Append("                                          等待对方评价\r\n");

	}
	else
	{


	if (item=="buytrade" && __mygoodstradelog["ratestatus"].ToString().Trim()=="2")
	{

	templateBuilder.Append("                                            等待对方评价\r\n");

	}	//end if


	}	//end if


	if (item=="selltrade" && __mygoodstradelog["ratestatus"].ToString().Trim()=="2")
	{

	templateBuilder.Append("                                          对方已评<BR /><a href =\"goodsrate.aspx?goodstradelogid=" + __mygoodstradelog["id"].ToString().Trim() + "\" target=\"_blank\">评价</a>\r\n");

	}
	else
	{


	if (item=="buytrade" && __mygoodstradelog["ratestatus"].ToString().Trim()=="1")
	{

	templateBuilder.Append("                                            对方已评<BR /><a href =\"goodsrate.aspx?goodstradelogid=" + __mygoodstradelog["id"].ToString().Trim() + "\" target=\"_blank\">评价</a>\r\n");

	}	//end if


	}	//end if


	if (__mygoodstradelog["ratestatus"].ToString().Trim()=="3")
	{

	templateBuilder.Append("                                          双方已评\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("                                     </td>\r\n");
	templateBuilder.Append("                                </tr>\r\n");
	templateBuilder.Append("                            </tbody>\r\n");
	templateBuilder.Append("                            <!--NtTradeLogList end-->\r\n");

	}	//end loop

	templateBuilder.Append("		                </table>\r\n");

	}	//end if

	templateBuilder.Append("						<div class=\"pages_btns\" style=\"margin-top:10px;\">\r\n");
	templateBuilder.Append("							<div class=\"pages\">\r\n");
	templateBuilder.Append("								<em>");
	templateBuilder.Append(pageid.ToString());
	templateBuilder.Append("/");
	templateBuilder.Append(pagecount.ToString());
	templateBuilder.Append("页</em>");
	templateBuilder.Append(pagenumbers.ToString());
	templateBuilder.Append("\r\n");
	templateBuilder.Append("								<kbd>跳转<input name=\"gopage\" type=\"text\" id=\"gopage\" onKeyDown=\"if(event.keyCode==13) { window.location='usercpmygoods.aspx?item=");
	templateBuilder.Append(item.ToString());
	templateBuilder.Append("&filter=");
	templateBuilder.Append(filter.ToString());
	templateBuilder.Append("&page=' + (parseInt(this.value) > 0 ? parseInt(this.value) : 1);}\" size=\"4\" maxlength=\"9\"/>页</kbd>\r\n");
	templateBuilder.Append("							</div>\r\n");
	templateBuilder.Append("						</div>\r\n");

	}	//end if

	templateBuilder.Append("                    </div>\r\n");
	templateBuilder.Append("                </div>\r\n");
	templateBuilder.Append("			</div>\r\n");

	}	//end if


	}	//end if

	templateBuilder.Append("		</div>\r\n");
	templateBuilder.Append("	</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("</div>\r\n");
	templateBuilder.Append("<!--主体-->\r\n");

	}
	else
	{





	}	//end if








	Response.Write(templateBuilder.ToString());
}
</script>
