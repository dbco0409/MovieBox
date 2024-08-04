<%@ page contentType="text/html;charset=euc-kr" %>
<%@include file="movie_view_head.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> movie1_write </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
 </head>
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
   <body>
   <%
		  request.setCharacterEncoding("euc-kr");
		int chartno=Integer.parseInt(request.getParameter("chartno"));       
		String jsql78 = "select * from movie_chart where no = ?";
		PreparedStatement pstmt78 = con.prepareStatement(jsql78);
		pstmt78.setInt(1, chartno);	
		ResultSet rs78 = pstmt78.executeQuery();

       if(!rs78.wasNull()) {
           rs78.next();
		    int no3 = rs78.getInt("no");
           String title3 = rs78.getString("title").trim();
     	   String name3 = rs78.getString("name").trim();
           String pwd = rs78.getString("password");
		    String chart = rs78.getString("chart").trim();
		String ctg3 = rs78.getString("ctg").trim();
		String item = rs78.getString("icon");
		String content3 = rs78.getString("content").trim();
   %> 
   
 <form action="chart_modify_result.jsp" method="post" name="modify">
<p><font color="black"><b>리뷰수정하기</b></font></p>
<table width="703" cellpadding="0" cellspacing="0">
    <tr>
        <td width="460" valign="middle"> 
          <table width="460" cellpadding="3" cellspacing="3">
    <tr>
	<input type="hidden" name="no" value="<%= no %>">
        <td width="70"><img src="img/icon.gif" align="absmiddle" /> 영화이름</td>
        <td width="258"><%=title%></td>
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
                        <p><input type="text" name="title" size="35" value="<%=title%>"> <input type="checkbox" name="chk" value="실관람객" checked> 실관람객 </p>
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
        } }
       rs.close();
       con.close();
%>

<% } 
		finally{}
		
				 %>
 </body>
</html>
