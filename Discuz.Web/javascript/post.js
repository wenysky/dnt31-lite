/*
	[Discuz!] (C)2001-2007 Comsenz Inc.
	This is NOT a freeware, use is subject to license terms

	$RCSfile: post.js,v $
	$Revision: 1.24 $
	$Date: 2007/07/20 12:20:51 $
*/

var postSubmited = false;
var smdiv = new Array();

function AddText(txt) {
    try {
        obj = typeof $('postform').message != 'undefined' ? $('postform').message : $('e_textarea');
    } catch (e) { 
		obj = typeof $('quickpostform').message != 'undefined' ? $('quickpostform').message : $('quickpostmessage');
	}
	selection = document.selection;
	checkFocus();
	if(!isUndefined(obj.selectionStart)) {
		var opn = obj.selectionStart + 0;
		obj.value = obj.value.substr(0, obj.selectionStart) + txt + obj.value.substr(obj.selectionEnd);
	} else if(selection && selection.createRange) {
		var sel = selection.createRange();
		sel.text = txt;
		sel.moveStart('character', -strlen(txt));
	} else {
		obj.value += txt;
	}
}

function checkFocus() {
    var textarea;
    try {
        textarea = typeof $('postform').message != 'undefined' ? $('postform').message : $('e_textarea');
    } catch (e) { 
		textarea = typeof $('quickpostform').message != 'undefined' ? $('quickpostform').message : $('quickpostmessage');
	}
    var obj = typeof wysiwyg == 'undefined' || !wysiwyg ? textarea : editwin;
	if(!obj.hasfocus) {
		obj.focus();
	}
}

function ctlent(event) {
	if(postSubmited == false && (event.ctrlKey && event.keyCode == 13) || (event.altKey && event.keyCode == 83) && $('postsubmit')) {
		if(in_array($('postsubmit').name, ['topicsubmit', 'replysubmit', 'editsubmit']) && !validate($('postform'))) {
			doane(event);
			return;
		}
		postSubmited = true;
		$('postsubmit').disabled = true;
		$('postform').submit();
	}
}

function ctltab(event) {
	if(event.keyCode == 9) {
		doane(event);
	}
}

function ctlentParent(event) {
    var pForm = parent.window.document.getElementById('postform');
    var pSubmit = parent.window.document.getElementById('postsubmit');

	if(postSubmited == false && (event.ctrlKey && event.keyCode == 13) || (event.altKey && event.keyCode == 83) && pSubmit) {
		if (parent.window.validate && !parent.window.validate(pForm))
		{
			doane(event);
			return;
		}
		postSubmited = true;
		pSubmit.disabled = true;
		pForm.submit();
	}
}

function deleteData() {
	if(is_ie) {
		saveData('', 'delete');
	} else if(window.sessionStorage) {
		try {
			sessionStorage.removeItem('Discuz!');
		} catch(e) {}
	}
}

function insertSmiley(smilieid) {
	checkFocus();
	var src = $('smilie_' + smilieid).src;
	var code = $('smilie_' + smilieid).alt;
	if(typeof wysiwyg != 'undefined' && wysiwyg && allowsmilies && (!$('smileyoff') || $('smileyoff').checked == false)) {
		if(is_moz) {
			applyFormat('InsertImage', false, src);
			
			var smilies = editdoc.body.getElementsByTagName('img');
			for(var i = 0; i < smilies.length; i++) {
				if(smilies[i].src == src && smilies[i].getAttribute('smilieid') < 1) {
					smilies[i].setAttribute('smilieid', smilieid);
					smilies[i].setAttribute('border', "0");
				}
			}
		} else {
			insertText('<img src="' + src + '" border="0" smilieid="' + smilieid + '" alt="" /> ', false);
		}
	} else {
		code += ' ';
		AddText(code);
	}
	hideMenu();
}

function smileyMenu(ctrl) {
	ctrl.style.cursor = 'pointer';
	if(ctrl.alt) {
		ctrl.pop = ctrl.alt;
		ctrl.alt = '';
	}
	if(ctrl.title) {
		ctrl.lw = ctrl.title;
		ctrl.title = '';
	}
	//if(!smdiv[ctrl.id]) {
		smdiv[ctrl.id] = document.createElement('div');
		smdiv[ctrl.id].id = ctrl.id + '_menu';
		smdiv[ctrl.id].style.display = 'none';
		smdiv[ctrl.id].style.width = '60px';
		smdiv[ctrl.id].style.height = '60px';
		smdiv[ctrl.id].className = 'popupmenu_popup';
		ctrl.parentNode.appendChild(smdiv[ctrl.id]);
	//}
	smdiv[ctrl.id].innerHTML = '<table width="100%" height="100%"><tr><td align="center" valign="middle"><img src="' + ctrl.src + '" border="0" /></td></tr></table>';
	showMenu(ctrl.id, 0, 0, 1, 0);
}



