<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="Spinder_web.Item" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<!-- 调用样式表 --><LINK media="all" href="css/dnt.css" type="text/css" rel="Stylesheet">
    <title>采集器配置规则详细页</title>
</head>
<body>
    <form id="form1" runat="server">
      <DIV id="ajaxwaitid"></DIV>
<DIV class="wrap">
<br />
<DIV class="mainbox forumlist">
<H3>显示采集规则</H3>
   <%=result %>
</DIV>
<!--end topic--><!--tag-->
<DIV class="box" id="hottags" align="center">
<H4>
<p id="copyright">
Version
<strong>
</strong>
1.0.0
© 2009-2010 Powered by
<a target="_blank" href="http://nt.discuz.net"><em>Discuz!NT</em></a>.
</p></H4>
</DIV>
</DIV>
    </form>
</body>
</html>
