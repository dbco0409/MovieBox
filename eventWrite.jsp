<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<script language="javascript" src="js_package.js">
</script>

<body><center>
<form name="event" method="post" action="eventWriteOK.jsp">
<table width="956" cellpadding="0" cellspacing="0">
    <tr>
        <td width="192" valign="top"><%@include file="admin.jsp"%></td>
        <td width="720">	<table width="632"  align="center">
    	<tr>
		    <td>
                <font style="font-weight:bold">��ȭ �̺�Ʈ :: </font>
                <br>
                
                <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
                <p>
                
            <table>
			<tr>
            <colgroup>
                <col width="120">
            </colgroup>
          
                        <td bgcolor="#CCCCCC">
                            &nbsp;<img src="img/point.gif"> �۹�ȣ
                        </td>
                        <td>
                            <input type="text" name ="no" size="10">
                        </td>
                    </tr>
            <tr>
            <colgroup>
                <col width="120">
            </colgroup>
          
                        <td bgcolor="#CCCCCC">
                            &nbsp;<img src="img/point.gif"> ������
                        </td>
                        <td>
                            <input type="text" name ="name" size="50">
                        </td>
                    </tr>
            <tr>
            <colgroup>
                <col width="120">
            </colgroup>
            
                        <td bgcolor="#CCCCCC">
                            &nbsp;<img src="img/point.gif"> �̺�Ʈ �Ⱓ
                        </td>
                        <td>
                            <input type="text" name ="time" size="50">
                        </td>
                    </tr>
            <tr>
            <colgroup>
                <col width="120">
            </colgroup>
            
                        <td bgcolor="#CCCCCC">
                            &nbsp;<img src="img/point.gif"> ��÷�� ��ǥ
                        </td>
                        <td>
                            <input type="text" name="lucky" size="50">
                        </td>
                    </tr>
            </table>
            <br>
            
            <textarea name ="text" cols="70" rows="30">
            </textarea>
            <table width="500">
<tr>
			<td align="left">�̹���: <input type="text" name ="image"></td>
			<td align="right">
			<img src="img/write.jpg" border=0 onClick= "submit()">
		    <a href="eventMain.jsp"><img src="img/return.jpg" border=0></a>
                </td>
            </tr>
			</table>
            
            </td>
		</tr>
	</table></td>
    </tr>
</table>
    </center>
	</form>
</body>
</html>

<%@include file="tail.jsp" %>