
<!-- #include file = "md5_utf8.asp" --> 
<%


    'CONST REST_URI = "http://localhost/dnt/services/restserver.aspx"
    
    Class DNTRestClient
        

	Private parser
	Private use_params
	Private REST_URI

	'Sample function
	Public Function createtoken()
	    Dim redirectURI
	    redirectURI = replace(REST_URI,"services/restserver.aspx","login.aspx?api_key=" & ApiKey)
	    response.Redirect redirectURI
	End Function
	
	Public Function auth_getsession(auth_token)

		use_params.removeall
		use_params.add "auth_token",auth_token
		result = callapimethod("auth.getSession",use_params)

		parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>getsession FAILED???<br>"
			Set auth_getsession = Nothing
		Else
			Set to_ret = server.createobject("scripting.dictionary")

			sessionkey=parser.documentelement.getElementsByTagName("session_key").item(0).firstchild.nodevalue

			Set docu=parser.documentelement
			
			to_ret.add "session_key",node_value(docu,"session_key")
			'response.write sessionkey&":::"&node_value(docu,"uid")&"<br>"
			to_ret.add "uid",node_value(docu,"uid")
			expire=node_value(docu,"expires")
			If expire = 0 Then
				to_ret.add "expires","never"
			Else
				to_ret.add "expires",unix2asp(expire)
			End If

			Set docu = Nothing

			Set auth_getsession = to_ret
			Set to_ret = Nothing
		End If
	End Function
	
	Public Function auth_register(username,password,email,passwordformat)   '如果passwordformat为空，则使用md5加密
	    use_params.removeall
		use_params.add "user_name",username
		use_params.add "password",password
		use_params.add "email",email
		use_params.add "password_format",passwordformat
		result = callapimethod("auth.register",use_params)
        
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>auth_register FAILED???<br>"
			Set auth_register = Nothing
		Else
		    Dim token
			token = parser.documentelement.selectSingleNode("/").text
			Set docu = parser.documentelement
			Set docu = Nothing
			auth_register = token
		End If
	End Function
	
	Public Function auth_encodepassword(password,passwordformat)   '如果passwordformat为空，则使用md5加密
	    use_params.removeall
		use_params.add "password",password
		use_params.add "password_format",passwordformat
		result = callapimethod("auth.encodepassword",use_params)
        
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>auth_encodepassword FAILED???<br>"
			Set auth_encodepassword = Nothing
		Else
		    Dim token
			token = parser.documentelement.selectSingleNode("/").text
			Set docu = parser.documentelement
			Set docu = Nothing
			auth_encodepassword = token
		End If
	End Function
	
	
	Public Function forums_create(forum_info)
	    use_params.removeall
		use_params.add "forum_info",forum_info
		result = callapimethod("forums.create",use_params)        
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>forums_create FAILED???<br>"
			Set forums_create = Nothing
		Else
		    Dim to_ret,docu
			Set to_ret = server.createobject("scripting.dictionary")
			Set docu = parser.documentelement			
			to_ret.add "fid",node_value(docu,"fid")
			to_ret.add "url",node_value(docu,"url")
			Set docu = Nothing
			Set forums_create = to_ret
			Set to_ret = Nothing			
		End If
	End Function
	
	
	Public Function forums_get(fid)
	    use_params.removeall
		use_params.add "fid",fid
		result = callapimethod("forums.get",use_params)		
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>forums_get FAILED???<br>"
			Set forums_get = Nothing
		Else
		    Dim to_ret,docu
			Set to_ret = server.createobject("scripting.dictionary")
			Set docu = parser.documentElement
			to_ret.add "fid",node_value(docu,"fid")
			to_ret.add "url",node_value(docu,"url")
			to_ret.add "topics",node_value(docu,"topics")
			to_ret.add "current_topics",node_value(docu,"current_topics")
			to_ret.add "posts",node_value(docu,"posts")
			to_ret.add "today_posts",node_value(docu,"today_posts")
			to_ret.add "last_post",node_value(docu,"last_post")
			to_ret.add "last_poster",node_value(docu,"last_poster")
			to_ret.add "last_poster_id",node_value(docu,"last_poster_id")
			to_ret.add "last_tid",node_value(docu,"last_tid")
			to_ret.add "last_title",node_value(docu,"last_title")
			to_ret.add "description",node_value(docu,"description")
			to_ret.add "icon",node_value(docu,"icon")
			to_ret.add "moderators",node_value(docu,"moderators")
			to_ret.add "rules",node_value(docu,"rules")
			to_ret.add "parent_id",node_value(docu,"parent_id")
			to_ret.add "path_list",node_value(docu,"path_list")
			to_ret.add "parent_id_list",node_value(docu,"parent_id_list")
			to_ret.add "sub_forum_count",node_value(docu,"sub_forum_count")
			to_ret.add "name",node_value(docu,"name")
			to_ret.add "status",node_value(docu,"status")
			Set docu = Nothing
			Set forums_get = to_ret
			Set to_ret = Nothing			
		End If
	End Function
	
	Public Function notifications_send(to_ids,notification)
	
	    use_params.removeall
		use_params.add "to_ids",to_ids
		use_params.add "notification",notification
		result = callapimethod("notifications.send",use_params)
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>notifications_send FAILED???<br>"
			Set notifications_send = Nothing
		Else
		    If parser.documentelement.selectSingleNode("/").text = "1" Then
		        notifications_send = True
		    Else
		        notifications_send = False
		    End If			
		End If
	End Function
	
	Public Function notifications_sendemail(recipients,subject,text)
	
	    use_params.removeall
		use_params.add "recipients",recipients
		use_params.add "subject",subject
		use_params.add "text",text
		result = callapimethod("notifications.sendemail",use_params)
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>notifications_sendemail FAILED???<br>"
			Set notifications_sendemail = Nothing
		Else
		    notifications_sendemail = parser.documentelement.selectSingleNode("/").text
		End If
	End Function
	
	Public Function users_getinfo(uids,fields,sessionkey)
	    use_params.removeall
		use_params.add "uids",uids
		If fields = "" Then
		    fields = "uid,user_name,nick_name,"
		    If sessionkey <> "" Then
		        fields = fields & "password,secques,"
		    End If
		    fields = fields & "space_id,gender,admin_id,group_id,group_expiry,reg_ip,join_date,"
		    fields = fields & "last_ip,last_visit,last_activity,last_post,last_post_id,post_count,digest_post_count,online_time,"
		    fields = fields & "page_view_count,credits,ext_credits_1,ext_credits_2,ext_credits_3,ext_credits_4,ext_credits_5,ext_credits_6,ext_credits_7,"
		    fields = fields & "ext_credits_8,email,birthday,tpp,ppp,template_id,pm_sound,show_email,invisible,has_new_pm,new_pm_count,access_masks,"
		    fields = fields & "online_state,web_site,icq,qq,yahoo,msn,skype,location,custom_status,avatar,avatar_width,avatar_height,medals,about_me,"
		    fields = fields & "sign_html,real_name,id_card,mobile,telephone"
		End If
		use_params.add "fields",fields
		result = callapimethod("users.getinfo",use_params)
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>users_getinfo FAILED???<br>"
			Set users_getinfo = Nothing
		Else
		    Dim to_ret,docu,users,i
		    set users = server.createobject("scripting.dictionary")
			Set docu = parser.documentElement
			i = 0
			For Each node In parser.documentelement.childnodes
			    Set to_ret = server.createobject("scripting.dictionary")
			    For Each field In Split(fields,",")
			        to_ret.add field,node_value(node,field)
			    Next
			    users.add i,to_ret
			    i = i + 1
			Next
			Set docu = Nothing
			Set users_getinfo = users
			Set to_ret = Nothing			
		End If
	End Function
	
	Public Function users_setinfo(uid,user_info)
	    use_params.removeall
		use_params.add "uid",uid
		use_params.add "user_info",user_info
		result = callapimethod("users.setinfo",use_params)
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>users_setinfo FAILED???<br>"
			Set users_setinfo = Nothing
		Else
		    If parser.documentelement.selectSingleNode("/").text = "1" Then
		        users_setinfo = True
		    Else
		        users_setinfo = False
		    End If			
		End If
	End Function
	
	Public Function users_getid(user_name)
	    use_params.removeall
		use_params.add "user_name",user_name
		result = callapimethod("users.getid",use_params)
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>users_getid FAILED???<br>"
			Set users_getid = Nothing
		Else
		    users_getid = parser.documentelement.selectSingleNode("/").text
		End If
	End Function
	
	Public Function users_getloggedinuser()
	    use_params.removeall
		result = callapimethod("users.getloggedinuser",use_params)
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>users_getloggedinuser FAILED???<br>"
			Set users_getloggedinuser = Nothing
		Else
		    users_getloggedinuser = parser.documentelement.selectSingleNode("/").text
		End If
	End Function
	
	Public Function users_setextcredits(additional_values)
	    use_params.removeall
	    use_params.add "additional_values",additional_values
		result = callapimethod("users.setextcredits",use_params)
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>users_setextcredits FAILED???<br>"
			Set users_setextcredits = Nothing
		Else
		    users_setextcredits = parser.documentelement.selectSingleNode("/").text
		End If
	End Function
	
	Public Function topics_create(topic_info)
	    use_params.removeall
	    use_params.add "topic_info",topic_info
		result = callapimethod("topics.create",use_params)
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>topics_create FAILED???<br>"
			Set topics_create = Nothing
		Else
		    Dim to_ret,docu
			Set to_ret = server.createobject("scripting.dictionary")
			Set docu = parser.documentElement
			to_ret.add "topic_id",node_value(docu,"topic_id")
			to_ret.add "url",node_value(docu,"url")
			to_ret.add "need_audit",node_value(docu,"need_audit")
			Set docu = Nothing
			Set topics_create = to_ret
			Set to_ret = Nothing	
		End If
	End Function
	
	Public Function topics_reply(reply_info)
	    use_params.removeall
	    use_params.add "reply_info",reply_info
		result = callapimethod("topics.reply",use_params)
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>topics_reply FAILED???<br>"
			Set topics_reply = Nothing
		Else
		    Dim to_ret,docu
			Set to_ret = server.createobject("scripting.dictionary")
			Set docu = parser.documentElement
			to_ret.add "post_id",node_value(docu,"post_id")
			to_ret.add "url",node_value(docu,"url")
			to_ret.add "need_audit",node_value(docu,"need_audit")
			Set docu = Nothing
			Set topics_reply = to_ret
			Set to_ret = Nothing	
		End If
	End Function
	
	Public Function topics_getrecentreplies(fid,tid,page_size,page_index)
	    use_params.removeall
	    use_params.add "fid",fid
	    use_params.add "tid",tid
	    use_params.add "page_size",page_size
	    use_params.add "page_index",page_index
		result = callapimethod("topics.getrecentreplies",use_params)
        parser.loadxml(result)

		If instr(result,"error_response") <> 0 Then
			handle_error parser
			response.write "<br>topics_getrecentreplies FAILED???<br>"
			Set topics_getrecentreplies = Nothing
		Else
		    Dim to_ret,docu,posts,i
			Set posts = server.createobject("scripting.dictionary")
			Set docu = parser.documentElement
			i = 0
			For Each node In parser.documentelement.childnodes
			    Set to_ret = server.createobject("scripting.dictionary")
			    Dim fields
			    fields = "pid,layer,poster_id,poster_name,title,message,post_date_time,invisible,rate,rate_times,use_signature,"
			    fields = fields & "poster_email,poster_show_email,poster_avator,poster_avator_width,poster_avator_height,"
			    fields = fields & "poster_signature,poster_location,ad_index"
			    For Each field In Split(fields,",")
			        to_ret.add field,node_value(node,field)
			    Next
			    posts.add i,to_ret
			    i = i + 1
			Next
			Set docu = Nothing
			Set topics_getrecentreplies = posts
			Set to_ret = Nothing	
		End If
	End Function
	
	Public Function unix2asp(unix)
		unix2asp = DateAdd("s", unix, "01/01/1970 00:00:00")
	End Function

	Private Sub handle_error(rootnode)
		response.write "Error "&node_value(rootnode,"error_code")&": "&node_value(rootnode,"error_msg")&"<br>"
	End Sub

	Private Function node_value(rootnode,tagname)
		'node_value = rootnode.getElementsByTagName(tagname).item(0).firstchild.nodevalue
		node_value = rootnode.getElementsByTagName(tagname).item(0).text
	End Function

        Public ApiKey
        Public SessionKey
        Public SecretKey
        
        ' This allows you to call a facebook method (e.g. auth.getSession) with the specified parameters
        ' You do not need to pass in the following parameters as they are appended automatically,
        '   - session_key
        '   - api_key
        '   - call_id
        '   - v
        Public Function CallApiMethod( strMethod, oParams )
            oParams( "method" ) = strMethod
            Dim oXMLHTTP
            Set oXMLHTTP = Server.CreateObject( "MSXML2.ServerXMLHTTP" )
            oXMLHTTP.Open "POST", REST_URI, False, "", ""
		    oXMLHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
            oXMLHTTP.Send(GenerateRequestURI( oParams))
            CallApiMethod = oXMLHTTP.ResponseText
            Set oXMLHTTP = Nothing
        End Function
        
                
        'Call for initializing
        Public Sub Initialize(api_key,secret_key,rest_url)
		ApiKey		=	api_key
		SecretKey	=	secret_key
		REST_URI    =   rest_url
        End Sub

        Public Sub Initialize2(api_key,secret_key,session_key)
		ApiKey		=	api_key
		SecretKey	=	secret_key
		SessionKey	=	session_key
		REST_URI    =   rest_url		
        End Sub

	Private Sub Class_Initialize()
		Set parser = Server.CreateObject("Microsoft.XMLDOM")
		Set use_params = server.createobject("Scripting.Dictionary")
	end sub
	
	private sub Class_Terminate()
		Set parser = Nothing
		Set use_params = Nothing
	end sub
        
        ' Creates the content for a POST to the REST server
        Private Function GenerateRequestURI( oParams )
        	If (Len( Application( "DNT_CallID" ) ) = 0 ) Then Application( "DNT_CallID" ) = 100005
                'For auth.getSession (only function to not use session_key?)
		if oParams("session_key")="none" Or oParams( "method" ) = "auth.getSession" then
			oParams.remove "session_key"
		else
			oParams( "session_key" ) = SessionKey
		end if
            oParams( "api_key" ) = ApiKey
            oParams( "call_id" ) = Application( "DNT_CallID" )
            'oParams( "v" ) = "1.0"
            'This is useless for POSTs.
