<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForumManage.aspx.cs" Inherits="Discuz.Toolkit.WebSample.ForumManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        label
        {
            border: 0px;
            position: relative;
            top: -3px;
            font-size: 12px;
            padding: 0 6px;
        }
        *
        {
            margin: 0;
            padding: 0;
            word-break: break-all;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="width: 100%; height: 30px; text-align: left;">
            <a href="Default.aspx">首页</a>
        </div>
        <div style="color: Red">
            <%=msg%>
        </div>
        <div style="text-align: center; margin:20px">
            <table>
                <tr>
                    <td>
                        所属分类和板块ID(0或者不填为添加分类)：
                    </td>
                    <td>
                        <input id="parentid" name="parentid" type="text" value="<%=Request.Form["parentid"] %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        版块名称：
                    </td>
                    <td>
                        <input id="forumname" name="forumname" type="text" value="<%=Request.Form["forumname"] %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        版主列表：
                    </td>
                    <td>
                        <input id="moderlist" name="moderlist" type="text" value="<%=Request.Form["moderlist"] %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        URL重写名称：
                    </td>
                    <td>
                        <input id="rewritename" name="rewritename" type="text" value="<%=Request.Form["rewritename"] %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        版块描述：
                    </td>
                    <td>
                        <input id="forumdescription" name="forumdescription" type="text" value="<%=Request.Form["forumdescription"] %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        本版块SEO关键字：
                    </td>
                    <td>
                        <input id="seokey" name="seokey" type="text" value="<%=Request.Form["seokey"] %>" />
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="status" name="status" type="checkbox" <%=status %> />
                    </td>
                    <td>
                        是否显示
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="allowsmilies" name="allowsmilies" type="checkbox" <%=allowsmilies %> />
                    </td>
                    <td>
                        允许使用表情符
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="allowbbcode" name="allowbbcode" type="checkbox" <%=allowbbcode %> />
                    </td>
                    <td>
                        允许Discuz!NT代码
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="allowimg" name="allowimg" type="checkbox" <%=allowimg %> />
                    </td>
                    <td>
                        允许[img]代码
                    </td>
                </tr>
                <tr>
                    <td>
                        <input id="modnewposts" name="modnewposts" type="checkbox" <%=modnewposts %> />
                    </td>
                    <td>
                        发帖需要审核
                    </td>
                </tr>
            </table>
        </div>
        <div style="text-align: center;">
            （该功能实例不提供所有的属性设置）
            <asp:Button ID="CreateForumBtn" runat="server" Text="创建新版块" OnClick="CreateForumBtn_Click" />
        </div>
    </div>
    </form>
</body>
</html>
