<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<style type="text/css">
body {overflow-x:hidden;}
a:link,a:visited{text-decoration:none; color: #000; font-size:9pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
<body>
<table width="890" cellpadding="0" cellspacing="0" align="center" >
    <tr>
        <td width="800" height="33" colspan="2" valign="top">
<div id="l_1" style="width:890px; height:33px; position:absolute; margin:0 auto;z-index:1; background-image:url('images/line_beg.gif');">
                <table cellpadding="0" cellspacing="0" width="336"  >
                    <tr>
                        <td width="35"></td>
                        <td width="78"><a href="eventMain.jsp" ><img src="images/click8.gif" border="0" id="submenu1"/></a></td>
                        <td width="27"></td>
                        <td width="74"></td>
                        <td width="27"></td>
                        <td width="95"></td>
                    </tr>
                </table>
				</div></td>
    </tr>
    <tr>
        <td width="182" valign="top"> <table width="192" height="100%" cellpadding="0" cellspacing="0" style="background-image:url('images/right_bar.gif')">
                    <tr>
                        <td width="182" height="15">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="182" height="46" background="images/right_bar2.gif">
                            <table width="150" cellpadding="0" cellspacing="0" align="center">
                                <tr>
                                    <td width="182" height="31">
                                        <p align="left"><img src="images/menu_reserve.gif" width="132" height="19" border="0"></p>
                                    </td>
                                </tr>
                            </table>
							 
                            <p>&nbsp;</p>
                        </td>
                    </tr>
                    <tr>
                        <td width="182" height="20" background="images/right_bar3.gif" valign="top">
                            <table width="160" cellpadding="0" cellspacing="0" align="center">
                                <tr>
                                    <td width="182" height="50" valign="top">
                                        <p><a href="eventMain.jsp"><img src="images/c_8.gif" border="0" id="menu6"></p>
                                      </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td width="182" height="31">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="182" height="440">
                            <p align="center"><img src="images/right_benner.gif" width="151" height="440" border="0"></p>
                        </td>
                    </tr>
                </table></td>
        <td width="720" valign="top" align="center">
		<p>&nbsp;</p>
<%
	request.setCharacterEncoding("euc-kr");

try {

 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

     String jsql = "select * from event";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 ResultSet  rs = pstmt.executeQuery();

%>

<center>
<table>
<tr>
<td>
    	<font style="font-weight:bold">영화 이벤트 :: </font>
		<br>
        
        <hr align="right" style="color:#EAEAEA; background-color:#EAEAEA; height:1px; border:none" />
		<p>
        
   	<hr align="right" style="color:#5D5D5D; background-color:#5D5D5D; height:1px; border:none" />

<%
while(rs.next()) {

	String no = rs.getString("eveNo");
	String name = rs.getString("eveName");
	String time =  rs.getString("eveTime");

	%>
    <table>
    <tr>
    <colgroup>
    	<col width="700">
    </colgroup>

                <td>
                 &nbsp;&nbsp;<span><b><img src="img/point.gif"><a href="eventDetailview.jsp?eveNo=<%=no%>"><%=name%></b></span></a>
                </td>
                
                <td rowspan="1">
                	<img src="img/using.jpg" width="57" height="27">
               </td>
            </tr>
            <tr>
                <td>
                	&nbsp;&nbsp;<img src="img/point.gif"> 이벤트 기간 : <%=time%>
                </td>
            </tr>
    </table>
        
        <hr align="right" style="color:#BDBDBD; background-color:#BDBDBD; height:1px; border:none" />
	<% 
}
    } catch (Exception e) {
      out.println(e);	
}
%>
</td>

  </tr>
  </table>
</center>
</body>
</html>
<%@include file="tail.jsp" %>