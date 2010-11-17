function getpostinfo(tid)
{
	if($('msgtbody_'+tid).style.display=='none')
	{
	_sendRequest('tools/ajax.aspx?t=getpostinfo', getpostinfo_callback, true, 'tid='+ tid);
	}
	else
	{
	$('msgtbody_'+tid).style.display='none';
	}
}

function getpostinfo_callback(doc)
{
	   var err = doc.getElementsByTagName('error');
		if (err[0] != null && err[0] != undefined)
		{
			if (err[0].childNodes.length > 1) {
				alert(err[0].childNodes[1].nodeValue);
			} else {
				alert(err[0].firstChild.nodeValue);    		
			}
			return;
		}
		else
	{

        $('msgtbody_'+getSingleNodeValue(doc, 'tid')).style.display='';
        $('msg_'+getSingleNodeValue(doc, 'tid')).innerHTML=getSingleNodeValue(doc,'message');
		return;
			}
	
	}
	
	
function audittopic(tidlist,mod,formid,pm){
	var str='modcp.aspx?operation=audittopic&topicidlist='+tidlist +'&mod_'+tidlist+'='+mod+'&pm_'+tidlist+'='+pm;
	postoperation(str,formid)
}

function auditpost(pid,formid,tid,tableid){
	var mod = getradiovalue('mod_' + pid);
	var pm = $('pm_' + pid).value;
 	var str = ['modcp.aspx?operation=auditpost&tidlist=',tid,'&tableid=',tableid,'&pidlist=',pid,'&mod_',pid,'=',mod,'&pm_',pid,'=',pm].join('');
	postoperation(str,formid)
}


function postoperation(actionstr,formid){
    $(formid).action=actionstr;
	$(formid).submit();
}

function getradiovalue(RadioName){
    var obj;   
    obj=document.getElementsByName(RadioName);
    if(obj!=null){
        var i;
        for(i=0;i<obj.length;i++){
            if(obj[i].checked){
                return obj[i].value;           
            }
        }
    }
    return null;
}