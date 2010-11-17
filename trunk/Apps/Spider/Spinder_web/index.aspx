<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Spinder_web.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<!-- 调用样式表 --><LINK media="all" href="css/dnt.css" type="text/css" rel="Stylesheet">
    <title>采集器管理首页</title>
    <SCRIPT type="text/javascript">
    function p_del() 
    {
        var msg = "您真的确定要删除吗？\n\n请确认！";
        if (confirm(msg) == true)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
</SCRIPT>
</head>
<body>
    <form id="form1" runat="server">
    <DIV id="ajaxwaitid"></DIV>
<DIV class="wrap">
<br />
<DIV class="mainbox forumlist">
<H3>显示采集规则</H3>
<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>代理服务器地址</td>
    <td>代理服务器端口</td>
    <td>网站名称</td>
    <td>网址</td>
    <td>频道名称</td>
    <td>网页编码</td>
    <td>详细信息</td>    
    <td>更新</td>
    <td>删除</td>
    <td>添加用户</td>
    <td>添加规则</td>
  </tr>
   <%=result %>
</table>
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
