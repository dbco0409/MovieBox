<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<%@include file="faq_view_head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>view</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d;}
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
                
	  String jsql = "select * from movie where no = ?";
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
			 String video1 = rs2.getString("video1");
		   String video2 = rs2.getString("video2");
		    String video3 = rs2.getString("video3");
			 String video1txt = rs2.getString("video1txt");
		   String video2txt = rs2.getString("video2txt");
		    String video3txt = rs2.getString("video3txt");

	String[]  image01 = image1.split(",");   
	String[]  image02 = image2.split(",");  
	String[]  image03 = image3.split(",");  
		String[]  video01 = video1.split(",");   
	String[]  video02 = video2.split(",");  
	String[]  video03 = video3.split(",");  
		String[]  video01txt = video1txt.split(",");   
	String[]  video02txt = video2txt.split(",");  
	String[]  video03txt = video3txt.split(",");  

	%>
<body>
<form action="movie_chart.jsp" method="post" name="form">
<table width="755" cellspacing="0" bordercolordark="black" bordercolorlight="black" cellpadding="0">
    <tr>
        <td width="1157">
            <table width="755" cellpadding="0" cellspacing="0" height="320">
                <tr>
                    <td width="279"><a href="<%=image%>" target="_blank"><img src="<%=image%>" border="0" width="225" height="320"></td>
                    <td width="476">
                        <table width="507" cellpadding="0" cellspacing="0" height="317">
                            <tr>
                                <td width="508" height="34"><font size="5"><b><%=title%></b></td>
                            </tr>
                            <tr>
                                <td width="508" height="17"><font color="#8d8d8d"><b><%=stitle%></b></td>
                            </tr>
<td width="233">평가하기 : <select name="chart">
								<option value="m_10">10/10</option>
								<option value="m_9">9/10</option>
								<option value="m_8">8/10</option>
								<option value="m_7">7/10</option>
								<option value="m_6">6/10</option>
								<option value="m_5">5/10</option>
								<option value="m_4">4/10</option>
								<option value="m_3">3/10</option>
								<option value="m_2">2/10</option>
								<option value="m_1">1/10</option>
								</select>
								<input type="button" value="평가하기" onclick="ch()">		
								</td>
                            <tr>
                            <td width="508"><%=mctg%></td>
                        </tr>
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
						
                                <td width="456" colspan="3">
                                    <table width="508" cellpadding="0" cellspacing="0" height="54">
                                        <tr>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image01[0]%>" width="72" height="47" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image01[1]%>" width="72" height="47" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image02[0]%>" width="72" height="47" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image02[1]%>" width="72" height="47" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image03[0]%>" width="72" height="47" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image03[1]%>" width="72" height="47" border="0"></td>
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
                    <td width="1157" height="86">
					<p>&nbsp;</p>
					<p><img src="img/m_01.gif" usemap="#ImageMap1" border="0"><map name="ImageMap1">
<area shape="rect" coords="14, 6, 76, 29" href="movie_view.jsp?no=<%=no%>">
<area shape="rect" coords="102, 6, 166, 28" href="movie_movie.jsp?no=<%=no%>">
<area shape="rect" coords="195, 6, 261, 29" href="movie_actor.jsp?no=<%=no%>">
<area shape="rect" coords="287, 5, 347, 29" href="movie_snap.jsp?no=<%=no%>">
<area shape="rect" coords="367, 6, 413, 29" href="movie_review.jsp?no=<%=no%>">
</map></p>
					<p> <a href="<%=site%>" target="movie"><%=video01txt[0]%>&nbsp;&nbsp;
					 <a href="<%=site%>" target="movie"><%=video01txt[1]%>&nbsp;&nbsp;
					 <a href="<%=site%>" target="movie"><%=video02txt[0]%>&nbsp;&nbsp;
					 <a href="<%=site%>" target="movie"><%=video02txt[1]%>&nbsp;&nbsp;
					 <a href="<%=site%>" target="movie"><%=video03txt[0]%>&nbsp;&nbsp;
					 <a href="<%=site%>" target="movie"><%=video03txt[1]%></p>
<p>&nbsp;</p>
					<p> <iframe id="iframe1" src="<%=video01[0]%>" width="700" height="500" frameborder="0" name="movie"></iframe></p>

					</td>
                </tr>
            </table>
			<%
	     }  // while문의 끝
 %>
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