<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<body>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
	 String Eno = request.getParameter("no");
	 
     String jsql = "delete from event where eveNo=?";        
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1, Eno);
	
 	 pstmt.executeUpdate();
%>
 <jsp:forward page="eventAdminMain.jsp"/>
 		
<%
    } catch (Exception e) {
    	out.println(e);
}
%>
</body>
</html>