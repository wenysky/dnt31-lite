<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetUser.aspx.cs" Inherits="Spinder_web.SetUser" %>
<%@ Register TagPrefix="cc1" Namespace="Discuz.Control" Assembly="Discuz.Control" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<title>设置用户</title>
		<script type="text/javascript" src="../js/common.js"></script>
        <script type="text/javascript" src="../js/modalpopup.js"></script>
        <script type="text/javascript">
            function validate(theform)
            {
                alert("here");
                if(document.getElementById("txt_Users").value == "")
                {
                    alert("用户设置不能为空");
                    document.getElementById("txt_Users").focus();
                    return false;
                }
                return true;
            }
        </script>
	<!-- 调用样式表 --><LINK media=all href="css/dnt.css" type=text/css rel=stylesheet>
        <style type="text/css">
            .Navbutton
            {
                width: 685px;
            }
        </style>
</head>
	<body >
	<div class="ManagerForm">
		<form id="Form1" runat="server" onsubmit="return validate(this);">
		  <DIV id=DIV1></DIV>
<DIV class=wrap>
<br />
<DIV class="mainbox forumlist" align="center">
<H3>添加用户</H3>
      例:aaa,bbb,ccc|131 (aaa,bbb,ccc-用户名|131-板块id 回车)
<asp:TextBox 
                      ID="txt_Users" runat="server" Height="180px" TextMode="MultiLine" 
                                        Width="95%"></asp:TextBox>
                                <br />
    <br />
    <asp:Button ID="btn_Ok" runat="server" Text="提交" onclick="btn_Ok_Click1" /><br /><br />
</DIV>
<!--end topic--><!--tag-->

</DIV>
		    <DIV></DIV>
<DIV align="center">
<br /><br />
    <%=result %><br />
</DIV>
<DIV class=box id=hottags align="center">
<H4>
<p id="copyright">
Version
<strong>
</strong>
1.0.0
© 2009-2010 Power by
<a target="_blank" href="http://nt.discuz.net"><em>Discuz!NT</em></a>.

</p></H4>
</DIV>
</DIV>
			
	<br/>
      
		</form>
		</div>
	</body>
</html>
