<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<style type="text/css">
a { color:#a8a8a8; font-family:"¸¼Àº °íµñ", "µ¸¿ò"; font-size:9pt;}
</style>
   <%
    try{   request.setCharacterEncoding("euc-kr");

	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC µå¶óÀÌ¹ö ·Îµù
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB¿¡ Á¢¼Ó   
	 
String jsql = "select * from reserve_adm where okay = 'y'";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		ResultSet rs = pstmt.executeQuery();

         
		   while(rs.next()){
		   String subject = rs.getString("subject");
		   String level = rs.getString("level");
  %>
  <input type="hidden" value="<%=subject%>">
  <br><img src="img/<%=level%>.gif" border="0"><%=subject%></a></br>
<%
} }
				  finally{}
				 %>