<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*, java.text.*" %>     
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title>faq�۾��� ���</title>
 </head>
<%

		request.setCharacterEncoding("euc-kr");

		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB�� ����           

 	String jsql = "select MAX(no) from faq";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery(); 
		String ctg=request.getParameter("ctg");
		String movie=request.getParameter("title");
		String content=request.getParameter("content");

 	
	int no;
    if (rs == null) {  
        no = 1;
    }  else {    	  
       	rs.next();
       	no = rs.getInt(1) + 1;
    } 
   	
    rs.close();    
 


	String jsql2 = "INSERT INTO faq (no, ctg, title, content) VALUES(?,?,?,?)";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setInt(1, no);
	pstmt2.setString(2, ctg);
    pstmt2.setString(3, title);
    pstmt2.setString(4, content);
  
  pstmt2.executeUpdate();
  response.sendRedirect("faq_list.jsp");

%>

 <body>
  
 </body>
</html>
