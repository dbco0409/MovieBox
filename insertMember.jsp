<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<html>

<script language="javascript" src="js_package.js">
</script>


<body onLoad="idFocus()"> 

<center>
<font><img src=".\images\join_01.gif"  border=0></font><p>
<img src=".\images\join_02.gif"  border=0><p>
                                                                             
<form name="newMem" method=post action=insertMemberResult.jsp>
<input type=radio name="agree" value="yes"   > 동의함
<input type=radio name="agree" value="no" > 동의하지 않음<p>

<img src=".\images\join_04.gif"  border=0>
<img src=".\images\join_05.gif"  border=0>
	<table style="font-size:10pt;font-family:맑은 고딕">
		<tr>
			<td><img src=".\images\join_06.gif"  border=0></td>
			<td ><input type=text name="id"> <a href="javascript:checkID()"> <img src=".\images\join_08.gif"  border=0></a><img src=".\images\join_09.gif"  border=0>
			</td>
		</tr>
		<tr>
		<td>
		<img src=".\images\join_10.gif"  border=0>
		</td>
		<td>
		<img src=".\images\join_11.gif"  border=0>
		</td>
		</tr>
		<tr>
			<td><img src=".\images\join_12.gif"  border=0></td>
			<td><input type=password name="password1" size=21></td>
		</tr>
		<tr>
		<td>
		<img src=".\images\join_10.gif"  border=0>
		</td>
		<td>
		<img src=".\images\join_11.gif"  border=0>
		</td>
		</tr>
		<tr>
			<td><img src=".\images\join_16.gif"  border=0></td>
			<td><input type=password name="password2" size=21></td>
		</tr>
		<tr>
		<td>
		<img src=".\images\join_10.gif"  border=0>
		</td>
		<td>
		<img src=".\images\join_11.gif"  border=0>
		</td>
		</tr>
		<tr>
			<td><img src=".\images\join_20.gif"  border=0></td>
			<td><input type=text name="name"><img src=".\images\join_22.gif"  border=0></td>
		</tr>
		<tr>
		<td>
		<img src=".\images\join_10.gif"  border=0>
		</td>
		<td>
		<img src=".\images\join_11.gif"  border=0>
		</td>
		</tr>
		<tr>
			<td><img src=".\images\join_25.gif"  border=0></td>
			<td>
				<input type=text name="joomin1" size=6> -
				<input type=text name="joomin2" size=7>
			</td>
		</tr>
		<tr>
		<td>
		<img src=".\images\join_10.gif"  border=0>
		</td>
		<td>
		<img src=".\images\join_11.gif"  border=0>
		</td>
		</tr>
		<tr>
			<td><img src=".\images\join_29.gif"  border=0></td>
			<td>
				<select name="hp1">
						<option value="010" selected>010
						<option value="011">011
						<option value="016">016
						<option value="017">017
						<option value="018">018
						<option value="019">019
				</select> -
				<input type=text name="hp2" size=4> -
				<input type=text name="hp3" size=4>
			</td>
		</tr>
		<tr>
		<td>
		<img src=".\images\join_10.gif"  border=0>
		</td>
		<td>
		<img src=".\images\join_11.gif"  border=0>
		</td>
		</tr>
		<tr>
			<td><img src=".\images\join_33.gif"  border=0></td>
			 <td><input type="text" name="zipcode" size="7" readonly> 
			       <input type="button" value="우편번호검색" onClick="zipCheck()"><br>     
                   <input type="text" name="address1" size="40"  readonly><br>
				   <input type="text" name="address2" size="40">&nbsp<font size =2>(상세주소입력)</font></td>
		</tr>
		</tr>
		<tr>
		<td>
		<img src=".\images\join_10.gif"  border=0>
		</td>
		<td>
		<img src=".\images\join_11.gif"  border=0>
		</td>
		</tr>
		<tr>
			<td><img src=".\images\join_37.gif"  border=0></td>
			<td><input type=text name="email1" size=14> @
				<select name="email2">
						<option value="gmail.com" selected>gamil.com
						<option value="naver.com">naver.com
						<option value="daum.net">daum.net
						<option value="hotmail.com">hotmail.com
						<option value="yahoo.com">yahoo.com
				</select></td>
		</tr>
		<tr>
		<td>
		<img src=".\images\join_10.gif"  border=0>
		</td>
		<td>
		<img src=".\images\join_11.gif"  border=0>
		</td>
		</tr>
		<tr>
			<td><img src=".\images\join_41.gif"  border=0></td>
			<td><input type=checkbox name="mailing" value="yes"> 정보메일을 받겠습니다.</td>
		</tr>
		<tr>
		<td>
		<img src=".\images\join_10.gif"  border=0>
		</td>
		<td>
		<img src=".\images\join_11.gif"  border=0>
		</td>
		</tr>
	</table><p>     
    
	<img src=".\images\join_46.gif"  onClick="checkValue()">
	<img src=".\images\join_48.gif"  onClick="reset()">
</form>
</center>
</body>
</html>
<%@include file="tail.jsp" %>