function showsmiles(index, typename, pageindex, seditorKey)
{
	$("s_" + index).className = "current";
	var cIndex = 1;
	for (i in smilies_HASH) {
		if (cIndex != index) {
			$("s_" + cIndex).className = "";
		}
		$("s_" + cIndex).style.display = "";
		cIndex ++;
	}

	var pagesize = (typeof smiliesCount) == 'undefined' ? 12 : smiliesCount;
	var url = (typeof forumurl) == 'undefined' ? '' : forumurl;
	var s = smilies_HASH[typename];
	var pagecount = Math.ceil(s.length/pagesize);
	var inseditor = typeof seditorKey != 'undefined';

	if (isUndefined(pageindex)) {
		pageindex = 1;
	}
	if (pageindex > pagecount) {
		pageindex = pagecount;
	}

	var maxIndex = pageindex*pagesize;
	if (maxIndex > s.length) {
		maxIndex = s.length;
	}
	maxIndex = maxIndex - 1;

	var minIndex = (pageindex-1)*pagesize;

	var html = '<table id="' + index + '_table" cellpadding="0" cellspacing="0" style="clear: both"><tr>';

	var ci = 1;
	for (var id = minIndex; id <= maxIndex; id++) {
		var clickevt = 'insertSmiley(\'' + addslashes(s[id]['code']) + '\');';
		if (inseditor) {
			clickevt = 'seditor_insertunit(\'' + seditorKey + '\', \'' + s[id]['code'] + '\');';
		}

		html += '<td valign="middle"><img style="cursor: pointer;" src="' + url + 'editor/images/smilies/' + s[id]['url'] + '" id="smilie_' + s[id]['code'] + '" alt="' + s[id]['code'] + '" onclick="' + clickevt + '" onmouseover="smilies_preview(\'s\', this, 40)" onmouseout="smilies_preview(\'s\')" title="" border="0" height="20" width="20" /></td>';
		if (ci%colCount == 0) {
			html += '</tr><tr>'
		}
		ci ++;
	}

	html += '<td colspan="' + (colCount - ((ci-1) % colCount)) + '"></td>';
	html += '</tr>';
	html += '</table>';
	$("showsmilie").innerHTML = html;

	if (pagecount > 1) {
		html = '<div class="p_bar">';
		for (var i = 1; i <= pagecount; i++) {
			if (i == pageindex) {
				html += "<a class=\"p_curpage\">" + i + "</a>";
			}
			else {
				html += "<a class=\"p_num\" href='#smiliyanchor' onclick=\"showsmiles(" + index + ", '" + typename + "', " + i + ")\">" + i + "</a>"
			}
		}
		html += '</div>'
		$("showsmilie_pagenum").innerHTML = html;
	}
	else {
		$("showsmilie_pagenum").innerHTML = "";
	}
}

function showFirstPageSmilies(firstpagesmilies, defaulttypename, maxcount, seditorKey)
{
	var html = '<table align="center" border="0" cellpadding="3" cellspacing="0" width="90%"><tr>';
	var ci = 1;
	var inseditor = (typeof seditorKey != 'undefined');
	var url = (typeof forumurl) == 'undefined' ? '' : forumurl;
	var s = firstpagesmilies[defaulttypename];
	for (var id = 0; id <= maxcount - 1; id++) {
		if(s[id] == null)
			continue;
		var clickevt = 'insertSmiley(\'' + addslashes(s[id]['code']) + '\');';
		if (inseditor) {
			clickevt = 'seditor_insertunit(\'' + seditorKey + '\', \'' + s[id]['code'] + '\');';
		}
		html += '<td valign="middle"><img style="cursor: pointer;" src="' + url + 'editor/images/smilies/' + s[id]['url'] + '" id=smilie_' + s[id]['code'] + ' alt="' + s[id]['code'] + '" onclick="' + clickevt + '" onmouseover="smilies_preview(\'s\', this, 40)" onmouseout="smilies_preview(\'s\')" title="" border="0" height="20" width="20" /></td>';
		if (ci%4 == 0) {
			html += '</tr><tr>'
		}
		ci ++;
	}
	html += '<td colspan="' + (4 - ((ci-1) % 4)) + '"></td>';
	html += '</tr>';
	html += '</table>';

	$("showsmilie").innerHTML = html;
}

