<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<%@include file="_head.jsp" %>
 <style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d;}
a:active{color:#662c92; font-weight:bold;}
</style>
<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
 <%
    request.setCharacterEncoding("euc-kr");
	 int reserve_no = Integer.parseInt(request.getParameter("reserve_no"));  
	 int where= Integer.parseInt(request.getParameter("where"));
	  int days=Integer.parseInt(request.getParameter("days")); 
	int tim=Integer.parseInt(request.getParameter("tim"));
	int people=Integer.parseInt(request.getParameter("people")); 
	String siter[]=request.getParameterValues("sit");
	String sit="";

for (int i=0;i<siter.length;i++){
		sit+=siter[i]+" ";
	}

String card=request.getParameter("card1")+"-"+request.getParameter("card2")+"-"+request.getParameter("card3")+"-"+request.getParameter("card4");
String cardDate=request.getParameter("Caryear")+"-"+request.getParameter("Carmonth");
int Carpwd=Integer.parseInt(request.getParameter("Carpwd")); 
int Joomin=Integer.parseInt(request.getParameter("Joomin")); 
int price=Integer.parseInt(request.getParameter("price")); 


		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속   
	 
String date;
String jsql5 = "select month, days, day from date where days like ?";
		PreparedStatement pstmt5 = con.prepareStatement(jsql5);
			pstmt5.setInt(1, days);
			ResultSet rs5 = pstmt5.executeQuery(); 
rs5.next();
	date=rs5.getInt("month")+"월 "+rs5.getInt("days")+"일 ("+rs5.getString("day")+")";
rs5.close();

	 String jsql11 = "select * from reserve_adm where reserve_no=?";
		PreparedStatement pstmt11 = con.prepareStatement(jsql11);
		pstmt11.setInt(1, reserve_no);
		ResultSet rs11 = pstmt11.executeQuery();

           rs11.next();
	String rctg = rs11.getString("rctg");
	String subject = rs11.getString("subject");
	String time=rs11.getString("time");
	int sitall=rs11.getInt("sit");
		String[ ]  timeArr = time.split(",");      	
			String[]  rctgArr = rctg.split(",");
			String tm=timeArr[tim];
			String mo=rctgArr[where];

			rs11.close();

int munsit=sitall-people;

String jsql132 = "update reserve_adm set sit=? where reserve_no=?";
	PreparedStatement pstmt132 = con.prepareStatement(jsql132);
	pstmt132.setInt(1, munsit);
	pstmt132.setInt(2, reserve_no);
	  pstmt132.executeUpdate();


String jsql = "select MAX(cartno) from reserve_cart";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery(); 

	int no;
    if (rs == null) {  
        no = 1;
    }  else {    	  
       	rs.next();
       	no = rs.getInt(1) + 1;
    } 
   	
    rs.close();    



	String jsql2 = "INSERT INTO reserve_cart (cartno, movie, megabox, date, time, people, sit, price, id, card, cardDate, pwd, Joomin, days) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt2 = con.prepareStatement(jsql2);
pstmt2.setInt(1, no);
pstmt2.setString(2, subject);
pstmt2.setString(3, mo);
pstmt2.setString(4, date);
pstmt2.setString(5, tm);
pstmt2.setInt(6, people);
pstmt2.setString(7, sit);
pstmt2.setInt(8, price);
pstmt2.setString(9,id);
pstmt2.setString(10, card);
pstmt2.setString(11, cardDate);
pstmt2.setInt(12, Carpwd);
pstmt2.setInt(13, Joomin);
pstmt2.setInt(14, days);
pstmt2.executeUpdate();

  %>
<table width="890" cellpadding="0" cellspacing="0" align="center" >
    <tr>
        <td width="800" height="33" colspan="2" valign="top">
<div id="l_1" style="width:890px; height:33px; position:absolute; top:110px; margin:0 auto;z-index:1; background-image:url('images/line_beg.gif');">
                <table cellpadding="0" cellspacing="0" width="336"  >
                    <tr>
                        <td width="35"></td>
                        <td width="78"><a href="reserve_m.jsp" ><img src="images/sub1.gif" width="60" height="26" border="0" id="submenu1"/></a></td>
                        <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                        <td width="74"><a href="reserve_write_1.jsp"><img src="images/click2.gif" width="84" height="17" border="0"  id="submenu2"/></a></td>
                        <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                        <td width="95"><a href="cut_list.jsp" ><img src="images/sub3.gif" width="87" height="26" border="0"  id="submenu3"/></a></td>
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
                                        <p><a href="reserve_list.jsp"><img src="images/s_1.gif" width="95" height="20" border="0" id="menu1"></a></p>
                                        <p><a href="reserve_write_1.jsp"><img src="images/c_2.gif" width="103" height="19" border="0" id="menu2"></a></p>
                                        <p><a href="cut_list.jsp"><img src="images/s_3.gif" width="95" height="20" border="0" id="menu3"></a></p>
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
		<img src="img/fastre.gif">
<table width="663" height="360" cellpadding="0" cellspacing="0" bgcolor="#6B2C8C">
    <tr>
        <td width="946" align="center" valign="middle">
            <table width="643" cellpadding="0" cellspacing="0" height="330" bgcolor="white">
                <tr>
                    <td width="653">
                        <table width="415" cellpadding="0" cellspacing="0" height="324" align="center">
                            <tr>
                                <td width="633">
                                    <p align="center"><img src="img/res_4.gif" border="0"></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="633">
                                    <p align="center"><img src="img/reserve.gif" width="186" height="93" border="0"></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="633">
                                    <table width="308" cellpadding="0" cellspacing="0" height="71" bgcolor="#E6E6E6" align="center">
                                        <tr>
                                            <td width="405" align="center">
                                                <%=id%> | <%=subject%> | <%=mo%></br>
                                                <br><%=tm%> | <%=date%> | <%=sit%></br>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="633">
                                    <p align="center"><a href="reserve_cut.jsp?cartno=<%=no%>" target="_self"><img src="img/reserve_1.gif" width="97" height="34" border="0"></a> <a href="reserve_cut.jsp?cartno=<%=no%>" target="_self"><img src="img/reserve_2.gif" width="72" height="34" border="0"></a></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
   <p>&nbsp;</p>
<%@include file="_tail.jsp" %>