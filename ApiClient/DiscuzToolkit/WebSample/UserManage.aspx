<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserManage.aspx.cs" Inherits="Discuz.Toolkit.WebSample.UserManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户信息管理实例</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 30px; text-align: center">
        <div style="width: 100%; height: 30px; text-align: left">
            <a href="Default.aspx">首页</a>
        </div>
        <div style="width: 200px; color: Red">
            <%= msg %></div>
        <table style="width: 400px; float: left; margin: 10px">
            <tr>
                <td>
                    头像:
                </td>
                <td>
                    <img src="<%= avatarUrl%>" />
                </td>
                <tr>
                    <td>
                        用户ID:
                    </td>
                    <td>
                        <asp:Label ID="IDLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <td>
                    真实姓名:
                </td>
                <td>
                    <asp:TextBox ID="RealNameBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    身份证号码:
                </td>
                <td>
                    <asp:TextBox ID="IDNumBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    移动电话号码:
                </td>
                <td>
                    <asp:TextBox ID="MobileBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    固定电话号码:
                </td>
                <td>
                    <asp:TextBox ID="TelphoneBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    性别:
                </td>
                <td>
                    <asp:TextBox ID="GenderBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    呢称:
                </td>
                <td>
                    <asp:TextBox ID="NickNameBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    E-mail:
                </td>
                <td>
                    <asp:TextBox ID="EmailBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    主页:
                </td>
                <td>
                    <asp:TextBox ID="UserIndexBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    来自:
                </td>
                <td>
                    <asp:TextBox ID="LocationBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    读取ID为:<asp:TextBox ID="IDBox" runat="server"></asp:TextBox>用户数据
                </td>
                <td>
                    <asp:Button ID="ReadBtn" runat="server" Text="读取" Height="26px" OnClick="ReadBtn_Click" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="UpdateBtn" runat="server" Text="点击修改信息" OnClick="UpdateBtn_Click" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                </td>
            </tr>
        </table>
        <div style="width: 330px; float: right; margin: 10px; text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp; 该页面功能测试代码部分功能未做容错处理，请不要尝试该程序的容错性，肯定是有错的。</div>
        <div style="width: 330px; float: right; margin: 10px; text-align: left">
            <table width="100%">
                <tr>
                    <td colspan="2" style="text-align: center">
                        密码修改
                    </td>
                </tr>
                <tr>
                    <td>
                        旧密码:
                    </td>
                    <td>
                        <asp:TextBox ID="OriginalPwdBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        新密码:
                    </td>
                    <td>
                        <asp:TextBox ID="NewPwdBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        确认新密码:
                    </td>
                    <td>
                        <asp:TextBox ID="ConfirmPwdBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="ChangePwdBtn" runat="server" Text="修改密码" OnClick="ChangePwdBtn_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
