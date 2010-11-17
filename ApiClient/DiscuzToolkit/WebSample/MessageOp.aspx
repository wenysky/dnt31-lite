<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageOp.aspx.cs" Inherits="Discuz.Toolkit.WebSample.MessageOp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #message
        {
            height: 100px;
            width: 400px;
        }
        #msgpage
        {
            width: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="width: 100%; height: 30px; text-align: left">
            <a href="Default.aspx">首页</a>
        </div>
        <div style="color: Red">
            <%=opmsg %>
        </div>
        <div>
            <table style="float: left; width: 45%">
                <tr>
                    <td>
                        标题：
                    </td>
                    <td>
                        <input id="subject" name="subject" type="text" value="<%=subject%>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        发送人id：
                    </td>
                    <td>
                        <input id="fromid" name="fromid" type="text" value="<%=from_id %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        收信人id序列：
                    </td>
                    <td>
                        <input id="toids" name="toids" type="text" value="<%=to_ids %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        正文内容：
                    </td>
                    <td>
                        <textarea id="message" name="message"><%=message %></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="SendMsg" runat="server" Text="发送短信息" OnClick="SendMsg_Click" />
                    </td>
                </tr>
            </table>
            <div style="margin: 10px; float: right; width: 50%">
                读取用户收件箱(输入用户ID)：<input id="userid" type="text" name="userid" value="<%=Request.Form["userid"]%>" />&nbsp;&nbsp; 页码<input id="msgpage"
                    type='text" ' name="msgpage" value="<%=Request.Form["msgpage"]%>" />&nbsp;&nbsp;
                <asp:Button ID="LoadUserMsgBox" runat="server" Text="读取" OnClick="LoadUserMsgBox_Click" /><br />
                <div id="msgboxstr">
                <%=WebSampleHelper.PageHelper.ShowUserMsgBox(mgr)%>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
