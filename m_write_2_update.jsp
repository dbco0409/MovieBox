<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> movie2_write </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
 </head>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}

#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
</style>
 <body>
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

	 String title=request.getParameter("title");
		String profil=request.getParameter("image");
		String type=request.getParameter("type");
		String name=request.getParameter("name");
		String content=request.getParameter("content");
		
		String title1=request.getParameter("title1");
		String profil1=request.getParameter("profil1");
		String type1=request.getParameter("type1");
		String name1=request.getParameter("name1");
		String content1=request.getParameter("content1");

String title2=request.getParameter("title2");
	String profil2=request.getParameter("profil2");
		String type2=request.getParameter("type2");
		String name2=request.getParameter("name2");
		String content2=request.getParameter("content2");
 


	String jsql2 = "INSERT INTO movie (title, profil, type, name, profiltxt) VALUES(?,?,?,?,?)";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setString(1, title);
	pstmt2.setString(2, profil);
    pstmt2.setString(3, type);
    pstmt2.setString(4, name);
	   pstmt2.setString(5, content);

  pstmt2.executeUpdate();

	String jsql3 = "INSERT INTO movie (title, profil, type, name, profiltxt) VALUES(?,?,?,?,?)";
	PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	pstmt3.setString(1, title1);
	pstmt3.setString(2, profil1);
    pstmt3.setString(3, type1);
    pstmt3.setString(4, name1);
	   pstmt3.setString(5, content1);

  pstmt3.executeUpdate();

  	String jsql4 = "INSERT INTO movie (title, profil, type, name, profiltxt) VALUES(?,?,?,?,?)";
	PreparedStatement pstmt4 = con.prepareStatement(jsql4);
	pstmt4.setString(1, title2);
	pstmt4.setString(2, profil2);
    pstmt4.setString(3, type2);
    pstmt4.setString(4, name2);
	   pstmt4.setString(5, content2);

  pstmt4.executeUpdate();
response.sendRedirect("m_write_2.jsp?title=title");
%>

