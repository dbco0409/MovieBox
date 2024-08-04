<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
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
<script language="javascript">
function changeHeight() { 
var the_height=document.getElementById('view').contentWindow.document.body.scrollHeight; 
document.getElementById('view').height=the_height; } 

function ch()  
{
if (!document.getElementById('ch').checked){
   alert("평점은 실관람객들만 가능합니다.");
   return false;
  }
}


</script>

</head>
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
			String image4= rs2.getString("image4");
			 String image5 = rs2.getString("image5");
			String image6= rs2.getString("image6");




	%>
<body>
<form action="chart_write.jsp?movieno=<%=no%>" method="post" name="form">
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
<td width="233">평가하기 : <select name="chart">
								<option value="10">10/10</option>
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
								<input type="button" value="평가하기" onclick="ch()">		
								</td>
                            <tr>
                                <td width="456" valign="top">
                                    <table width="470" cellpadding="0" cellspacing="0" height="83">
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
						
                                <td width="456" colspan="3" valign="top">
                                    <table width="508" cellpadding="0" cellspacing="0" height="54">
                                        <tr>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image1%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image2%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image3%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image4%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image5%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image6%>" width="80" height="64" border="0"></td>
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
        <td width="109" bgcolor="#6D3A99" onclick=location.href="actor.jsp?no=<%=no%>">
            <p align="center"><a href="actor.jsp??no=<%=no%>"><font color="white">배우/감독</a></p>
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
        <td width="109" bgcolor="#ffffff" onclick=location.href="review.jsp?no=<%=no%>">
            <p align="center"><a href="review.jsp?movieno=<%=no%>">리뷰</a></p>
        </td>
    </tr>
</table>	<br>&nbsp;</br>
				<p><%@include file="chart_write.jsp"%></p>
<p>
 <% } %>
    </div>
        </td>
    </tr>
</table>
</form>

        <%
		 }  catch(Exception e)  {
        out.println(e);
}
				  finally{}
%>
</body>

</html>