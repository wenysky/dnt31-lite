<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Spinder_web.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>采集器登陆页</title>
    <!-- 调用样式表 --><LINK media=all href="css/dnt.css" type=text/css rel=stylesheet>
</head>
<body>
    <form id="form1" runat="server">
       <DIV id=ajaxwaitid></DIV>
<DIV class=wrap></DIV>
<br />
<DIV class="mainbox forumlist"><br />
    Discuz!NT 自动采集器后台管理<br />
                <table style="width:37%;" align="center">
            <tr>
                <td>
                    您还没有登录，请登录<br />
                    <asp:Button ID="btn_ok1" runat="server" onclick="btn_ok1_Click" Text="登录" />
                </td>
               
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                </td>
               
            </tr>
            </table>
</DIV>
    </form>
</body>
</html>
