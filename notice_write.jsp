<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>       
<%@include file="_head.jsp" %>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>notice_write</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}

#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
</style>

</head>
<script type="text/javascript">
function check_val()  
{
	if (document.form.ctg.value == "") 
	{
		alert("�з��� ���� �ؾ� �մϴ�.");
		document.form.ctg.focus();
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


<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onLoad="nameFocus()">
<%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
<form name="form" method="post" action="notice_write_result.jsp">

                            <table width="530" cellpadding="0" cellspacing="0" align="center" height="433">
                                <tr>
                                    <td width="530" height="5" colspan="3"><img src="img/bar.gif" width="625" height="12" border="0"></td>
                                </tr>
                                <tr>
                                    <td width="530" height="40" id="form" valign="middle">
									<select name="ctg">
									<option selected>�з�</option>
									<option value="��ü">��ü</option>
									<option value="��ȭ�� ����">��ȭ�� ����</option>
									</select>&nbsp;<input name="title" type="text" size="55"></td>
                                </tr>
                                <tr>
                                    <td width="316" height="15" rowspan="2" valign="top"><textarea name="content" rows="22" cols="70" style="border:1px solid #ddd;"scrolling="yes"></textarea></td>
									</tr>
									<tr>
									 <tr  align="right">
                                    <td width="510" height="15" rowspan="2" valign="top"><img src="img/submit.gif" onClick="check_val()"><a href="admin_list_2.jsp"><img src="img/cut.gif" border="0"></a></td>
									</tr>
									
									
                                </tr>
							
                               
                              
                            </table>
                     
</form>
</body>

</html>