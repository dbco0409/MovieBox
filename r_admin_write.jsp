<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>  
<%@include file="_head.jsp"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>r_admin_write</title>
<style type="text/css">
td {font-size:10pt; color:black}
</style>
</head>
<%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px;z-index:1; visibility:visible;">
<p>&nbsp;</p>
<form action="r_admin_result.jsp" method="post" name="form">
<table width="749" align="center" cellpadding="0" cellspacing="0" height="447">
    <tr>
        <td width="104" height="15"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">��ȭ����</td>
        <td width="613" height="30">
<input type="text" name="subject"> <input type="checkbox" name="okay" value="y" checked>����<input type="checkbox" name="okay" value="n">��������
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">����</td>
        <td width="613">
            <table width="607" cellpadding="0" cellspacing="0">
                    <tr>
                    <td width="258">
                      
                            <p><input type="text" name="str_m" size="9"> ��<input type="text" name="str_d" size="9"> ��</p>
                       
                    </td>
                        <td width="99"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">�󿵵��</td>
                    <td width="250">
                  
                            <p><input type="text" name="level" size="9"></p>
                      
                    </td>
                    </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">�ð�</td>
        <td width="613">
            <table width="608" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="56">1��</td>
                    <td width="532">
					<input type="checkbox" name="time" value="1�� 08:00">08:00
					<input type="checkbox" name="time" value="1�� 08:50">08:50
					<input type="checkbox" name="time" value="1�� 10:35">10:35
					<input type="checkbox" name="time" value="1�� 11:25">11:35
					<input type="checkbox" name="time" value="1�� 13:10">13:10
					<input type="checkbox" name="time" value="1�� 15:45">15:45
					<input type="checkbox" name="time" value="1�� 16:35">16:35
					<input type="checkbox" name="time" value="1�� 18:20">18:20
					<input type="checkbox" name="time" value="1�� 19:10">19:10
					<input type="checkbox" name="time" value="1�� 20:55">20:55
					<input type="checkbox" name="time" value="1�� 21:45">21:45
					<input type="checkbox" name="time" value="1�� 23:30">23:30
					<input type="checkbox" name="time" value="1�� 24:20">24:20
					</td>
                </tr>
                <tr>
                    <td width="56">2��</td>
                    <td width="532"><input type="checkbox" name="time" value="2�� 08:00">08:00
					<input type="checkbox" name="time" value="2�� 08:50">08:50
					<input type="checkbox" name="time" value="2�� 10:35">10:35
					<input type="checkbox" name="time" value="2�� 11:25">11:35
					<input type="checkbox" name="time" value="2�� 13:10">13:10
					<input type="checkbox" name="time" value="2�� 15:45">15:45
					<input type="checkbox" name="time" value="2�� 16:35">16:35
					<input type="checkbox" name="time" value="2�� 18:20">18:20
					<input type="checkbox" name="time" value="2�� 19:10">19:10
					<input type="checkbox" name="time" value="2�� 20:55">20:55
					<input type="checkbox" name="time" value="2�� 21:45">21:45
					<input type="checkbox" name="time" value="2�� 23:30">23:30
					<input type="checkbox" name="time" value="2�� 24:20">24:20</td>
                </tr>
                <tr>
                    <td width="56">3��</td>
                    <td width="532"><input type="checkbox" name="time" value="3�� 08:00">08:00
					<input type="checkbox" name="time" value="3�� 08:50">08:50
					<input type="checkbox" name="time" value="3�� 10:35">10:35
					<input type="checkbox" name="time" value="3�� 11:25">11:35
					<input type="checkbox" name="time" value="3�� 13:10">13:10
					<input type="checkbox" name="time" value="3�� 15:45">15:45
					<input type="checkbox" name="time" value="3�� 16:35">16:35
					<input type="checkbox" name="time" value="3�� 18:20">18:20
					<input type="checkbox" name="time" value="3�� 19:10">19:10
					<input type="checkbox" name="time" value="3�� 20:55">20:55
					<input type="checkbox" name="time" value="3�� 21:45">21:45
					<input type="checkbox" name="time" value="3�� 23:30">23:30
					<input type="checkbox" name="time" value="3�� 24:20">24:20</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">�� �¼���</td>
        <td width="613">
          <input type="text" name="sit" value="0"> 
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">������ ��ȭ��</td>
        <td width="613">
          
		<input type="checkbox" name="rctg" value="����">����
		<input type="checkbox" name="rctg" value="���빮">���빮
		<input type="checkbox" name="rctg" value="��">��
		<input type="checkbox" name="rctg" value="���">���
		<input type="checkbox" name="rctg" value="��Ʈ��">��Ʈ��
		<input type="checkbox" name="rctg" value="�ڿ���">�ڿ���
		<input type="checkbox" name="rctg" value="����">����
		<input type="checkbox" name="rctg" value="������">������
		<input type="checkbox" name="rctg" value="����">����
		<input type="checkbox" name="rctg" value="Ų�ؽ�">Ų�ؽ�<br/>
		<input type="checkbox" name="rctg" value="����">����
		<input type="checkbox" name="rctg" value="����">����
		<input type="checkbox" name="rctg" value="õ��">õ��
		<input type="checkbox" name="rctg" value="����">����
		<input type="checkbox" name="rctg" value="���">���
		<input type="checkbox" name="rctg" value="�ؿ��">�ؿ��
		<input type="checkbox" name="rctg" value="����">����
			<input type="checkbox" name="rctg" value="����">����
		<input type="checkbox" name="rctg" value="����">����
		<input type="checkbox" name="rctg" value="����">����
		<input type="checkbox" name="rctg" value="����">����
		
		
        </td>
    </tr>
    <tr>
        <td width="104" height="40">&nbsp;</td>
            <td width="613" height="60" valign="bottom">
                <p align="center"><img src="img/submit2.gif" onclick="submit()"><a href="m_modify_2.jsp"><img src="img/back.gif" border="0"></a></p>
            </td>
    </tr>
</table>
</form>
</div>
<p>&nbsp;</p>
</body>

</html>