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
<script language="javascript">
function ch()  
{
	document.form2.submit();
}
</script>
 <body>
  <p><img src="img/m_write_2.gif"></p>
   <%
   try {    request.setCharacterEncoding("euc-kr");

	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속       


		  int no = Integer.parseInt(request.getParameter("no"));          
                
		String jsql = "select * from movie_actor where no = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setInt(1, no);
		ResultSet rs = pstmt.executeQuery();

		 while(rs.next()){
		    String profil = rs.getString("profil");
           String type = rs.getString("type");
     	   String name = rs.getString("name");
		     String profiltxt= rs.getString("profiltxt");

   %> 

 <form action="m_write_2_result.jsp?no=<%=no%>" method="post" name="form2">
 <table width="700" cellpadding="3" cellspacing="3">
    <tr>
        <td width="250"><img src="img/icon.gif"/>image</td>
        <td width="1032"><input type="text" name="profil" value="<%=profil%>"></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>역할</td>
        <td width="1032">
		<select name="type">
		<% if (type.equals("감독")) {%>
		<option>==선택</option>
		<option selected>감독</option>
		<option>주연</option>
		<option>조연</option>
		<% } else if (type.equals("주연")) {%>
		<option>==선택</option>
		<option>감독</option>
		<option selected>주연</option>
		<option>조연</option>
		<% } else if (type.equals("조연")) {%>
		<option>==선택</option>
		<option>감독</option>
		<option>주연</option>
		<option  selected>조연</option>
		</select></td>
		<%}%>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>이름</td>
        <td width="1032"><input type="text" name="name" value="<%=name%>"></td>
    </tr>
    <tr>
        <td width="250"><img src="img/icon.gif"/>주요작품</td>
        <td width="1032"><textarea name="profiltxt" rows="10" cols="40" style="border:1px solid #ddd;"scrolling="yes"><%=profiltxt%></textarea></td>
    </tr>
	<tr>
	<td colspan="2" height="50">
	<p><img src="img/gray_bar.gif"/></p>
	</td>
	</tr>
</table>
</form>
	<%
 }  }   catch(Exception e)  {
        out.println(e);
} 
%>

<% 	  int no = Integer.parseInt(request.getParameter("no"));  %>
<tr>
        <td width="700" height="4" colspan="4" align="right"><a href="movie_modify_1.jsp?no=<%=no%>"><img src="img/back.gif" border="0"></a><a><img src="img/next.gif" border="0" onclick="ch()"></a><a href="m_write_2_update.jsp?no=<%=no%>"><img src="img/update.gif" border="0"></a></td>
    </tr>

</table>

 </body>
</html>
