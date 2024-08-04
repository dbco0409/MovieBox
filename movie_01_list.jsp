<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>   
<%@include file="_head.jsp" %>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>movie_list</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#i_b{ width:49; height:30}
#reach{background-image:url('img/reach_beg.gif');}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d;}
a:active{color:#662c92; font-weight:bold;}
</style>
</head>

<body>
	<table width="890" cellpadding="0" cellspacing="0" align="center" >
    <tr>
        <td width="800" height="33" colspan="2" valign="top">
<div id="l_2" style="width:890px; height:33px; position:absolute; z-index:1;background-image:url('images/line_beg.gif');">
<table cellpadding="0" cellspacing="0"  >
                    <tr>
					<td width="35"></td>
                    <td width="76"><a href="movie_01_list.jsp" ><img src="images/click4.gif" width="76" height="26" border="0" id="submenu4"/></a></td>
                    <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                    <td width="65"><a href="movie_02_list.jsp"><img src="images/sub5.gif" width="79" height="26" border="0" id="submenu5"/></a></td>
                       
                    </tr>
            </table>
            </div></td>
    </tr>
    <tr>
        <td width="182" valign="top"> 
		 <table width="192" height="100%" cellpadding="0" cellspacing="0" style="background-image:url('images/right_bar.gif')">
                    <tr>
                        <td width="182" height="15">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="182" height="46" background="images/right_bar2.gif">
                            <table width="150" cellpadding="0" cellspacing="0" align="center">
                                <tr>
                                    <td width="182" height="31">
                                        <p align="left"><img src="images/menu_movie.gif" width="132" height="19" border="0"></p>
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
                                    <td width="182" height="80" valign="top">
                                        <p><a href="movie_01_list.jsp"><img src="images/c_4.gif" width="95" height="20" border="0" id="menu4"></p>
                                        <p><a href="movie_02_list.jsp"><img src="images/s_5.gif" width="106" height="19" border="0" id="menu5"></p>
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
        <td width="720" height="100%" valign="top">
		
		<div style="width:720px; height:100%; position:absolute; z-index:1">
		<br>&nbsp;</br>
		<img src="img/movie01.gif">
<%
	request.setCharacterEncoding("euc-kr");
 String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 


     String jsql2 = "select * from movie where open='y' order by date";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql2);
	 ResultSet  rs = pstmt.executeQuery();



while(rs.next()){
			String image = rs.getString("image");
			int no = rs.getInt("no");
			String date = rs.getString("date");
			String title = rs.getString("title");
    		String director =  rs.getString("director");	    
			String  actor = rs.getString("actor");
		
			
%>
	<div style="width:300px; height:200px; z-index:1; float:left">
        <table width="300" height="200" cellpadding="0" cellspacing="0">
            <tr>
                <td width="110"><a href="movie_view.jsp?no=<%=no%>"><img src="<%=image%>" border="0" width="107" height="160" /></td>
                <td width="250" valign="middle">
                   <table width="250" height="100" cellpadding="3" cellspacing="3">
    <tr>
        <td width="188" colspan="2"><img src="img/icon.gif" align="absmiddle" /> <b><%=title%></b></td>
    </tr>
    <tr>
        <td width="73"><img src="img/icon.gif" align="absmiddle" /> 개봉일:</td>
        <td width="188"><font color="#632C94"><b><%=date%></b></font></td>
    </tr>
    <tr>
        <td width="73"><img src="img/icon.gif" align="absmiddle" /> 감독:</td>
        <td width="188"><%=director%></td>
    </tr>
    <tr>
        <td width="73"><img src="img/icon.gif" align="absmiddle" /> 출연:</td>
        <td width="188"><%=actor%></td>
    </tr>
    <tr>
        <td width="291" height="30" colspan="2">
            <table width="172" cellpadding="0" cellspacing="0">
    <tr>
        <td width="43">
            <p><a href="movie_view.jsp?no=<%=no%>"><img src="img/m_b1.gif" border="0"></a></p>
        </td>
        <td width="43">
            <p><a href="reserve_write_1.jsp"><img src="img/m_b2.gif" border="0"></p>
        </td>
        <td width="43">
            <p><a href="snap.jsp?no=<%=no%>"><img src="img/m_b3.gif" border="0"></a></p>
        </td>
        <td width="43">
            <p><a href="movie_list_head.jsp?no=<%=no%>"><img src="img/m_b4.gif" border="0"></a></p>
        </td>
    </tr>
</table>
</td>
</tr>	
</table>
</td>
</tr>
</table>	
    </div>
	
		<%
		}	%>

   