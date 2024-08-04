<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>  
<%@include file="_head.jsp"%>
<%@ page import="java.sql.*, java.text.*" %>
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
  <%
       request.setCharacterEncoding("euc-kr");

	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속       


		int no = Integer.parseInt(request.getParameter("no"));  
                
		String jsql = "select * from movie where no = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setInt(1, no);
		ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
           rs.next();
		   String title = rs.getString("title");
           String stitle = rs.getString("stitle");
     	   String date = rs.getString("date");
		    String open = rs.getString("open");
			  String ctg = rs.getString("ctg");
		    String mctg = rs.getString("mctg");
			  String time = rs.getString("time");
			    String level = rs.getString("level");
				String director = rs.getString("director");
			    String actor = rs.getString("actor");
					String image = rs.getString("image");
			    String site = rs.getString("site");
				 String content = rs.getString("content");

   %> 

 <form action="movie_modify_01_result.jsp" method="post" name="form">
 <img src="img/m_write_1.gif">
  <table width="700" cellpadding="3" cellspacing="3">
    <tr>
		<input type="hidden" name="no" value="<%= no %>">
        <td width="152"><img src="img/icon.gif" />영화제목</td>
        <td width="400"><input type="text" name="title" size="55" value="<%=title%>"></td>
       
    </tr>
    <tr>
        <td width="200"><img src="img/icon.gif" />소제목</td>
        <td width="400"><input type="text" name="stitle" size="55" value="<%=stitle%>"></td>
    </tr>
	<tr>
	<td width="400"><img src="img/icon.gif"/>개봉일</td>
        <td width="400"><input type="text" name="date" size="35" value="<%=date%>"> 
		<% if (open.equals("Y")) {%>
		<input type="radio" name="open" value="Y" checked>개봉 <input type="radio" name="open" value="N">개봉예정 </td>
		<% } else if (open.equals("N")) {%>
			<input type="radio" name="open" value="Y">개봉 <input type="radio" name="open" value="N" checked>개봉예정 </td>
<% } %>
	</tr>
    <tr>
        <td width="200"><img src="img/icon.gif"/>영화관</td>
        <td width="406">
		<%
	    	String[]  mctgArr = mctg.split(" ");   
			String[]  checked = new String[5];   

			for(int i=0; i<mctgArr.length;i++) {
				if(mctgArr[i].equals("디지털"))
				{
					checked[0] = "checked";
				}
				else if(mctgArr[i].equals("3D"))
				{
					checked[1] = "checked";
				}
				else if(mctgArr[i].equals("아이멕스"))
				{
					checked[2] = "checked";
				}
				else if(mctgArr[i].equals("무비꼴라주"))
				{
					checked[3] = "checked";
				}
				else if(mctgArr[i].equals("4D"))
				{
					checked[4] = "checked";
				}
			}
%>
		<input type="checkbox" name="mctg" value="디지털" <%=checked[0]%>>디지털 
		<input type="checkbox" name="mctg" value="3D" <%=checked[1]%>>3D
			<input type="checkbox" name="mctg" value="아이멕스" <%=checked[2]%>>아이멕스
				<input type="checkbox" name="mctg" value="무비꼴라주" <%=checked[3]%>>무비꼴라주
				<input type="checkbox" name="mctg" value="4D" <%=checked[4]%>>4D
			</td>
    </tr>
	<tr>
	        <td width="400"><img src="img/icon.gif"/>영화시간</td>
        <td width="400"><input type="text" name="time" size="20" value="<%=time%>">분</td>
	</tr>
    <tr>
        <td width="200" height="9"><img src="img/icon.gif"/>등급</td>
        <td width="216" height="18">
		<select name="level">
		<% if (level.equals("전체관람가")) {%>
		<option>==선택==</option>
		<option value="전체관람가" selected>All</option>
		<option value="12세이상">12세</option>
		<option value="15세이상">15세</option>
		<option value="19세이상(청소년관람불가)">19세(청소년관람불가)</option>
				<% } else if (level.equals("12세이상")) {%>
		<option>==선택==</option>
		<option value="전체관람가">All</option>
		<option value="12세이상"  selected>12세</option>
		<option value="15세이상">15세</option>
		<option value="19세이상(청소년관람불가)">19세(청소년관람불가)</option>
	
	<% } else if (level.equals("15세이상")) {%>
		<option>==선택==</option>
		<option value="전체관람가">All</option>
		<option value="12세이상">12세</option>
		<option value="15세이상"   selected>15세</option>
		<option value="19세이상(청소년관람불가)">19세(청소년관람불가)</option>

			<% } else if (level.equals("19세이상(청소년관람불가)")) {%>
		<option>==선택==</option>
		<option value="전체관람가">All</option>
		<option value="12세이상" >12세</option>
		<option value="15세이상">15세</option>
		<option value="19세이상(청소년관람불가)"  selected>19세(청소년관람불가)</option>
<%}  else %>
		<option>==선택==</option>
		<option value="전체관람가">All</option>
		<option value="12세이상" >12세</option>
		<option value="15세이상">15세</option>
		<option value="19세이상(청소년관람불가)">19세(청소년관람불가)</option>

		</td>
		</tr>
		<tr>
        <td width="216" height="18"><img src="img/icon.gif"/>감독</td>
        <td width="216" height="18"><input type="text" name="director" size="55" value="<%=director%>"></td>
		</tr>
	<tr>
	 <td width="506"><img src="img/icon.gif"/>장르</td>
        <td width="500"><br>
				<%
	    	String[]  ctgArr = ctg.split(" ");   
			String[]  checked2 = new String[17];   

			for(int i=0; i<ctgArr.length;i++) {
				if(ctgArr[i].equals("액션모험"))
				{
					checked2[0] = "checked";
				}
				else if(ctgArr[i].equals("애니매이션"))
				{
					checked2[1] = "checked";
				}
				else if(ctgArr[i].equals("코메디"))
				{
					checked2[2] = "checked";
				}
				else if(ctgArr[i].equals("다큐멘터리"))
				{
					checked2[3] = "checked";
				}
				else if(ctgArr[i].equals("드라마"))
				{
					checked2[4] = "checked";
				}
				else if(ctgArr[i].equals("에로틱"))
				{
					checked2[5] = "checked";
				}
				else if(ctgArr[i].equals("가족/어린이"))
				{
					checked2[6] = "checked";
				}
				else if(ctgArr[i].equals("역사"))
				{
					checked2[7] = "checked";
				}
				else if(ctgArr[i].equals("공포"))
				{
					checked2[8] = "checked";
				}
				else if(ctgArr[i].equals("뮤지컬"))
				{
					checked2[9] = "checked";
				}
				else if(ctgArr[i].equals("미스터리/범죄"))
				{
					checked2[10] = "checked";
				}
				else if(ctgArr[i].equals("SF"))
				{
					checked[11] = "checked";
				}
				else if(ctgArr[i].equals("로맨스"))
				{
					checked2[12] = "checked";
				}
				else if(ctgArr[i].equals("스릴러"))
				{
					checked2[13] = "checked";
				}
				else if(ctgArr[i].equals("전쟁"))
				{
					checked2[14] = "checked";
				}
				else if(ctgArr[i].equals("서부극"))
				{
					checked2[15] = "checked";
				}
				else if(ctgArr[i].equals("기타"))
				{
					checked2[16] = "checked";
				}
			}
