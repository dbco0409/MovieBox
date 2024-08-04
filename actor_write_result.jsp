<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>    
<%@include file="_head.jsp" %>
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
   <%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
 <p>&nbsp;</p>
<%

		request.setCharacterEncoding("euc-kr");
	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속           
		String profil=request.getParameter("profil");
		String type=request.getParameter("type");
		String name=request.getParameter("name");
		String content=request.getParameter("content");
 
 	 int no = Integer.parseInt(request.getParameter("no"));  
	
	  int no01;
	  String jsql01 = "select MAX(actorno) from movie_actor";   
	PreparedStatement pstmt01 = con.prepareStatement(jsql01);

	ResultSet rs01 = pstmt01.executeQuery(); 


  if (rs01 == null) {  
        no01 = 1;
    }  else {    	  
       	rs01.next();
       	no01 = rs01.getInt(1) + 1;
    } 
rs01.close(); 

	String jsql2 = "INSERT INTO movie_actor (no, profil, type, name, profiltxt, actorno) VALUES(?,?,?,?,?,?)";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setInt(1, no);
    pstmt2.setString(2, profil);
    pstmt2.setString(3, type);
	   pstmt2.setString(4, name);
	      pstmt2.setString(5, content);
		    pstmt2.setInt(6, no01);

  pstmt2.executeUpdate();
  
%>

추가된 내용 : 
 <table width="700" cellpadding="3" cellspacing="3">
    <tr>
        <td width="250"><img src="img/icon.gif"/>image</td>
        <td width="1032"><img src="<%=profil%>"></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>역할</td>
        <td width="1032"><%=type%></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>이름</td>
        <td width="1032"><%=name%></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>주요작품</td>
        <td width="1032"><pre><%=content%></pre></td>
    </tr>
	<tr>
	<td colspan="2" height="50">
	<p><img src="img/gray_bar.gif"/></p>
	</td>
	</tr>
	</table>
<table width="584" cellpadding="3" cellspacing="3">
    <tr>
        <td width="572">
            <p align="center"><a href="actor_write.jsp?no=<%=no%>">디렉터 추가하기</a> &nbsp;&nbsp;&nbsp;<a href="actor_modify.jsp?no=<%=no%>">디렉터 목록보기</p>
        </td>
    </tr>
</table>