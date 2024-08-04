   <%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<style type="text/css">
a:link, a:visited { color:#a8a8a8; font-family:"¸¼Àº °íµñ", "µ¸¿ò"; font-size:9pt; text-decoration: none}
a:active {color:#662e91; font-weight:bold;}
hr { height:1px; color:#744c92}
td { color:#ffffff; font-family:"¸¼Àº °íµñ", "µ¸¿ò"; font-size:9pt;}
</style>
   <%
    request.setCharacterEncoding("euc-kr");
	 int reserve_no = Integer.parseInt(request.getParameter("reserve_no"));  
	 int where= Integer.parseInt(request.getParameter("where"));
	 
	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC µå¶óÀÌ¹ö ·Îµù
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB¿¡ Á¢¼Ó   

	 String jsql11 = "select * from reserve_adm where reserve_no=?";
		PreparedStatement pstmt11 = con.prepareStatement(jsql11);
		pstmt11.setInt(1, reserve_no);
		ResultSet rs11 = pstmt11.executeQuery();

 if(!rs11.wasNull()) {
           rs11.next();
	String rctg = rs11.getString("rctg");
	String subject = rs11.getString("subject");
	    	
			String[]  rctgArr = rctg.split(",");

  %>
<body style="background-color:transparent">
<td width="141" height="350" valign="top"> 
	  <table width="141" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="141" height="32">
                                        <p>¿µÈ­</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="141" height="32">
									<%=subject%>
									<hr/></td>
                                </tr>
                                <tr>
                                    <td width="141" height="29">±ØÀå</td>
                                </tr>
                                <tr>
                                    <td width="141" height="29">
									<%=rctgArr[where]%> 
									<hr/></td>
                                </tr>
                                <tr>
                                    <td width="141" height="27">³¯Â¥:</td>
                                </tr>
                                <tr>
                                    <td width="141" height="27">½Ã°£:</td>
                                </tr>
                                <tr>
                                    <td width="141" height="27">ÀÎ¿ø:</td>
                                </tr>
                                <tr>
                                    <td width="141" height="36">
									ÁÂ¼®:
									<hr/>
									</td>
                                </tr>
                                <tr>
                                    <td width="141" height="39"></td>
                                </tr>
                            </table>
							
                        </td>
                    </tr>
                    <tr>
                         <td width="141" height="39">
                            <table width="120" cellpadding="0" cellspacing="0" height="35" bgcolor="#21BAA5">
    <tr>
        <td width="120" align="center"><a href="reserve_write_2.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>" target="_parent"><font color="white"><b>NEXT ¢º</b></font></td>
    </tr>
</table>
                        </td>
						 </table>
						</td>
					<% } %>	
			</body>