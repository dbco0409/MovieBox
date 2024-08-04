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
#mctg, p{font-size:9pt; color:#8f8f8f;}
#i_b{ width:49; height:30}
hr{color:#e3e1d5;}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d; font-weight:bold; font-size:10pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
		<p>&nbsp;</p>
 <%
   try {  request.setCharacterEncoding("euc-kr");
 	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	  Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
		
		  int no = Integer.parseInt(request.getParameter("no"));          
		String chartimg="";  
                
	  String jsql = "select * from movie where no = ?";
       PreparedStatement pstmt = con.prepareStatement(jsql);
       pstmt.setInt(1, no);
       ResultSet rs = pstmt.executeQuery();

     while(rs.next()) 
  		{
		    String title = rs.getString("title").trim();
           String stitle = rs.getString("stitle").trim();
           String ctg = rs.getString("ctg").trim();
		      String mctg = rs.getString("mctg").trim();
			   String date = rs.getString("date").trim();
			   String time = rs.getString("time").trim();
		      String director = rs.getString("director").trim();
			   String actor = rs.getString("actor").trim();
			     String level = rs.getString("level").trim();
			   String site = rs.getString("site").trim();
			    String image = rs.getString("image").trim();
			      String content = rs.getString("content").trim();

  String  jsql2 = "select * from movie_snap where no =?";

       PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	   pstmt2.setInt(1, no);
	   ResultSet rs2 = pstmt2.executeQuery();

     rs2.next();
           String image1 = rs2.getString("image1");
		   String image2 = rs2.getString("image2");
		    String image3 = rs2.getString("image3");

	String[]  image01 = image1.split(",");   
	String[]  image02 = image2.split(",");  
	String[]  image03 = image3.split(",");  

	%>
<form action="movie_chart.jsp?no=<%=no%>" method="post" name="form">
<table width="720" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td width="720">
            <table width="720" cellpadding="5" cellspacing="0">
                <tr>
                    <td width="279" valign="top"><a href="<%=image%>" target="_blank"><img src="<%=image%>" border="0" width="180" height="280" align="top"></td>
                    <td width="476">
                        <table width="507" cellpadding="0" cellspacing="3" height="317">
                            <tr>
                                <td width="508" height="34"><font size="5"><b><%=title%></b></td>
                            </tr>
                            <tr>
                                <td width="508" height="17"><font color="#8d8d8d"><b><%=stitle%></b></td>
                            </tr>
							 <tr>
                            <td width="508"><font color="#8d8d8d"><%=mctg%><hr></td>
                        </tr>
<td width="233">평가하기 : <select name="cht">
								<option value="10">10/10</option>
								<option value="9">9/10</option>
								<option value="8">8/10</option>
								<option value="7">7/10</option>
								<option value="6">6/10</option>
								<option value="5">5/10</option>
								<option value="4">4/10</option>
								<option value="3">3/10</option>
								<option value="2">2/10</option>
								<option value="1">1/10</option>
								</select>
								<input type="submit" value="평가하기">		
								</td>
                            <tr>
                                <td width="460" valign="top">
                                    <table width="460" cellpadding="0" cellspacing="0" height="83">
                                        <tr>
                                            <td width="31">기본</td>
                                            <td width="245"><%=ctg%> | 개봉일 : <%=date%> | <%=time%>분</td>
                                        </tr>
                                        <tr>
                                            <td width="31">감독</td>
                                            <td width="245"><%=director%> </td>
                                        </tr>
                                        <tr>
                                            <td width="31">출연</td>
                                            <td width="245"><%=actor%></td>
                                        </tr>
                                        <tr>
                                            <td width="31">등급</td>
                                            <td width="245"><%=level%></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
						
                                <td width="460" colspan="0">
                                    <table width="460" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="70"><a href="snap.jsp?no=<%=no%>"><img src="<%=image01[0]%>" width="70" height="64" border="0"></td>
                                            <td width="70"><a href="snap.jsp?no=<%=no%>"><img src="<%=image01[1]%>" width="70" height="64" border="0"></td>
                                            <td width="70"><a href="snap.jsp?no=<%=no%>"><img src="<%=image02[0]%>" width="70" height="64" border="0"></td>
                                            <td width="70"><a href="snap.jsp?no=<%=no%>"><img src="<%=image02[1]%>" width="70" height="64" border="0"></td>
                                            <td width="70"><a href="snap.jsp?no=<%=no%>"><img src="<%=image03[0]%>" width="70" height="64" border="0"></td>
											 <td width="70"><a href="snap.jsp?no=<%=no%>"><img src="<%=image03[1]%>" width="70" height="64" border="0"></td>
  
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="456" height="45" valign="bottom" colspan="3" align="right">
                                    <div align="left">
                                        <a href="<%=site%>" target="_blank"><img src="img/site.gif" border="0">
                                        <a href="reserve_write_1.jsp"><img src="img/reser.gif" border="0">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
			<br>&nbsp;</br>
   <table width="603" height="25" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td width="145" bgcolor="#6D3A99" onclick=location.href="movie_view.jsp?no=<%=no%>">
            <p align="center"><a href="movie_view.jsp?no=<%=no%>"><font color="white">주요정보</font></a></p>
        </td>
        <td width="10">
            <p align="center">|</p>
        </td>
        <td width="145" bgcolor="#ffffff" onclick=location.href="actor.jsp?no=<%=no%>">
            <p align="center"><a href="actor.jsp?no=<%=no%>">배우/감독</a></p>
        </td>
        <td width="10">
            <p align="center">|</p>
        </td>
        <td width="145" bgcolor="#ffffff" onclick=location.href="snap.jsp?no=<%=no%>">
            <p align="center"><a href="snap.jsp?no=<%=no%>">스틸컷</a></p>
        </td>
        <td width="10">
            <p align="center">|</p>
        </td>
        <td width="145" bgcolor="#ffffff" onclick=location.href="movie_list_head.jsp?no=<%=no%>">
            <p align="center"><a href="movie_list_head.jsp?no=<%=no%>">리뷰</a></p>
        </td>
    </tr>
</table>	
<br>&nbsp;</br>
<table width="700" align="center" style="word-wrap: break-word; table-layout: fixed">
<tr><td><pre style="width: 600; height: 100%; overflow: auto;"><%=content%></td></tr></table>
					</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</form>
	<%
	     }  // while문의 끝
 %>

        <%
		 }  catch(Exception e)  {
        out.println(e);
}
				  finally{}
%>
</td>
</tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<%@include file="_tail.jsp" %>