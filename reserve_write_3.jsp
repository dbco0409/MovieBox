<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<%@include file="_head.jsp" %>
	 <style type="text/css">
a:link, a:visited { color:#a8a8a8; font-family:"맑은 고딕", "돋움"; font-size:9pt; text-decoration: none}
p{font-family:"맑은 고딕", "돋움"; font-size:9pt; color:#000000}
a:active {color:#662e91; font-weight:bold;}
hr { height:1px; color:#744c92}
td { color:#ffffff; font-family:"맑은 고딕", "돋움"; font-size:9pt;}
</style>
<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<%
    request.setCharacterEncoding("euc-kr");
	 int reserve_no = Integer.parseInt(request.getParameter("reserve_no"));  
	 int where= Integer.parseInt(request.getParameter("where"));
	  int days=Integer.parseInt(request.getParameter("date")); 
	int tim=Integer.parseInt(request.getParameter("time"));
	int people=Integer.parseInt(request.getParameter("people")); 
	int price=Integer.parseInt(request.getParameter("price")); 
	String siter[]=request.getParameterValues("sit");
	String sit="";

for (int i=0;i<siter.length;i++){
		sit+=siter[i]+" ";
	}
%>
<form action="reserve_write_result.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&days=<%=days%>&tim=<%=tim%>&people=<%=people%>&price=<%=price%>&sit=<%=sit%>" method="post">
<table width="890" cellpadding="0" cellspacing="0" align="center" >
    <tr>
        <td width="800" height="33" colspan="2" valign="top">
<div id="l_1" style="width:890px; height:33px; position:absolute; margin:0 auto;z-index:1; background-image:url('images/line_beg.gif');">
                <table cellpadding="0" cellspacing="0" width="336"  >
                    <tr>
                        <td width="35"></td>
                        <td width="78"><a href="reserve_m.jsp" ><img src="images/sub1.gif" width="60" height="26" border="0" id="submenu1"/></a></td>
                        <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                        <td width="74"><a href="reserve_write_1.jsp"><img src="images/click2.gif" width="84" height="17" border="0"  id="submenu2"/></a></td>
                        <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                        <td width="95"><a href="reserve_cut.jsp" ><img src="images/sub3.gif" width="87" height="26" border="0"  id="submenu3"/></a></td>
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
                        <td width="182" height="40" background="images/right_bar3.gif" valign="top">
                            <table width="160" cellpadding="0" cellspacing="0" align="center">
                                <tr>
                                    <td width="182" height="120" valign="top">
                                        <p><a href="reserve_m.jsp"><img src="images/s_1.gif" width="95" height="20" border="0" id="menu1"></a></p>
                                        <p><a href="reserve_write_1.jsp"><img src="images/c_2.gif" width="103" height="19" border="0" id="menu2"></a></p>
                                        <p><a href="reserve_cut.jsp"><img src="images/s_3.gif" width="95" height="20" border="0" id="menu3"></a></p>
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
		<img src="img/fastre.gif">
<table width="680" bgcolor="#6B2C8C" cellpadding="0" cellspacing="0" height="350">
    <tr>
        <td width="532" height="350" valign="middle" align="right">
            <table width="480" cellpadding="0" cellspacing="0" height="325" bgcolor="white" align="right">
                <tr>
                    <td width="321">
                        <table width="450" cellpadding="10" cellspacing="0"  align="center">
                            <tr>
                                <td width="450">
                                    <p align="center"><img src="img/res_3.gif" border="0"></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="450" height="283" valign="middle"  align="center">
                                    <table width="450" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="34"><p><img src="img/list_icon.gif" width="12" height="10" border="0">아이디</p></td>
                                            <td height="34">
                                                <p align="right"><%=id%></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="34"><p><img src="img/list_icon.gif" width="12" height="10" border="0">신용카드 번호</p></td>
                                            <td height="34">
                                                <p align="right"><input type="text" name="card1" size="3">-<input type="text" name="card2" size="3">-<input type="text" name="card3" size="3">-<input type="text" name="card4" size="3"></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="34"><p><img src="img/list_icon.gif" width="12" height="10" border="0">유효기간</p></td>
                                            <td height="34">
                                                <p align="right"><input type="text" name="Caryear" size="4">년 <input type="text" name="Carmonth" size="4"></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="34"><p><img src="img/list_icon.gif" width="12" height="10" border="0">비밀번호</p></td>
                                            <td height="34">
                                                <p align="right"><input type="password" name="Carpwd" size="3">**</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="34"><p><img src="img/list_icon.gif" width="12" height="10" border="0">주민번호</p></td>
                                            <td height="34">
                                                <p align="right"><input type="password" name="Joomin" size="3"></p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="34"><p><img src="img/list_icon.gif" width="12" height="10" border="0">결제금액</p></td>
                                            <td height="34">
                                                <p align="right"><%=price%>원</p>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                     </td>
                </tr>
            </table>
        </td>

       <td width="148" valign="top" align="left">
  <%
	

		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속   
	 
String date;
String jsql2 = "select month, days, day from date where days like ?";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setInt(1, days);
			ResultSet rs2 = pstmt2.executeQuery(); 
rs2.next();
	date=rs2.getInt("month")+"월 "+rs2.getInt("days")+"일 ("+rs2.getString("day")+")";
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
<td width="141" height="350" valign="middle"> 
	  <table width="141" cellpadding="0" cellspacing="0">
                                <tr>
                    <td width="141" height="32">
                        영화
                    </td>
                                </tr>
                                <tr>
                                    <td width="141" height="32">
									<%=subject%>
									<hr/></td>
                                </tr>
                                <tr>
                                    <td width="141" height="29">극장</td>
                                </tr>
                                <tr>
                                    <td width="141" height="29">
									<%=mo%> 
									<hr/></td>
                                </tr>
                                <tr>
                                    <td width="141" height="27">날짜: <%=date%></td>
                                </tr>
                                <tr>
                                    <td width="141" height="27">시간: <%=tm%></td>
                                </tr>
                                <tr>
                                    <td width="141" height="27">인원: <%=people%>명</td>
                                </tr>
                                <tr>
                                    <td width="141" height="36">
									좌석: <%=sit%>
									<hr/>
									</td>
                                </tr>
                <tr>
                    <td width="141" height="39">
                        <p><font color="#25bdae" size="4"><b><%=price%>원</b></font></p>
                        <table width="120" cellpadding="0" cellspacing="0" height="35" bgcolor="#21BAA5">
                            <tr>
                                <td width="120" align="center"><a href="#" onClick="submit()"><font color="white"><b>NEXT ▶</b></font></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                            </table>
							
                        </td>
              
                   
                         <td width="141" height="39">
            <p>&nbsp;</p>
                        </td>
						 </table>
						</td>
					<% } %>	
				
    </tr>
</table>
</form>
   <p>&nbsp;</p>
<%@include file="_tail.jsp" %>