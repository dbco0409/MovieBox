<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<body>
		<p>&nbsp;</p>
<%
       request.setCharacterEncoding("euc-kr");

 try{
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
     
	String no = request.getParameter("eveNo");

    String jsql = "select * from event where eveNo = ?";   
	PreparedStatement pstmt  = con.prepareStatement(jsql);
	pstmt.setString(1, no);

	ResultSet rs = pstmt.executeQuery();
    rs.next();

	String name = rs.getString("eveName");
	String time =  rs.getString("eveTime");
	String lucky =  rs.getString("eveLucky");
	String text =  rs.getString("eveText");
	String image =  rs.getString("eveImage");
%>
    <table align="center" width="800">
    	<tr>
   			<td>
                <font style="font-weight:bold">영화 이벤트 :: </font>
                <br>
                
                <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
                
                <table>
                
                <colgroup>
                    <col width="800">
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
                    <col width="600">
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
                
                <img src="<%=image%>" align="middle"></br>
				<%=text%>
                
                <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
                
                <a href="eventMain.jsp"><img src="img/list.jpg"border=0></a>
    
    		</td>
    	</tr>
    </table>
<%
    } catch(Exception e) {
		out.println(e);
}
%>
</center>
</td>
</tr>
</table>
<%@include file="_tail.jsp" %>