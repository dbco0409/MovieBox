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
<table width="720" cellpadding="0" cellspacing="0" align="center" >
    <tr>
        <td width="720" valign="top">
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
	
	%>
<body>
<table width="755" cellspacing="0" bordercolordark="black" bordercolorlight="black" cellpadding="0">
    <tr>
        <td width="1157">
            <table width="755" cellpadding="0" cellspacing="0" height="320">
                <tr>
                    <td width="279"><a href="<%=image%>" target="_blank"><img src="<%=image%>" border="0" width="225" height="320"></td>
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
                                <td width="456" valign="top">
                                    <table width="470" cellpadding="0" cellspacing="0" height="83">
                                        <tr>
                                            <td width="31">기본</td>
                                            <td width="245"><%=ctg%> | 개봉일 : <%=date%> | <%=time%></td>
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
						
                                <td width="456" colspan="3" valign="top">
                                    <table width="508" cellpadding="0" cellspacing="0" height="54">
                                        <tr>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image01[0]%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image01[1]%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image02[0]%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image02[1]%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image03[0]%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image03[1]%>" width="80" height="64" border="0"></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td width="456" colspan="3">
                                    <div align="left">
                                        <a href="<%=site%>" target="_blank"><img src="img/site.gif" border="0">
                                        <a href="reserve.jsp" target="_blank"><img src="img/reser.gif" border="0">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table width="755" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="755">
						<br>&nbsp;</br>
<table width="600" height="20" cellpadding="5" cellspacing="0">
    <tr>
        <td width="109" bgcolor="#ffffff" onclick=location.href="movie_view.jsp?no=<%=no%>">
            <p align="center"><a href="movie_view.jsp?no=<%=no%>">주요정보</font></a></p>
        </td>
        <td width="10">
            <p align="center">|</p>
        </td>
        <td width="109" bgcolor="ffffff" onclick=location.href="actor.jsp?no=<%=no%>">
            <p align="center"><a href="actor.jsp?no=<%=no%>">배우/감독</a></p>
        </td>
        <td width="10">
            <p align="center">|</p>
        </td>
        <td width="109" bgcolor="#ffffff" onclick=location.href="snap.jsp?no=<%=no%>">
            <p align="center"><a href="snap.jsp?no=<%=no%>">스틸컷</a></p>
        </td>
        <td width="10">
            <p align="center">|</p>
        </td>
        <td width="109" bgcolor="#6D3A99" onclick=location.href="review.jsp?no=<%=no%>">
            <p align="center"><a href="movie_list_head.jsp?no=<%=no%>"><font color="white">리뷰</a></p>
        </td>
    </tr>
</table>	<br>&nbsp;</br>

<%
int chartno=Integer.parseInt(request.getParameter("chartno"));   
String password = request.getParameter("pwd");  

