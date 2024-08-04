   <%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<style type="text/css">
a:link, a:visited { color:#a8a8a8; font-family:"¸¼Àº °íµñ", "µ¸¿ò"; font-size:9pt; text-decoration: none}
a:active {color:#662e91; font-weight:bold;}
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
    <%
 request.setCharacterEncoding("euc-kr");

 String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC µå¶óÀÌ¹ö ·Îµù
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB¿¡ Á¢¼Ó   

	try{ int reserve_no = Integer.parseInt(request.getParameter("reserve_no"));  
	 int where=Integer.parseInt(request.getParameter("where"));
	 int date=Integer.parseInt(request.getParameter("date"));  
	int tim=1;

		String jsql13 = "select time, sit from reserve_adm where reserve_no=?";
		PreparedStatement pstmt13 = con.prepareStatement(jsql13);
		pstmt13.setInt(1, reserve_no);
		ResultSet rs13 = pstmt13.executeQuery();
		
if (!rs13.wasNull()) 
	{
		while(rs13.next()){
		String time=rs13.getString("time");
		String[ ]  timeArr = time.split(",");   
		int sit=rs13.getInt("sit");
		
			for (int i=0;i<timeArr.length;i++){
%>
<p><a href="reserve_people.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time=<%=i%>" target="people" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'"><%=timeArr[i]%> <%=sit%>¼®</p>
<% } }%>

<% } }
finally{}
%>



