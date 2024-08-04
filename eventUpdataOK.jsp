<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<body>

<%
	request.setCharacterEncoding("euc-kr");

	String no = request.getParameter("no");
	String name = request.getParameter("name");   
	String time = request.getParameter("time");
	String	lucky = request.getParameter("lucky");
	String	text = request.getParameter("text");
	String	image = request.getParameter("image");

try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "update event set eveName=?, eveTime=?, ";
	 jsql = jsql + "eveLucky=?, eveText=?, eveImage=? where eveNo=? ";

	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,name);
	 pstmt.setString(2,time);
	 pstmt.setString(3,lucky);
	 pstmt.setString(4,text);
	 pstmt.setString(5,image);
	 pstmt.setString(6,no);

	 pstmt.executeUpdate();

  String jsql2 = "select * from event where eveNo=?";
	 PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	 pstmt2.setString(1,no);

	 ResultSet rs = pstmt2.executeQuery();
	 rs.next();
%>
<center>
    <table>
    	<tr>
   			<td>
                <font style="font-weight:bold">영화 이벤트 :: </font>
                <br>
                
                <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
                
                <table>
                
                <colgroup>
                    <col width="600">
                </colgroup>
                
                        <tr>
                            <td>
                                &nbsp;&nbsp;<img src="img/point.gif"><font style="font-weight:bold" size="+1"> <%=rs.getString("eveName")%></font>
                            </td>
                            <td>
                                <img src="img/using.jpg">
                            </td>
                        </tr>
                </table>
                
                <hr align="right" style="color:#5D5D5D; background-color:#5D5D5D; height:1px; border:none" />
                
            
            
                <table>
                
                <colgroup>
                    <col width="400">
                </colgroup>
                
                        <tr>
                            <td>
                                &nbsp;&nbsp;<img src="img/point.gif"> 이벤트 기간 : <%=rs.getString("eveTime")%>
                            <td>
                                <img src="img/point.gif"> 당첨자 발표 : <%=rs.getString("eveLucky")%>
                            </td>
                        </tr>
                </table>
                
                <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
                
                <img src="img/<%=rs.getString("eveImage")%>" width="660" height="767"><br>
				<%=rs.getString("eveText")%>
                
                 <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
				<table>
				<tr>
				<colgroup>
                    <col width="550">
                </colgroup>
				<td>
                <a href="eventAdminMain.jsp"><img src="img/list.jpg"border=0></a>
				</td>
				<td  align="right">
				<a href="eventUpdata.jsp?no=<%=no%>"><img src="images/medify_26.gif" border=0 ></a>
				<a href="eventDelete.jsp?no=<%=no%>"><img src="images/medify_26_01.gif" border=0 ></a>
				</td>
				</tr>
				</table>
    
    		</td>
    	</tr>
    </table>
	<%
    } catch(Exception e) {
		out.println(e);
}
%>
</center>
</body>
</html>
<%@include file="tail.jsp" %>