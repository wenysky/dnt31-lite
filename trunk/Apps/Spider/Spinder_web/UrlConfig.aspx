<%@ Page Language="C#" AutoEventWireup="true" Async="true" ValidateRequest="false" CodeBehind="UrlConfig.aspx.cs" Inherits="Spinder_web.UrlConfig" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>规则配置</title>
		<style type="text/css">
* {
	font-size:12px;
	margin:0;
	padding:0; 
} 
fieldset {
	padding:10px;
	margin:10px;
	width:370px;
	color:#333; 
	border:#06c dashed 1px;
} 
legend {
	color:#06c;
	font-weight:800; 
	background:#fff;
} 
ul {
	list-style-type: none;
	margin:8px 0 4px 0;
} 
li {
	margin-top:4px;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 1284px">
        <asp:Label ID="lbResult" runat="server" ForeColor="#CC0000"></asp:Label>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="抓取" />
        &nbsp;&nbsp; <a href="AddConfig.aspx">添加新规则</a>&nbsp;&nbsp; <a href="SetUser.aspx">设置用户（在发帖时，使用）</a><br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
            onrowdeleting="GridView1_RowDeleting" Font-Size="Small">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="Proxy" HeaderText="代理服务器地址" />
                <asp:BoundField DataField="port" HeaderText="代理服务器端口" />
                <asp:BoundField DataField="site" HeaderText="网站名称" />
                <asp:BoundField DataField="SiteUrl" HeaderText="网址" />
                <asp:BoundField DataField="channel" HeaderText="频道名称" />
                <asp:BoundField DataField="charset" HeaderText="网页编码" />
                <asp:BoundField DataField="ListFormat" HeaderText="列表格式" />
                <asp:BoundField DataField="StartPageNo" HeaderText="列表开始页码" />
                <asp:BoundField DataField="EndPageNo" HeaderText="列表结束列表" />
                <asp:BoundField DataField="ListNextPage" HeaderText="下页格式" />
                <asp:BoundField DataField="ListNextPageReplace" HeaderText="匹配组号" />
                <asp:BoundField DataField="ListStep" HeaderText="每页步长" />
                <asp:BoundField DataField="ListContent" HeaderText="列表页内容" />
                <asp:BoundField DataField="ListContentReplace" HeaderText="列表内容匹配号" />
                <asp:BoundField DataField="DetailLink" HeaderText="详细页链接" />
                <asp:BoundField DataField="TitleDetail" HeaderText="详细页标题" />
                <asp:BoundField DataField="TitleDetailReplace" HeaderText="详细页标题匹配组号" />
                <asp:BoundField DataField="AuthorDetail" HeaderText="详细页作者" />
                <asp:BoundField DataField="AuthorDetailReplace" HeaderText="详细页作者匹配组号" />
                <asp:BoundField DataField="DateDetail" HeaderText="详细页日期" />
                <asp:BoundField DataField="DateDetailReplace" HeaderText="详细页日期匹配组号" />
                <asp:BoundField DataField="ContentDetail" HeaderText="详细页内容" />
                <asp:BoundField DataField="ContentDetailReplace" HeaderText="详细页内容匹配组号" />
                <asp:BoundField DataField="ContentList" HeaderText="详细页列表" />
                <asp:BoundField DataField="ContentListReplace" HeaderText="详细页列表匹配组号" />
                <asp:BoundField DataField="TagDetail" HeaderText="详细页Tag" />
                <asp:BoundField DataField="TagDetailReplace" HeaderText="详细页Tag匹配组号" />
                <asp:BoundField DataField="SnatchDate" HeaderText="抓取最新时间" />
                <asp:BoundField DataField="SnatchInterval" HeaderText="抓取时间间隔" />
                <asp:BoundField DataField="SnatchFrequency" HeaderText="抓取频率" />
                <asp:TemplateField HeaderText="添加"></asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
