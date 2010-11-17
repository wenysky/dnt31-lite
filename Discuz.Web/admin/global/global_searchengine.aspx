<%@ Page Language="c#" Inherits="Discuz.Web.Admin.searchengine" Codebehind="global_searchengine.aspx.cs" %>
<%@ Register TagPrefix="cc1" Namespace="Discuz.Control" Assembly="Discuz.Control" %>
<%@ Register TagPrefix="uc1" TagName="TextareaResize" Src="../UserControls/TextareaResize.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>registerandvisit</title>
    <script type="text/javascript" src="../js/common.js"></script>
    <link href="../styles/dntmanager.css" type="text/css" rel="stylesheet" />
    <link href="../styles/modelpopup.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="../js/modalpopup.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
</head>
<body>
<div class="ManagerForm">
<form id="Form1" method="post" runat="server">
<fieldset>
	<legend style="background: url(../images/icons/icon13.jpg) no-repeat 6px 50%;">搜索引擎优化</legend>
	<table width="100%">
	<tr><td class="item_title" colspan="2">启用Archiver</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc1:RadioButtonList ID="archiverstatus" runat="server" RepeatColumns="1" HintTitle="提示" HintShowType="down" HintHeight="80" HintTopFirefoxOffset="60">
				<asp:ListItem Value="0" Selected="True">关闭</asp:ListItem>
				<asp:ListItem Value="1">完全启用</asp:ListItem>
				<asp:ListItem Value="2">启用, 但用户从搜索引擎点击时自动转向动态页面</asp:ListItem>
				<asp:ListItem Value="3">启用, 但用户使用浏览器访问时自动转向动态页面</asp:ListItem>
			</cc1:RadioButtonList>
		</td>
		<td class="vtop">Discuz!NT Archiver 能够将论坛公开的内容模拟成静态页面, 以便搜索引擎获取其中的内容. 高级使用技巧请参考《用户使用说明书》</td>
	</tr>
	<tr><td class="item_title" colspan="2">标题附加字</td></tr>
	<tr>
		<td class="vtop rowform">
			 <uc1:TextareaResize ID="seotitle" runat="server" cols="33" controlname="seotitle"></uc1:TextareaResize>
		</td>
		<td class="vtop">网页标题通常是搜索引擎关注的重点, 本附加字设置将出现在标题中论坛名称的前面, 如果有多个关键字, 建议用	"|"、","(不含引号) 等符号分隔</td>
	</tr>
	<tr><td class="item_title" colspan="2">Meta Description</td></tr>
	<tr>
		<td class="vtop rowform">
			 <uc1:TextareaResize ID="seodescription" runat="server" cols="33" controlname="seodescription"></uc1:TextareaResize>
		</td>
		<td class="vtop">Description 出现在页面头部的 Meta 标签中, 用于记录本页面的概要与描述</td>
	</tr>
	<tr><td class="item_title" colspan="2">Meta Keywords</td></tr>
	<tr>
		<td class="vtop rowform">
			<uc1:TextareaResize ID="seokeywords" runat="server" cols="33" controlname="seokeywords"></uc1:TextareaResize>
		</td>
		<td class="vtop">Keywords 项出现在页面头部的 Meta 标签中, 用于记录本页面的关键字, 多个关键字间请用半角逗号 "," 隔开</td>
	</tr>
	<tr><td class="item_title" colspan="2">其他头部信息</td></tr>
	<tr>
		<td class="vtop rowform">
			 <uc1:TextareaResize ID="seohead" runat="server" cols="33" controlname="seohead"></uc1:TextareaResize>
		</td>
		<td class="vtop">如需在 &lt;head&gt;&lt;/head&gt; 中添加其他的 html 代码, 可以使用本设置, 否则请留空</td>
	</tr>
	</table>
	<cc1:Hint ID="Hint1" runat="server" HintImageUrl="../images"></cc1:Hint>
	<div class="Navbutton">
		<cc1:Button ID="SaveInfo" runat="server" Text=" 提 交 "></cc1:Button>
	</div>
</fieldset>
</form>
</div>
<%=footer%>
</body>
</html>