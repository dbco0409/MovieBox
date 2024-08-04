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

 <form action="update_result.jsp?no=<%=no%>" method="post" name="form2">
 <p><img src="img/m_write_2.gif"></p>
 <table width="700" cellpadding="3" cellspacing="3">
    <tr>
        <td width="250"><img src="img/icon.gif"/>image</td>
        <td width="1032"><input type="text" name="profil"></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>역할</td>
        <td width="1032">
		<select name="type">
		<option>==선택</option>
		<option>감독</option>
		<option>주연</option>
		<option>조연</option>
		</select></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>이름</td>
        <td width="1032"><input type="text" name="name"></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>주요작품</td>
        <td width="1032"><textarea name="content" rows="10" cols="40" style="border:1px solid #ddd;"scrolling="yes">주요작품을 쓰세요.</textarea></td>
    </tr>
	<tr>
	<td colspan="2" height="50">
	<p><img src="img/gray_bar.gif"/></p>
	</td>
	</tr>

</table>
  <table width="700" cellpadding="3" cellspacing="3">
    <tr>
        <td width="250"><img src="img/icon.gif"/>image</td>
        <td width="1032"><input type="text" name="profil1"></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>역할</td>
        <td width="1032">
		<select name="type1">
		<option>==선택</option>
		<option>감독</option>
		<option>주연</option>
		<option>조연</option>
		</select></td>
    </tr>
    <tr>

        <td width="250"><img src="img/icon.gif"/>이름</td>
        <td width="1032"><input type="text" name="name1"></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>주요작품</td>
        <td width="1032"><textarea name="content1" rows="10" cols="40" style="border:1px solid #ddd;"scrolling="yes">주요작품을 쓰세요.</textarea></td>
    </tr>
		<tr>
	<td colspan="2" height="50">
	<p><img src="img/gray_bar.gif"/></p>
	</td>
	</tr>
</table>

  <table width="700" cellpadding="3" cellspacing="3">
    <tr>
        <td width="250"><img src="img/icon.gif"/>image</td>
        <td width="1032"><input type="text" name="profil2"></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>역할</td>
        <td width="1032">
		<select name="type2">
		<option>==선택</option>
		<option>감독</option>
		<option>주연</option>
		<option>조연</option>
		</select></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>이름</td>
        <td width="1032"><input type="text" name="name2"></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>주요작품</td>
        <td width="1032"><textarea name="content2" rows="10" cols="40" style="border:1px solid #ddd;"scrolling="yes">주요작품을 쓰세요.</textarea></td>
    </tr>
<tr>
	<td colspan="2" height="50">
	<p><img src="img/gray_bar.gif"/></p>
	</td>
	</tr>
	<tr>
        <td width="700" height="4" colspan="4" align="right"><input type="image" src="img/update.gif"></td>
    </tr>

</table>
</form>
 </body>
</html>
