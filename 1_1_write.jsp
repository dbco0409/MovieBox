<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>         
<%@include file="_head.jsp" %>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>1_1_write</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#form{background-image:url('img/form_beg.gif');}
#button{background-image:url('img/beg_on.gif');}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
</style>

</head>
<script type="text/javascript">
function doChange(srcE, targetId){
    var val = srcE.options[srcE.selectedIndex].value;
    var targetE = document.getElementById(targetId);
    removeAll(targetE);

    if(val == '1'){
	addOption('����', targetE);
    addOption('���빮', targetE);
    addOption('��', targetE);
    addOption('���', targetE);
    addOption('��Ʈ��', targetE);
    addOption('����', targetE);
    addOption('����', targetE);
    addOption('�ڿ���', targetE);
    addOption('EOE4', targetE);
    addOption('����', targetE);
    addOption('��Ʈ����', targetE);
        
    }
    else if(val == '2'){
	addOption('������', targetE);
   addOption('�д�', targetE);
   addOption('����', targetE);
   addOption('�Ȼ�', targetE);
   addOption('����', targetE);
   addOption('�ϻ�', targetE);
   addOption('Ų�ؽ�', targetE);
   addOption('����', targetE);
   addOption('�鼮', targetE);
 
    }
	 else if(val == '3'){
	addOption('����', targetE);
   addOption('����', targetE);
   addOption('����', targetE);
   addOption('õ��', targetE);
  addOption('��õ', targetE);
   addOption('����', targetE);
	
 
    }
	 else if(val == '4'){
	  addOption('����', targetE);
      addOption('�뱸(ĥ����)', targetE);
      addOption('����', targetE);
      addOption('���', targetE);
      addOption('â��', targetE);
      addOption('�ϴ뱸', targetE);
      addOption('�ؿ��', targetE);
      addOption('����', targetE);
	
 
    }
	 else if(val == '5'){ 
	 addOption('����', targetE);
     addOption('����', targetE);
     addOption('��õ', targetE);
     addOption('����', targetE);
   
 
    }
	 else if(val == '6'){
	 addOption('����', targetE);
    addOption('����', targetE);

    }
	 else if(val == '7'){
	 addOption('����', targetE);
    }
}

function addOption(value, e){
    var o = new Option(value);
    try{
        e.add(o);
    }catch(ee){
        e.add(o, null);
    }
}

function removeAll(e){
    for(var i = 0, limit = e.options.length; i < limit - 1; ++i){
        e.remove(1);
    }
}



function check_val()  
{
	if (!document.getElementById('ok').checked){
   alert("�ϴ��Ϲ��Ǹ� ���ؼ��� �������� ������ ���Ǹ� ���ּž� �մϴ�.");
   return false;
  }


	if (document.form.name.value == "") 
	{
		alert("�̸��� �Է��ϼž� �մϴ�.");
		document.form.name.focus();
		return false;			
	}
	
	if (document.form.ctg.value == "") 
	{
		alert("� ���ǻ������� �Է��ϼž� �մϴ�.");
		document.form.ctg.focus();
		return false;			
	}
	
	if (document.form.email.value == "") 
	{
		alert("�̸����� �Է��ϼž� �մϴ�.");
		return false;			
	}
	
if (document.form.title.value == "") 
	{
		alert("������ ���� �ؾ� �մϴ�. ");
		document.form.title.focus();
		return false;			
	}
	if (document.form.content.value == "") 
	{
		alert("������ ���� �ؾ� �մϴ�. ");
		document.form.content.focus();
		return false;			
	}
			document.form.submit();
}
</script>

</script>
<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
	<table width="890" cellpadding="0" cellspacing="0" align="center" >
    <tr>
        <td width="800" height="33" colspan="2" valign="top">
