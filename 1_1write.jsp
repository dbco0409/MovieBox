<%@ page contentType="text/html;charset=euc-kr"%>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>1_1_write</title>
<meta name="generator" content="Namo WebEditor">
<style type="text/css">
body {
overflow-x:hidden;
}
td{font-size:9pt;}
#form{background-image:url('img/form_beg.gif');}
#button{background-image:url('img/beg_on.gif');}
input {border:1px solid #ddd; height:22px;}

</style>
<script src="1_1write.js" language="javascript"></script>


</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onLoad="view_cat1(window.document.Form);">
<form name="1_1" method="post" action="1_1_write_result.jsp">
<table width="673" cellpadding="0" cellspacing="0">
    <tr>
        <td width="673">
            <table width="673" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="673" height="42">&</td>
                </tr>
                    <tr>
                        <td width="673" align="center" valign="top">
                            <table width="673" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="663">
                                        <p><img src="img/1.1.gif" width="673" height="41" border="0"></p>
                                    </td>
                                </tr>
                            </table>
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
                                    <td width="630" height="50" colspan="3"><input type="radio" value="1" name="ok">������ <input type="radio" value="2" name="ok">������������</td>
                                </tr>
                                <tr>
                                    <td width="630" height="5" colspan="3"><img src="img/bar.gif" width="625" height="12" border="0"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form">&</td>
                                    <td width="99" height="35" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">�̸�</td>
                                    <td width="316" height="35" id="form"><input type="text" name="name" size="15"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form">&</td>
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
                                    <td width="15" height="35" id="form">&</td>
                                    <td width="99" height="35" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">��ȭ��</td>
                                    <td width="316" height="35" id="form">
									
									<select name="selOne" onchange="doChange(this, 'selTwo')">
<option>��������</option>
<option value="1">����</option>
<option value="2">���/��õ</option>
<option value="3">����/����/��û</option>
<option value="4">�λ�/���</option>
<option value="5">����/����</option>
<option value="6">����</option>
<option value="7">����</option>
</select>

<select name=movie>
<option>��ȭ������</option>
</select>

									</td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form">&</td>
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
									<option value="043">043</option>
									<input type="text" name="tel2" size="10">-<input type="text" name="tel3" size="10"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form">&amp;</td>
                                    <td width="99" height="35" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">�̸���</td>
                                    <td width="316" height="35" id="form"><input type="text" name="email" size="30"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="35" id="form">&amp;</td>
                                    <td width="99" height="35" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">����</td>
                                    <td width="316" height="35" id="form"><input type="text" name="title" size="70"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="105" rowspan="2">&amp;</td>
                                    <td width="99" height="33"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">����</td>
                                    <td width="316" height="105" rowspan="2"><textarea name="content" rows="10" cols="70" style="border:1px solid #ddd;"scrolling="yes"></textarea></td>
                                </tr>
                                <tr>
                                    <td width="99" height="71">&amp;</td>
                                </tr>
                                <tr>
                                    <td width="15" height="50" id="button">&amp;</td>
                                    <td width="99" height="50" id="button">&amp;</td>
                                    <td width="316" height="50" id="button">
                                    <p align="right"><input type="image" src="img/submit.gif" width="49" height="30" onClick="checkValue()"><input type="reset" src="img/cut.gif" width="49" height="30"></p>
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