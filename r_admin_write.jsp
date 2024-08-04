<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>  
<%@include file="_head.jsp"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>r_admin_write</title>
<style type="text/css">
td {font-size:10pt; color:black}
</style>
</head>
<%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px;z-index:1; visibility:visible;">
<p>&nbsp;</p>
<form action="r_admin_result.jsp" method="post" name="form">
<table width="749" align="center" cellpadding="0" cellspacing="0" height="447">
    <tr>
        <td width="104" height="15"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">영화제목</td>
        <td width="613" height="30">
<input type="text" name="subject"> <input type="checkbox" name="okay" value="y" checked>예매<input type="checkbox" name="okay" value="n">예매중지
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">상영일</td>
        <td width="613">
            <table width="607" cellpadding="0" cellspacing="0">
                    <tr>
                    <td width="258">
                      
                            <p><input type="text" name="str_m" size="9"> 월<input type="text" name="str_d" size="9"> 일</p>
                       
                    </td>
                        <td width="99"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">상영등급</td>
                    <td width="250">
                  
                            <p><input type="text" name="level" size="9"></p>
                      
                    </td>
                    </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">시간</td>
        <td width="613">
            <table width="608" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="56">1관</td>
                    <td width="532">
					<input type="checkbox" name="time" value="1관 08:00">08:00
					<input type="checkbox" name="time" value="1관 08:50">08:50
					<input type="checkbox" name="time" value="1관 10:35">10:35
					<input type="checkbox" name="time" value="1관 11:25">11:35
					<input type="checkbox" name="time" value="1관 13:10">13:10
					<input type="checkbox" name="time" value="1관 15:45">15:45
					<input type="checkbox" name="time" value="1관 16:35">16:35
					<input type="checkbox" name="time" value="1관 18:20">18:20
					<input type="checkbox" name="time" value="1관 19:10">19:10
					<input type="checkbox" name="time" value="1관 20:55">20:55
					<input type="checkbox" name="time" value="1관 21:45">21:45
					<input type="checkbox" name="time" value="1관 23:30">23:30
					<input type="checkbox" name="time" value="1관 24:20">24:20
					</td>
                </tr>
                <tr>
                    <td width="56">2관</td>
                    <td width="532"><input type="checkbox" name="time" value="2관 08:00">08:00
					<input type="checkbox" name="time" value="2관 08:50">08:50
					<input type="checkbox" name="time" value="2관 10:35">10:35
					<input type="checkbox" name="time" value="2관 11:25">11:35
					<input type="checkbox" name="time" value="2관 13:10">13:10
					<input type="checkbox" name="time" value="2관 15:45">15:45
					<input type="checkbox" name="time" value="2관 16:35">16:35
					<input type="checkbox" name="time" value="2관 18:20">18:20
					<input type="checkbox" name="time" value="2관 19:10">19:10
					<input type="checkbox" name="time" value="2관 20:55">20:55
					<input type="checkbox" name="time" value="2관 21:45">21:45
					<input type="checkbox" name="time" value="2관 23:30">23:30
					<input type="checkbox" name="time" value="2관 24:20">24:20</td>
                </tr>
                <tr>
                    <td width="56">3관</td>
                    <td width="532"><input type="checkbox" name="time" value="3관 08:00">08:00
					<input type="checkbox" name="time" value="3관 08:50">08:50
					<input type="checkbox" name="time" value="3관 10:35">10:35
					<input type="checkbox" name="time" value="3관 11:25">11:35
					<input type="checkbox" name="time" value="3관 13:10">13:10
					<input type="checkbox" name="time" value="3관 15:45">15:45
					<input type="checkbox" name="time" value="3관 16:35">16:35
					<input type="checkbox" name="time" value="3관 18:20">18:20
					<input type="checkbox" name="time" value="3관 19:10">19:10
					<input type="checkbox" name="time" value="3관 20:55">20:55
					<input type="checkbox" name="time" value="3관 21:45">21:45
					<input type="checkbox" name="time" value="3관 23:30">23:30
					<input type="checkbox" name="time" value="3관 24:20">24:20</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">총 좌석수</td>
        <td width="613">
          <input type="text" name="sit" value="0"> 
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">적용할 영화관</td>
        <td width="613">
          
		<input type="checkbox" name="rctg" value="강남">강남
		<input type="checkbox" name="rctg" value="동대문">동대문
		<input type="checkbox" name="rctg" value="목동">목동
		<input type="checkbox" name="rctg" value="상봉">상봉
		<input type="checkbox" name="rctg" value="센트럴">센트럴
		<input type="checkbox" name="rctg" value="코엑스">코엑스
		<input type="checkbox" name="rctg" value="수원">수원
		<input type="checkbox" name="rctg" value="남양주">남양주
		<input type="checkbox" name="rctg" value="평택">평택
		<input type="checkbox" name="rctg" value="킨텍스">킨텍스<br/>
		<input type="checkbox" name="rctg" value="공주">공주
		<input type="checkbox" name="rctg" value="대전">대전
		<input type="checkbox" name="rctg" value="천안">천안
		<input type="checkbox" name="rctg" value="경주">경주
		<input type="checkbox" name="rctg" value="울산">울산
		<input type="checkbox" name="rctg" value="해운대">해운대
		<input type="checkbox" name="rctg" value="서면">서면
			<input type="checkbox" name="rctg" value="광주">광주
		<input type="checkbox" name="rctg" value="전주">전주
		<input type="checkbox" name="rctg" value="강원">강원
		<input type="checkbox" name="rctg" value="제주">제주
		
		
        </td>
    </tr>
    <tr>
        <td width="104" height="40">&nbsp;</td>
            <td width="613" height="60" valign="bottom">
                <p align="center"><img src="img/submit2.gif" onclick="submit()"><a href="m_modify_2.jsp"><img src="img/back.gif" border="0"></a></p>
            </td>
    </tr>
</table>
</form>
</div>
<p>&nbsp;</p>
</body>

</html>