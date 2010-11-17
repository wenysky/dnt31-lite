<%@ Page Language="C#" EnableEventValidation="true" ValidateRequest="false" AutoEventWireup="true"
    CodeBehind="TestConsole.aspx.cs" Inherits="TestConsoleWeb.TestConsole" %>

<%@ Import Namespace="Discuz.TestConsole" %>

<script runat="server">
    override protected void OnInit(EventArgs e)
    {
        api_key = "2102aab29507fedd920b5f977c48da35";
        secret = "397cf886facc23a226720214600be0f2";
        url = "http://localhost/";
    }
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Discuz!NT 3.0 API测试 控制台</title>
    <style type="text/css">
        @import url(/misc/styles/tools.css);
        #content li
        {
            list-style: none;
            padding-top: 2px;
            text-align: left;
        }
        #content .title
        {
            color: rgb(102, 102, 102);
            border: none;
            background: none;
            padding: 3px 0;
            font-weight: bold;
        }
        .t_input
        {
            width: 150px;
            border: 1px solid rgb(204, 204, 204);
        }
        .t_title
        {
            width: 150px;
            border: 1px solid rgb(204, 204, 204);
        }
        .mydev_tabs_header
        {
            clear: both;
            height: 23px;
            border-bottom: 1px solid #666666;
            margin-bottom: 15px;
            margin-left: 10px;
            margin-right: 10px;
        }
        .mydev_tabs_header li.active a
        {
            height: 20px;
            border-bottom: 1px solid #fff;
        }
    </style>

    <script type="text/javascript">
        var methods = new Object();
        var method = '<%=Util.GetFormString("method")%>';
        if (method == '')
            method = 'Users.getInfo';
        var i = 0;
        methods['Users.getInfo'] = [];
        i = 0;
        methods['Users.getInfo'][i++] = 'uids';
        methods['Users.getInfo'][i++] = 'fields';
        i = 0;
        methods['Users.getLoggedInUser'] = [];
        i = 0;
        methods['Users.getID'] = [];
        methods['Users.getID'][i++] = 'user_name';
        i = 0;
        methods['Users.setInfo'] = [];
        methods['Users.setInfo'][i++] = 'uid';
        methods['Users.setInfo'][i++] = 'user_info';
        i = 0;
        methods['Users.setExtCredits'] = [];
        methods['Users.setExtCredits'][i++] = 'additional_values';
        methods['Users.setExtCredits'][i++] = 'uids';
        i = 0;
        methods['Topics.create'] = [];
        methods['Topics.create'][i++] = 'topic_info';
        i = 0;
        methods['Topics.reply'] = [];
        methods['Topics.reply'][i++] = 'reply_info';
        i = 0;
        methods['Topics.getRecentReplies'] = [];
        methods['Topics.getRecentReplies'][i++] = 'fid';
        methods['Topics.getRecentReplies'][i++] = 'tid';
        methods['Topics.getRecentReplies'][i++] = 'page_size';
        methods['Topics.getRecentReplies'][i++] = 'page_index';
        i = 0;
        methods['Topics.getList'] = [];
        methods['Topics.getList'][i++] = 'fid';
        methods['Topics.getList'][i++] = 'page_size';
        methods['Topics.getList'][i++] = 'page_index';
        i = 0;
        methods['Topics.getAttentionList'] = [];
        methods['Topics.getAttentionList'][i++] = 'fid';
        methods['Topics.getAttentionList'][i++] = 'page_size';
        methods['Topics.getAttentionList'][i++] = 'page_index';
        i = 0;
        methods['Forums.create'] = [];
        methods['Forums.create'][i++] = 'forum_info';
        i = 0;
        methods['Forums.get'] = [];
        methods['Forums.get'][i++] = 'fid';
        i = 0;
        methods['Notifications.get'] = [];
        i = 0;
        methods['Notifications.send'] = [];
        methods['Notifications.send'][i++] = 'to_ids';
        methods['Notifications.send'][i++] = 'notification';

        i = 0;
        methods['Notifications.sendEmail'] = [];
        methods['Notifications.sendEmail'][i++] = 'recipients';
        methods['Notifications.sendEmail'][i++] = 'subject';
        methods['Notifications.sendEmail'][i++] = 'text';
        i = 0;
        methods['Auth.encodePassword'] = [];
        methods['Auth.encodePassword'][i++] = 'password';
        i = 0;
        methods['Auth.register'] = [];
        methods['Auth.register'][i++] = 'user_name';
        methods['Auth.register'][i++] = 'password';
        methods['Auth.register'][i++] = 'email';
        i = 0;
        methods['Users.changePassword'] = [];
        methods['Users.changePassword'][i++] = 'uid';
        methods['Users.changePassword'][i++] = 'original_password';
        methods['Users.changePassword'][i++] = 'new_password';
        methods['Users.changePassword'][i++] = 'confirm_new_password';
        i = 0;
        methods['Topics.get'] = [];
        methods['Topics.get'][i++] = 'tid';
        methods['Topics.get'][i++] = 'page_size';
        methods['Topics.get'][i++] = 'page_index';
        i = 0;
        methods['Topics.edit'] = [];
        methods['Topics.edit'][i++] = 'tid';
        methods['Topics.edit'][i++] = 'topic_info';
        i = 0;
        methods['Topics.delete'] = [];
        methods['Topics.delete'][i++] = 'topic_ids';
        methods['Topics.delete'][i++] = 'fid';
        i = 0;
        methods['Messages.send'] = [];
        methods['Messages.send'][i++] = 'message';
        methods['Messages.send'][i++] = 'to_ids';
        methods['Messages.send'][i++] = 'subject';
        methods['Messages.send'][i++] = 'from_id';
        i = 0;
        methods['Messages.get'] = [];
        methods['Messages.get'][i++] = 'uid';
        methods['Messages.get'][i++] = 'page_size';
        methods['Messages.get'][i++] = 'page_index';
        i = 0;
        methods['Forums.getIndexList'] = [];
        i = 0;
        methods['Topics.deleteReplies'] = [];
        methods['Topics.deleteReplies'][i++] = 'tid';
        methods['Topics.deleteReplies'][i++] = 'post_ids';

        var fields = ['uid1', 'uid2', 'uids', 'fields', 'message', 'uid', 'user_info', 'additional_values', 'topic_ids', 'topic_info', 'reply_info', 'fid', 'tid', 'page_size', 'page_index', 'forum_info', 'to_ids', 'notification', 'recipients', 'subject', 'text', 'user_name', 'password', 'email', 'original_password', 'new_password', 'confirm_new_password', 'from_id', 'post_ids'];

        function hideAll() {
            var el;
            for (i = 0; i < fields.length; i++) {
                document.getElementById(fields[i]).style.display = 'none';
            }
        }

        function do_test() {

        }
        window.onload = function() {
            var i;
            var val = method;
            var elem = document.getElementById('method_x');
            for (i = 0; i < elem.options.length; i++) {
                if (elem.options[i].value == method) {
                    elem.selectedIndex = i;
                    break;
                }
            }
            for (i = 0; i < methods[val].length; i++) {
                document.getElementById(methods[val][i]).style.display = '';
            }
        }
        function changeMethod(elem) {
            var idx = elem.options.selectedIndex;
            var val = elem.options[idx].value;
            hideAll();
            for (i = 0; i < methods[val].length; i++) {
                document.getElementById(methods[val][i]).style.display = '';
            }
        }

    </script>

    <style type="text/css">
        body
        {
            margin: 0px;
            padding: 0px;
        }
        #iframeRootElementDiv
        {
            clear: both;
            overflow: hidden;
            padding: 0px;
            margin: 0px;
            border: none;
        }
    </style>
