<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReplyPad.aspx.cs" Inherits="ReplyPad.ReplyPad" ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<script runat="server">
    override protected void OnInit(EventArgs e)
    {
        api_key = "18e113c38c429bd825cb34a6e9506634";
        secret = "8a2b1b585577cdb8381f0a6071d5a56e";
        url = "http://localhost/";
        maxpostscount = 8;
    }
</script>

<head runat="server">
    <title></title>
    <style type="text/css">
        #title
        {
            width: 100%;
            height: 50px;
            font-size: 30px;
            text-align: center;
        }
        .line1
        {
            background-color: #0000cc;
            height: 20px;
        }
        .control
        {
            width: 50px;
            height: 18px;
            margin-left: 10px;
        }
        .postpanel
        {
            margin-top: 10px;
            width: 100%;
        }
        .userpanel
        {
            width: 15%;
        }
        .contentpanel
        {
            width: 85%;
        }
        .content
        {
            margin-left: 15px;
            margin-top: 10px;
            margin-bottom: 10px;
            text-align: inherit;
        }
        .postdatetime
        {
            margin-right: 15px;
            text-align: right;
            font-size: 13px;
        }
        .cutline
        {
            background-color: #FFFFFF;
            padding: 0 0 7px;
            table-layout: fixed;
            width: 100%;
        }
        .split_line
        {
            border-bottom: 1px solid #C0C1C1;
            font-size: 0;
            line-height: 0;
            margin: 4px 6px 0 1px;
        }
        .username
        {
            font-size: 13px;
        }
        li
        {
            list-style: none;
        }
        #replytext
        {
            height: 100px;
            width: 60%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="title">
        <%=title %><a style="font-size: 12px; color: Gray" href="<%=posturl %>" target="_blank">点击查看原帖</a>
    </div>
    <div class="line1" style="background-color: #0000cc">
        <div class="control">
            <a style="font-size: 13px; color: White" href="#" onclick="">回复</a>
        </div>
    </div>
    <%=posts %>
    <div id="pageindex">
        <%=pagelink %>
    </div>
    <%if (!needlogin)
      {%>
    <div id="postreply">
        <h3>
            发表回复</h3>
        <div style="margin: 10px">
            <textarea id="replytext" name="replytext"></textarea>
        </div>
        <div style="text-align: right; width: 60%;">
            <div style="float: left; color: Red; font-size: 13px">
                <%=replymsg %></div>
            <asp:Button ID="ReplyBtn" runat="server" Text="回复" Width="100px" OnClick="ReplyBtn_Click" />
        </div>
    </div>
    <%} %>
    <div style="text-align: right">
    Powered By Discuz!NT ReplyPad 1.0 Alpha
    </div>
    </form>
</body>
</html>
