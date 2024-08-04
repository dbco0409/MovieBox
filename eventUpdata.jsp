<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<script language="javascript" src="js_package.js">
</script>
<body>
<center>
<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
	
	 String Eno = request.getParameter("no");

	 String jsql = "select * from event where eveNo = ?";
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1,Eno);

	 ResultSet rs = pstmt.executeQuery();
	 rs.next();

	String no = rs.getString("eveNo");
	String name = rs.getString("eveName");
	String time =  rs.getString("eveTime");
	String lucky =  rs.getString("eveLucky");
	String text =  rs.getString("eveText");
	String image =  rs.getString("eveImage");
%>
<form name = "eventup" method="post" action="eventUpdataOK.jsp">
    <table>
    	<tr>
		    <td>
                <font style="font-weight:bold">영화 이벤트 :: </font>
                <br>
                
                <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
                <p>
                
            <table>
			<tr>
            <colgroup>
                <col width="120">
            </colgroup>
          
                        <td bgcolor="#CCCCCC">
                            &nbsp;<img src="img/point.gif"> 글번호
                        </td>
                        <td>
                            <input type=hidden name="no" value="<%=no%>"><%=no%>
                        </td>
                    </tr>
            <tr>
            <colgroup>
                <col width="120">
            </colgroup>
          
                        <td bgcolor="#CCCCCC">
                            &nbsp;<img src="img/point.gif"> 글제목
                        </td>
                        <td>
                            <input type=text name="name" value="<%=name%>" size="50">
                        </td>
                    </tr>
            <tr>
            <colgroup>
                <col width="120">
            </colgroup>
            
                        <td bgcolor="#CCCCCC">
                            &nbsp;<img src="img/point.gif"> 이벤트 기간
                        </td>
                        <td>
                            <input type=text name="time" value="<%=time%>" size="50">
                        </td>
                    </tr>
            <tr>
            <colgroup>
                <col width="120">
            </colgroup>
            
                        <td bgcolor="#CCCCCC">
                            &nbsp;<img src="img/point.gif"> 당첨자 발표
                        </td>
                        <td>
                            <input type=text name="lucky" value="<%=lucky%>" size="50">
                        </td>
                    </tr>
            </table>
            <br>
            
            <textarea name ="text" value="<%=text%>" cols="100" rows="30">
            </textarea>
            
            </tr>
            
            <tr>
			<td align="left"><input = "text" name ="image"  value="<%=image%>"></td></tr>
            <tr>  <td align="right">
			<img src="img/write.jpg" border=0 onClick="eventUp()">
		    <a href="eventAdminMain.jsp"><img src="img/return.jpg" border=0></a>
                </td>
            </tr>
            
            </td>
		</tr>
	</table>
	<%
    } catch(Exception e) {
		out.println(e);
}
%>
    </center>
	</form>
</body>
</html>

<%@include file="tail.jsp" %>