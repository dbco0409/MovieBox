<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<%@include file="_head.jsp" %>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>시간, 날짜, 좌석 선택</title>
<style type="text/css">
hr { height:1px; color:#744c92}
td { color:#ffffff; font-family:"맑은 고딕", "돋움"; font-size:9pt;}
span {color:Red;font-weight:bold;}
a, a:link, a:visited { color:#a8a8a8; font-family:"맑은 고딕", "돋움"; font-size:9pt; text-decoration: none}
a:active {color:#662e91; font-weight:bold; text-decoration: none}
</style>

</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
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
<%
  request.setCharacterEncoding("euc-kr");
 int reserve_no = Integer.parseInt(request.getParameter("reserve_no"));  
	 int where= Integer.parseInt(request.getParameter("where"));
	 %>
<table width="680" bgcolor="#6B2C8C" cellpadding="0" cellspacing="0" height="350">
    <tr>
        <td width="532" height="350" valign="middle" align="center">
            <table width="500" cellpadding="0" cellspacing="0" height="325" bgcolor="white" align="center">
                <tr>
                    <td width="321">
                        <table width="510" cellpadding="5" cellspacing="0">
                            <tr>
                                <td width="500" colspan="5">
                                    <p align="center"><img src="img/res_2.gif" border="0"></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="158" colspan="2"><img src="img/res_03.gif" border="0"></td>
                                <td width="183" colspan="2"><img src="img/res_04.gif" border="0"></td>
                                <td width="139"><img src="img/res_05.gif"  border="0"></td>
                            </tr>
                            <tr>
                                <td width="133"  valign="top" rowspan="4">
                                  <div style="padding:10px; width:130px; height:236px; border:2px solid #a8a8a8; position:relative; overflow:auto">
<%

	   try{   String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속   
String jsql = "select str_m, str_d from reserve_adm where reserve_no=?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setInt(1, reserve_no);
		ResultSet rs = pstmt.executeQuery();
		
		 rs.next();

		 int str_m=rs.getInt("str_m");
		int str_d=rs.getInt("str_d");

		String jsql2 = "select month, days, day from date where month like ? and days>=?";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setInt(1, str_m);
			pstmt2.setInt(2, str_d);
		ResultSet rs2 = pstmt2.executeQuery();
		
		 if(!rs2.wasNull()) {
            while(rs2.next()){
				int days=rs2.getInt("days");
		String date=rs2.getInt("month")+"월 "+rs2.getInt("days")+"일 ("+rs2.getString("day")+")";
  %>
  <a href="reserve_time.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=days%>" target="time"><%=date%></a>
 </p>
    <% } } %>
  </div>
                                </td>
                                <td width="15" valign="middle" rowspan="4"><img src="img/res_next.gif" width="22" height="29" border="0"></td>
                                <td width="152" valign="top" rowspan="4">
								 <iframe src="time_none.jsp" frameborder="2" style="border:2px solid #a8a8a8" name="time" width="152" height="235" scrolling="yes"></iframe>
								</td>
                                <td width="21" valign="middle" rowspan="4"><img src="img/res_next.gif" border="0"></td>
                                <td width="139" valign="top" height="51">
									 <iframe src="people_none.jsp" frameborder="2" style="border:2px solid #a8a8a8" name="people" width="130" height="40" scrolling="no"></iframe>
								</td>
                            </tr>
                            <tr>
                                <td width="139" height="7" valign="top"><img src="img/res_06.gif"  border="0"></td>
                            </tr>
                            <tr>
                                <td width="139" height="152" valign="top"><iframe frameborder="2" style="border:2px solid #a8a8a8" name="sitN" width="130" height="152" scrolling="no"></iframe></td>
                            </tr>
                        </table>
                     </td>
                </tr>
            </table>
        </td>
       <td width="148" valign="top" align="left">
<iframe frameborder="0" src="reserve_ing1.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>" name="ing" width="148" height="350" scrolling="no" allowTransparency=false ></iframe>

				</td>
    </tr>
</table>
 <%
 }
				  finally{}
				 %>
           <p>&nbsp;</p>
<%@include file="_tail.jsp" %>