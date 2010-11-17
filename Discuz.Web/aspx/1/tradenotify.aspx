<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="Discuz.Mall.Pages.tradenotify" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="Discuz.Common" %>
<%@ Import namespace="Discuz.Forum" %>
<%@ Import namespace="Discuz.Entity" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by Discuz!NT Template Engine at 2009-9-22 17:24:56.
		本页面代码由Discuz!NT模板引擎生成于 2009-9-22 17:24:56. 
	*/

	base.OnInit(e);

	templateBuilder.Capacity = 220000;
	templateBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	templateBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\" >\r\n");
	templateBuilder.Append("<head runat=\"server\">\r\n");
	templateBuilder.Append("    <title></title>\r\n");
	templateBuilder.Append("</head>\r\n");
	templateBuilder.Append("<body>\r\n");
	templateBuilder.Append("</body>\r\n");
	templateBuilder.Append("</html>\r\n");

	Response.Write(templateBuilder.ToString());
}
</script>
