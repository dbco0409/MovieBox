<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>

<script language="javascript" src="js_package.js"> 
</script>
<html><body>


<body onLoad="login_focus()">
<center>
<img src="./images/idpass_01.gif" border=0>
<img src="./images/idpass_02.gif" border=0>
<br>

<form name="search" method="post" >
<table border=0 cellpadding=5 style="font-size:10pt;font-family:¸¼Àº °íµñ">
         <tr>
			<td><img src="./images/idpass_05.gif" border=0></td>
			<td><input type="text" name="name"  style="width:135;height=30"></td>
         </tr>
		 <tr>
			<td><img src="./images/idpass_09.gif" border=0></td>
			<td><input type=text name="joomin1" size=6> -
				    <input type=text name="joomin2" size=7></td>
         </tr>
</table>
<br>
<img src="./images/idpass_14.gif" border=0 onClick=javascript:searchId()><p>

<img src="./images/idpass_16.gif" border=0>
<img src="./images/idpass_17.gif" border=0>

<table border=0 cellpadding=5 style="font-size:10pt;font-family:¸¼Àº °íµñ">
         <tr>
			<td><img src="./images/idpass_20.gif" border=0></td>
			<td><input type="text" name="id"  style="width:135;height=30"></td>
         </tr>
		 <tr>
			<td><img src="./images/idpass_24.gif" border=0></td>
			<td><input type="text" name="name2"  style="width:135;height=30"></td>
         </tr>
		 <tr>
			<td><img src="./images/idpass_28.gif" border=0></td>
			<td><input type=text name="joomin3" size=6> -
				    <input type=text name="joomin4" size=7></td>
         </tr>
</table>
<br>
<img src="./images/idpass_14.gif" border=0 onClick=javascript:searchPassword()>


</form>
</body>
</html>

<%@include file="tail.jsp" %>