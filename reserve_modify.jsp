<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>  
<%@include file="_head.jsp"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>r_admin_write</title>
<style type="text/css">
td {font-size:10pt}
</style>
</head>
<%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px;z-index:1; visibility:visible;">
<p>&nbsp;</p>
   <%
      try{ String DB_URL="jdbc:mysql://localhost:3306/project4";  
       String DB_ID="multi";  
       String DB_PASSWORD="abcd"; 
 	 
	   Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");

		int no = Integer.parseInt(request.getParameter("reserve_no"));      
                
		String jsql = "select * from reserve_adm where reserve_no = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setInt(1, no);
		ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
           rs.next();
           String subject = rs.getString("subject");
     	   String okay = rs.getString("okay").trim();
           int str_m = rs.getInt("str_m");
		    int str_d = rs.getInt("str_d");
			 String level = rs.getString("level").trim();
			 	 String time = rs.getString("time").trim();
				  String rctg = rs.getString("rctg").trim();
				   int sit = rs.getInt("sit");
   %> 

<form action="r_modify_result.jsp?no=<%=no%>" method="post" name="form">
<table width="749" align="center" cellpadding="0" cellspacing="0" height="447">
	<tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">영화제목</td>
        <td width="613"><input type="text" name="subject" value="<%=subject%>"> 
		<% if (okay.equals("y")) {%>
		<input type="checkbox" name="okay" value="y" checked>예매  <input type="checkbox" name="okay" value="n">예매중지
		<% } else if (okay.equals("n")) {%>
				<input type="checkbox" name="okay" value="y">예매  <input type="checkbox" name="okay" value="n" checked>예매중지
<% } %></td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">상영일</td>
        <td width="613">
            <table width="607" cellpadding="0" cellspacing="0">
                    <tr>
                    <td width="258">
                      
                            <p><input type="text" name="str_m" size="9" value="<%=str_m%>"> 월<input type="text" name="str_d" size="9" value="<%=str_d%>"> 일</p>
                       
                    </td>
                        <td width="99"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">상영등급</td>
                    <td width="250">
                  
                            <p><input type="text" name="level" size="9" value="<%=level%>"></p>
                      
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
					<%
	    	String[]  timeArr = time.split(",");   
			String[]  checked = new String[39];   

			for(int i=0; i<timeArr.length;i++) {
				if(timeArr[i].equals("1관 08:00"))
				{
					checked[0] = "checked";
				}
				else if(timeArr[i].equals("1관 08:50"))
				{
					checked[1] = "checked";
				}
				else if(timeArr[i].equals("1관 10:35"))
				{
					checked[2] = "checked";
				}
				else if(timeArr[i].equals("1관 11:25"))
				{
					checked[3] = "checked";
				}
				else if(timeArr[i].equals("1관 13:10"))
				{
					checked[4] = "checked";
				}
				else if(timeArr[i].equals("1관 15:45"))
				{
					checked[5] = "checked";
				}
				else if(timeArr[i].equals("1관 16:35"))
				{
					checked[6] = "checked";
				}
					else if(timeArr[i].equals("1관 18:20"))
				{
					checked[7] = "checked";
				}
						else if(timeArr[i].equals("1관 19:10"))
				{
					checked[8] = "checked";
				}
						else if(timeArr[i].equals("1관 20:55"))
				{
					checked[9] = "checked";
				}
						else if(timeArr[i].equals("1관 21:45"))
				{
					checked[10] = "checked";
				}
						else if(timeArr[i].equals("1관 23:30"))
				{
					checked[11] = "checked";
				}
					else if(timeArr[i].equals("1관 24:20"))
				{
					checked[12] = "checked";
				}
				else if(timeArr[i].equals("2관 08:00"))
				{
					checked[13] = "checked";
				}
				else if(timeArr[i].equals("2관 08:50"))
				{
					checked[14] = "checked";
				}
				else if(timeArr[i].equals("2관 10:35"))
				{
					checked[15] = "checked";
				}
				else if(timeArr[i].equals("2관 11:25"))
				{
					checked[16] = "checked";
				}
				else if(timeArr[i].equals("2관 13:10"))
				{
					checked[17] = "checked";
				}
				else if(timeArr[i].equals("2관 15:45"))
				{
					checked[18] = "checked";
				}
				else if(timeArr[i].equals("2관 16:35"))
				{
					checked[19] = "checked";
				}
					else if(timeArr[i].equals("2관 18:20"))
				{
					checked[20] = "checked";
				}
						else if(timeArr[i].equals("2관 19:10"))
				{
					checked[21] = "checked";
				}
						else if(timeArr[i].equals("2관 20:55"))
				{
					checked[22] = "checked";
				}
						else if(timeArr[i].equals("2관 21:45"))
				{
					checked[23] = "checked";
				}
						else if(timeArr[i].equals("2관 23:30"))
				{
					checked[24] = "checked";
				}
					else if(timeArr[i].equals("2관 24:20"))
				{
					checked[25] = "checked";
				
				}
				else if(timeArr[i].equals("3관 08:00"))
				{
					checked[26] = "checked";
				}
				else if(timeArr[i].equals("3관 08:50"))
				{
					checked[27] = "checked";
				}
				else if(timeArr[i].equals("3관 10:35"))
				{
					checked[28] = "checked";
				}
				else if(timeArr[i].equals("3관 11:25"))
				{
					checked[29] = "checked";
				}
				else if(timeArr[i].equals("3관 13:10"))
				{
					checked[30] = "checked";
				}
				else if(timeArr[i].equals("3관 15:45"))
				{
					checked[31] = "checked";
				}
				else if(timeArr[i].equals("3관 16:35"))
				{
					checked[32] = "checked";
				}
					else if(timeArr[i].equals("3관 18:20"))
				{
					checked[33] = "checked";
				}
						else if(timeArr[i].equals("3관 19:10"))
				{
					checked[34] = "checked";
				}
						else if(timeArr[i].equals("3관 20:55"))
				{
					checked[35] = "checked";
				}
						else if(timeArr[i].equals("3관 21:45"))
				{
					checked[36] = "checked";
				}
						else if(timeArr[i].equals("3관 23:30"))
				{
					checked[37] = "checked";
				}
					else if(timeArr[i].equals("3관 24:20"))
				{
					checked[38] = "checked";
				}

			}
%>

					<input type="checkbox" name="time" value="1관 08:00" <%=checked[0]%>>08:00
					<input type="checkbox" name="time" value="1관 08:50" <%=checked[1]%>>08:50
					<input type="checkbox" name="time" value="1관 10:35" <%=checked[2]%>>10:35
					<input type="checkbox" name="time" value="1관 11:25" <%=checked[3]%>>11:35
					<input type="checkbox" name="time" value="1관 13:10" <%=checked[4]%>>13:10
					<input type="checkbox" name="time" value="1관 15:45" <%=checked[5]%>>15:45
					<input type="checkbox" name="time" value="1관 16:35" <%=checked[6]%>>16:35
					<input type="checkbox" name="time" value="1관 18:20" <%=checked[7]%>>18:20
					<input type="checkbox" name="time" value="1관 19:10" <%=checked[8]%>>19:10
					<input type="checkbox" name="time" value="1관 20:55" <%=checked[9]%>>20:55
					<input type="checkbox" name="time" value="1관 21:45" <%=checked[10]%>>21:45
					<input type="checkbox" name="time" value="1관 23:30" <%=checked[11]%>>23:30
					<input type="checkbox" name="time" value="1관 24:20" <%=checked[12]%>>24:20
					</td>
                </tr>
                <tr>
                    <td width="56">2관</td>
                    <td width="532"><input type="checkbox" name="time" value="2관 08:00" <%=checked[13]%>>08:00
					<input type="checkbox" name="time" value="2관 08:50" <%=checked[14]%>>08:50
					<input type="checkbox" name="time" value="2관 10:35" <%=checked[15]%>>10:35
					<input type="checkbox" name="time" value="2관 11:25" <%=checked[16]%>>11:35
					<input type="checkbox" name="time" value="2관 13:10" <%=checked[17]%>>13:10
					<input type="checkbox" name="time" value="2관 15:45" <%=checked[18]%>>15:45
					<input type="checkbox" name="time" value="2관 16:35" <%=checked[19]%>>16:35
					<input type="checkbox" name="time" value="2관 18:20" <%=checked[20]%>>18:20
					<input type="checkbox" name="time" value="2관 19:10" <%=checked[21]%>>19:10
					<input type="checkbox" name="time" value="2관 20:55" <%=checked[22]%>>20:55
					<input type="checkbox" name="time" value="2관 21:45" <%=checked[23]%>>21:45
					<input type="checkbox" name="time" value="2관 23:30" <%=checked[24]%>>23:30
					<input type="checkbox" name="time" value="2관 24:20" <%=checked[25]%>>24:20</td>
                </tr>
                <tr>
                    <td width="56">3관</td>
                    <td width="532"><input type="checkbox" name="time" value="3관 08:00" <%=checked[26]%>>08:00
					<input type="checkbox" name="time" value="3관 08:50" <%=checked[27]%>>08:50
					<input type="checkbox" name="time" value="3관 10:35" <%=checked[28]%>>10:35
					<input type="checkbox" name="time" value="3관 11:25" <%=checked[29]%>>11:35
					<input type="checkbox" name="time" value="3관 13:10" <%=checked[30]%>>13:10
					<input type="checkbox" name="time" value="3관 15:45" <%=checked[31]%>>15:45
					<input type="checkbox" name="time" value="3관 16:35" <%=checked[32]%>>16:35
					<input type="checkbox" name="time" value="3관 18:20" <%=checked[33]%>>18:20
					<input type="checkbox" name="time" value="3관 19:10" <%=checked[34]%>>19:10
					<input type="checkbox" name="time" value="3관 20:55" <%=checked[35]%>>20:55
					<input type="checkbox" name="time" value="3관 21:45" <%=checked[36]%>>21:45
					<input type="checkbox" name="time" value="3관 23:30" <%=checked[37]%>>23:30
					<input type="checkbox" name="time" value="3관 24:20" <%=checked[38]%>>24:20</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">총 좌석수</td>
        <td width="613">
        <input type="text" name="sit" value="<%=sit%>"> 
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">적용할 영화관</td>
        <td width="613">
          <%
	    	String[]  rctgArr = rctg.split(",");   
			String[]  checked2 = new String[21];   

			for(int i=0; i<rctgArr.length;i++) {
				if(rctgArr[i].equals("강남"))
				{
					checked2[0] = "checked";
				}
				else if(rctgArr[i].equals("동대문"))
				{
					checked2[1] = "checked";
				}
				else if(rctgArr[i].equals("목동"))
				{
					checked2[2] = "checked";
				}
				else if(rctgArr[i].equals("상봉"))
				{
					checked2[3] = "checked";
				}
				else if(rctgArr[i].equals("센트럴"))
				{
					checked2[4] = "checked";
				}
				else if(rctgArr[i].equals("코엑스"))
				{
					checked2[5] = "checked";
				}
				else if(rctgArr[i].equals("수원"))
				{
					checked2[6] = "checked";
				}
					else if(rctgArr[i].equals("남양주"))
				{
					checked2[7] = "checked";
				}
						else if(rctgArr[i].equals("평택"))
				{
					checked2[8] = "checked";
				}
						else if(rctgArr[i].equals("킨텍스"))
				{
					checked2[9] = "checked";
				}
						else if(rctgArr[i].equals("공주"))
				{
					checked2[10] = "checked";
				}
						else if(rctgArr[i].equals("대전"))
				{
					checked2[11] = "checked";
				}
					else if(rctgArr[i].equals("천안"))
				{
					checked2[12] = "checked";
				}
				else if(rctgArr[i].equals("경주"))
				{
					checked2[13] = "checked";
				}
				else if(rctgArr[i].equals("울산"))
				{
					checked2[14] = "checked";
				}
				else if(rctgArr[i].equals("해운대"))
				{
					checked2[15] = "checked";
				}
				else if(rctgArr[i].equals("서면"))
				{
					checked2[16] = "checked";
				}
				else if(rctgArr[i].equals("광주"))
				{
					checked2[17] = "checked";
				}
				else if(rctgArr[i].equals("전주"))
				{
					checked2[18] = "checked";
				}
				else if(rctgArr[i].equals("강원"))
				{
					checked2[19] = "checked";
				}
					else if(rctgArr[i].equals("제주"))
				{
					checked2[20] = "checked";
				}

			}
%>
		<input type="checkbox" name="rctg" value="강남" <%=checked2[0]%>>강남
		<input type="checkbox" name="rctg" value="동대문" <%=checked2[1]%>>동대문
		<input type="checkbox" name="rctg" value="목동" <%=checked2[2]%>>목동
		<input type="checkbox" name="rctg" value="상봉" <%=checked2[3]%>>상봉
		<input type="checkbox" name="rctg" value="센트럴" <%=checked2[4]%>>센트럴
		<input type="checkbox" name="rctg" value="코엑스" <%=checked2[5]%>>코엑스
		<input type="checkbox" name="rctg" value="수원" <%=checked2[6]%>>수원
		<input type="checkbox" name="rctg" value="남양주" <%=checked2[7]%>>남양주
		<input type="checkbox" name="rctg" value="평택" <%=checked2[8]%>>평택
		<input type="checkbox" name="rctg" value="킨텍스" <%=checked2[9]%>>킨텍스<br/>
		<input type="checkbox" name="rctg" value="공주" <%=checked2[10]%>>공주
		<input type="checkbox" name="rctg" value="대전" <%=checked2[11]%>>대전
		<input type="checkbox" name="rctg" value="천안" <%=checked2[12]%>>천안
		<input type="checkbox" name="rctg" value="경주" <%=checked2[13]%>>경주
		<input type="checkbox" name="rctg" value="울산" <%=checked2[14]%>>울산
		<input type="checkbox" name="rctg" value="해운대" <%=checked2[15]%>>해운대
		<input type="checkbox" name="rctg" value="서면" <%=checked2[16]%>>서면
			<input type="checkbox" name="rctg" value="광주" <%=checked2[17]%>>광주
		<input type="checkbox" name="rctg" value="전주" <%=checked2[18]%>>전주
		<input type="checkbox" name="rctg" value="강원" <%=checked2[19]%>>강원
		<input type="checkbox" name="rctg" value="제주" <%=checked2[20]%>>제주
		
		
        </td>
    </tr>
    <tr>
	<tr>

        <td width="104" height="40">&nbsp;</td>
            <td width="613" height="60" valign="bottom">
                <p align="center"><img src="img/submit2.gif" onclick="submit()"><a href="r_admin_list.jsp"><img src="img/back.gif" border="0"></a></p>
            </td>
    </tr>
</table>
<% 
        }}
	   finally{}
%>

</form>
</div>
<p>&nbsp;</p>
</body>

</html>