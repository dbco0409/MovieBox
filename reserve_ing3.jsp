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
	  int days=Integer.parseInt(request.getParameter("date")); 
	int tim=Integer.parseInt(request.getParameter("time"));
	int people=Integer.parseInt(request.getParameter("people")); 
	String siter[]=request.getParameterValues("sit");
	String sit="";

for (int i=0;i<siter.length;i++){
		sit+=siter[i]+" ";
	}

	int price=people*8000;
	 
	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC µå¶óÀÌ¹ö ·Îµù
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB¿¡ Á¢¼Ó   

String date;
String jsql2 = "select month, days, day from date where days like ?";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setInt(1, days);
			ResultSet rs2 = pstmt2.executeQuery(); 
rs2.next();
	date=rs2.getInt("month")+"¿ù "+rs2.getInt("days")+"ÀÏ ("+rs2.getString("day")+")";
rs2.close();

	 String jsql11 = "select * from reserve_adm where reserve_no=?";
		PreparedStatement pstmt11 = con.prepareStatement(jsql11);
		pstmt11.setInt(1, reserve_no);
		ResultSet rs11 = pstmt11.executeQuery();

 if(!rs11.wasNull()) {
           rs11.next();
	String rctg = rs11.getString("rctg");
	String subject = rs11.getString("subject");
	String time=rs11.getString("time");
		String[ ]  timeArr = time.split(",");   
	    	
			String[]  rctgArr = rctg.split(",");
			String tm=timeArr[tim];
			String mo=rctgArr[where];

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
									<%=mo%> 
									<hr/></td>
                                </tr>
                                <tr>
                                    <td width="141" height="27">³¯Â¥: <%=date%></td>
                                </tr>
                                <tr>
                                    <td width="141" height="27">½Ã°£: <%=tm%></td>
                                </tr>
                                <tr>
                                    <td width="141" height="27">ÀÎ¿ø: <%=people%>¸í</td>
                                </tr>
                                <tr>
                                    <td width="141" height="36">
									ÁÂ¼®: <%=sit%>
									<hr/>
									</td>
                                </tr>
                                <tr>
                                    <td width="141" height="39"><font color="#25bdae" size="4"><b><%=price%>¿ø</b></font></td>
                                </tr>
                            </table>
							
                        </td>
                    </tr>
                    <tr>
                         <td width="141" height="39">
                            <table width="120" cellpadding="0" cellspacing="0" height="35" bgcolor="#21BAA5">
    <tr>
        <td width="120" align="center"><a href="reserve_write_4.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time='<%=time%>'&people=<%=people%>&sit=<%=sit%>" target="_parent"><font color="white"><b>NEXT ¢º</b></font></td>
    </tr>
</table>
                        </td>
						 </table>
						</td>
					<% } %>	
			</body>