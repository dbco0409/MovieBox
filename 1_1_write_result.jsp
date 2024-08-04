<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*, java.text.*" %>     
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title>1:1문의</title>
 </head>
<%

		request.setCharacterEncoding("euc-kr");

	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속           

 	String jsql = "select MAX(no) from 1_1";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery(); 
String name=request.getParameter("name");
		String ctg=request.getParameter("ctg");
		String movie=request.getParameter("selTwo");
		String tel=request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
		String email=request.getParameter("email");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String date=(new java.util.Date()).toLocaleString();

 	
	int no;
    if (rs == null) {  
        no = 1;
    }  else {    	  
       	rs.next();
       	no = rs.getInt(1) + 1;
    } 
   	
    rs.close();    
 


	String jsql2 = "INSERT INTO 1_1 (no, name, ctg, movie, phone, email, title, content, date) VALUES(?,?,?,?,?,?,?,?,?)";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setInt(1, no);
	pstmt2.setString(2, name);
    pstmt2.setString(3, ctg);
    pstmt2.setString(4, movie);
    pstmt2.setString(5, tel);
    pstmt2.setString(6, email);
    pstmt2.setString(7, title);
    pstmt2.setString(8, content);
    pstmt2.setString(9, date);
  
  pstmt2.executeUpdate();
  response.sendRedirect("1_1_write.jsp");

%>

 <body>
  
 </body>
</html>
