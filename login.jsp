<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>

<script language="javascript" src="js_package.js"> 
</script>
<body onLoad="login_focus()"> 
<center>
<img src="./images/login-(2)_01.jpg" border=0>
<br><br>

<form name="login" method="post" action="loginOK.jsp" target="_parent">  
     <table border=0 cellpadding=5 style="font-size:10pt;font-family:¸¼Àº °íµñ">
         <tr>
			<td><input type="text" name="mid"  style="width:120;height=30"></td>
			<td rowspan=2><a href="javascript:login_check()" style="font-size:10pt;font-family:¸¼Àº °íµñ">
			<img src="./images/login-(2)_06.jpg" border=0></a></td>
         </tr>
         <tr>
            <td><input type="password" name="pass"  style="width:120;height=30"  onkeydown="onEnterSubmit()"></td>
	     </tr>
		 </table>
		 <br>
		 <table>

		 <tr>
			<td><img src="./images/login-(2)_10.jpg" border=0></td>
            <td>
			<a href="searchMember.jsp" >
			<img src="./images/login-(2)_11.jpg"  border=0></a>
			</td>
		</tr>
		<tr>
			<td><img src="./images/login-(2)_14.jpg" border=0></td>
			<td><a href="searchMember.jsp" >
			<img src="./images/login-(2)_15.jpg"  border=0></a>
			</td>
		</tr>
		<tr>
			<td><img src="./images/login-(2)_17.gif" border=0></td>
			<td>
			<a href="insertMember.jsp">
			<img src="./images/login-(2)_18.jpg" border=0></a><td>
			 </td>
		</tr>
      </table><br> <br>
	  
	  <img src="./images/login-(2)_20.jpg" border=0>
		 
  </form>

 </center>                
</body>  
</html> 
<%@include file="_tail.jsp" %>