<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>         
<%@include file="_head.jsp" %>
<html><head><title>전체 검색</title>
<style type="text/css">
body {overflow-x:hidden;}
td, span{font-size:9pt; color:black;}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}

a:link,a:visited{text-decoration:none; color: #8d8d8d; font-size:9pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
</head>
<body>
<center>
<p>&nbsp;</p>
<img src="img/serch.gif"></p>
<img src="img/notice.gif">
<%

String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		request.setCharacterEncoding("euc-kr");
		String reach=request.getParameter("reach");
		boolean rch=false;
		
			
     String jsql1 = "select * from notice where title like'%"+reach+"%' or content like'%"+reach+"%'";
	 PreparedStatement  pstmt = con.prepareStatement(jsql1);
	 ResultSet  rs = pstmt.executeQuery();

if(rs.next()) 
rch=true;
else
rch=false;
%>
<%  
		   if(rch) {

int nno=rs.getInt("no");
String nctg = rs.getString("ctg");
String ntitle =  rs.getString("title");
String ndate =  rs.getString("date");

%>
<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
 <tr height="20">
        <td width="20">
            <p align="center"><img src="img/list_icon.gif" border="0"></p>
        </td>
        <td width="50"><%=nctg%></td>
        <td width="488"> <a href="notice_view.jsp?no=<%=nno%>"><%=ntitle%></td>
        <td width="100"><%=ndate%></td>
</tr>
	</table>
<img src="img/gray_bar.gif" border="0">
	
	<%

	} else {
%>
<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
    <tr height="20">
        <td width="620">
            <p align="center">NOTICE 게시판에는 '<%=reach%>'라는 검색어가 존재하지 않습니다.</p>
        </td>
    </tr>
	</table>
	<% } %>
	</p>
	<img src="img/faq.gif">
 <% String jsql2 = "select * from faq where title like'%"+reach+"%' or content like'%"+reach+"%'";
	 PreparedStatement  pstmt2 = con.prepareStatement(jsql2);
	 ResultSet  rs2 = pstmt2.executeQuery();

if(rs2.next()) 
rch=true;
else
rch=false;
%>
<%  
		   if(rch) {

int fno=rs2.getInt("no");
String fctg = rs2.getString("ctg");
String ftitle =  rs2.getString("title");

%>
<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
 <tr height="20">
        <td width="20">
            <p align="center"><img src="img/list_icon.gif" border="0"></p>
        </td>
        <td width="100"><%=fctg%></td>
        <td width="488"> <a href="faq_view.jsp?no=<%=fno%>"><%=ftitle%></td>
        <td width="65"></td>
</tr>
	</table>
<img src="img/gray_bar.gif" border="0">
	
	<%

	} else {
%>
<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
    <tr height="20">
        <td width="620">
            <p align="center">FAQ에는 '<%=reach%>'라는 검색어가 존재하지 않습니다.</p>
        </td>
    </tr>
	</table>
		<% } %>
		</p>
	<img src="img/event.gif">
 <% String jsql3 = "select eveNo, eveName, evetime from event where eveName like'%"+reach+"%' or eveText like'%"+reach+"%'";
	 PreparedStatement  pstmt3 = con.prepareStatement(jsql3);
	 ResultSet  rs3 = pstmt3.executeQuery();

if(rs3.next()) 
rch=true;
else
rch=false;
%>
<%  
		   if(rch) {

int noe=rs3.getInt("eveNo");
String eveName = rs3.getString("eveName");
String evetime =  rs3.getString("evetime");

%>

<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
 <tr height="20">
        <td width="20">
            <p align="center"><img src="img/list_icon.gif" border="0"></p>
        </td>
        <td width="100"><%=noe%></td>
        <td width="488"> <a href="event_view.jsp?no=<%=noe%>"><%=eveName%></td>
        <td width="65"><%=evetime%></td>
</tr>
	</table>
<img src="img/gray_bar.gif" border="0">
	
	<%

	} else {
%>
<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
    <tr height="20">
        <td width="620">
            <p align="center">EVENT에는 '<%=reach%>'라는 검색어가 존재하지 않습니다.</p>
        </td>
    </tr>
	</table>
	<% } %>
</p>
<img src="img/movie.gif">
 <% String jsql4 = "select * from movie where title like'%"+reach+"%'";
	 PreparedStatement  pstmt4 = con.prepareStatement(jsql4);
	 ResultSet  rs4 = pstmt4.executeQuery();

if(rs4.next()) 
rch=true;
else
rch=false;
%>
<%  
		   if(rch) {

int nom=rs4.getInt("no");
String title = rs4.getString("title");

%>
<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
 <tr height="20">
        <td width="20">
            <p align="center"><img src="img/list_icon.gif" border="0"></p>
        </td>
        <td width="100"><%=nom%></td>
        <td width="488"> <a href="movie_view.jsp?no=<%=nom%>"><%=title%></td>
        <td width="65"></td>
</tr>
	</table>
<img src="img/gray_bar.gif" border="0">
	
	<%
	
	} else {
%>
<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
    <tr height="20">
        <td width="620">
            <p align="center">MOVIE에는 '<%=reach%>'라는 검색어가 존재하지 않습니다.</p>
        </td>
    </tr>
	</table>
	<% } %>
<%@include file="_tail.jsp" %>