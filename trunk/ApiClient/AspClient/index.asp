<!--#include file="restclient.asp"-->
<%
Dim client 
Set client = New DNTRestClient
client.Initialize "6793f0e3a5e2211d867b3a4c761ec9f7","7b9052b5588317dd5cdff5fc6ba27ad3","http://localhost/dnt/services/restserver.aspx"
'If Request.QueryString("auth_token") = "" Then
'    client.createtoken()
'Else
'    client.auth_getsession(Request.QueryString("auth_token"))
'End If

'Response.Write client.auth_register("sunshili13","123123","sunshili13@comsenz.com","")
'Response.Write client.auth_encodepassword("123123","")
Dim result
'set result = client.forums_create("{""parent_id"":1,""name"":""car_club"",""status"":0}")
'response.Write result("fid") & "  " & result("url")
'set result = client.forums_get("36")
'response.Write result("name")
'response.Write client.notifications_send("1","test")
'response.Write client.notifications_sendemail("1","emailtext","content")
'response.Write client.users_setinfo("1","{""birthday"":""1980-01-01""}") & "<br />"
'set result = client.users_getinfo("1,159","","")
'response.Write result(1)("nick_name")
'response.Write "loginid=" & client.users_getloggedinuser()
'response.Write client.users_setextcredits("0,203481.4,0,0,0,0,0,0")
set result = client.topics_create("{""uid"":1,""title"":""api 发帖"",""fid"":36,""message"":""content"",""icon_id"":3,""tags"":""tag""}")
response.Write result("url")
'set result = client.topics_reply("{""tid"":1354,""title"":""re:api reply"",""fid"":36,""message"":""content""}")
'response.Write result("url")
'set result = client.topics_getrecentreplies("36","590","5","1")
'response.Write result(0)("message")
%>