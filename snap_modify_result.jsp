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
  <title>notice �۾��� ���</title>
 </head>
<%

		request.setCharacterEncoding("euc-kr");
		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB�� ����           

 int no = Integer.parseInt(request.getParameter("no"));  
		String image1=request.getParameter("image1")+","+request.getParameter("image2");
		String image2=request.getParameter("image3")+","+request.getParameter("image4");
		String image3=request.getParameter("image5")+","+request.getParameter("image6");

		


	String jsql2 = "update movie_snap set image1=?, image2=?, image3=? where no=?";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setString(1, image1);
    pstmt2.setString(2, image2);
    pstmt2.setString(3, image3);
	    pstmt2.setInt(4, no);
	
  pstmt2.executeUpdate();

response.sendRedirect("snap_modify.jsp?no="+no);
%>

