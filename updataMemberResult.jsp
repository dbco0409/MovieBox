<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<body>

<%
	request.setCharacterEncoding("euc-kr");

	String mid = request.getParameter("mid");   
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

	String mailing = request.getParameter("mailing");
	if (mailing == "yes") {
		mailing = "정보 메일 받음";
	}
	else {
		mailing = "정보 메일 받지 않음";
	}
			
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "INSERT INTO member (memPassword, memName, ";
	 jsql = jsql + "memJoomin, memPhone, memZipcode,memAddress1,memAddress2, ";
	 jsql = jsql + "memEmail, memMailing, memId) VALUES (?,?,?,?,?,?,?,?,?,?)";	

	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,password);
	 pstmt.setString(2,name);
	 pstmt.setString(3,joomin);
	 pstmt.setString(4,phone);
	 pstmt.setString(5,zipcode);
	 pstmt.setString(6,address1);
	 pstmt.setString(7,address2);
	 pstmt.setString(8,email);
	 pstmt.setString(9,mailing);
	 pstmt.setString(10,mid);

	 pstmt.executeUpdate(); 
	                                       
%>
<center>
	<img src=".\images\medify_01_02.gif"  border=0><p>
	<img src=".\images\medify_02.gif"  border=0>

<table style="font-size:10pt;font-family:맑은 고딕">
	<tr>
		<td ><img src=".\images\medify_03.gif"  border=0></td>
		<td ><%=mid%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_07.gif"  border=0></td>
		<td><%=password%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_10.gif"  border=0></td>
		<td><%=name%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_30.gif"  border=0></td>
		<td><%=joomin%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_13.gif"  border=0></td>
		<td>
			<%=phone%>
		</td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_16.gif"  border=0></td>
		<td><%=zipcode%><%=address1%><%=address2%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_19.gif"  border=0></td>
		<td><%=email%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	<tr>
		<td><img src=".\images\medify_22.gif"  border=0></td>
		<td><%=mailing%></td>
	</tr>
	<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	</tr>
	</table>
<p>
 <br>
</center>
</body>
</html>
<%@include file="_tail.jsp" %>