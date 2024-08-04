<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>     
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> New Document </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
 </head>

 <body>
  <%

     request.setCharacterEncoding("euc-kr");
 	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	  Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	   int no = Integer.parseInt(request.getParameter("no"));              
	   String  jsql = "select * from 1_1 where no = ?";
       PreparedStatement pstmt = con.prepareStatement(jsql);
       pstmt.setInt(1, no);
       ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
           rs.next();
           String name = rs.getString("name").trim();
           String ctg = rs.getString("ctg").trim();
           String movie = rs.getString("movie").trim();
           String title = rs.getString("title").trim();
           String content = rs.getString("content");
           
	   }

	   	String r_title=request.getParameter("r_title");
		String r_content=request.getParameter("r_content");
		String r_date=(new java.util.Date()).toLocaleString();
		String[ ]  dateArr = r_date.split(" ");   
		String datea=dateArr[0]+dateArr[1]+dateArr[2];


	   String jsql2 = "INSERT INTO r1_1 (r_no, r_title, r_content, date) VALUES(?,?,?,?)";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setInt(1, no);
	pstmt2.setString(2, r_title);
    pstmt2.setString(3, r_content);
    pstmt2.setString(4, datea);

pstmt2.executeUpdate();
response.sendRedirect("admin_list_4.jsp");
%>

 <body>
  
 </body>
</html>