<div id="l_1" style="width:890px; height:33px; position:absolute; margin:0 auto;z-index:1; background-image:url('images/line_beg.gif');">
		<form name="form" method="post" action="1_1_write_result.jsp">
		<table cellpadding="0" cellspacing="0" background="images/line_beg.gif">
                    <tr>
				<td width="35"></td>
                    <td width="39"><a href="faq_list_all.jsp"><img src="images/sub9.gif" border="0" id="submenu9" /></a></td>
                    <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                    <td width="62"><a href="notice_list_all.jsp"><img src="images/sub13.gif" border="0" id="submenu13" /></a></td>
                    <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                    <td width="28"><a href="in14.jsp"><img src="images/sub14.gif" border="0" id="submenu14" /></a></td>
                        <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                        <td width="28"><a href="1_1_write.jsp"><img src="images/click15.gif" border="0" id="submenu15" /></td>
                    </tr>
            </table></div></td>
    </tr>
    <tr>
        <td width="182" valign="top"> <table width="192" height="100%" cellpadding="0" cellspacing="0" style="background-image:url('images/right_bar.gif')">
        <tr>
            <td width="182" height="10">&nbsp;</td>
        </tr>
        <tr>
            <td width="182" height="46" background="images/right_bar2.gif" valign="top">
                <table width="150" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td width="182">
                            <p align="left"><img src="images/menu_customer.gif" width="130" height="31" border="0"></p>
                        </td>
                    </tr>
                </table>
                <p>&nbsp;</p>
            </td>
        </tr>
        <tr>
            <td width="182" height="40" background="images/right_bar3.gif" valign="top">
                <table width="160" cellpadding="0" cellspacing="0" align="center">
                    <tr>
                        <td width="182" height="200" valign="top">
                            <p style="margin-top:10px;"><a href="faq_list_all.jsp"><img src="images/s_9.gif" width="53" height="18" border="0" id="menu9"></a></p>
                            <p style="margin-top:10px;"><a href="notice_list_all.jsp"><img src="images/s_13.gif" width="75" height="19" border="0" id="menu13"></a></p>
                            <p style="margin-top:10px;"><a href="board_list.jsp"><img src="images/s_14.gif" width="95" height="20" border="0" id="menu14"></a></p>
                            <p style="margin-top:10px;"><a href="1_1_write.jsp"><img src="images/c_15.gif" width="69" height="18" border="0" id="menu15"></a></p>
                            <p style="margin-top:10px;"><img src="images/s_17.gif" width="130" height="18" border="0"></p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td width="182" height="31">&nbsp;</td>
        </tr>
        <tr>
            <td width="196" valign="top" background="images/right_bar.gif">
                <p align="center"><img src="images/right_benner.gif" width="151" height="440" border="0"></p>
            </td>
        </tr>
    </table></td>
        <td width="720" valign="top">
		<p>&nbsp;</p>
<table width="673" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td width="673">
            <table width="673" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="673" height="42"><p><img src="img/1.1.gif" width="673" height="41" border="0"></p></td>
                </tr>
                <tr>
                            <table width="630" cellpadding="0" cellspacing="0" align="center" height="633">
                                <tr>
                                    <td width="630" height="39" colspan="3">
                                        <p>�������� ������ ���� ���Ǣ�</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="630" height="5" colspan="3">
                                        <p align="center">          <iframe frameborder="no" style="border:1px solid #ddd;" src="1_1_ok.htm" width="630" height="161" scrolling="yes"></iframe>
            </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="630" height="50" colspan="3"><input type="radio" value="Y" name="ok" id="ok" checked><label>������</label> <input type="radio" value="N" name="ok" id="ok" ><label>������������</label></td>
                                </tr>
                                <tr>
                                    <td width="630" height="5" colspan="3"><img src="img/bar.gif" width="625" height="12" border="0"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form"></td>
                                    <td width="99" height="35" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">�̸�</td>
                                    <td width="316" height="35" id="form"><input type="text" name="name" size="15"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form"></td>
                                    <td width="99" height="35" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">���Ǳ���</td>
                                    <td width="316" height="35" id="form">
									<select name="ctg">
									<option selected>����</option>
									<option value="���ǻ���">���ǻ���</option>
									<option value="����/����">����/����</option>
									<option value="�Ҹ�����">�Ҹ�����</option>
									<option value="Ī��/�ݷ�">Ī��/�ݷ�</option>
									</select></td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form"></td>
                                    <td width="99" height="35" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">��ȭ��</td>
                                    <td width="316" height="35" id="form">
									
									<select name="selOne" id="selOne" onchange="doChange(this, 'selTwo')">
<option>��������</option>
<option value="1">����</option>
<option value="2">���/��õ</option>
<option value="3">����/����/��û</option>
<option value="4">�λ�/���</option>
<option value="5">����/����</option>
<option value="6">����</option>
<option value="7">����</option>
</select>

 <select name="selTwo" id="selTwo">
<option>��ȭ������</option>
</select>

									</td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form"></td>
                                    <td width="99" height="35" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">����ó</td>
                                    <td width="316" height="35" id="form">
									<select name="tel1">
									<option>����ó�Է�</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="051">051</option>
									<option value="02">02</option>
									<option value="053">053</option>
									<option value="052">052</option>
									<option value="041">041</option>
									<option value="042">042</option>
									<option value="043">043</option>-
									<input type="text" name="tel2" size="10">-<input type="text" name="tel3" size="10"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form"></td>
                                    <td width="99" height="35" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">�̸���</td>
                                    <td width="316" height="35" id="form"><input type="text" name="email" size="30"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form"></td>
                                    <td width="99" height="35" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">����</td>
                                    <td width="316" height="35" id="form"><input type="text" name="title" size="70"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="105" rowspan="2"></td>
                                    <td width="99" height="33"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">����</td>
                                    <td width="316" height="105" rowspan="2"><textarea name="content" rows="10" cols="70" style="border:1px solid #ddd;"scrolling="yes"></textarea></td>
                                </tr>
                                <tr>
                                    <td width="99" height="71"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="50" id="button"></td>
                                    <td width="99" height="50" id="button"></td>
                                    <td width="480" height="50" id="button">
                                    <p align="right"><img src="img/submit.gif" onClick="check_val()"><a href=javascript:document.form.reset()><img src="img/cut.gif" border="0"></a>

</p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
            </table>
        </td>
    </tr>
</table>
</form>
</body>

</html>