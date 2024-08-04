<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
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

	 String jsql = "INSERT INTO event (eveNo, eveName, eveTime, eveLucky, eveText, eveImage) VALUES (?,?,?,?,?,?)";	

	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,no);
	 pstmt.setString(2,name);
	 pstmt.setString(3,time);
	 pstmt.setString(4,lucky);
	 pstmt.setString(5,text);
	 pstmt.setString(6,image);

	 pstmt.executeUpdate();
  }
  catch(Exception e) { 
		out.println(e);
}
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
                
                <img src="<%=image%>"><br>
				<%=text%>
                
                <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
                
                <a href="eventMain.jsp"><img src="img/list.jpg"border=0></a>
    
    		</td>
    	</tr>
    </table>
</center>
</body>
</html>
<%@include file="_tail.jsp" %>