<%@ page contentType="text/html;charset=euc-kr" %>
<%@include file="_head.jsp"%>
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

 <body>
 <%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
 <form action="m_write_1_result.jsp" method="post" name="form">
 <img src="img/m_write_1.gif">
  <table width="700" cellpadding="3" cellspacing="3">
    <tr>
        <td width="152"><img src="img/icon.gif" />영화제목</td>
        <td width="400"><input type="text" name="title" size="55"></td>
       
    </tr>
    <tr>
        <td width="200"><img src="img/icon.gif" />소제목</td>
        <td width="400"><input type="text" name="stitle" size="55"></td>
    </tr>
	<tr>
	<td width="400"><img src="img/icon.gif"/>개봉일</td>
        <td width="400"><input type="text" name="date" size="35" value="예: 2013.11.21"> <input type="radio" name="open" value="Y">개봉 <input type="radio" name="open" value="N">개봉예정 </td>
	</tr>
    <tr>
        <td width="200"><img src="img/icon.gif"/>영화관</td>
        <td width="406">
		<input type="checkbox" name="mctg" value="디지털">디지털 
		<input type="checkbox" name="mctg" value="3D">3D
			<input type="checkbox" name="mctg" value="아이멕스">아이멕스
				<input type="checkbox" name="mctg" value="무비꼴라주">무비꼴라주
				<input type="checkbox" name="mctg" value="4D">4D
			</td>
    </tr>
	<tr>
	        <td width="400"><img src="img/icon.gif"/>영화시간</td>
        <td width="400"><input type="text" name="time" size="20">분</td>
	</tr>
    <tr>
        <td width="200" height="9"><img src="img/icon.gif"/>등급</td>
        <td width="216" height="18">
		<select name="level">
		<option>==선택==</option>
		<option value="전체관람가">All</option>
		<option value="12세이상">12세</option>
		<option value="15세이상">15세</option>
		<option value="19세이상(청소년관람불가)">19세(청소년관람불가)</option>

		</td>
		</tr>
		<tr>
        <td width="216" height="18"><img src="img/icon.gif"/>감독</td>
        <td width="216" height="18"><input type="text" name="director" size="55"></td>
		</tr>
	<tr>
	 <td width="506"><img src="img/icon.gif"/>장르</td>
        <td width="500"><br>
		<input type="checkbox" name="ctg" value="액션/모험">액션/모험
		<input type="checkbox" name="ctg" value="애니매이션">애니매이션
		<input type="checkbox" name="ctg" value="코메디">코메디
		<input type="checkbox" name="ctg" value="다큐멘터리">다큐멘터리
		<input type="checkbox" name="ctg" value="드라마">드라마
		<input type="checkbox" name="ctg" value="에로틱">에로틱</br>
		<br>
		<input type="checkbox" name="ctg" value="가족/어린이">가족/어린이
		<input type="checkbox" name="ctg" value="역사">역사
		<input type="checkbox" name="ctg" value="공포">공포
		<input type="checkbox" name="ctg" value="뮤지컬">뮤지컬
		<input type="checkbox" name="ctg" value="미스터리/범죄">미스터리/범죄
		<input type="checkbox" name="ctg" value="SF">SF
		</br>
		<br>
		<input type="checkbox" name="ctg" value="로맨스">로맨스
		<input type="checkbox" name="ctg" value="스릴러">스릴러
		<input type="checkbox" name="ctg" value="전쟁">전쟁
		<input type="checkbox" name="ctg" value="서부극">서부극
			<input type="checkbox" name="ctg" value="기타">기타
			<br>
		</select>
		
		</td>
	</tr>
	<tr>
	<td width="217"><img src="img/icon.gif"/>출연진</td>
        <td width="217"><input type="text" name="actor" size="55"></td>
	</tr>
	<tr>
	  <td width="217"><img src="img/icon.gif"/>포스터 링크</td>
        <td width="217"><input type="text" name="image" size="55"></td>
	</tr>
	<tr>
	  <td width="217"><img src="img/icon.gif"/>홈페이지 주소</td>
        <td width="217"><input type="text" name="site" size="55"></td>
	</tr>
    <tr>
        <td width="700" height="4" colspan="4"><textarea name="content" rows="42" cols="90" style="border:1px solid #ddd;"scrolling="yes">영화에 대한 상세정보를 쓰세요.</textarea></td>
    </tr>
	<tr>
        <td width="700" height="4" colspan="4" align="right"><img src="img/next.gif" onclick="check_val()"><a href="movie_01.list.jsp"><img src="img/back.gif" border="0"></a></td>
    </tr>

</table>
</form>
 </body>
</html>