function scrollSmilieTypeBar(bar, scrollwidth)
{
	//bar.scrollLeft += scrollwidth;
	var i = 0;
	if (scrollwidth > 0) {
		var scl = window.setInterval(function(){
			if (i < scrollwidth) {
				bar.scrollLeft += 1;
				i++
			}
			else
				window.clearInterval(scl);
		}, 1);
	}
	else {
		var scl = window.setInterval(function(){
			if (i > scrollwidth) {
				bar.scrollLeft -= 1;
				i--
			}
			else
				window.clearInterval(scl);
		}, 1);
	}
}
function smilies_preview(id, obj, v) {
	if(!obj) {
		$(id + '_preview_table').style.display = 'none';
	} else {
		$(id + '_preview_table').style.display = '';
		$(id + '_preview').innerHTML = '<img src="' + obj.src + '" />';
	}
}

/*Discuz!NT end*/
function parseurl(str, mode) {
	str = str.replace(/([^>=\]"'\/]|^)((((https?|ftp):\/\/)|www\.)([\w\-]+\.)*[\w\-\u4e00-\u9fa5]+\.([\.a-zA-Z0-9]+|\u4E2D\u56FD|\u7F51\u7EDC|\u516C\u53F8)((\?|\/|:)+[\w\.\/=\?%\-&~`@':+!]*)+\.(jpg|gif|png|bmp))/ig, mode == 'html' ? '$1<img src="$2" border="0">' : '$1[img]$2[/img]');
	str = str.replace(/([^>=\]"'\/@]|^)((((https?|ftp|gopher|news|telnet|rtsp|mms|callto|bctp|ed2k|thunder|synacast):\/\/))([\w\-]+\.)*[:\.@\-\w\u4e00-\u9fa5]+\.([\.a-zA-Z0-9]+|\u4E2D\u56FD|\u7F51\u7EDC|\u516C\u53F8)((\?|\/|:)+[\w\.\/=\?%\-&~`@':+!#]*)*)/ig, mode == 'html' ? '$1<a href="$2" target="_blank">$2</a>' : '$1[url]$2[/url]');
	str = str.replace(/([^\w>=\]"'\/@]|^)((www\.)([\w\-]+\.)*[:\.@\-\w\u4e00-\u9fa5]+\.([\.a-zA-Z0-9]+|\u4E2D\u56FD|\u7F51\u7EDC|\u516C\u53F8)((\?|\/|:)+[\w\.\/=\?%\-&~`@':+!#]*)*)/ig, mode == 'html' ? '$1<a href="$2" target="_blank">$2</a>' : '$1[url]$2[/url]');
	str = str.replace(/([^\w->=\]:"'\.\/]|^)(([\-\.\w]+@[\.\-\w]+(\.\w+)+))/ig, mode == 'html' ? '$1<a href="mailto:$2">$2</a>' : '$1[email]$2[/email]');
	return str;
}

function getData(tagname) {
	if (typeof tagname == 'undefined' || tagname == '')
	{
		tagname = 'Discuz!';
	}
	var message = '';
	if(is_ie) {
		try {
			textobj.load(tagname);
			var oXMLDoc = textobj.XMLDocument;
			var nodes = oXMLDoc.documentElement.childNodes;
			message = nodes.item(nodes.length - 1).getAttribute('message');
		} catch(e) {}
	} else if(window.sessionStorage) {
		try {
		    message = sessionStorage.getItem(tagname);
		    if (!message)
		        message = "";
		} catch(e) {}
	}
	return message.toString();

}

function loadData(silent) {
	var message = '';
	message = getData('Discuz!');

	if (!silent)
	{
		if(in_array((message = trim(message)), ['', 'null', 'false', null, false])) {
			alert(lang['post_autosave_none']);
			return;
		}
		if(!confirm(lang['post_autosave_confirm'])) {
			return;
		}
	}

	var formdata = message.split(/\x09\x09/);
	for(var i = 0; i < $('postform').elements.length; i++) {
		var el = $('postform').elements[i];
		if(el.name != '' && (el.tagName == 'TEXTAREA' || el.tagName == 'INPUT' && el.type == 'text')) {
			for(var j = 0; j < formdata.length; j++) {
				var ele = formdata[j].split(/\x09/);
				if(ele[0] == el.name) {
					elvalue = !isUndefined(ele[3]) ? ele[3] : '';
					if(ele[1] == 'INPUT') {
						if(ele[2] == 'text') {
							el.value = elvalue;
						} else if(ele[2] == 'checkbox' || ele[2] == 'radio') {
							el.checked = true;
						}
					} else if(ele[1] == 'TEXTAREA') {
						if(ele[0] == 'message') {
							if(typeof wysiwyg == 'undefined' || !wysiwyg) {
								textobj.value = elvalue;
							} else {
								editdoc.body.innerHTML = bbcode2html(elvalue);
							}
						} else {
							el.value = elvalue;
						}
					}
					break
				}
			}
		}
	}
}

function setData(data, tagname) {
	if (typeof tagname == 'undefined' || tagname == '')
	{
		tagname = 'Discuz!';
	}
	if(is_ie) {
		try {
			var oXMLDoc = textobj.XMLDocument;
			var root = oXMLDoc.firstChild;
			if(root.childNodes.length > 0) {
				root.removeChild(root.firstChild);
			}
			var node = oXMLDoc.createNode(1, 'POST', '');
			var oTimeNow = new Date();
			oTimeNow.setHours(oTimeNow.getHours() + 24);
			textobj.expires = oTimeNow.toUTCString();
			node.setAttribute('message', data);
			oXMLDoc.documentElement.appendChild(node);
			textobj.save(tagname);
		} catch(e) {}
	} else if(window.sessionStorage) {
		try {
			sessionStorage.setItem(tagname, data);
		} catch(e) {}
	}

}

function saveData(data, del) {
	if(!data && typeof del == 'undefined') {
		return;
	}

	if(typeof wysiwyg != 'undefined' && typeof editorid != 'undefined' && typeof bbinsert != 'undefined' && bbinsert && $(editorid + '_mode') && $(editorid + '_mode').value == 1) {
		data = html2bbcode(data);
	}

	var formdata = '';
	for(var i = 0; i < $('postform').elements.length; i++) {
		var el = $('postform').elements[i];
		if(el.name != '' && (el.tagName == 'TEXTAREA' || el.tagName == 'INPUT' && el.type == 'text') && el.name.substr(0, 6) != 'attach') {
			var elvalue = el.name == 'message' ? data : el.value;
			formdata += el.name + String.fromCharCode(9) + el.tagName + String.fromCharCode(9) + el.type + String.fromCharCode(9) + elvalue + String.fromCharCode(9, 9);
		}
	}

	setData(formdata, 'Discuz!');
}

var autosaveDatai, autosaveDatatime;
function autosaveData(op) {
	var autosaveInterval = 60;
	obj = $(editorid + '_cmd_autosave');
	if(op) {
		if(op == 2) {
			saveData(wysiwyg ? editdoc.body.innerHTML : textobj.value);
		} else {
			setcookie('disableautosave', '', -2592000);
		}
		autosaveDatatime = autosaveInterval;
		autosaveDatai = setInterval(function() {
			autosaveDatatime--;
			if(autosaveDatatime == 0) {
				saveData(wysiwyg ? editdoc.body.innerHTML : textobj.value);
				autosaveDatatime = autosaveInterval;
			}
			if($('autsavet')) {
				$('autsavet').innerHTML = '(' + autosaveDatatime + '秒' + ')';
			}
		}, 1000);
		obj.onclick = function() { autosaveData(0); }
	} else {
		setcookie('disableautosave', 1, 2592000);
		clearInterval(autosaveDatai);
		$('autsavet').innerHTML = '(已停止)';
		obj.onclick = function() { autosaveData(1); }
	}
}

function setCaretAtEnd() {
	if(typeof wysiwyg != 'undefined' && wysiwyg) {
		editdoc.body.innerHTML += '';
	} else {
		editdoc.value += '';
	}
}

function storeCaret(textEl){
	if(textEl.createTextRange){
		textEl.caretPos = document.selection.createRange().duplicate();
	}
}

if(is_ie >= 5 || is_moz >= 2) {
	window.onbeforeunload = function () {
		try {
			saveData(wysiwyg && bbinsert ? editdoc.body.innerHTML : textobj.value);
		} catch(e) {}
	};
}

function insertmedia() {
	InFloat = InFloat_Editor;
	if(is_ie) $(editorid + '_mediaurl').pos = getCaret();
	showMenu(editorid + '_popup_media', true, 0, 2);
}

function setmediacode(editorid) {
	checkFocus();
	if(is_ie) setCaret($(editorid + '_mediaurl').pos);
	insertText('[media='+$(editorid + '_mediatype').value+
		','+$(editorid + '_mediawidth').value+
		','+$(editorid + '_mediaheight').value+']'+
		$(editorid + '_mediaurl').value+'[/media]');
	$(editorid + '_mediaurl').value = '';
	hideMenu();
}


function setmediatype(editorid) {
	var ext = $(editorid + '_mediaurl').value.lastIndexOf('.') == -1 ? '' : $(editorid + '_mediaurl').value.substr($(editorid + '_mediaurl').value.lastIndexOf('.') + 1, $(editorid + '_mediaurl').value.length).toLowerCase();
	if(ext == 'rmvb') {
		ext = 'rm';
	}
	if($(editorid + '_mediatyperadio_' + ext)) {
		$(editorid + '_mediatyperadio_' + ext).checked = true;
		$(editorid + '_mediatype').value = ext;
	}
}

var divdragstart = new Array();
function divdrag(e, op, obj) {
	if(op == 1) {
		divdragstart = is_ie ? [event.clientX, event.clientY] : [e.clientX, e.clientY];
		divdragstart[2] = parseInt(obj.style.left);
		divdragstart[3] = parseInt(obj.style.top);
		doane(e);
	} else if(op == 2 && divdragstart[0]) {
		var divdragnow = is_ie ? [event.clientX, event.clientY] : [e.clientX, e.clientY];
		obj.style.left = (divdragstart[2] + divdragnow[0] - divdragstart[0]) + 'px';
		obj.style.top = (divdragstart[3] + divdragnow[1] - divdragstart[1]) + 'px';
		doane(e);
	} else if(op == 3) {
		divdragstart = [];
		doane(e);
	}
}

function pagescrolls(op) {
	if(!infloat && op.substr(0, 6) == 'credit') {
		window.open('faq.php?action=credits&fid=' + fid);
		return;
	}
	switch(op) {
		case 'credit1':hideMenu();$('moreconf').style.display = 'none';$('extcreditbox1').innerHTML = $('extcreditbox').innerHTML;pagescroll.left();break;
		case 'credit2':$('moreconf').style.display = 'none';$('extcreditbox2').innerHTML = $('extcreditbox').innerHTML;pagescroll.left();break;
		case 'credit3':hideMenu();$('moreconf').style.display = 'none';$('extcreditbox3').innerHTML = $('extcreditbox').innerHTML;pagescroll.left();break;
		case 'return':if(!Editorwin) {hideMenu();$('custominfoarea').style.display=$('more_2').style.display='none';pagescroll.up(1, '$(\'more_1\').style.display=\'\'');}break;
		case 'creditreturn':pagescroll.right(1, '$(\'moreconf\').style.display = \'\';');break;
		case 'swf':hideMenu();$('moreconf').style.display = 'none';swfHandler(3);break;
		case 'swfreturn':$('swfbox').style.display = 'none';if(!Editorwin) {pagescroll.left(1, '$(\'moreconf\').style.display = \'\';');}swfHandler(2);break;
		case 'more':hideMenu();pagescroll.down(1, '$(\'more_1\').style.display=$(\'more_2\').style.display=$(\'custominfoarea\').style.display=\'none\'');break;
		case 'editorreturn':$('more_1').style.display='none';pagescroll.up(1, '$(\'more_2\').style.display=$(\'custominfoarea\').style.display=\'\'');break;
		case 'editor':$('more_1').style.display='none';pagescroll.down(1, '$(\'more_2\').style.display=\'\';$(\'custominfoarea\').style.display=\'\'');break;
	}
}

function switchicon(iconid, obj) {
	$('iconid').value = iconid;
	$('icon_img').src = obj.src;
	hideMenu();
}

var swfuploaded = 0;
function swfHandler(action) {
	if(action == 1) {
		swfuploaded = 1;
	} else if(action == 2) {
		if(Editorwin || !infloat) {
			swfuploadwin();
		} else {
			$('swfbox').style.display = 'none';
			pagescroll.left(1, '$(\'moreconf\').style.display=\'\';');
		}
		if(swfuploaded) {
			swfattachlistupdate(action);
		}
	} else if(action == 3) {
		swfuploaded = 0;
		pagescroll.right(1, '$(\'swfuploadbox\').style.display = $(\'swfbox\').style.display = \'\';');
	}
}

function swfattachlistupdate(action) {
	ajaxget('ajax.php?action=swfattachlist', 'swfattachlist', 'swfattachlist', 'swfattachlist', null, '$(\'uploadlist\').scrollTop=10000');
	attachlist('open');
	$('postform').updateswfattach.value = 1;
}

function appendreply() {
	newpos = fetchOffset($('post_new'));
	document.documentElement.scrollTop = newpos['top'];
	$('post_new').style.display = '';
	$('post_new').id = '';
	div = document.createElement('div');
	div.id = 'post_new';
	div.style.display = 'none';
	div.className = '';
	$('postlistreply').appendChild(div);
	$('postform').replysubmit.disabled = false;
	creditnoticewin();
}

var Editorwin = 0;
function resizeEditorwin() {
	var obj = $('resizeEditorwin');
	floatwin('size_' + editoraction);
	$('editorbox').style.height = $('floatlayout_' + editoraction).style.height = $('floatwin_' + editoraction).style.height;
	if(!Editorwin) {
		obj.className = 'float_min';
		obj.title = obj.innerHTML = '还原大小';
		$('editorbox').style.width = $('floatlayout_' + editoraction).style.width = (parseInt($('floatwin_' + editoraction).style.width) - 10)+ 'px';
		$('editorbox').style.left = '0px';
		$('editorbox').style.top = '0px';
		$('swfuploadbox').style.display = $('custominfoarea').style.display = $('creditlink').style.display = $('morelink').style.display = 'none';
		if(wysiwyg) {
			$('e_iframe').style.height = (parseInt($('floatwin_' + editoraction).style.height) - 150)+ 'px';
		}
		$('e_textarea').style.height = (parseInt($('floatwin_' + editoraction).style.height) - 150)+ 'px';
		attachlist('close');
		Editorwin = 1;
	} else {
		obj.className = 'float_max';
		obj.title = obj.innerHTML = '最大化';
		$('editorbox').style.width = $('floatlayout_' + editoraction).style.width = '600px';
		$('swfuploadbox').style.display = $('custominfoarea').style.display = $('creditlink').style.display = $('morelink').style.display = '';
		if(wysiwyg) {
			$('e_iframe').style.height = '';
		}
		$('e_textarea').style.height = '';
		swfuploadwin();
		Editorwin = 0;
	}
}

function closeEditorwin() {
	if(Editorwin) {
		resizeEditorwin();
	}
	floatwin('close_' + editoraction);
}

function editorwindowopen(url) {
	data = wysiwyg ? editdoc.body.innerHTML : textobj.value;
	saveData(data);
	url += '&cedit=' + (data !== '' ? 'yes' : 'no');
	window.open(url);
}

function swfuploadwin() {
	if(Editorwin) {
		if($('swfuploadbox').style.display == 'none') {
			$('swfuploadbox').className = 'floatbox floatbox1 floatboxswf floatwin swfwin';
			$('swfuploadbox').style.position = 'absolute';
			width = (parseInt($('floatlayout_' + editoraction).style.width) - 604) / 2;
			$('swfuploadbox').style.left = width + 'px';
			$('swfuploadbox').style.display = $('swfclosebtn').style.display = $('swfbox').style.display = '';

		} else {
			$('swfuploadbox').className = 'floatbox floatbox1 floatboxswf';
			$('swfuploadbox').style.position = $('swfuploadbox').style.left = '';
			$('swfuploadbox').style.display = $('swfclosebtn').style.display = 'none';
		}
	} else {
		if(infloat) {
			pagescrolls('swf');
		} else {
			if($('swfuploadbox').style.display == 'none') {
				$('swfuploadbox').style.display = $('swfbox').style.display = $('swfclosebtn').style.display = '';
			} else {
				$('swfuploadbox').style.display = $('swfbox').style.display = $('swfclosebtn').style.display = 'none';
			}
		}
	}
}


