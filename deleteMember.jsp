<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "java.sql.*" %>
<html><center>
<style type="text/css">
br { color:#a8a8a8; font-family:"¸¼Àº °íµñ", "µ¸¿ò"; font-size:9pt; text-decoration: none}
p{font-family:"¸¼Àº °íµñ", "µ¸¿ò"; font-size:9pt; color:#000000}
a:active {color:#662e91; font-weight:bold;}
hr { height:1px; color:#744c92}
td { color:#ffffff; font-family:"¸¼Àº °íµñ", "µ¸¿ò"; font-size:9pt;}
</style>
<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
	
     String jsql = "select * from member where memId = ?";       
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1, id);

  	 ResultSet rs = pstmt.executeQuery();	
	 rs.next();

	id = rs.getString("memId");
	 String password =  rs.getString("memPassword");	
	 String name = rs.getString("memName");
 	 String joomin = rs.getString("memJoomin");
	 String phone =  rs.getString("memPhone");
	 String zipcode =  rs.getString("memZipcode");
	 String address1 =  rs.getString("memAddress1");
	 String address2 =  rs.getString("memAddress2");
 	 String email =  rs.getString("memEmail");
	 String mailing =  rs.getString("memMailing");
%>

<p><img src="./images/bye_01.gif" border=0>
<img src="./images/bye_02.gif" border=0>
<br>
<input type=radio name="agree" value="yes"> À§ÀÇ ³»¿ëÀ» ¸ðµÎ È®ÀÎÇÏ¿´À¸¸ç, È¸¿ø Å»Åð ½Ã ¸ðµç Á¤º¸°¡ º¹±¸ ºÒ°¡´ÉÇÔ¿¡ µ¿ÀÇÇÕ´Ï´Ù.

<p><a href="deleteMemberResult.jsp?id=<%=id%>"><br>
<img src="./images/bye_06.gif" border=0></a>&nbsp;&nbsp;
<a href="index.html"><img src="./images/bye_08.gif" border=0></a></p>

<%
    } catch (Exception e) {
    	out.println(e);
}
%>
</center>
</body>
</html>
<%@include file="tail.jsp" %>