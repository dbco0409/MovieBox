<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>         
<html>
   <head><title>�Խ��� ���� ���� ó��</title></head>    
   <%
    String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	  Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		
		int reserve_no = Integer.parseInt(request.getParameter("no"));  

		String jsql = "delete from reserve_adm where reserve_no =?";

			  PreparedStatement pstmt2 = con.prepareStatement(jsql);
			  pstmt2.setInt(1, reserve_no);
			  pstmt2.executeUpdate();
	
			  response.sendRedirect("r_admin_list.jsp");
         
	
     %> 