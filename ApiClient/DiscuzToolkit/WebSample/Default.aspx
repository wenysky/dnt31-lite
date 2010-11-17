<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Discuz.Toolkit.WebSample.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>欢迎体验Discuz!NT API & DiscuzToolkit</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="overflow: hidden; margin: 10px">
        <div style="font-size: 40px; text-align: center">
            Discuz!NT API & DiscuzToolkit WebSample
        </div>
        <div id="left" style="margin: 20px; width: 300px; float: left;">
            <div id="unlogin" runat="server" style="margin: 15px" visible="false">
                <table>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            Login
                        </td>
                    </tr>
                    <tr>
                        <td>
                            用户名:
                        </td>
                        <td>
                            <asp:TextBox ID="UserBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            密码:
                        </td>
                        <td>
                            <asp:TextBox ID="PwdBox" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click" Style="height: 26px" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="login" runat="server" style="margin: 15px" visible="false">
                用户名:<%= userName %><br />
                <a href="UserManage.aspx">用户信息管理操作界面</a><br />
                <a href="TopicsManage.aspx">主题和帖子操作界面</a><br />
                <a href="MessageOp.aspx">站点短信息操作界面</a><br />
                <a href="ForumManage.aspx">创建新版块界面</a><br />
                <a href="asynclog.txt" target="_blank">查看数据同步通知日志</a><br />
                <asp:LinkButton ID="LogoutBtn" runat="server" OnClick="LogoutBtn_Click">注销</asp:LinkButton>
            </div>
            <div id="topiclistcontrol" style="margin: 15px">
                <table>
                    <tr>
                        <td>
                            板块ID:
                        </td>
                        <td>
                            <asp:TextBox ID="FidBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            PageSize:
                        </td>
                        <td>
                            <asp:TextBox ID="TopicListPageSizeBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            PageIndex:
                        </td>
                        <td>
                            <asp:TextBox ID="TopicListPageIndexBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            TypeIdList:
                        </td>
                        <td>
                            <asp:TextBox ID="TopicTypeListBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='2'>
                            <asp:Button ID="GetListBtn" runat="server" Text="获取板块主题列表" OnClick="GetListBtn_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan='2'>
                            <asp:Button ID="GetAttentionBtn" runat="server" Text="获取管理员关注列表" OnClick="GetAttentionBtn_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="topiccontrol" style="margin: 15px">
                <table>
                    <tr>
                        <td>
                            主题ID:
                        </td>
                        <td>
                            <asp:TextBox ID="TopicIDBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            PageSize:
                        </td>
                        <td>
                            <asp:TextBox ID="TopicPageSizeBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            PageIndex:
                        </td>
                        <td>
                            <asp:TextBox ID="TopicPageIndexBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="GetTopicBtn" runat="server" Text="获取主题" OnClick="GetTopicBtn_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div id="List" style="margin: 15px; width: 570px; float: right">
            <%= List %>
        </div>
    </div>
    </form>
</body>
</html>
