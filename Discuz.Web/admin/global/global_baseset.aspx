<%@ Page Language="c#" Inherits="Discuz.Web.Admin.baseset" CodeBehind="global_baseset.aspx.cs" %>
<%@ Register TagPrefix="cc1" Namespace="Discuz.Control" Assembly="Discuz.Control" %>
<%@ Register TagPrefix="uc1" TagName="TextareaResize" Src="../UserControls/TextareaResize.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
<title>baseset</title>
<link href="../styles/dntmanager.css" type="text/css" rel="stylesheet" />
<link href="../styles/modelpopup.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/modalpopup.js"></script>
<script type="text/javascript">
	function setStatus(status) {
	    document.getElementById("isclosedforum").style.display = (status) ? "block" : "none";
	}
</script>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
</head>
<body>
<div class="ManagerForm">
<form id="Form1" method="post" runat="server" name="Form1">
<fieldset>
	<legend style="background: url(../images/icons/legendimg.jpg) no-repeat 6px 50%;">基本设置</legend>
	<table width="100%">
	<tr><td class="item_title" colspan="2">网站名称</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="webtitle" runat="server" RequiredFieldType="暂无校验"></cc1:TextBox>
		</td>
		<td class="vtop">网站名称, 将显示在页面底部的联系方式处</td>
	</tr>
	<tr><td class="item_title" colspan="2">网站URL地址</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="weburl" runat="server" RequiredFieldType="网页地址"></cc1:TextBox>
		</td>
		<td class="vtop">网站 URL, 将作为链接显示在页面底部</td>
	</tr>
	<tr><td class="item_title" colspan="2">论坛名称</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="forumtitle" runat="server" RequiredFieldType="暂无校验"></cc1:TextBox>
		</td>
		<td class="vtop">论坛名称, 将显示在导航条和标题中</td>
	</tr>
	<%--
	<tr><td class="item_title" colspan="2">论坛URL地址:</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="forumurl" runat="server" RequiredFieldType="暂无校验" CanBeNull="必填" cols="45"></cc1:TextBox>
		</td>
		<td class="vtop">论坛URL地址, 默认为 "forumindex.aspx"</td>
	</tr>
	--%>
	<tbody <%=haveSpace?"":" style='display:none'"%>>
	<tr><td class="item_title" colspan="2">空间名称</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="spacename" runat="server" RequiredFieldType="暂无校验"></cc1:TextBox>
		</td>
		<td class="vtop">该内容将会替换前台所有"空间"字样</td>
	</tr>
	</tbody>
	<%-- 
	<tbody <%=haveSpace?"":" style='display:none'"%>>
	<tr><td class="item_title" colspan="2">空间URL地址</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="spaceurl" runat="server" RequiredFieldType="暂无校验" CanBeNull="必填"></cc1:TextBox>
		</td>
		<td class="vtop">空间首页地址, 默认为 "spaceindex.aspx"</td>
	</tr>
	</tbody>
	--%>
	<tbody <%=haveAlbum?"":" style='display:none'"%>>
	<tr><td class="item_title" colspan="2">相册名称</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="albumname" runat="server" RequiredFieldType="暂无校验"></cc1:TextBox>
		</td>
		<td class="vtop">该内容将会替换前台所有"相册"字样</td>
	</tr>
	</tbody>
	<%--
	<tbody <%=haveAlbum?"":" style='display:none'"%>>
	<tr><td class="item_title" colspan="2">相册URL地址</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="albumurl" runat="server" RequiredFieldType="暂无校验" CanBeNull="必填"></cc1:TextBox>
		</td>
		<td class="vtop">相册首页地址, 默认为 "albumindex.aspx"</td>
	</tr>
	</tbody>
	--%>
	<tr><td class="item_title" colspan="2">显示授权信息链接</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="licensed" runat="server"  RepeatLayout="Flow">
				<asp:ListItem Value="1">是</asp:ListItem>
				<asp:ListItem Value="0">否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">选择"是"将在页脚显示商业授权用户链接, 链接将指向 Discuz!NT 官方网站, 用户可通过此链接验证其所使用的Discuz!NT 是否经过商业授权</td>
	</tr>
	<tr><td class="item_title" colspan="2">网站备案信息代码</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="icp" runat="server"  RequiredFieldType="暂无校验"></cc1:TextBox>
		</td>
		<td class="vtop">页面底部可以显示 ICP 备案信息,如果网站已备案,在此输入您的授权码,它将显示在页面底部,如果没有请留空</td>
	</tr>
	<tr><td class="item_title" colspan="2">启用 RSS</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="rssstatus" runat="server"  RepeatLayout="flow">
				<asp:ListItem Value="1">是</asp:ListItem>
				<asp:ListItem Value="0">否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">选择"是", 论坛将允许用户使用 RSS 客户端软件接收最新的论坛帖子更新. 注意: 在分论坛很多的情况下, 本功能可能会加重服务器负担</td>
	</tr>
	<tr><td class="item_title" colspan="2">RSS TTL(单位:分钟)</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="rssttl" runat="server"  CanBeNull="必填" MinimumValue="0" Size="5" MaxLength="4"></cc1:TextBox>
		</td>
		<td class="vtop">TTL(Time to Live) 是 RSS 2.0 的一项属性, 用于控制订阅内容的自动刷新时间, 时间越短则资料实时性就越高, 但会加重服务器负担, 通常可设置为 30～180 范围内的数值</td>
	</tr>
	<tr><td class="item_title" colspan="2">启用 SiteMap</td></tr>
	<tr>
		<td class="vtop rowform">
		<cc1:RadioButtonList id="sitemapstatus" runat="server"  RepeatLayout="flow">
			<asp:ListItem Value="1">是</asp:ListItem>
			<asp:ListItem Value="0">否</asp:ListItem>
		</cc1:RadioButtonList>
		</td>
		<td class="vtop">SiteMap为百度论坛收录协议,是否允许百度收录</td>
	</tr>
	<tr><td class="item_title" colspan="2">SiteMap TTL (单位:小时)</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="sitemapttl" runat="server" CanBeNull="必填" MinimumValue="1" MaximumValue="24" Text="12" Size="5" MaxLength="2"></cc1:TextBox>
		</td>
		<td class="vtop">百度论坛收录协议更新时间, 用于控制百度论坛收录协议更新时间, 时间越短则资料实时性就越高, 但会加重服务器负担, 通常可设置为 1～24 范围内的数值</td>
	</tr>
	<tr><td class="item_title" colspan="2">显示程序运行信息</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList ID="debug" runat="server" RepeatLayout="flow">
				<asp:ListItem Value="1">是</asp:ListItem>
				<asp:ListItem Value="0">否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">选择"是"将在页脚处显示程序运行时间</td>
	</tr>
	<tr><td class="item_title" colspan="2">数据库全文搜索</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="fulltextsearch" runat="server" RepeatLayout="flow">
				<asp:ListItem Value="1">是</asp:ListItem>
				<asp:ListItem Value="0">否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">论坛会对查询使用SQL2000的全文搜索功能以提升效率. 注意: 本功能会增加数据库的体积</td>
	</tr>
	<tr><td class="item_title" colspan="2">密码模式</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="passwordmode" runat="server" RepeatLayout="flow" RepeatColumns="3">
			<asp:ListItem Value="0"  Selected=true>默认</asp:ListItem>
			<asp:ListItem Value="1">动网兼容模式</asp:ListItem>
			<asp:ListItem Value="2">第三方模式</asp:ListItem>
		</cc1:RadioButtonList>
		</td>
		<td class="vtop">注意: 动网兼容模式只适用于从动网论坛(或LeadBBS和雪人论坛等)转换而来的论坛用户数据.非从第三方转换的论坛请勿使用第三方模式[<a href="http://nt.discuz.net/doc/default.aspx?cid=71" target="_blank">详细介绍</a>]</td>
	</tr>
	<tr><td class="item_title" colspan="2">身份验证Cookie域</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="CookieDomain" runat="server" Text="" Size="30" RequiredFieldType="暂无校验"></cc1:TextBox>
		</td>
		<td class="vtop">如需所有子域共享此Cookie, 例如:<br />要让www.abc.com 与 bbs.abc.com共享论坛Cookie,则请设置此处为 .abc.com</td>
	</tr>
	<tr><td class="item_title" colspan="2">禁止浏览器缓冲</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="nocacheheaders" runat="server"  RepeatLayout="flow">
				<asp:ListItem Value="1">是</asp:ListItem>
				<asp:ListItem Value="0">否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">选择"是"将禁止浏览器对论坛页面进行缓冲, 用于解决极个别浏览器内容刷新不正常的问题. 注意: 本功能会加重服务器负担</td>
	</tr>
	<tr><td class="item_title" colspan="2">是否记录缓存日志</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="cachelog" RepeatLayout="flow" runat="server"  >
				<asp:ListItem Value="1">是</asp:ListItem>
				<asp:ListItem Value="0" Selected=true>否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">此项功能会记录论坛的缓存日志并在缓存日志中进行显示. 注意: 当此项功能会加重系统负担</td>
	</tr>
	<tr><td class="item_title" colspan="2">允许查看会员列表</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList ID="memliststatus" runat="server" RepeatLayout="Flow">
				<asp:ListItem Value="1">是</asp:ListItem>
				<asp:ListItem Value="0">否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">允许查看会员列表</td>
	</tr>
	<tr><td class="item_title" colspan="2">启用伪静态url</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="aspxrewrite" runat="server"  RepeatLayout="flow" RepeatColumns="3">
				<asp:ListItem Value="1">启用</asp:ListItem>
				<asp:ListItem Value="0" Selected="true">不启用</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">只有启用该设置，伪静态url设置才会生效</td>
	</tr>
	<tr><td class="item_title" colspan="2">伪静态url的扩展名</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="extname" runat="server"  RequiredFieldType="暂无校验" CanBeNull="必填" Text="10" Size="5"></cc1:TextBox>
		</td>
		<td class="vtop">此功能会实现网页链接页面的扩展名使用当前的设置!<a href="http://nt.discuz.net/doc/default.aspx?cid=36" target="_blank"><img src="../images/nav/sysinfo.gif" border="0" alt="伪静态url设置帮助" /></a></td>
	</tr>
	<tr><td class="item_title" colspan="2">伪静态url的替换规则</td></tr>
	<tr>
		<td class="vtop rowform">
			<span id="Span1" onMouseOut="hidehintinfo();" 
	onmouseover="showhintinfo(this,0,0,'提示','此处功能会实现网页链接的地址重定向的正则式校验内容,当您修改时请谨用!','50','up');">
				<span id="Span2" style="display:inline-block;border-width:0px;border-style:Dotted;"></span>
			</span>
		</td>
		<td class="vtop"><a href="#" class="TextButton" onClick="javascript:window.location.href='global_urlgrid.aspx';" >编辑伪静态url替换规则</a></td>
	</tr>
	<tr><td class="item_title" colspan="2">启用IIS的URL重写</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList ID="iisurlrewrite" RepeatLayout="flow" runat="server" HintPosOffSet="40">
				<asp:ListItem Value="1">是</asp:ListItem>
				<asp:ListItem Value="0" Selected="true">否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">此功能需要在IIS中配置才可生效[相关设置，<a href="http://nt.discuz.net/doc/default.aspx?cid=35" target="_blank">请参见</a>]</td>
	</tr>
	<tr><td class="item_title" colspan="2">启用SilverLight</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="enablesilverlight" runat="server" RepeatLayout="flow" HintTitle="提示" HintInfo="本功能用于调查、相册、视频播放、广告、批量文件上传的特殊效果">
				<asp:ListItem Value="1"  Selected=true>是</asp:ListItem>
				<asp:ListItem Value="0" >否</asp:ListItem>								
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">本功能用于投票、批量文件上传的特殊效果。如在使用中出现“silverlight 2104错误”，请点击查看<a href="http://nt.discuz.net/doc/default.aspx?cid=157" target="_blank">设置文档</a></td>
	</tr>
	<tr><td class="item_title" colspan="2">Discuz!NT代码模式</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="bbcodemode" runat="server" RepeatColumns="1" RepeatLayout="flow" HintTitle="提示" HintInfo="注意: 动网UBB兼容模式只适用于从动网论坛转换而来的论坛数据.">
				<asp:ListItem Value="0"  Selected=true>标准Discuz!NT代码</asp:ListItem>
				<asp:ListItem Value="1" >动网UBB代码兼容模式</asp:ListItem>								
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">注意: 动网UBB兼容模式只适用于从动网论坛转换而来的论坛数据.</td>
	</tr>
	<tr><td class="item_title" colspan="2">首页类型</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList ID="Indexpage" RepeatLayout="flow" runat="server">
				<asp:ListItem Value="0">论坛首页</asp:ListItem>
				<asp:ListItem Value="1">聚合首页</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop"></td>
	</tr>
	<tr><td class="item_title" colspan="2">统计代码设置</td></tr>
	<tr>
		<td class="vtop rowform">
			<uc1:TextareaResize id="Statcode" runat="server"  cols="45" controlname="Linktext" HintPosOffSet="160"></uc1:TextareaResize>
		</td>
		<td class="vtop">用户可以自己添加的统计代码</td>
	</tr>
	<tr><td class="item_title" colspan="2">外部链接</td></tr>
	<tr>
		<td class="vtop rowform">
			<uc1:TextareaResize id="Linktext" runat="server"  cols="45" controlname="Linktext" HintPosOffSet="160"></uc1:TextareaResize>
		</td>
		<td class="vtop">用户可以自己添加的外部链接html字符串，例如&lt;a href='/download/'&gt;下载频道&lt;/a&gt;</td>
	</tr>
	</table>
