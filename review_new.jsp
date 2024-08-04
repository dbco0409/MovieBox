 <%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<style type="text/css">
body {background-color:transparent;
a:link{text-decoration:none; color: #fff; font-weight:bold; font-size:9pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
<table border="0" width="880" valign="top">
    <tr>
        <td width="880" align="center">
 <%

 
  String jsql52 = "select * from movie_chart";   
	 PreparedStatement  pstmt52 = con.prepareStatement(jsql52);
	 ResultSet  rs52 = pstmt52.executeQuery();

if (!rs52.wasNull()) 
	{
	   for(int i = 0; i < 6; i++) 
	      rs52.next();

	 while(rs52.next()){
			int chart3 = rs52.getInt("chart");
    		String name3 =  rs52.getString("name");	
    		String title3 =  rs52.getString("title");
			String ctg3 = rs52.getString("ctg");
			String icon3 = rs52.getString("icon");
			int movieno = rs52.getInt("movieno");
 %>
            <div id="layer1" style="width:290px; height:190px; z-index:1; float:left">
						<a href="movie_view.jsp?no=<%=movieno%>" target="_parent"><img src="<%=icon3%>" border="0" width="286" height="190"></a>
				<div id="layer3" style="width:287px; height:43px; margin-top:-55px;background-color:black;font-size:9pt; filter:alpha(opacity=80);overflow:hidden">
                       <center><a href="movie_view.jsp?no=<%=movieno%>" target="_parent"><font color="Yellow"><b>(<%=ctg3%>)</font></br><font color="white"><%=title3%></b>-<%=name3%></a></center></br>
						 </div>
                        </div>
				<% } } %>
				
        </td>
    </tr>
</table>