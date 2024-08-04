<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*, java.util.*" %>   
<%@include file="_head.jsp" %>
 <style type="text/css">
a:link, a:visited { color:#000; font-family:"맑은 고딕", "돋움"; font-size:9pt; text-decoration: none}
p{font-family:"맑은 고딕", "돋움"; font-size:9pt; color:#000000}
a:active {color:#662e91; font-weight:bold;}
hr { height:1px; color:#744c92}
td { font-family:"맑은 고딕", "돋움"; font-size:9pt;}
</style>
<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<%                       
	if (id == null)   
{   
%>
<center>
<br><br><br> 
<font style="font-size:10pt;font-family:맑은 고딕">
		예매 내역을 보기 위해서는 로그인이 필요합니다! <br>
		비회원 예매 확인은 ARS를 이용하시기 바랍니다.<br>	
		<a href="login.jsp" ><img src="img/login.gif" border=0></a>
</font>
</center>
<% } else { %>
<table width="890" cellpadding="0" cellspacing="0" align="center" valign="top">
    <tr>
        <td width="800" height="33" colspan="2" valign="top">
<div id="l_5" style="width:890px; height:33px; position:absolute; top:110px; margin:0 auto;z-index:1; background-image:url('images/line_beg.gif');">
                 <table cellpadding="0" cellspacing="0">
                <tr>
				<td width="35"></td>
                    <td width="87"><a href="updataMember.jsp" ><img src="images/sub11.gif" border="0" id="submenu10"/></a></td>
                    <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                    <td width="83"><a href="reserve_cut.jsp" ><img src="images/click10.gif" border="0" id="submenu11"/></a></td>
                    <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                    <td width="58"><a href="deleteMember.jsp"><img src="images/sub12.gif" width="58" height="26" border="0" id="submenu12"/></a></td>
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
                    <td width="182" height="100" valign="top">
                        <p><a href="updataMember.jsp"><img src="images/s_11.gif" border="0" id="menu10"></a></p>
                        <p><a href="reserve_cut.jsp"><img src="images/c_10.gif" border="0" id="menu11"></a></p>
<a href="deleteMember.jsp"><img src="images/s_12.gif" width="69" height="18" border="0" id="menu12"></a></td>
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
        <td width="720" valign="top">
		<p>&nbsp;</p>
<table width="666" cellpadding="0" cellspacing="0">
    <tr>
        <td width="666"><img src="img/reser_t.gif" width="673" height="40" border="0"></td>
    </tr>
    <tr>
        <td width="666">가장 최근 예매한 내역입니다. <p></td>
    </tr>
</table>
<%
	request.setCharacterEncoding("euc-kr");
 String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 


  String jsql2 = "select * from reserve_cart where id=?";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql2);
	 	 pstmt.setString(1, id);	
	 ResultSet  rs = pstmt.executeQuery();
boolean rch=false;

	rs.next();

			int cartno=rs.getInt("cartno");
			int days=rs.getInt("days");
			id= rs.getString("id");
    		String movie =  rs.getString("movie");
			String megabox =  rs.getString("megabox");
				String date =  rs.getString("date");
				String time =  rs.getString("time");
String people =  rs.getString("people");
String sit =  rs.getString("sit");
String price =  rs.getString("price");

rs.close();

	String jsqlimage = "select image, no from movie where title = ?";
		PreparedStatement pstmtimage = con.prepareStatement(jsqlimage);
		pstmtimage.setString(1, movie);
		ResultSet rsimage = pstmtimage.executeQuery();
           
		   rsimage.next();
String image =  rsimage.getString("image");
int no=rsimage.getInt("no");
			
rsimage.close();
%>
<table border="2" width="666" cellspacing="0" height="155" bordercolor="#EFEFEF" bordercolordark="#EFEFEF" bordercolorlight="#F7F3F7">
    <tr>
        <td width="658">
            <table width="660" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="96" height="136" rowspan="4"><a href="movie_view.jsp?no=<%=no%>"><img src="<%=image%>" width="92" height="132" border="0"></a></td>
                    <td width="21%" height="23"><img src="img/reserve_01.gif" width="60" height="20" border="0"></td>
                    <td width="30%" height="23"><a href="movie_view.jsp?no=<%=no%>"><%=movie%></a></td>
                    <td width="12%" height="23"><img src="img/reserve_02.gif" width="62" height="17" border="0"></td>
                    <td width="22%" height="23">0052-1024-1212-<%=no%></td>
                </tr>
                <tr>
                    <td width="21%" height="23"><img src="img/reserve_03.gif" width="62" height="17" border="0"></td>
                    <td width="30%" height="23"><%=time%></td>
                    <td width="12%" height="23"><img src="img/reserve_04.gif" width="62" height="16" border="0"></td>
                    <td width="22%" height="23"><%=date%></td>
                </tr>
                <tr>
                    <td width="21%" height="23"><img src="img/reserve_05.gif" width="63" height="17" border="0"></td>
                    <td width="30%" height="23"><%=megabox%></td>
                    <td width="12%" height="23"><img src="img/reserve_06.gif" width="62" height="16" border="0"></td>
                    <td width="22%" height="23"><%=sit%></td>
                </tr>
                <tr>
                    <td width="21%" height="23"><img src="img/reserve_07.gif" width="64" height="18" border="0"></td>
                    <td width="30%" height="23"><%=price%></td>
                    <td width="12%" height="23"><img src="img/reserve_08.gif" width="41" height="14" border="0"></td>
                    <td width="22%" height="23"><%=people%></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table width="660" cellpadding="0" cellspacing="0">
    <tr>
        <td width="1303">
            <p align="right"><a href="reserve_mdelete.jsp?cartno=<%=cartno%>"><img src="img/reserve_2.gif" width="72" height="34" border="0"></a></p>
        </td>
    </tr>
</table>
<!--여기서 부터는 취소내역-->
<table width="666" cellpadding="0" cellspacing="0">
    <tr>
        <td width="666"><img src="img/cut_t.gif" width="668" height="42" border="0"></td>
    </tr>
    <tr>
        <td width="666">가장 최근 예매 취소한 내역입니다. <p></td>
    </tr>
</table>
<table width="660" cellpadding="0" cellspacing="0">
    <tr>
        <td width="22" height="25" bgcolor="#EFEFEF">
            <p align="left">&nbsp;</p>
        </td>
        <td width="142" height="25" bgcolor="#EFEFEF">
            <p align="center">관람영화</p>
        </td>
        <td width="165" height="25" bgcolor="#EFEFEF">
            <p align="center">관람극장</p>
        </td>
        <td width="165" height="25" bgcolor="#EFEFEF">
            <p align="center">관람일시</p>
        </td>
        <td width="166" height="25" bgcolor="#EFEFEF">
            <p align="center">결제금액</p>
        </td>
    </tr>
    <tr>
<% 
 String jsql97 = "select * from reserve_cut where id=?";   
	 PreparedStatement  pstmt97 = con.prepareStatement(jsql97);
	 	 pstmt97.setString(1, id);	
	 ResultSet  rs43 = pstmt97.executeQuery();

	rs43.next();

if(rs43.next()) 
rch=true;
else
rch=false;

if (rch){

 
 String movie2 =  rs43.getString("movie");
String megabox2 =  rs43.getString("megabox");
String date2 =  rs43.getString("date");
String people2 =  rs43.getString("people");
String sit2 =  rs43.getString("sit");
String price2 =  rs43.getString("price");

	%>
        <td width="22" height="25">
            <p align="left"><img src="img/list_icon.gif" width="12" height="10" border="0"> </p>
        </td>
        <td width="142" height="25">
            <p align="center"><%=movie2%></p>
        </td>
        <td width="165" height="25">
            <p align="center"><%=megabox2%></p>
        </td>
        <td width="165" height="25">
            <p align="center"><%=date2%> <%=sit2%></p>
        </td>
        <td width="166" height="25">
            <p align="center"><%=price2%>(<%=people2%>매)</p>
        </td>
    </tr>
</table>
<% } else {%>
	
 <tr>
        <td width="660" colspan="5">
            <p align="center">취소한 내역이 없습니다.</p>
        </td>
    </tr>
<% } } %>