</fieldset>
<fieldset>
	<legend style="background: url(../images/icons/legendimg.jpg) no-repeat 6px 50%;">大型论坛优化设置</legend>
	<table width="100%">
	<tr><td class="item_title" colspan="2">通知保留天数</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="notificationreserveddays" runat="server" CanBeNull="必填" MinimumValue="0" Text="0" Size="5" MaxLength="4"></cc1:TextBox>
		</td>
		<td class="vtop">0为永久保留</td>
	</tr>
	<tr><td class="item_title" colspan="2">首页每个分类下 最多显示版块数</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="maxindexsubforumcount" runat="server" CanBeNull="必填" MinimumValue="0" Text="0" Size="5" MaxLength="4"></cc1:TextBox>
		</td>
		<td class="vtop">0为不限</td>
	</tr>
	<tr><td class="item_title" colspan="2">删除离线用户频率</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="deletingexpireduserfrequency" runat="server" CanBeNull="必填" MinimumValue="0" Text="5" Size="5" MaxLength="4"></cc1:TextBox>
		</td>
		<td class="vtop">建议2~10分钟</td>
	</tr>
	<tr><td class="item_title" colspan="2">用户在线表性能优化开关</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList ID="onlineoptimization" RepeatLayout="flow" runat="server">
				<asp:ListItem Value="0">关闭</asp:ListItem>
				<asp:ListItem Value="1">开启</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">用户在线表性能优化开关，开启后会有效减小数据库压力，但是某些用户状态会停止更新</td>
	</tr>
	<tr><td class="item_title" colspan="2">头像调用方式</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="avatarmethod" runat="server" RepeatColumns="1" RepeatLayout="flow">
				<asp:ListItem Value="0"  Selected=true>使用动态地址调用头像</asp:ListItem>
				<asp:ListItem Value="1" >使用静态地址调用头像</asp:ListItem>								
			</cc1:RadioButtonList>
		</td>
		<td class="vtop"></td>
	</tr>
	<tr><td class="item_title" colspan="2">图片附件地址显示开关</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList ID="showattachmentpath" runat="server" RepeatLayout="flow">
				<asp:ListItem Value="1">显示</asp:ListItem>
				<asp:ListItem Value="0">不显示</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">如果选择是, 则系统会以真实路径显示图片.如果选择否, 则以程序路径显示</td>
	</tr>
	<tr><td class="item_title" colspan="2">用户最后发帖时间存储方式</td></tr>
	<tr>
	    <td class="vtop rowform">
	       	<cc1:RadioButtonList ID="posttimestoragemedia" runat="server" RepeatLayout="flow">
	       		<asp:ListItem Value="0">数据库</asp:ListItem>
				<asp:ListItem Value="1">cookie</asp:ListItem>
			</cc1:RadioButtonList>
	    </td>
	    <td class="vtop">选择数据库，则会加大在线表的读写次数，但是会精确的记录在线用户的发帖时间。选择cookie，则会降低数据库压力，但是相应的会使灌水程序有可乘之机。</td>
	</tr>
	<tr><td class="item_title" colspan="2">主题浏览统计队列</td></tr>
	<tr>
		<td class="vtop rowform">
			<span id="Span3">
				<input id="Topicqueuestats_1" runat="server" 
				type="radio" name="Topicqueuestats" value="1" checked="true" onClick="document.getElementById('topicqueuestatscount').style.visibility='visible';" />开启
				<input id="Topicqueuestats_0" runat="server" type="radio" name="Topicqueuestats" value="0" 
				onclick="document.getElementById('topicqueuestatscount').style.visibility='hidden';" />关闭
				</span>
				&nbsp;&nbsp;<cc1:TextBox id="topicqueuestatscount" runat="server" RequiredFieldType="数据校验" CanBeNull="必填" Text="10" Size="5" 
				MaxLength="4" MaximumValue="1000" MinimumValue="0"></cc1:TextBox>
		</td>
		<td class="vtop">建议访问量大时开启,访问积累一定数量统一更新,减少服务器压力. 如开启,建议队列长度为20-50</td>
	</tr>
	<tr><td class="item_title" colspan="2">在线用户数统计缓存时间(分钟)</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:TextBox id="onlineusercountcacheminute" runat="server" CanBeNull="必填" MinimumValue="0" Text="5" Size="5" MaxLength="4"/>
		</td>
		<td class="vtop">开启后论坛在线用户数不会实时统计，会根据所设置的时间进行缓存。0为不缓存。</td>
	</tr>
	</table>
