<%@ page contentType="text/html;charset=euc-kr" %>
<%@include file="_head.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> movie1_write </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
 </head>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}

#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
</style>
<script language="javascript" src="movie_write.js">
</script>

 <body>
 <%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
 <form action="m_write_1_result.jsp" method="post" name="form">
 <img src="img/m_write_1.gif">
  <table width="700" cellpadding="3" cellspacing="3">
    <tr>
        <td width="152"><img src="img/icon.gif" />��ȭ����</td>
        <td width="400"><input type="text" name="title" size="55"></td>
       
    </tr>
    <tr>
        <td width="200"><img src="img/icon.gif" />������</td>
        <td width="400"><input type="text" name="stitle" size="55"></td>
    </tr>
	<tr>
	<td width="400"><img src="img/icon.gif"/>������</td>
        <td width="400"><input type="text" name="date" size="35" value="��: 2013.11.21"> <input type="radio" name="open" value="Y">���� <input type="radio" name="open" value="N">�������� </td>
	</tr>
    <tr>
        <td width="200"><img src="img/icon.gif"/>��ȭ��</td>
        <td width="406">
		<input type="checkbox" name="mctg" value="������">������ 
		<input type="checkbox" name="mctg" value="3D">3D
			<input type="checkbox" name="mctg" value="���̸߽�">���̸߽�
				<input type="checkbox" name="mctg" value="����ö���">����ö���
				<input type="checkbox" name="mctg" value="4D">4D
			</td>
    </tr>
	<tr>
	        <td width="400"><img src="img/icon.gif"/>��ȭ�ð�</td>
        <td width="400"><input type="text" name="time" size="20">��</td>
	</tr>
    <tr>
        <td width="200" height="9"><img src="img/icon.gif"/>���</td>
        <td width="216" height="18">
		<select name="level">
		<option>==����==</option>
		<option value="��ü������">All</option>
		<option value="12���̻�">12��</option>
		<option value="15���̻�">15��</option>
		<option value="19���̻�(û�ҳ�����Ұ�)">19��(û�ҳ�����Ұ�)</option>

		</td>
		</tr>
		<tr>
        <td width="216" height="18"><img src="img/icon.gif"/>����</td>
        <td width="216" height="18"><input type="text" name="director" size="55"></td>
		</tr>
	<tr>
	 <td width="506"><img src="img/icon.gif"/>�帣</td>
        <td width="500"><br>
		<input type="checkbox" name="ctg" value="�׼�/����">�׼�/����
		<input type="checkbox" name="ctg" value="�ִϸ��̼�">�ִϸ��̼�
		<input type="checkbox" name="ctg" value="�ڸ޵�">�ڸ޵�
		<input type="checkbox" name="ctg" value="��ť���͸�">��ť���͸�
		<input type="checkbox" name="ctg" value="���">���
		<input type="checkbox" name="ctg" value="����ƽ">����ƽ</br>
		<br>
		<input type="checkbox" name="ctg" value="����/���">����/���
		<input type="checkbox" name="ctg" value="����">����
		<input type="checkbox" name="ctg" value="����">����
		<input type="checkbox" name="ctg" value="������">������
		<input type="checkbox" name="ctg" value="�̽��͸�/����">�̽��͸�/����
		<input type="checkbox" name="ctg" value="SF">SF
		</br>
		<br>
		<input type="checkbox" name="ctg" value="�θǽ�">�θǽ�
		<input type="checkbox" name="ctg" value="������">������
		<input type="checkbox" name="ctg" value="����">����
		<input type="checkbox" name="ctg" value="���α�">���α�
			<input type="checkbox" name="ctg" value="��Ÿ">��Ÿ
			<br>
		</select>
		
		</td>
	</tr>
	<tr>
	<td width="217"><img src="img/icon.gif"/>�⿬��</td>
        <td width="217"><input type="text" name="actor" size="55"></td>
	</tr>
	<tr>
	  <td width="217"><img src="img/icon.gif"/>������ ��ũ</td>
        <td width="217"><input type="text" name="image" size="55"></td>
	</tr>
	<tr>
	  <td width="217"><img src="img/icon.gif"/>Ȩ������ �ּ�</td>
        <td width="217"><input type="text" name="site" size="55"></td>
	</tr>
    <tr>
        <td width="700" height="4" colspan="4"><textarea name="content" rows="42" cols="90" style="border:1px solid #ddd;"scrolling="yes">��ȭ�� ���� �������� ������.</textarea></td>
    </tr>
	<tr>
        <td width="700" height="4" colspan="4" align="right"><img src="img/next.gif" onclick="check_val()"><a href="movie_01.list.jsp"><img src="img/back.gif" border="0"></a></td>
    </tr>

</table>
</form>
 </body>
</html>
