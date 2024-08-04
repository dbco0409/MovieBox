<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<body>

<%
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");   
	String password = request.getParameter("password");
	String	name = request.getParameter("name");

	String	joomin1 = request.getParameter("joomin1");
	String	joomin2 = request.getParameter("joomin2");
	String  joomin = joomin1 + "-" + joomin2;

	String	hp1 = request.getParameter("hp1");
	String	hp2 = request.getParameter("hp2");
	String	hp3 = request.getParameter("hp3");
	String	phone = hp1 + "-"+ hp2 + "-" + hp3;

	String	zipcode = request.getParameter("zipcode");
	String	address1 = request.getParameter("address1");
	String	address2 = request.getParameter("address2");

	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String email = email1 + "@" + email2;


try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "update member set memPassword=?, memName=?, ";
	 jsql = jsql + "memJoomin=?, memPhone=?, memZipcode=?, ";
	 jsql = jsql + "memAddress1=?, memAddress2=?, memEmail=? where memId=? ";

	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,password);
	 pstmt.setString(2,name);
	 pstmt.setString(3,joomin);
	 pstmt.setString(4,phone);
	 pstmt.setString(5,zipcode);
	 pstmt.setString(6,address1);
	 pstmt.setString(7,address2);
	 pstmt.setString(8,email);
	 pstmt.setString(9,id);

	 pstmt.executeUpdate(); 
	                                       

	 String jsql2 = "select * from member where memId=?";
	 PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	 pstmt2.setString(1,id);

	 ResultSet rs = pstmt2.executeQuery();
	 rs.next();
%>
<center>
	<font color="blue" size='6'><b> [ 회원정보 수정완료]   </b></font><p>
	<img src=".\images\medify_02.gif"  border=0>

<table style="font-size:10pt;font-family:맑은 고딕">
	<tr>
		<td ><img src=".\images\medify_03.gif"  border=0></td>
		<td ><%=rs.getString("memId")%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_07.gif"  border=0></td>
		<td><%=rs.getString("memPassword")%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_10.gif"  border=0></td>
		<td><%=rs.getString("memName")%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_30.gif"  border=0></td>
		<td><%=rs.getString("memJoomin")%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_13.gif"  border=0></td>
		<td>
			<%=rs.getString("memPhone")%>
		</td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_16.gif"  border=0></td>
		<td><%=rs.getString("memZipcode")%><%=rs.getString("memAddress1")%><%=rs.getString("memAddress2")%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_19.gif"  border=0></td>
		<td><%=rs.getString("memEmail")%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	</table>

	<a href="allMember.jsp" style="font-size:10pt;font-family:맑은 고딕">돌아가기</a>

<%
    } catch (Exception e) {
    	out.println(e);
}
%>
<p>
 <br>
</center>
</body>
</html>
<%@include file="tail.jsp" %>