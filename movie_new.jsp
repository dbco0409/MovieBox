 <%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<style type="text/css">
body {background-color:transparent;
a:link{text-decoration:none; color: #fff; font-weight:bold; font-size:9pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
<table border="0" width="860" align="center">
    <tr>
        <td width="860">
		<div id="layer1" style="width:860px; height:300; position:absolute; margin:0 auto; z-index:1">
 <%

 request.setCharacterEncoding("euc-kr");
 		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	  Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
		
  String jsql51 = "select image, no from movie";   
	 PreparedStatement  pstmt51 = con.prepareStatement(jsql51);
	 ResultSet  rs51 = pstmt51.executeQuery();

if (!rs51.wasNull()) 
	{
	 for(int i = 0; i < 6; i++) 
	      rs51.next();

	 while(rs51.next()){
    		String image =  rs51.getString("image");
			int no = rs51.getInt("no");
 %>
            <div id="layer1" style="width:141px; height:131px; z-index:1; float:left">
						<a href="movie_view.jsp?no=<%=no%>" target="_parent"><img src="<%=image%>" border="0" width="138" height="150"></a>
                        </div>
				<% } } %>
				</div>
        </td>
    </tr>
</table>