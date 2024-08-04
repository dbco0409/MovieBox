   <%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<style type="text/css">
a:link, a:visited { color:#a8a8a8; font-family:"¸¼Àº °íµñ", "µ¸¿ò"; font-size:9pt; text-decoration: none}
</style>
   <%
       request.setCharacterEncoding("euc-kr");

	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC µå¶óÀÌ¹ö ·Îµù
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB¿¡ Á¢¼Ó   
	 int reserve_no = Integer.parseInt(request.getParameter("reserve_no"));  

String jsql7 = "select * from reserve_adm where reserve_no=?";
		PreparedStatement pstmt7 = con.prepareStatement(jsql7);
		pstmt7.setInt(1, reserve_no);
		ResultSet rs7 = pstmt7.executeQuery();

 if(!rs7.wasNull()) {
           rs7.next();
		   String rctg = rs7.getString("rctg");
	String subject = rs7.getString("subject");
	    	String[]  rctgArr = rctg.split(",");
			for (int i=0;i<rctgArr.length;i++){
  %>
<a href="reserve_ing1.jsp?reserve_no=<%=reserve_no%>&where=<%=i%>" target="ing" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'"><%=rctgArr[i]%></a></br>
<% } } %>
