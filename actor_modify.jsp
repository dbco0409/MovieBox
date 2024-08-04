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

int no = Integer.parseInt(request.getParameter("no"));  
%>
<%
    String jsql2 = "select * from movie_actor where no =?";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql2);
	 pstmt.setInt(1, no);
	 ResultSet  rs = pstmt.executeQuery();


while(rs.next()){
			String name = rs.getString("name");
			String type = rs.getString("type");
			int actorno = rs.getInt("actorno");
%>
<table width="584" cellpadding="3" cellspacing="3">
    <tr>
        <td width="120"><font color="red"><b><%=type%></b></font></td>
        <td width="313"><%=name%></td>
        <td width="70">
            <p align="center"><a href="actor_modify_ing.jsp?actorno=<%=actorno%>">수정</a></p>
        </td>
        <td width="81">
            <p align="center"><a href="actor_delete.jsp?actorno=<%=actorno%>&no=<%=no%>">삭제</p>
        </td>
    </tr>
</table>

	<% } %>

<table width="584" cellpadding="3" cellspacing="3">
    <tr>
        <td width="572">
            <p align="center"><a href="actor_write.jsp?no=<%=no%>">디렉터 추가하기</a> &nbsp;&nbsp;&nbsp;<a href="snap_modify.jsp?no=<%=no%>">스넵샷 관리하기 &nbsp;&nbsp;&nbsp;<a href="m_write_3.jsp?no=<%=no%>">스넵샷 등록</p>
        </td>
    </tr>
</table>