String jsql13 = "select * from movie_chart where movieno = ?";
       PreparedStatement pstmt13 = con.prepareStatement(jsql13);
       pstmt13.setInt(1, chartno);
       ResultSet rs13 = pstmt13.executeQuery();
       
	  if(!rs13.wasNull()) {
       rs13.next();
       String rs_pwd = rs13.getString("password");

       if (password.equals(rs_pwd)) 
	  {
		    int no3 = rs13.getInt("no");
           String title3 = rs13.getString("title");
     	   String name3 = rs13.getString("name").trim();
           String pwd = rs13.getString("password");
		    String chart = rs13.getString("chart").trim();
		String ctg3 = rs13.getString("ctg").trim();
		String item = rs13.getString("icon");
		String content3 = rs13.getString("content").trim();

		  %>
		  <script> 
function evalTextbox(a){ 
       document.images["myImage"].src = a;} 
</script> 
  <form action="chart_modify_result.jsp?chartno=<%=no3%>&movieno=<%=no%>" method="post" name="modify">
<p><font color="black"><b>리뷰수정하기</b></font></p>
<table width="703" cellpadding="0" cellspacing="0">
    <tr>
        <td width="460" valign="middle"> 
          <table width="460" cellpadding="3" cellspacing="3">
    <tr>
        <td width="70"><img src="img/icon.gif" align="absmiddle" /> 영화이름</td>
        <td width="258"><input type="text" name="movie_title" value="<%=title%>"></td>
    </tr>
    <tr>
        <td width="70" height="9"><img src="img/icon.gif" align="absmiddle" /> 이름</td>
        <td width="258" height="18">
<input type="text" name="name" value="<%=name3%>">
        </td>
    </tr>
    <tr>
        <td width="70"><img src="img/icon.gif" align="absmiddle" /> 비밀번호</td>
        <td width="258">
<input type="password" name="pwd" value="<%=pwd%>">
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
<% if (ctg3.equals("재미만점")) {%>
<select name="ctg3">
                <option value="재미만점" selected>재미만점</option>
                <option value="훌륭해요">훌륭해요</option>
                <option value="스릴만점">스릴만점</option>
                <option value="아름다워">아름다워</option>
                <option value="연기최고">연기최고</option>
                <option value="비주얼짱">비주얼짱</option>
                <option value="무난하네">무난하네</option>
                <option value="돈아까워">돈아까워</option>
                <option value="잔인해요">잔인해요</option>
                <option value="대박추천">대박추천</option>
					</select>

<% } else if (ctg3.equals("훌륭해요")) {%>
<select name="ctg3">
                <option value="재미만점">재미만점</option>
                <option value="훌륭해요" selected>훌륭해요</option>
                <option value="스릴만점">스릴만점</option>
                <option value="아름다워">아름다워</option>
                <option value="연기최고">연기최고</option>
                <option value="비주얼짱">비주얼짱</option>
                <option value="무난하네">무난하네</option>
                <option value="돈아까워">돈아까워</option>
                <option value="잔인해요">잔인해요</option>
                <option value="대박추천">대박추천</option>
					</select>

<% } else if (ctg3.equals("스릴만점")) {%>
<select name="ctg3">
                <option value="재미만점">재미만점</option>
                <option value="훌륭해요">훌륭해요</option>
                <option value="스릴만점" selected>스릴만점</option>
                <option value="아름다워">아름다워</option>
                <option value="연기최고">연기최고</option>
                <option value="비주얼짱">비주얼짱</option>
                <option value="무난하네">무난하네</option>
                <option value="돈아까워">돈아까워</option>
                <option value="잔인해요">잔인해요</option>
                <option value="대박추천">대박추천</option>
					</select>

					<% } else if (ctg3.equals("아름다워")) {%>
<select name="ctg3">
                <option value="재미만점">재미만점</option>
                <option value="훌륭해요">훌륭해요</option>
                <option value="스릴만점">스릴만점</option>
                <option value="아름다워" selected>아름다워</option>
                <option value="연기최고">연기최고</option>
                <option value="비주얼짱">비주얼짱</option>
                <option value="무난하네">무난하네</option>
                <option value="돈아까워">돈아까워</option>
                <option value="잔인해요">잔인해요</option>
                <option value="대박추천">대박추천</option>
					</select>

	<% } else if (ctg3.equals("연기최고")) {%>
<select name="ctg3">
                <option value="재미만점">재미만점</option>
                <option value="훌륭해요">훌륭해요</option>
                <option value="스릴만점">스릴만점</option>
                <option value="아름다워">아름다워</option>
                <option value="연기최고" selected>연기최고</option>
                <option value="비주얼짱">비주얼짱</option>
                <option value="무난하네">무난하네</option>
                <option value="돈아까워">돈아까워</option>
                <option value="잔인해요">잔인해요</option>
                <option value="대박추천">대박추천</option>
					</select>

	<% } else if (ctg3.equals("비주얼짱")) {%>
<select name="ctg3">
                <option value="재미만점">재미만점</option>
                <option value="훌륭해요">훌륭해요</option>
                <option value="스릴만점">스릴만점</option>
                <option value="아름다워">아름다워</option>
                <option value="연기최고">연기최고</option>
                <option value="비주얼짱" selected>비주얼짱</option>
                <option value="무난하네">무난하네</option>
                <option value="돈아까워">돈아까워</option>
                <option value="잔인해요">잔인해요</option>
                <option value="대박추천">대박추천</option>
					</select>

	<% } else if (ctg3.equals("무난하네")) {%>
<select name="ctg3">
                <option value="재미만점">재미만점</option>
                <option value="훌륭해요">훌륭해요</option>
                <option value="스릴만점">스릴만점</option>
                <option value="아름다워">아름다워</option>
                <option value="연기최고">연기최고</option>
                <option value="비주얼짱">비주얼짱</option>
                <option value="무난하네"  selected>무난하네</option>
                <option value="돈아까워">돈아까워</option>
                <option value="잔인해요">잔인해요</option>
                <option value="대박추천">대박추천</option>
					</select>

	<% } else if (ctg3.equals("돈아까워")) {%>
<select name="ctg3">
                <option value="재미만점">재미만점</option>
                <option value="훌륭해요">훌륭해요</option>
                <option value="스릴만점">스릴만점</option>
                <option value="아름다워">아름다워</option>
                <option value="연기최고">연기최고</option>
                <option value="비주얼짱">비주얼짱</option>
                <option value="무난하네">무난하네</option>
                <option value="돈아까워"  selected>돈아까워</option>
                <option value="잔인해요">잔인해요</option>
                <option value="대박추천">대박추천</option>
					</select>

						<% } else if (ctg3.equals("잔인해요")) {%>
<select name="ctg3">
                <option value="재미만점">재미만점</option>
                <option value="훌륭해요">훌륭해요</option>
                <option value="스릴만점">스릴만점</option>
                <option value="아름다워">아름다워</option>
                <option value="연기최고">연기최고</option>
                <option value="비주얼짱">비주얼짱</option>
                <option value="무난하네">무난하네</option>
                <option value="돈아까워">돈아까워</option>
                <option value="잔인해요"  selected>잔인해요</option>
                <option value="대박추천">대박추천</option>
					</select>

							<% } else if (ctg3.equals("대박추천")) {%>
<select name="ctg3">
                <option value="재미만점">재미만점</option>
                <option value="훌륭해요">훌륭해요</option>
                <option value="스릴만점">스릴만점</option>
                <option value="아름다워">아름다워</option>
                <option value="연기최고">연기최고</option>
                <option value="비주얼짱">비주얼짱</option>
                <option value="무난하네">무난하네</option>
                <option value="돈아까워">돈아까워</option>
                <option value="잔인해요">잔인해요</option>
                <option value="대박추천"  selected>대박추천</option>
					</select>

<% } %>

					</p>
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
                            <option value="<%=image%>">이미지 선택</option>
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
<table width="700" cellpadding="0" cellspacing="0">
    <tr>
        <td width="700">
            <table width="700" cellpadding="3" cellspacing="3">
                <tr>
                    <td width="80"><img src="img/icon.gif" align="absmiddle"/> 제목</td>
                    <td width="495">
                        <p><input type="text" name="title3" size="35" value="<%=title3%>"> <input type="checkbox" name="chk" value="실관람객" checked> 실관람객 </p>
                    </td>
                </tr>
                <tr>
                    <td width="80" height="6"><img src="img/icon.gif" align="absmiddle" /> 내용</td>
                    <td width="495" height="18"><textarea name="content" rows="22" cols="70" style="border:1px solid #ddd;" scrolling="yes"><%=content3%></textarea></td>
                </tr>
                <tr>
                    <td width="80" height="40">&nbsp;</td>
                    <td width="495" height="18">
                        <p align="right"><img src="img/submit.gif" OnClick="submit()"><a href="movie_chart_list.jsp?no=<%=no%>"><img src="img/cut.gif" border="0"></a></p>
                    </td>
                </tr>
            </table>
	
        </td>
    </tr>
</table>

</form>
<%
	 continue; } 
	  else
	  
	  %>
	
   	<h2><br><br><center><font size=5 color=red><글 수정 실패!></font></h2><br><br>
              <font size=2>비밀 번호가 틀려서 글 수정을 못했습니다.</font><p>
              <font size=2>비밀 번호를 확인해 주세요.</font><p>
              <font size=2>돌아 가시려면 <a href="javascript:history.back();"> 여기</a>를 클릭하세요.</font>
        </center>
    
	<%} }} 
		finally{}
		
				 %>