'            GenerateRequestURI = REST_URI & "?"
            Dim strItem
            For Each strItem In oParams.Keys
                If oParams(strItem) <> "" Then
                    GenerateRequestURI = GenerateRequestURI & strItem & "=" & Server.UrlEncode(oParams(strItem)) & "&"
                End If
            Next
            GenerateRequestURI = GenerateRequestURI & "sig=" & GenerateSig( oParams )
            'response.write GenerateRequestURI
            'response.end
            Application( "DNT_CallID" ) = Application( "DNT_CallID" ) + 205
        End Function
        
        ' This creates an signature of the supplied parameters
        Private Function GenerateSig( oParams )
            Set oParams = SortDictionary( oParams )
            Dim strSig, strItem
            For Each strItem In oParams
                If oParams( strItem ) <> "" Then
                    strSig = strSig & strItem & "=" & oParams( strItem )
                End If
            Next
            strSig = strSig & SecretKey
            'response.Write strsig & "<br />"
            'response.End
            'Dim oMD5
            'Set oMD5 = New MD5
            'oMD5.Text = strSig
            'GenerateSig = oMD5.HexMD5
            GenerateSig = MD5(strSig)
            'response.Write GenerateSig & "<br>"
            'GenerateSig = MD5(strSig)
        End Function

	'Wrapper of generatesig for cookies
	public function generatesig_cookies(cookies)
		set dict=server.createobject("scripting.dictionary")
		for each item in cookies
			dict.add item,cookies(item)
		next
		generatesig_cookies=generatesig(dict)
		set dict=nothing
	end function
        
        ' SortDictionary function courtesy of MSDN
        Private Function SortDictionary(objDict)
            Dim strDict()
            Dim objKey
            Dim strKey,strItem
            Dim X,Y,Z
            Z = objDict.Count
            If Z > 1 Then
                ReDim strDict(Z,2)
                X = 0
                For Each objKey In objDict
                    strDict(X,1)  = CStr(objKey)
                    strDict(X,2) = CStr(objDict(objKey))
                    X = X + 1
                Next
                For X = 0 to (Z - 2)
                    For Y = X to (Z - 1)
                        If StrComp(strDict(X,1),strDict(Y,1),vbTextCompare) > 0 Then
                            strKey  = strDict(X,1)
                            strItem = strDict(X,2)
                            strDict(X,1)  = strDict(Y,1)
                            strDict(X,2) = strDict(Y,2)
                            strDict(Y,1)  = strKey
                            strDict(Y,2) = strItem
                        End If
                    Next
                Next
                objDict.RemoveAll
                For X = 0 to (Z - 1)
                    objDict.Add strDict(X,1), strDict(X,2)
                Next
            End If
            Set SortDictionary = objDict
        End Function
        
    End Class
    
%>
