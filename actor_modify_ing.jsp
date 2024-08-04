<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %> 
<%@include file="_head.jsp" %>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d; font-size:9pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
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
  <%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
 <img src="img/m_write_2.gif">
 <p>&nbsp;</p>
  <%
  request.setCharacterEncoding("euc-kr");
 	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	  Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
		
 int actorno = Integer.parseInt(request.getParameter("actorno"));          
   
                
	  String jsql = "select no, profil, name, type, profiltxt from movie_actor where actorno =?";
       PreparedStatement pstmt = con.prepareStatement(jsql);
       pstmt.setInt(1, actorno);
       ResultSet rs = pstmt.executeQuery();

     rs.next();
		int no = rs.getInt("no");
			String profil = rs.getString("profil");
			String name = rs.getString("name");
           String type = rs.getString("type");
			   String profiltxt = rs.getString("profiltxt");
		
	
	%>
<form action="actor_modify_result.jsp?actorno=<%=actorno%>" method="post" name="form2">

	  <table width="700" cellpadding="3" cellspacing="3">
    <tr>
	<input type="hidden" name="no" value="<%=no%>">
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
<option>==선택==</option>
		<option>감독</option>
		<option selected>주연</option>
		<option>조연</option>

		<% } else if (type.equals("조연")) {%>
<option>==선택==</option>
		<option>감독</option>
		<option>주연</option>
		<option selected>조연</option>
		
		<% } %>
		</select></td>
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
	<tr>
        <td width="700" height="4" colspan="4" align="right"><a href="actor_modify.jsp"><img src="img/back.gif" border="0"></a><img src="img/modify.gif" onClick="submit()"></td>
    </tr>

</table>
</form>


 </body>
</html>
