<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>         
<html>
   <head><title>�Խ��� ���� ���� ó��</title></head>   
   <%
      request.setCharacterEncoding("euc-kr");

	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB�� ����       

     String ctg=request.getParameter("ctg");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		int no = Integer.parseInt(request.getParameter("no"));  

	

       String jsql2 = "update notice set ctg = ?, title = ?, content = ? where no = ?";
          PreparedStatement pstmt2 = con.prepareStatement(jsql2);
          pstmt2.setString(1, ctg);
          pstmt2.setString(2, title);
		  pstmt2.setString(3, content);
		   pstmt2.setInt(4, no);

          pstmt2.executeUpdate();
          

          response.sendRedirect("notice_list.jsp");
     
     %>
 
    
    </body>
</html>