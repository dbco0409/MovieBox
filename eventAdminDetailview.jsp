<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<script language="javascript" src="js_package.js">
</script>
<body>
<%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
<%
       request.setCharacterEncoding("euc-kr");

 try{
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
     
	String Eno = request.getParameter("eveNo");

    String jsql = "select * from event where eveNo = ?";   
	PreparedStatement pstmt  = con.prepareStatement(jsql);
	pstmt.setString(1, Eno);

	ResultSet rs = pstmt.executeQuery();
    rs.next();
	
	String no = rs.getString("eveNo");
	String name = rs.getString("eveName");
	String time =  rs.getString("eveTime");
	String lucky =  rs.getString("eveLucky");
	String text =  rs.getString("eveText");
	String image =  rs.getString("eveImage");
%>
<center>
<form name="eventud" method="post" >
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
                                &nbsp;&nbsp;<img src="img/point.gif"><font style="font-weight:bold" size="+1"> <%=name%></font>
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
                                &nbsp;&nbsp;<img src="img/point.gif"> 이벤트 기간 : <%=time%>
                            <td>
                                <img src="img/point.gif"> 당첨자 발표 : <%=lucky%>
                            </td>
                        </tr>
                </table>
                
                <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
                
                <img src="img/<%=image%>" width="660" height="767"><br>
				<%=text%>
                
                <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
				<table>
				<tr>
				<colgroup>
                    <col width="550">
                </colgroup>
				<td>
                <a href="eventAdminMain.jsp"><img src="img/list.jpg"border=0></a>
				</td>
				<td align="right">
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
</form>
</center>
</body>
</html>
<%@include file="tail.jsp" %>