%>

		<input type="checkbox" name="ctg" value="액션/모험" <%=checked2[0]%>>액션/모험
		<input type="checkbox" name="ctg" value="애니매이션" <%=checked2[1]%>>애니매이션
		<input type="checkbox" name="ctg" value="코메디" <%=checked2[2]%>>코메디
		<input type="checkbox" name="ctg" value="다큐멘터리" <%=checked2[3]%>>다큐멘터리
		<input type="checkbox" name="ctg" value="드라마" <%=checked2[4]%>>드라마
		<input type="checkbox" name="ctg" value="에로틱" <%=checked2[5]%>>에로틱</br>
		<br>
		<input type="checkbox" name="ctg" value="가족/어린이" <%=checked2[6]%>>가족/어린이
		<input type="checkbox" name="ctg" value="역사" <%=checked2[7]%>>역사
		<input type="checkbox" name="ctg" value="공포" <%=checked2[8]%>>공포
		<input type="checkbox" name="ctg" value="뮤지컬" <%=checked2[9]%>>뮤지컬
		<input type="checkbox" name="ctg" value="미스터리/범죄" <%=checked2[10]%>>미스터리/범죄
		<input type="checkbox" name="ctg" value="SF" <%=checked2[11]%>>SF
		</br>
		<br>
		<input type="checkbox" name="ctg" value="로맨스" <%=checked2[12]%>>로맨스
		<input type="checkbox" name="ctg" value="스릴러" <%=checked2[13]%>>스릴러
		<input type="checkbox" name="ctg" value="전쟁" <%=checked2[14]%>>전쟁
		<input type="checkbox" name="ctg" value="서부극" <%=checked2[15]%>>서부극
			<input type="checkbox" name="ctg" value="기타" <%=checked2[16]%>>기타
			<br>
		</select>
		
		</td>
	</tr>
	<tr>
	<td width="217"><img src="img/icon.gif"/>출연진</td>
        <td width="217"><input type="text" name="actor" size="55" value="<%=actor%>"></td>
	</tr>
	<tr>
	  <td width="217"><img src="img/icon.gif"/>포스터 링크</td>
        <td width="217"><input type="text" name="image" size="55" value="<%=image%>"></td>
	</tr>
	<tr>
	  <td width="217"><img src="img/icon.gif"/>홈페이지 주소</td>
        <td width="217"><input type="text" name="site" size="55" value="<%=site%>"></td>
	</tr>
    <tr>
        <td width="700" height="4" colspan="4"><textarea name="content" rows="42" cols="90" style="border:1px solid #ddd;"scrolling="yes"><%=content%></textarea></td>
    </tr>
	<tr>
	<% 
        }
       rs.close();
       con.close();
%>
        <td width="700" height="4" colspan="4" align="right"><img src="img/next.gif" onclick="check_val()"><a href="admin_list_movie_01.jsp"><img src="img/back.gif" border="0"></a></td>
    </tr>

</table>
</form>
 </body>
</html>
