<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.sql.*" %>
<html>
<body>

<%

request.setCharacterEncoding("euc-kr");

try {

 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	 String name = request.getParameter("name");
	 String joomin1 = request.getParameter("joomin1");
	 String joomin2 = request.getParameter("joomin2");
	 String joomin = joomin1 +"-"+joomin2;
	
     String jsql = "select * from member where memName = ? and memJoomin = ?";       
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1, name);
	 pstmt.setString(2, joomin);

  	 ResultSet rs = pstmt.executeQuery();	
%>	

<center>
<img src="./images/idpass_01.gif" border=0>
<img src="./images/idpass_02.gif" border=0>

<table>
<tr><td>
<%
	 if(rs.next())
	 {
		String id = rs.getString("memId"); %>

회원님의 아이디는 <%=id%> 입니다.<%

 } else %>등록되지 않은 회원 입니다.<%

}catch (Exception e) {
	out.println(e);
	} 
%>
<br><br><br></td></tr></table>
</body>
</html>
<%@include file="tail.jsp" %>