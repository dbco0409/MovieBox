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

 int actorno = Integer.parseInt(request.getParameter("actorno"));          
 int no = Integer.parseInt(request.getParameter("no"));          

String type=request.getParameter("type");
String profil=request.getParameter("profil");
String name=request.getParameter("name");	
String profiltxt=request.getParameter("profiltxt");
	

	String jsql2 = "update movie_actor set type=?, profil=?, name=?, profiltxt=? where actorno=?";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setString(1, type);
    pstmt2.setString(2, profil);
	pstmt2.setString(3, name);
    pstmt2.setString(4, profiltxt);
	pstmt2.setInt(5, actorno);
 pstmt2.executeUpdate();

  response.sendRedirect("actor_modify.jsp?no="+no);

%>