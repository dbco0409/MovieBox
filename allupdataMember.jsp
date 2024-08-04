<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%@include file="head.jsp" %>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<script language="javascript" src="js_package.js"></script>
<body>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
	
	 String key = request.getParameter("id");

	 String jsql = "select * from member where memId = ?";
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1,key);

	 ResultSet rs = pstmt.executeQuery();
	 rs.next();

	 String id = rs.getString("memId");
	 String password =  rs.getString("memPassword");	
	 String name = rs.getString("memName");
 	 String joomin = rs.getString("memJoomin");
	 String phone =  rs.getString("memPhone");
	 String zipcode =  rs.getString("memZipcode");
	 String address1 =  rs.getString("memAddress1");
	 String address2 =  rs.getString("memAddress2");
 	 String email =  rs.getString("memEmail");
%>

<center>
<p>&nbsp;</p>
	<img src="img/member_modify.gif"><br>
	<img src=".\images\medify_02.gif"  border=0>

	<form name = "allupMem" method=post action="allupdataMemberResult.jsp">
	<table style="font-size:10pt;font-family:맑은 고딕">
		<tr>
			<td ><img src=".\images\medify_03.gif"  border=0></td>
			<td><input type=hidden name="id" value="<%=id%>"><%=id%></td>
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
			<td><img src=".\images\medify_19.gif"  border=0></td>
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
	</table>
	<p>
	<img src="./images/medify_26.gif" border=0 onClick="allupcheckValue()">
	<a href="allMember.jsp"><img src=".\images\medify_28.gif" border=0></a>
	</form>
<%
    } catch (Exception e) {
      out.println(e);	
}
%>
</center>
</body>
</html>
<%@include file="tail.jsp" %>