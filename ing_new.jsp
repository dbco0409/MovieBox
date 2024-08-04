 <%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<style type="text/css">
body {background-color:transparent;
td{font-size:9pt;}
a:link{text-decoration:none; font-size:9pt; color:#000000}
a:active{color:#662c92; font-weight:bold;}
</style>
<table width="280" cellpadding="0" cellspacing="0" height="71">
    <tr>
        <td width="280">
 <%

 request.setCharacterEncoding("euc-kr");
 		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	  Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
		
  String jsql51 = "select image, no from movie where open='N'";   
	 PreparedStatement  pstmt51 = con.prepareStatement(jsql51);
	 ResultSet  rs51 = pstmt51.executeQuery();

if (!rs51.wasNull()) 
	{ 

	 while(rs51.next()){
    		String image =  rs51.getString("image");
			int no = rs51.getInt("no");
 %>
            <table width="280" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="20"><img src="img/icon.gif" width="7" height="13" border="0">  </td>
                    <td width="230" style="font-size:9pt"><a href="movie_view.jsp?no=<%=no%>"><img src="<%=image%>" border="0" width="200" height="200"></a></td>
                </tr>
            </table>
			</div>
				<% } } %>
			</td>
    </tr>
</table>