<%@ Page Language="c#" Inherits="Discuz.Web.Admin.scoreset" Codebehind="global_scoreset.aspx.cs" %>
<%@ Register TagPrefix="cc2" Namespace="Discuz.Control" Assembly="Discuz.Control" %>
<%@ Register TagPrefix="cc1" Namespace="Discuz.Control" Assembly="Discuz.Control" %>
<%@ Register TagPrefix="uc1" TagName="PageInfo" Src="../UserControls/PageInfo.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>积分设置</title>
    <link href="../styles/datagrid.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="../js/common.js"></script>
    <link href="../styles/dntmanager.css" type="text/css" rel="stylesheet" />
    <link href="../styles/modelpopup.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="../js/modalpopup.js"></script>
	<script type="text/javascript">
	    function creditsTransStatus(status)
	    {
	        document.getElementById("creditstransLayer").style.display = (status == "0" ? "none" : "block");
	    }
	</script>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
</head>
<body>
<form id="Form1" runat="server">
	<table cellspacing="0" cellpadding="4" width="100%" align="center">
	<tr>
		<td>
			<cc1:DataGrid ID="DataGrid1" runat="server" OnCancelCommand="DataGrid_Cancel" OnEditCommand="DataGrid_Edit" OnUpdateCommand="DataGrid_Update">
				<Columns>
					<asp:BoundColumn DataField="id" SortExpression="id [递增]" Visible="false"></asp:BoundColumn>
					<asp:BoundColumn DataField="name" SortExpression="name" HeaderText="名称" ReadOnly="true"></asp:BoundColumn>
					<asp:BoundColumn DataField="extcredits1" HeaderText="extcredits1"></asp:BoundColumn>
					<asp:BoundColumn DataField="extcredits2" HeaderText="extcredits2"></asp:BoundColumn>
					<asp:BoundColumn DataField="extcredits3" HeaderText="extcredits3"></asp:BoundColumn>
					<asp:BoundColumn DataField="extcredits4" HeaderText="extcredits4"></asp:BoundColumn>
					<asp:BoundColumn DataField="extcredits5" HeaderText="extcredits5"></asp:BoundColumn>
					<asp:BoundColumn DataField="extcredits6" HeaderText="extcredits6"></asp:BoundColumn>
					<asp:BoundColumn DataField="extcredits7" HeaderText="extcredits7"></asp:BoundColumn>
					<asp:BoundColumn DataField="extcredits8" HeaderText="extcredits8"></asp:BoundColumn>
				</Columns>
			</cc1:DataGrid>
		</td>
	</tr>
	</table>
	<div style="border: 1px dotted rgb(219, 221, 211); margin: 10px 0pt; padding: 15px 10px 10px 56px; background: rgb(253, 255, 242) url(../images/hint.gif) no-repeat 20px 15px; clear: both;" id="info1">
    您可以通过设置负值的方式来扣除某一操作的积分值, 各项积分增减允许的范围为-999～+999. 如果为更多的操作设置积分策略, 系统就需要更频繁的更新用户积分, 同时意味着消耗更多的系统资源, 因此请根据实际情况酌情设置
	<table class="table1" cellspacing="0" cellpadding="4" width="100%" align="center">
	<tr>
		<td width="100">兑换比率</td>
		<td>
			兑换比率为单项积分对应一个单位标准积分的值, 例如 extcredits1 的比率为 1.5(相当于 1.5 个单位标准积分)、extcredits2 的比率为
			3(相当于 3 个单位标准积分)、extcredits3 的比率为 15(相当于 15 个单位标准积分), 则 extcredits3 的 1 分相当于 extcredits2
			的 5 分或 extcredits1 的 10 分. 一旦设置兑换比率, 则用户将可以在控制面板中自行兑换各项设置了兑换比率的积分, 如不希望实行积分自由兑换,
			请将其兑换比率设置为 0
		</td>
	</tr>
	<tr>
		<td>积分名称</td>
		<td>该项积分的名称, 如果为空则不启用该项积分显示</td>
	</tr>
	<tr>
		<td>积分单位</td>
		<td>如金币,元等</td>
	</tr>
	<tr>
		<td>发主题</td>
		<td>作者发新主题增加的积分数, 如果该主题被删除, 作者积分也会按此标准相应减少</td>
	</tr>
	<tr>
		<td>回复</td>
		<td>作者发新回复增加的积分数, 如果该回复被删除, 作者积分也会按此标准相应减少</td>
	</tr>
	<tr>
		<td>加精华</td>
		<td>主题被加入精华时单位级别作者增加的积分数(根据精华级别乘以1～3), 如果该主题被移除精华, 作者积分也会按此标准相应减少</td>
	</tr>
	<tr>
		<td>上传附件</td>
		<td>用户每上传一个附件增加的积分数, 如果该附件被删除, 发布者积分也会按此标准相应减少</td>
	</tr>
	<tr>
		<td>下载附件</td>
		<td>用户每下载一个附件扣除的积分数. 注意: 分值为负数时才能扣除相应的积分.如果允许游客组下载附件, 本策略将可能被绕过</td>
	</tr>
	<tr>
		<td>发短消息</td>
		<td>用户每发送一条短消息扣除的积分数.注意: 分值为负数时才能扣除相应的积分.</td>
	</tr>
	<tr>
		<td>搜索</td>
		<td>用户每进行一次帖子搜索或短消息搜索扣除的积分数.注意: 分值为负数时才能扣除相应的积分.</td>
	</tr>
	<tr>
		<td>交易成功</td>
		<td>用户每成功进行一次交易后增加的积分数</td>
	</tr>
	<tr>
		<td>参与投票</td>
		<td>用户每参与一次投票后增加的积分数</td>
	</tr>
	</table>
	</div>
	<div class="ManagerForm">
	<fieldset>
	<legend style="background: url(../images/icons/icon25.jpg) no-repeat 6px 50%;">积分设置</legend>
	<table width="100%">
	<tr><td class="item_title" colspan="2">总积分计算公式</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc2:TextBox ID="formula" runat="server" cols="30" Height="50" TextMode="MultiLine" RequiredFieldType="暂无校验"></cc2:TextBox>
			<div class="countor" style="display:none">
				<cc2:CheckBoxList ID="RefreshUserScore" RepeatLayout="flow" runat="server">
					<asp:ListItem Value="1">根据该公式刷新所有用户总积分</asp:ListItem>
				</cc2:CheckBoxList>
			</div>
		</td>
		<td class="vtop">总积分是衡量用户级别的唯一标准, 您可以在此设定用户的总积分计算公式, 其中 posts 代表发帖数;digestposts 代表精华帖数;oltime 代表用户总在线时间(分钟);extcredits1～extcredits8 分别代表上述 8 个自定义积分. 公式中可使用包括 + - * / () 在内的运算符号, 例如"<i><u>posts*0.5+digestposts*10+oltime*10+extcredits1*2+extcredits8</u></i>"代表总积分为"<i><u>发帖数</u></i>*0.5+<i><u>精华帖数</u></i>*10+<i><u>总在线时间(分钟)</u></i>*10+<i><u>自定义积分1</u></i>*2+<i><u>自定义积分8</u></i>". 注意: 一旦修改积分公式, 将可能导致所有用户的积分和所在会员用户组重新计算, 因此会加重服务器负担, 直至全部用户更新完毕. 其中在线时间,用户可以通过长时间联机刷新而作弊, 请慎用</td>
	</tr>
	<tr><td class="item_title" colspan="2">交易积分设置</td></tr>
	<tr>
		<td class="vtop rowform" style="padding-bottom:10px;">
            <cc2:DropDownList ID="creditstrans" runat="server">
                <asp:ListItem Value="0">关闭</asp:ListItem>
            </cc2:DropDownList>
		</td>
		<td class="vtop" rowspan="3">交易积分是一种可以由用户间自行转让、买卖交易的积分类型, 您可以指定一种积分作为交易积分. 如果不指定交易积分, 则用户间积分交易功能将不能使用. 注意: 交易积分必须是已启用的积分, 一旦确定请尽量不要更改, 否则以往记录及交易可能会产生问题.
		<p style="color:#000; padding-top:10px">如果想要让用户可以通过现金充值论坛积分,请进入<a href="global_screditset.aspx"style=" font-weight:700; padding-left:10px; text-decoration:underline; color:#FF0000">积分充值设置</a></p></td>
	</tr>
	<tr>
		<td class="vtop rowform" style="padding-left:20px;padding-bottom:10px;">
			主题(附件)买卖的积分:<cc2:DropDownList ID="topicattachcreditstrans" runat="server">
									<asp:ListItem Value="0" Selected="True">交易积分</asp:ListItem>
								</cc2:DropDownList>
		</td>
	</tr>
	<tr>
		<td class="vtop rowform" style="padding-left:20px;">
			悬赏主题使用的积分:<cc2:DropDownList ID="bonuscreditstrans" runat="server">
									<asp:ListItem Value="0" Selected="True">交易积分</asp:ListItem>
								</cc2:DropDownList>
		</td>
	</tr>
	<tr><td class="item_title" colspan="2">转账最低余额</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc2:TextBox ID="transfermincredits" runat="server" RequiredFieldType="数据校验" CanBeNull="必填"></cc2:TextBox>
		</td>
		<td class="vtop">积分转账后要求用户所拥有的余额最小数值. 利用此功能, 您可以设置较大的余额限制, 使积分小于这个数值的用户无法转账;也可以将余额限制设置为负数, 使得转账在限额内可以透支</td>
	</tr>
	<tr><td class="item_title" colspan="2">单主题最高收入</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc2:TextBox ID="maxincperthread" runat="server" RequiredFieldType="数据校验" CanBeNull="必填"></cc2:TextBox>
		</td>
		<td class="vtop">设置单一主题作者出售所得的最高税后积分收入, 超过此限制后购买者将仍然被扣除相应积分, 但主题作者收益将不再上涨. 本限制只在主题买卖时起作用, 0 为不限制</td>
	</tr>
	<tr><td class="item_title" colspan="2">积分交易税</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc2:TextBox ID="creditstax" runat="server" RequiredFieldType="数据校验" CanBeNull="必填" Size="5" MaxLength="5"></cc2:TextBox>
		</td>
		<td class="vtop">积分交易税(损失率)为用户在利用积分进行转让、兑换、买卖时扣除的税率, 范围为 0～1 之间的浮点数, 例如设置为 0.2, 则用户在转换 100 个单位积分时, 损失掉的积分为 20 个单位, 0 为不损失</td>
	</tr>
	<tr><td class="item_title" colspan="2">兑换最低余额</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc2:TextBox ID="exchangemincredits" runat="server" RequiredFieldType="数据校验" CanBeNull="必填" Size="5" MaxLength="4"></cc2:TextBox>
		</td>
		<td class="vtop">积分兑换后要求用户所拥有的余额最小数值. 利用此功能, 您可以设置较大的余额限制, 使积分小于这个数值的用户无法兑换;也可以将余额限制设置为负数, 使得兑换在限额内可以透支</td>
	</tr>
	<tr><td class="item_title" colspan="2">单主题最高出售时限</td></tr>
	<tr>
		<td class="vtop rowform">
			<cc2:TextBox ID="maxchargespan" runat="server" RequiredFieldType="数据校验" CanBeNull="必填" Size="5" MaxLength="4" ></cc2:TextBox>(单位:小时)
		</td>
		<td class="vtop">设置当主题被作者出售时, 系统允许自主题发布时间起, 其可出售的最长时间. 超过此时间限制后将变为普通主题, 阅读者无需支付积分购买, 作者也将不再获得相应收益, 以小时为单位, 0 为不限制</td>
	</tr>
	</table>
	<div class="Navbutton">
		<cc1:Button ID="Save" runat="server" Text="提 交"></cc1:Button>
	</div>
	</fieldset>
</div>
<cc1:Hint ID="Hint1" runat="server" HintImageUrl="../images"></cc1:Hint>
</form>
<%=footer%>
</body>
</html>