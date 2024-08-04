<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*, java.text.*" %>     
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title>notice 글쓰기 결과</title>
 </head>
<%

		request.setCharacterEncoding("euc-kr");

		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속           

 	String jsql = "select MAX(no) from notice";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery(); 
		String ctg=request.getParameter("ctg");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String datee=(new java.util.Date()).toLocaleString();
		String[ ]  dateArr = datee.split(" ");   
		String date=dateArr[0]+dateArr[1]+dateArr[2];

 	
	int no;
    if (rs == null) {  
        no = 1;
    }  else {    	  
       	rs.next();
       	no = rs.getInt(1) + 1;
    } 
   	
    rs.close();    
 


	String jsql2 = "INSERT INTO notice (no, ctg, title, content,date) VALUES(?,?,?,?,?)";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setInt(1, no);
	pstmt2.setString(2, ctg);
    pstmt2.setString(3, title);
    pstmt2.setString(4, content);
	pstmt2.setString(5, date);

  
  pstmt2.executeUpdate();
response.sendRedirect("admin_list_2.jsp");

%>

 <body>
  
 </body>
</html>
