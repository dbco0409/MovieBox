<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
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

     String jsql = "select * from member";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 ResultSet  rs = pstmt.executeQuery();
%>
<center>
<p>&nbsp;</p>
<img src="img/member_admin.gif"><p>
<table border="1" cellpadding="10" style="font-size:10pt;font-family:���� ���">
	<tr>
		<td>ID</td><td>����</td><td>����ó</td>	
		<td>�ּ�</td><td>�̸���</td><td><b>[����]</b></td><td><b>[����]</b></td>
	</tr>	

<%
		while(rs.next()){
			String mid = rs.getString("memId");   //  ���� �� �Լ����� �μ����� ���̺��� �� �ʵ�����
    		String password =  rs.getString("memPassword");	
			String name = rs.getString("memName");
    		String joomin =  rs.getString("memJoomin");	
    		String phone =  rs.getString("memPhone");	
			String address1= rs.getString("memAddress1");
			String address2= rs.getString("memAddress2");
			String email =  rs.getString("memEmail");	
%>
   <tr>                     <!--  �������� ��Ÿ�� ������ ��ũ�κп� ȸ�� ���̵� �Բ� �Ѱ��� -->
 	  <td> <a href="selectDetailMember.jsp?id=<%=mid%>"><%=mid%></a></td>
	  <td><%=name%></td>
	  <td><%=phone%></td>	
 	  <td><%=address1%> <%=address2%></td>
	  <td><%=email%></td>
	  <td align=center><a href="allupdataMember.jsp?id=<%=mid%>">Yes</a></td>
  	  <td align=center><a href="alldeleteMember.jsp?id=<%=mid%>">Yes</a></td>
  </tr>
<%
		} 
%>
</table><p>
<br>
 <a href="r_admin_list.jsp" style="font-size:10pt;font-family:���� ���">�����ڸ�� ����������</a>
 &nbsp&nbsp&nbsp

<%
    } catch (Exception e) {
      out.println(e);	
}
%>
</body>
</html>
<%@include file="tail.jsp" %>