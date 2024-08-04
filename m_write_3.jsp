<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>  
<%@include file="_head.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> movie3_write </title>
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
 <%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
   <%
       request.setCharacterEncoding("euc-kr");

		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속       


		 int no = Integer.parseInt(request.getParameter("no"));  
                
		String jsql = "select * from movie where no = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setInt(1, no);
		ResultSet rs = pstmt.executeQuery();

   %> 

 <form action="m_write_3_result.jsp?no=<%=no%>" method="post" name="form2">
 <p><img src="img/m_write_3.gif"></p>
<table width="700" cellpadding="0" cellspacing="0">
    <tr>
        <td width="119"><img src="img/icon.gif"/>image1 링크</td>
        <td width="1032"><input type="text" name="image1"></td>
    </tr>
    <tr>
        <td width="119"><img src="img/icon.gif"/>image2 링크</td>
        <td width="1032"><input type="text" name="image2"></td>
    </tr>
    <tr>
        <td width="119"><img src="img/icon.gif"/>image3 링크</td>
        <td width="1032"><input type="text" name="image3"></td>
    </tr>
    <tr>
        <td width="119" height="9"><img src="img/icon.gif"/>image4 링크</td>
        <td width="1032" height="18"><input type="text" name="image4"></td>
    </tr>
    <tr>
        <td width="119" height="9"><img src="img/icon.gif"/>image5 링크</td>
        <td width="1032" height="18"><input type="text" name="image5"></td>
    </tr>
    <tr>
        <td width="119" height="9"><img src="img/icon.gif"/>image6 링크</td>
        <td width="1032" height="18"><input type="text" name="image6"></td>
    </tr>
	<tr>
	<td colspan="2" height="50">
	<p><img src="img/gray_bar.gif"/></p>
	</td>
	</tr>
	<tr>
        <td width="700" height="4" colspan="4" align="right"><input type="image" src="img/submit2.gif"><a href="admin_list_movie_1.jsp"><img src="img/back.gif" border="0"></a></td>
    </tr>
</table>
</form>
 </body>
</html>
