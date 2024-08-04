<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>         
<html>
   <head><title>게시판 내용 삭제 처리</title></head>    
   <%
    	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	  Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		
		int no = Integer.parseInt(request.getParameter("no"));  

		String jsql = "delete from movie where no =?";

			  PreparedStatement pstmt2 = con.prepareStatement(jsql);
			  pstmt2.setInt(1, no);
			  pstmt2.executeUpdate();
	
			  response.sendRedirect("admin_list_movie_1.jsp");
         
	
     %> 
