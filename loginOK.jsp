<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>


<html><center>
<img src="./images/login-(2)_01.jpg" border=0></center>

<%
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

    String mid = request.getParameter("mid");           
    String pass = request.getParameter("pass"); 

    String jsql = "select  *  from member where memId = ? "; 
    PreparedStatement pstmt = con.prepareStatement(jsql);
    pstmt.setString(1, mid);

    ResultSet rs = pstmt.executeQuery(); 


    if( rs.next() )
    {
        if (pass.equals(rs.getString("memPassword")))  
        {
             session.setAttribute("sid", mid);

             response.sendRedirect("index.jsp");

		 }
		 
		 else { 
%>
      <br>
	  <center>
      <font size=6><b>[로그인 오류!]</b></font><p><br>
      <font color=black size=2>
            비밀번호가 잘못 되었습니다.  다시 확인해 주세요!
			
<form name="login" method="post" action="loginOK.jsp">  
     <table border=0 cellpadding=5 style="font-size:10pt;font-family:맑은 고딕">
         <tr>
			<td><input type="text" name="mid"  style="width:120;height=30"></td>
			<td rowspan=2><a href="javascript:login_check()" style="font-size:10pt;font-family:맑은 고딕">
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
			<td><img src="./images/login-(2)_17.gif" border=0></td>
			<td>
			<a href="insertMember.jsp">
			<img src="./images/login-(2)_18.jpg" border=0></a><td>
			 </td>
		</tr>
      </table><br> <br>
	  
	  <img src="./images/login-(2)_20.jpg" border=0>
		 
  </form>
		<br><br>

		</center>
<%       
        }

    }
	
	else { 
 %>
       <br><br><br>
	  <center>
      <font size=6><b>[로그인 오류!]</b></font><p><br>
	  <font color=black size=2>
			아이디가 존재하지 않습니다.	 다시 확인해 주세요!

	<form name="login" method="post" action="loginOK.jsp">  
     <table border=0 cellpadding=5 style="font-size:10pt;font-family:맑은 고딕">
         <tr>
			<td><input type="text" name="id"  style="width:120;height=30"></td>
			<td rowspan=2><a href="javascript:login_check()" style="font-size:10pt;font-family:맑은 고딕">
			<img src="./images/login-(2)_06.jpg" border=0></a></td>
         </tr>
         <tr>
            <td><input type="password" name="pass"  style="width:120;height=30"  onkeydown="onEnterSubmit()"></td>
	     </tr>
		 </table>
		 <br>
		 <table>
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
<%
   } 
%>

</body>
</html>
<%@include file="_tail.jsp" %>