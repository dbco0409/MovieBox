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
        <td width="280" height="40"><a href="faq_list_all.jsp"  target="_parent"><img src="img/faq_t.gif" width="278" height="35" border="0"></a></td>
    </tr>
    <tr>
        <td width="280">
 <%

 request.setCharacterEncoding("euc-kr");
 	
  String jsql54 = "select title, no from faq";   
	 PreparedStatement  pstmt54 = con.prepareStatement(jsql54);
	 ResultSet  rs54 = pstmt54.executeQuery();

if (!rs54.wasNull()) 
	{ 
	 for(int i = 0; i < 5; i++) 
	      rs54.next();

	 while(rs54.next()){
    		String title =  rs54.getString("title");
			int no = rs54.getInt("no");
 %>
            <table width="280" cellpadding="3" cellspacing="0">
                <tr>
                    <td width="10"><img src="img/icon.gif" width="7" height="13" border="0">  </td>
                    <td width="230" style="font-size:9pt"><a href="faq_view.jsp?no=<%=no%>"  target="_parent"><%=title%></a></td>
                </tr>
            </table>
			</div>
				<% } } %>
			</td>
    </tr>
</table>