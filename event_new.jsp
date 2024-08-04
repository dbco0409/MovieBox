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
        <td width="280" height="40"><a href="eventMain.jsp"  target="_parent"><img src="img/event_t.gif" width="278" height="35" border="0"></a></td>
    </tr>
    <tr>
        <td width="280">
 <%

 request.setCharacterEncoding("euc-kr");
 	
  String jsql55 = "select eveName, eveNo from event";   
	 PreparedStatement  pstmt55 = con.prepareStatement(jsql55);
	 ResultSet  rs55 = pstmt55.executeQuery();

if (!rs55.wasNull()) 
	{ 
	 while(rs55.next()){
    		String title =  rs55.getString("eveName");
			int no = rs55.getInt("eveNo");
 %>
            <table width="280" cellpadding="3" cellspacing="0">
                <tr>
                    <td width="10"><img src="img/icon.gif" width="7" height="13" border="0">  </td>
                    <td width="260" style="font-size:9pt"><a href="eventDetailview.jsp?no=<%=no%>"  target="_parent"><%=title%></a></td>
                </tr>
            </table>
			</div>
				<% } } %>
			</td>
    </tr>
</table>