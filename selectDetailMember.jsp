<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<script language="javascript" src="js_package.js">
</script>
<body>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

  	 String key = request.getParameter("id");

	 String jsql = "select * from member where memId = ?";   
     PreparedStatement  pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1, key);

	 ResultSet rs = pstmt.executeQuery();  //SQL�� ����	
	 rs.next();

	 String id = rs.getString("memId");
	 String password =  rs.getString("memPassword");	
	 String name = rs.getString("memName");
 	 String joomin = rs.getString("memJoomin");
	 String phone =  rs.getString("memPhone");
	 String zipcode =  rs.getString("memZipcode");
	 String address1 =  rs.getString("memAddress1");
	 String address2 =  rs.getString("memAddress2");
 	 String email =  rs.getString("memEmail");
	 String mailing =  rs.getString("memMailing");
%>

<center>
<br>
	<font color="blue" size='6'><b> [ȸ������ ��ȸ]   </b></font><p>
	<img src=".\images\medify_02.gif"  border=0>
<table border="2" cellpadding="10" style="font-size:10pt;font-family:���� ���">
		<tr><td width=100>ID</td><td width=200><%=id%></td></tr>
		<tr><td>��й�ȣ</td><td><%=password%></td></tr>
		<tr><td>����</td><td><%=name%></td></tr>
		<tr><td>�ֹι�ȣ</td><td><%=joomin%></td></tr>
		<tr><td>�����ȣ</td><td><%=zipcode%></td></tr>
		<tr><td>�ּ�</td><td><%=address1%> <%=address2%></td></tr>
		<tr><td>email</td><td><%=email%></td></tr>
		<tr><td>���ϸ�</td><td><%=mailing%></td></tr>
</table><br>
<br>

<a href="allupdataMember.jsp?id=<%=id%>" style="font-size:10pt;font-family:���� ���">����</a>&nbsp;&nbsp;
<a href="alldeleteMemberResult.jsp?id=<%=id%>" style="font-size:10pt;font-family:���� ���">����</a>&nbsp;&nbsp;
<a href="allMember.jsp" style="font-size:10pt;font-family:���� ���">���</a>
<br><br>

</center>

<%
    } catch (Exception e) {
    	out.println(e);
}
%>
</body>
</html>
<%@include file="tail.jsp" %>