</fieldset>
<cc1:Hint id="Hint1" runat="server" HintImageUrl="../images"></cc1:Hint>
<fieldset>
	<legend style="background: url(../images/icons/icon23.jpg) no-repeat 6px 50%;">模块开启设置</legend>
	<table width="100%">
	<tr><td class="item_title" colspan="2">是否关闭论坛</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="closed" runat="server" RepeatLayout="flow" HintPosOffSet="80">
				<asp:ListItem Value="1">是</asp:ListItem>
				<asp:ListItem Value="0">否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">暂时将论坛关闭(包括论坛、个人空间、相册等), 其他人无法访问, 但不影响管理员访问</td>
	</tr>
	<tbody id="isclosedforum">
	<tr><td class="item_title" colspan="2">关闭的原因</td></tr>
	<tr>
		<td class="vtop rowform">
			<uc1:TextareaResize id="closedreason" runat="server" controlname="closedreason" HintPosOffSet="160"></uc1:TextareaResize>
		</td>
		<td class="vtop">论坛关闭时出现的提示信息</td>
	</tr>
	</tbody>
	<tr><td class="item_title" colspan="2"><asp:Label ID="EnableSpaceLabel" Text="是否启用个人空间服务" runat="server"></asp:Label></td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="EnableSpace" runat="server" RepeatLayout="flow">
				<asp:ListItem Value="1" Selected="True">是</asp:ListItem>
				<asp:ListItem Value="0">否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop"></td>
	</tr>
	<tbody <%=haveMall?"":" style='display:none'"%>>
	<tr><td class="item_title" colspan="2">是否启用交易帖或商城服务</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:DropDownList ID="EnableMall" runat="server">
				<asp:ListItem Value="0" Selected="True">不开启</asp:ListItem>
				<asp:ListItem Value="1">启用交易帖</asp:ListItem>
			</cc1:DropDownList>
		</td>
		<td class="vtop"></td>
	</tr>
	</tbody>
	<tr><td class="item_title" colspan="2"><asp:Label ID="EnableAlbumLabel" Text="是否启用相册服务" runat="server"></asp:Label></td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList id="EnableAlbum" runat="server" RepeatLayout="flow">
				<asp:ListItem Value="1">是</asp:ListItem>
				<asp:ListItem Value="0">否</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">论坛关闭时出现的提示信息</td>
	</tr>
	</table>
</fieldset>
<div class="Navbutton">
	<cc1:Button ID="SaveInfo" runat="server" Text="提 交"></cc1:Button>
</div>
<script type="text/javascript">
	setStatus(document.getElementById("closed_0").checked);
</script>
</form>
</div>
<%=footer%>
</body>
</html>
