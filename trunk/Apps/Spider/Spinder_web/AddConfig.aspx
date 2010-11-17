<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" CodeBehind="AddConfig.aspx.cs" Inherits="Spinder_web.AddConfig" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%=title %></title>
<!-- 调用样式表 --><LINK media=all href="css/dnt.css" type=text/css rel=stylesheet>
    <style type="text/css">
        .style5
        {
            width: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server"><br />
	   <DIV id=ajaxwaitid></DIV>
<DIV class=wrap>
<br />
<DIV class="mainbox forumlist">
<H3>显示采集规则</H3>
<table style="width:80%;">
            <tr>
                <td class="style5"  >
                    代理服务器地址</td>
                <td >
                    <asp:TextBox ID="txt_proxy" runat="server" Width="400px"></asp:TextBox>
                </td>
              
                <td >
                    &nbsp;</td>
              
            </tr>
            <tr>
                <td class="style5"  >
                    代理服务器端口</td>
                <td >
                    <asp:TextBox ID="txt_port" runat="server" Width="400px"></asp:TextBox>
                </td>
               
                <td >
                    &nbsp;</td>
               
            </tr>
            <tr>
                <td class="style5"  >
                    网站名称</td>
                <td >
                    <asp:TextBox ID="txt_site" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    (必填)</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    网址</td>
                <td >
                    <asp:TextBox ID="txt_siteurl" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    (必填)</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    频道名称</td>
                <td >
                    <asp:TextBox ID="txt_channel" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                   (必填)</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    网页编码</td>
                <td >
                    <asp:TextBox ID="txt_charset" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                   (必填)</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    列表格式</td>
                <td >
                    <asp:TextBox ID="txt_listformat" runat="server" Width="400px"></asp:TextBox>
                    &nbsp;</td>
             
                <td >
                    &nbsp;例 : /default.aspx?paging=1&amp;page=1</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    列表开始页码</td>
                <td >
                    <asp:TextBox ID="txt_startno" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    列表结束列表</td>
                <td >
                    <asp:TextBox ID="txt_endno" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    下页格式</td>
                <td >
                    <asp:TextBox ID="txt_listnextpage" runat="server" Width="400px" 
                        TextMode="MultiLine"></asp:TextBox>&nbsp;

                </td>
             
                <td >
                    例 :《a href=&quot;default.aspx?paging=1&amp;page=2&quot;》下一页《/a》

                </td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    下页格式匹配组号</td>
                <td >
                    <asp:TextBox ID="txt_listnextpagereplace" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    每页步长</td>
                <td >
                    <asp:TextBox ID="txt_liststep" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    列表页内容</td>
                <td >
                    <asp:TextBox ID="txt_listcontent" runat="server" Width="400px" 
                        TextMode="MultiLine"></asp:TextBox>&nbsp;

                </td>
             
                <td >
                    例 :/JeffreyZhao/archive/2009/02/20/simplif.html

                </td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    列表内容匹配号</td>
                <td >
                    <asp:TextBox ID="txt_listcontentreplace" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页链接</td>
                <td >
                    <asp:TextBox ID="txt_detaillink" runat="server" Width="400px" 
                        TextMode="MultiLine"></asp:TextBox>&nbsp;
                </td>
             
                <td >
                    例 :《div class=&quot;posttitle&quot;》archive/2009/01/02/abc.html
                </td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页标题</td>
                <td >
                    <asp:TextBox ID="txt_titledetail" runat="server" Width="400px" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;

                </td>
             
                <td >
                    例 :《title》标题《/title》

                </td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页标题匹配组号</td>
                <td >
                    <asp:TextBox ID="txt_titledetailreplace" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页作者</td>
                <td >
                    <asp:TextBox ID="txt_authordetail" runat="server" Width="400px" 
                        TextMode="MultiLine" Rows="3"></asp:TextBox>&nbsp;
                </td>
             
                <td >
                    例 :《a id=&quot;Header1_HeaderTitle&quot; class=&quot;headermaintitle&quot; 
                    href=&quot;http://www.cnblogs.com/abc/&quot;》作者《/a》
                </td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页作者匹配组号</td>
                <td >
                    <asp:TextBox ID="txt_authordetailreplace" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页日期</td>
                <td >
                    <asp:TextBox ID="txt_datedetail" runat="server" Width="400px" 
                        TextMode="MultiLine"></asp:TextBox>&nbsp;
                </td>
             
                <td >
                    例 :2009-01-01 18:00
                </td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页日期匹配组号</td>
                <td >
                    <asp:TextBox ID="txt_datedetailreplace" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页内容</td>
                <td >
                    <asp:TextBox ID="txt_contentdetail" runat="server" Width="400px" 
                        TextMode="MultiLine"></asp:TextBox>&nbsp;
                </td>
             
                <td >
                    例 :《div class=&quot;postBody或post或postText&quot;》内容《/div》</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页内容匹配组号</td>
                <td >
                    <asp:TextBox ID="txt_contentdetailreplace" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页列表</td>
                <td >
                    <asp:TextBox ID="txt_contentlist" runat="server" Width="400px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页列表匹配组号</td>
                <td >
                    <asp:TextBox ID="txt_contentlistreplace" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页Tag</td>
                <td >
                    <asp:TextBox ID="txt_tagdetail" runat="server" Width="400px" 
                        TextMode="MultiLine"></asp:TextBox>&nbsp;&nbsp;
                </td>
             
                <td >
                    例 :《div id=&quot;EntryTag&quot;》Tag《/div》</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    详细页Tag匹配组号</td>
                <td >
                    <asp:TextBox ID="txt_tagdetailreplace" runat="server" Width="400px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    抓取最新时间</td>
                <td >
                    <asp:TextBox ID="txt_snatchdate" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    抓取时间间隔</td>
                <td >
                    <asp:TextBox ID="txt_snatchinterval" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    抓取频率</td>
                <td >
                    <asp:TextBox ID="txt_snatchfrequency" runat="server" Width="400px"></asp:TextBox>
                </td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td class="style5"  >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
             
                <td >
                    &nbsp;</td>
             
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btn_ok" runat="server" Text="提交" onclick="btn_ok_Click" />
                </td>
             
                <td align="center" >
                    &nbsp;</td>
             
            </tr>
            </table>
</DIV>
<!--end topic--><!--tag-->
<DIV class=box id=hottags align="center">
<H4><p id="copyright">
Version
<strong>
</strong>
1.0.0
© 2009-2010 Power by
<a target="_blank" href="http://nt.discuz.net"><em>Discuz!NT</em></a>.
</p></H4>
</DIV>
</DIV>
    <div align="center">
        
    </div>
	</fieldset>
    </form>
</body>
</html>
