<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>         
<html><head><title>1:1 전체 문의</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}

a:link,a:visited{text-decoration:none; color: #8d8d8d; font-size:9pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
</head>
<body>
<%@include file="notice_list.jsp" %>
<table align="center">
    <tr>
        <td height="10" valign="bottom" width="540">
            <p align="left">&nbsp;&nbsp;| &nbsp;&nbsp;<a href="notice_list_all.jsp" target="list">전체</a> &nbsp;&nbsp;| &nbsp;&nbsp;<a href="notice_list_1.jsp" target="list">영화관 공지</p>
        </td>
        <td width="32" height="10">
            <p align="right">&nbsp;&nbsp;</p>
        </td>
    </tr>

  <tr>
<td width="620" height="20" valign="top" colspan="2"><img src="img/bar.gif" width="625" height="12" border="0"></td>
</tr>
</table>
<%

String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		request.setCharacterEncoding("euc-kr");
		String reach=request.getParameter("reach");
		boolean rch=false;
		
			
     String jsql2 = "select * from notice where title like'%"+reach+"%' or content like'%"+reach+"%'";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql2);
	 ResultSet  rs = pstmt.executeQuery();

if(rs.next()) 
rch=true;
else
rch=false;
%>
<%  
		   if(rch) {

int no=rs.getInt("no");
String ctg = rs.getString("ctg");
String title =  rs.getString("title");
String date =  rs.getString("date");

%>
<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
 <tr height="20">
        <td width="20">
            <p align="center"><img src="img/list_icon.gif" border="0"></p>
        </td>
        <td width="100"><%=ctg%></td>
        <td width="488"> <a href="notice_view.jsp?no=<%=no%>" target="list"><%=title%></td>
        <td width="65"><%=date%></td>
</tr>
	</table>
<img src="img/gray_bar.gif" border="0">
	
	<%
	return;
	} else
%>
<p align="center"><%=reach%>라는 검색어는 존재하지 않습니다. </p>
	

</form>
</body>
</html>