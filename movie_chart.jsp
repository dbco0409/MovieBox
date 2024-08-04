<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<%@include file="_head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>view</title>
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
	<table width="720" cellpadding="0" cellspacing="0" align="center" >
    <tr><p>&nbsp;</p>
        <td width="720" valign="top">
 <%
   try {  request.setCharacterEncoding("euc-kr");
 		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	  Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
		
		  int no = Integer.parseInt(request.getParameter("no"));     
                
	  String jsql = "select * from movie where no =?";
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

  
    rs2.close();  
	  String chart = request.getParameter("cht"); 
	%>
<table width="673" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td width="673">
            <table width="673" cellpadding="5" cellspacing="0">
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
                            <td width="508"><span id="mctg"><%=mctg%></span><hr></td>
                        </tr>
<td width="233">평가가 진행중입니다.	
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
        <td width="145" bgcolor="#ffffff" onclick=location.href="movie_view.jsp?no=<%=no%>">
            <p align="center"><a href="movie_view.jsp?no=<%=no%>">주요정보</font></a></p>
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
        <td width="145" bgcolor="#6D3A99" onclick=location.href="movie_list_head.jsp?no=<%=no%>">
            <p align="center"><a href="movie_list_head.jsp?no=<%=no%>"><font color="white">리뷰</a></p>
        </td>
    </tr>
</table>	<br>&nbsp;</br>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}

#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
</style>
<script language="javascript" src="movie_write.js">
</script>
<script> 
function evalTextbox(a){ 
       document.images["myImage"].src = a;} 
</script> 

 <form action="chart_write_result.jsp?movieno=<%=no%>" method="post" name="form2">
<table width="650" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td width="460" valign="middle"> 
          <table width="460" cellpadding="3" cellspacing="3">
    <tr>
        <td width="70"><img src="img/icon.gif" align="absmiddle" /> 영화이름</td>
        <td width="258"><%=title%></td>
    </tr>
    <tr>
        <td width="70" height="9"><img src="img/icon.gif" align="absmiddle" /> 이름</td>
        <td width="258" height="18">
<input type="text" name="name" value="<%=id%>">
        </td>
    </tr>
    <tr>
        <td width="70"><img src="img/icon.gif" align="absmiddle" /> 비밀번호</td>
        <td width="258">
<input type="password" name="pwd">
        </td>
    </tr>
    <tr>
        <td width="70"><img src="img/icon.gif" align="absmiddle" /> 평점</td>
        <td width="258">
            <p>
				<% 
											if (chart.equals("10")) {
								%>
					<select name="chart">
                            <option value="10" selected>10/10</option>
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
	<% } else if (chart.equals("9")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9" selected>9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5">5/10</option>
                            <option value="4">4/10</option>
                            <option value="3">3/10</option>
                            <option value="2">2/10</option>
                            <option value="1">1/10</option>
					</select>
						<% } else if (chart.equals("8")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8" selected>8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5">5/10</option>
                            <option value="4">4/10</option>
                            <option value="3">3/10</option>
                            <option value="2">2/10</option>
                            <option value="1">1/10</option>
					</select>
						<% } else if (chart.equals("7")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7" selected>7/10</option>
                            <option value="6">6/10</option>
                            <option value="5">5/10</option>
                            <option value="4">4/10</option>
                            <option value="3">3/10</option>
                            <option value="2">2/10</option>
                            <option value="1">1/10</option>
					</select>
						<% } else if (chart.equals("6")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6" selected>6/10</option>
                            <option value="5">5/10</option>
                            <option value="4">4/10</option>
                            <option value="3">3/10</option>
                            <option value="2">2/10</option>
                            <option value="1">1/10</option>
					</select>
						<% } else if (chart.equals("5")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5" selected>5/10</option>
                            <option value="4">4/10</option>
                            <option value="3">3/10</option>
                            <option value="2">2/10</option>
                            <option value="1">1/10</option>
					</select>
							<% } else if (chart.equals("4")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5">5/10</option>
                            <option value="4" selected>4/10</option>
                            <option value="3">3/10</option>
                            <option value="2">2/10</option>
                            <option value="1">1/10</option>
					</select>
						<% } else if (chart.equals("3")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5">5/10</option>
                            <option value="4" >4/10</option>
                            <option value="3"selected>3/10</option>
                            <option value="2">2/10</option>
                            <option value="1">1/10</option>
					</select>
					<% } else if (chart.equals("2")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5">5/10</option>
                            <option value="4" >4/10</option>
                            <option value="3">3/10</option>
                            <option value="2" selected>2/10</option>
                            <option value="1">1/10</option>
					</select>
						<% } else if (chart.equals("1")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5">5/10</option>
                            <option value="4" >4/10</option>
                            <option value="3">3/10</option>
                            <option value="2">2/10</option>
                            <option value="1" selected>1/10</option>
					</select>
<% } %>
<select name="ctg">
                <option value="재미만점">재미만점</option>
                <option value="훌륭해요">훌륭해요</option>
                <option value="스릴만점">스릴만점</option>
                <option value="아름다워">아름다워</option>
                <option value="연기최고">연기최고</option>
                <option value="비주얼짱">비주얼짱</option>
                <option value="무난하네">무난하네</option>
                <option value="돈아까워">돈아까워</option>
                <option value="잔인해요">잔인해요</option>
                <option value="대박추천">대박추천</option>
					</select></p>
        </td>
    </tr>
</table>
                    </td>
					    <td width="216">
            <table width="216" cellpadding="3" cellspacing="3">
    <tr>
                    <td width="216" height="150" valign="middle" align="left">
                       <IMG SRC="<%=image%>" width="120" height="120" name="myImage">
			<select NAME="item"  onChange="evalTextbox(form.item.options[form.item.selectedIndex].value)">

                            <option value="<%=image%>" selected>이미지 선택</option>
                            <option value="<%=image01[0]%>">이미지 1</option>
                            <option value="<%=image01[1]%>">이미지 2</option>
                            <option value="<%=image02[0]%>">이미지 3</option>
                            <option value="<%=image02[1]%>">이미지 4</option>
                            <option value="<%=image03[0]%>">이미지 5</option>
                            <option value="<%=image03[1]%>">이미지 6</option>

</select>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
            </table>
        </td>
    </tr>
</table>
            <table width="650" cellpadding="3" cellspacing="3">
                <tr>
                    <td width="80"><img src="img/icon.gif" align="absmiddle"/> 제목</td>
                    <td width="495">
                        <p><input type="text" name="title" size="35"> <input type="checkbox" name="chk" value="실관람객"> 실관람객 </p>
                    </td>
                </tr>
                <tr>
                    <td width="80" height="6"><img src="img/icon.gif" align="absmiddle" /> 내용</td>
                    <td width="495" height="18"><textarea name="content" rows="22" cols="70" style="border:1px solid #ddd;" scrolling="yes"></textarea></td>
                </tr>
                <tr>
                    <td width="80" height="40">&nbsp;</td>
                    <td width="495" height="18">
                        <p align="right"><img src="img/submit.gif" onClick="check2()"><a href="movie_list_head.jsp?no=<%=no%>"><img src="img/cut.gif" border="0"></a></p>
                    </td>
                </tr>
            </table>
	
  

</form>
   <%
   }	 }  catch(Exception e)  {
        out.println(e);
}
				  finally{}
%>
 </body>
</html>
