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

		int no = Integer.parseInt(request.getParameter("no"));  
		int actorno = Integer.parseInt(request.getParameter("actorno"));  

		String jsql = "delete from movie_actor where actorno =?";

			  PreparedStatement pstmt2 = con.prepareStatement(jsql);
			  pstmt2.setInt(1, actorno);
			  pstmt2.executeUpdate();
	
			  response.sendRedirect("actor_modify.jsp?no="+no);
         
	
     %> 
