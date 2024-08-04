<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<%@include file="_head.jsp"%>
<html><head><title>r_admin_list</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt; color:black;}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
hr{width:620px; color: #ddd; height:2px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d; font-size:9pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
<body>
<%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:450px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
<form name="form" action="reserve_delete.jsp" method="post">
<table align="center" width="632">
    <tr>
        <td height="10" valign="bottom" width="560">
        </td>
		   
        <td width="50" height="10" valign="bottom" align="right">
           <a href="r_admin_write.jsp">등록</a>
       </td>
    </tr>

  <tr>
<td width="626" height="20" valign="top" colspan="2"><img src="img/bar.gif" width="625" height="12" border="0"></td>
</tr>
</table>
  <%
 	request.setCharacterEncoding("euc-kr");
	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

 String jsql2 = "select * from reserve_adm where okay='y'";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql2);
	 ResultSet  rs = pstmt.executeQuery();

while(rs.next()){
			int no=rs.getInt("reserve_no");
			String level = rs.getString("level");
    		String subject =  rs.getString("subject");

	%>
	<form name="form" action="reserve_delete.jsp?reserve_no=<%=no%>" method="post">
<table width="620" height="23" cellpadding="0" cellspacing="0" align="center" valign="top" border="0" style="background-image:url('img/list_faq.gif')">
 <tr height="20">
        <td width="33">
            <p align="center"><img src="img/list_icon.gif" border="0"></p>
        </td>
        <td width="42"><img src="img/<%=level%>.gif" border="0" align="absmiddle"><input type="hidden" name="reserve_no" value="<%= no %>"></td>
        <td width="473"><%=subject%></td>
        <td width="35"><a href="reserve_modify.jsp?reserve_no=<%=no%>">수정</a></td>
		<td width="37"><a href="reserve_delete.jsp?no=<%=no%>"><font color="#8d8d8d">삭제</font></a></td>
</tr>
	</table>
	<hr/>
	</form>
	<% } %>
	</div>
 </body>
</html>