</head>
<body>
    <div id="iframeRootElementDiv">
        <div id="mainarea">
            <div class="mydev_tabs_header">
                <ul class="tabs">
                    <li class="active">Discuz!NT 3.0 API 测试 控制台</li>
                </ul>
            </div>
            <%if (needlogin)
              {%>
            <div id="standard_status" class="status">
                <h2>
                    <span id="status_title">
                        <div id="warning_text">
                            您需要 <a href="<%=url%>login.aspx?api_key=<%=api_key%>">登录</a>
                        </div>
                    </span>
                </h2>
            </div>
            <%} %>
            <div style="text-align: left; margin-left: 10px;" class="side_right s_clear" id="content">
                <table>
                    <tbody>
                        <tr>
                            <td style="width: 180px;" valign="top">
                                <form id="form1" method="post" action="testconsole.aspx">
                                <div id="user_id">
                                    <li class="title">用户Id</li>
                                    <li>
                                        <input class="t_input" value="<%=uid%>" readonly="true" type="text">
                                    </li>
                                </div>
                                <div id="application">
                                    <li class="title">应用</li>
                                    <li>
                                        <select name="appId" class="t_title" id="appId">
                                            <option label="测试控制台" value="1000204" selected="selected">测试控制台</option>
                                        </select>
                                    </li>
                                </div>
                                <div style="height: 10px;">
                                </div>
                                <div id="format">
                                    <li class="title">返回格式</li>
                                    <li>
                                        <select name="format" class="t_title">
                                            <option label="XML" value="xml">XML</option>
                                            <option label="JSON" value="json" <%if(Util.GetFormString("format")=="json"){%> selected<%} %>>
                                                JSON</option>
                                        </select>
                                    </li>
                                </div>
                                <div id="callback">
                                    <li class="title">Callback</li>
                                    <li>
                                        <input name="callback" value="<%=Util.GetFormString("callback")%>" type="text" /></li>
                                </div>
                                <div style="height: 10px;">
                                </div>
                                <div id="method">
                                    <li class="title">方法</li>
                                    <li>
                                        <select name="method" class="t_title" id="method_x" onchange="changeMethod(this)">
                                            <option value="Users.getInfo">Users.getInfo</option>
                                            <option value="Users.getLoggedInUser">Users.getLoggedInUser</option>
                                            <option value="Users.setInfo">Users.setInfo</option>
                                            <option value="Users.setExtCredits">Users.setExtCredits</option>
                                            <option value="Users.getID">Users.getID</option>
                                            <option value="Users.changePassword">Users.changePassword</option>
                                            <option value="Topics.create">Topics.create</option>
                                            <option value="Topics.reply">Topics.reply</option>
                                            <option value="Topics.getRecentReplies">Topics.getRecentReplies</option>
                                            <option value="Topics.getList">Topics.getList</option>
                                            <option value="Topics.getAttentionList">Topics.getAttentionList</option>
                                            <option value="Topics.get">Topics.get</option>
                                            <option value="Topics.edit">Topics.edit</option>
                                            <option value="Topics.delete">Topics.delete</option>
                                            <option value="Topics.deleteReplies">Topics.deleteReplies</option>
                                            <option value="Forums.create">Forums.create</option>
                                            <option value="Forums.get">Forums.get</option>
                                            <option value="Forums.getIndexList">Forums.getIndexList</option>
                                            <option value="Messages.send">Messages.send</option>
                                            <option value="Messages.get">Messages.get</option>
                                            <option value="Notifications.get">Notifications.get</option>
                                            <option value="Notifications.send">Notifications.send</option>
                                            <option value="Notifications.sendEmail">Notifications.sendEmail</option>
                                            <option value="Auth.register">Auth.register</option>
                                            <option value="Auth.encodePassword">Auth.encodePassword</option>
                                        </select></li>
                                    <li style="font-size: 12px"><a href="http://wiki.nt.discuz.net/index.php?title=API"
                                        target="_blank">想了解更多的API方法，请点击</a></li>
                                </div>
                                <div style="display: none;" id="uids">
                                    <li class="title">uids:</li>
                                    <li>
                                        <input class="t_input" name="uids" value="<%=Util.GetFormString("uids")%>" id="uids_x"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="uid1">
                                    <li class="title">uid1:</li>
                                    <li>
                                        <input class="t_input" name="uid1" id="uid1_x" value="<%=Util.GetFormString("uid1")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="uid2">
                                    <li class="title">uid2:</li>
                                    <li>
                                        <input class="t_input" name="uid2" id="uid2_x" value="<%=Util.GetFormString("uid2")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="fields">
                                    <li class="title">fields:</li>
                                    <li>
                                        <input class="t_input" name="fields" id="fields_x" value="<%=Util.GetFormString("fields")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="uid">
                                    <li class="title">uid:</li>
                                    <li>
                                        <input class="t_input" name="uid" value="<%=Util.GetFormString("uid")%>" hd="uids_x"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="fid">
                                    <li class="title">fid:</li>
                                    <li>
                                        <input class="t_input" name="fid" id="fid_x" value="<%=Util.GetFormString("fid")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="tid">
                                    <li class="title">tid:</li>
                                    <li>
                                        <input class="t_input" name="tid" id="tid_x" value="<%=Util.GetFormString("tid")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="user_info">
                                    <li class="title">user_info:</li>
                                    <li>
                                        <textarea rows="6" class="t_input" name="user_info" id="user_info_x"><%=Util.GetFormString("user_info")%></textarea></li>
                                </div>
                                <div style="display: none;" id="additional_values">
                                    <li class="title">additional_values:</li>
                                    <li>
                                        <input class="t_input" name="additional_values" id="additional_values_x" value="<%=Util.GetFormString("additional_values")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="topic_ids">
                                    <li class="title">topic_ids</li>
                                    <li>
                                        <input class="t_input" name="topic_ids" id="topic_ids_x" value="<%=Util.GetFormString("topic_ids")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="topic_info">
                                    <li class="title">topic_info:</li>
                                    <li>
                                        <textarea rows="6" class="t_input" name="topic_info" id="topic_info_x"><%=Util.GetFormString("topic_info")%></textarea></li>
                                </div>
                                <div style="display: none;" id="reply_info">
                                    <li class="title">reply_info:</li>
                                    <li>
                                        <textarea rows="6" class="t_input" name="reply_info" id="reply_info_x"><%=Util.GetFormString("reply_info")%></textarea></li>
                                </div>
                                <div style="display: none;" id="page_size">
                                    <li class="title">page_size:</li>
                                    <li>
                                        <input class="t_input" name="page_size" id="page_size_x" value="<%=Util.GetFormString("page_size")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="page_index">
                                    <li class="title">page_index:</li>
                                    <li>
                                        <input class="t_input" name="page_index" id="page_index_x" value="<%=Util.GetFormString("page_index")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="forum_info">
                                    <li class="title">forum_info:</li>
                                    <li>
                                        <textarea rows="6" class="t_input" name="forum_info" id="forum_info_x"><%=Util.GetFormString("forum_info")%></textarea></li>
                                </div>
                                <div style="display: none;" id="to_ids">
                                    <li class="title">to_ids:</li>
                                    <li>
                                        <input class="t_input" name="to_ids" id="to_ids_x" value="<%=Util.GetFormString("to_ids")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="from_id">
                                    <li class="title">from_id:</li>
                                    <li>
                                        <input class="t_input" name="from_id" id="from_id_x" value="<%=Util.GetFormString("from_id")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="notification">
                                    <li class="title">notification:</li>
                                    <li>
                                        <input class="t_input" name="notification" id="notification_x" value="<%=Util.GetFormString("notification")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="recipients">
                                    <li class="title">recipients:</li>
                                    <li>
                                        <input class="t_input" name="recipients" id="recipients_x" value="<%=Util.GetFormString("recipients")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="subject">
                                    <li class="title">subject:</li>
                                    <li>
                                        <input class="t_input" name="subject" id="subject_x" value="<%=Util.GetFormString("subject")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="text">
                                    <li class="title">text:</li>
                                    <li>
                                        <input class="t_input" name="text" id="text_x" value="<%=Util.GetFormString("text")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="user_name">
                                    <li class="title">user_name:</li>
                                    <li>
                                        <input class="t_input" name="user_name" id="user_name_x" value="<%=Util.GetFormString("user_name")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="password">
                                    <li class="title">password:</li>
                                    <li>
                                        <input class="t_input" name="password" id="password_x" value="<%=Util.GetFormString("password")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="email">
                                    <li class="title">email:</li>
                                    <li>
                                        <input class="t_input" name="email" id="email_x" value="<%=Util.GetFormString("email")%>"
                                            type="text" /></li>
                                </div>
                                <div style="display: none;" id="message">
                                    <li class="title">message:</li>
                                    <li>
                                        <textarea name="message" class="t_input" rows="6" id="message_x"><%=Util.GetFormString("message")%></textarea></li>
                                </div>
                                <div style="display: none;" id="sid">
                                    <li class="title">sid:</li>
                                    <li>
                                        <input class="t_input" name="sid" value="" hd="sids_x" type="text" /></li>
                                </div>
                                <div style="display: none;" id="original_password">
                                    <li class="title">original_password:</li>
                                    <li>
                                        <input class="t_input" name="original_password" id="original_password_x" value="<%=Util.GetFormString("original_password")%>"
                                            type="text" />
                                    </li>
                                </div>
                                <div style="display: none;" id="new_password">
                                    <li class="title">new_password:</li>
                                    <li>
                                        <input class="t_input" name="new_password" id="new_password_x" value="<%=Util.GetFormString("new_password")%>"
                                            type="text" />
                                    </li>
                                </div>
                                <div style="display: none;" id="confirm_new_password">
                                    <li class="title">confirm_new_password:</li>
                                    <li>
                                        <input class="t_input" name="confirm_new_password" id="confirm_new_password_x" value="<%=Util.GetFormString("confirm_new_password")%>"
                                            type="text" />
                                    </li>
                                </div>
                                <div style="display: none;" id="post_ids">
                                    <li class="title">post_ids:</li>
                                    <li>
                                        <input class="t_input" name="post_ids" id="post_ids_x" value="<%=Util.GetFormString("post_ids")%>"
                                            type="text" />
                                    </li>
                                </div>
                                <div style="margin-top: 10px;">
                                    <li>
                                        <input class="submit" value=" 提 交 " name="do" type="submit" <%if (needlogin) {%>disabled<%} %> /></li>
                                </div>
                                </form>
                            </td>
                            <td align="right" valign="top">
                                <div id="resultStream" style="font-size: 13px; text-align: left">
                                    <textarea style="border: 1px solid rgb(204, 204, 204); width: 570px; background-color: rgb(247, 247, 247);
                                        height: 100px;"><%=requestmsg %></textarea>
                                </div>
                                <div id="result">
                                    <textarea style="border: 1px solid rgb(204, 204, 204); width: 570px; background-color: rgb(247, 247, 247);"
                                        rows="20"><%=result %></textarea>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
