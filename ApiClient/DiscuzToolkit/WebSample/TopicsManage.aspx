<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopicsManage.aspx.cs" Inherits="Discuz.Toolkit.WebSample.TopicsManage"
    ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #message
        {
            width: 500px;
            height: 120px;
        }
        #title
        {
            width: 500px;
        }
        #forumid
        {
            width: 50px;
        }
        #Text1
        {
            width: 50px;
        }
        #iconid
        {
            width: 50px;
        }
        #uid
        {
            width: 50px;
        }
        #tid
        {
            width: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 20px">
        <div style="width: 100%; height: 30px; text-align: left">
            <a href="Default.aspx">首页</a>
        </div>
        <div style="color: Red">
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        TID:
                    </td>
                    <td>
                        <input id="tid" name="tid" type="text" value="<%=tid %>" style="float:left" />
                        <asp:Button ID="UploadTopicBtn" runat="server" OnClick="UploadTopicBtn_Click" Text="读取主题帖" />
                    </td>
                </tr>
                <tr>
                    <td>
                        标题:
                    </td>
                    <td>
                        <input id="title" name="title" type="text" value="<%=title %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        内容:
                    </td>
                    <td>
                        <textarea id="message" name="message"><%=message %></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        tags:
                    </td>
                    <td>
                        <input id="tags" type="text" name="text" value="<%=tags %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        所在版块ID:
                    </td>
                    <td>
                        <input id="forumid" name="forumid" type="text" value="<%= fid %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        icon_id:
                    </td>
                    <td>
                        <input id="iconid" name="iconid" type="text" value="<%= icon_id %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        uid: (留空为当前登陆id)
                    </td>
                    <td>
                        <input id="uid" name="uid" type="text" value="<%= uid %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        type_id:
                    </td>
                    <td>
                        <input id="typeid" name="typeid" type="text" value="<%= type_id %>" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Button ID="UpdateTopicBtn" runat="server" Text="保存主题帖"
            OnClick="UpdateTopicBtn_Click" />
    </div>
    </form>
</body>
</html>
