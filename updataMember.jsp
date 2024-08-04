<script language="javascript" src="menu.js">
</script>
<%@include file="_head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<%                       
	if (id == null)   
{   
%>
<center>
<br><br><br> 
<font style="font-size:10pt;font-family:맑은 고딕">
		멤버 수정을 위해서는 로그인이 필요합니다! <br><br>	<a href="login.jsp" ><img src="img/login.gif" border=0></a>
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
                    <td width="87"><a href="updataMember.jsp" ><img src="images/click11.gif" border="0" id="submenu10"/></a></td>
                    <td width="27"><img src="images/bar_sub.gif" width="27" height="26" border="0" /></td>
                    <td width="83"><a href="reserve_cut.jsp" ><img src="images/sub10.gif" border="0" id="submenu11"/></a></td>
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
                        <p><a href="updataMember.jsp"><img src="images/c_11.gif" border="0" id="menu10"></a></p>
                        <p><a href="reserve_cut.jsp"><img src="images/s_10.gif" border="0" id="menu11"></a></p>
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
<%	 
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
	 
	 String jsql = "select * from member where memId = ?";
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1,id);

	 ResultSet rs = pstmt.executeQuery();
	 rs.next();

	 String mid = rs.getString("memId");
	 String password =  rs.getString("memPassword");	
	 String name = rs.getString("memName");
 	 String joomin = rs.getString("memJoomin");
	 String phone =  rs.getString("memPhone");
	 String zipcode =  rs.getString("memZipcode");
	 String address1 =  rs.getString("memAddress1");
	 String address2 =  rs.getString("memAddress2");
 	 String email =  rs.getString("memEmail");
	 String mailing =  rs.getString("memMailing");
%>

<center>
	<img src=".\images\medify_01_02.gif"  border=0><p>
	<img src=".\images\medify_02.gif"  border=0>

	<form method=post action="updataMemberResult.jsp">
	<table style="font-size:10pt;font-family:맑은 고딕">
		<tr>
			<td ><img src=".\images\medify_03.gif"  border=0></td>
			<td><input type=hidden name="mid" value="<%=id%>"><%=id%></td>
		</tr>
		<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	    </tr>
		<tr>
			<td><img src=".\images\medify_07.gif"  border=0></td>
			<td><input type=text name="password" value="<%=password%>"></td>
		</tr>
		<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	    </tr>
		<tr>
			<td><img src=".\images\medify_10.gif"  border=0></td>
			<td><input type=text name="name" value="<%=name%>"></td>
		</tr>
		<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	    </tr>
		<tr>
			<td><img src=".\images\medify_30.gif"  border=0></td>
			<td>
<%
	    	String[ ]  joominArr = joomin.split("-");
%>		
		    <input type=text name="joomin1" value="<%=joominArr[0]%>" size="6"> -
			<input type=text name="joomin2" value="<%=joominArr[1]%>" size="7">
			</td>
		</tr>
		<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	    </tr>
		<tr>
			<td><img src=".\images\medify_13.gif"  border=0></td>
			<td>
<%
	    	String[ ] hpArr  = phone.split("-");  
			String[ ]  hpSelected = new String[6];  

			if(hpArr[0].equals("010"))
			{
				hpSelected[0] = "selected";
			}  
			else if(hpArr[0].equals("011"))
			{
				hpSelected[1] = "selected";
			}
			else if(hpArr[0].equals("016"))
			{
				hpSelected[2] = "selected";
			}
			else if(hpArr[0].equals("017"))
			{
				hpSelected[3] = "selected";
			}
			else if(hpArr[0].equals("018"))
			{
				hpSelected[4] = "selected";
			}
			else if(hpArr[0].equals("019"))
			{
				hpSelected[5] = "selected";
			}

%>
			<select name="hp1">      
				<option value="010" <%=hpSelected[0]%>>010
				<option value="011" <%=hpSelected[1]%>>011
				<option value="016" <%=hpSelected[2]%>>016
				<option value="017" <%=hpSelected[3]%>>017
				<option value="018" <%=hpSelected[4]%>>018
				<option value="019" <%=hpSelected[5]%>>019
			</select>		
		    <input type=text name="hp2" value="<%=hpArr[1]%>" size="4">-
		    <input type=text name="hp3" value="<%=hpArr[2]%>" size="4">
			</td>	
		</tr>
		<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	    </tr>
		<tr>
			<td><img src=".\images\medify_16.gif"  border=0></td>
			<td><input type="text" name="zipcode" value="<%=zipcode%>" size="7" readonly> 
			       <input type="button" value="우편번호검색" onClick="zipCheck()"><br>     
                   <input type="text" name="address1"  value="<%=address1%>" size="40"  readonly><br>
				   <input type="text" name="address2"  value="<%=address2%>" size="40">&nbsp<font size =2>(상세주소입력)</font></td>
		</tr>
		<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	    </tr>
		<tr>
			<td><img src=".\images\join_37.gif"  border=0></td>
			<td>
<%
			String[ ] emailArr  = email.split("@");
			String[ ]  selected = new String[5];  
 

			if(emailArr[1].equals("gmail.com"))
			{
				selected[0] = "selected";
			}
			else if(emailArr[1].equals("naver.com"))
			{
				selected[1] = "selected";
			}
			else if(emailArr[1].equals("daum.net"))
			{
				selected[2] = "selected";
			}
			else if(emailArr[1].equals("hotmail.com"))
			{
				selected[3] = "selected";
			}
			else if(emailArr[1].equals("yahoo.com"))
			{
				selected[4] = "selected";
			}
%>		
			<input type=text name="email1"  value="<%=emailArr[0]%>" size="14">
				<select name="email2">
						<option value="gmail.com" <%=selected[0]%>>gamil.com
						<option value="naver.com" <%=selected[1]%>>naver.com
						<option value="daum.net"  <%=selected[2]%>>daum.net
						<option value="hotmail.com" <%=selected[3]%>>hotmail.com
						<option value="yahoo.com" <%=selected[4]%>>yahoo.com
				</select>
			</td>
		</tr>
		<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	    </tr>
		<tr>
			<td ><img src=".\images\medify_22.gif"  border=0></td>
			<td><input type=checkbox hidden name="mailing" value="<%=mailing%>">정보 메일을 받겠습니다.</td>
		</tr>
		<tr>
		<td><img src=".\images\medify_05.gif"  border=0></td>
		<td><img src=".\images\medify_06.gif"  border=0>
	    </tr>
	</table>
	<p>
		<img src=".\images\medify_26.gif"  onClick="submit()">
	<img src=".\images\medify_28.gif"  onClick="reset()">
	</form>

<%
    } catch (Exception e) {
      out.println(e);	
}
%>
	<% } %>
</center>
</body>
</html>
<%@include file="_tail.jsp" %>