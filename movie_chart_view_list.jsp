<%@ page contentType="text/html;charset=euc-kr" %>


<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>제목 없음</title>
<meta name="generator" content="Namo WebEditor">
</head>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#mctg, p{font-size:9pt; color:#8f8f8f;}
#i_b{ width:49; height:30}
hr{color:#e3e1d5;}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color:black;}
</style>
<body bgcolor="white">
<%

			
     String jsql55 = "select * from movie_chart where movieno=? order by date";   
	 PreparedStatement  pstmt55 = con.prepareStatement(jsql55);
	 pstmt55.setInt(1, no);	
	 ResultSet  rs55 = pstmt55.executeQuery();

if (!rs55.wasNull()) 
	{
	 
	      rs55.next();

       int cursor = 0;

while(rs55.next()){
				int no5 = rs55.getInt("no");
			int chart5 = rs55.getInt("chart");
    		String name5 =  rs55.getString("name");	
    		String title5 =  rs55.getString("title");
			String ctg5 = rs55.getString("ctg");
			String date5 = rs55.getString("date");
			String chk5 = rs55.getString("chk");
			String content5 = rs55.getString("content");
			int total5 = rs55.getInt("total");
			
%>
<table width="700" cellpadding="0" cellspacing="0">
    <tr>
        <td width="66">
           <font color="red"><b><%=ctg5%></b></font>
        </td>
        <td width="558">
         <b><a href="movie_chart_view.jsp?no=<%=no%>"><%=title5%></a></b>
        </td>
    </tr>
   
    <tr>
        <td width="577" colspan="3">            <div align="right">
                <table width="360" cellpadding="0" cellspacing="0" bordercolordark="black" bordercolorlight="black">
                    <tr>
                        <td width="70"><%=chk5%></td>
                        <td width="70"><%=name5%></td>
                        <td width="70"><%=date5%></td>
                        <td width="100"><img src="img/m_<%=chart5%>.gif"></td>
                    </tr>
                </table>
            </div>
        </td>
    </tr>
</table>
<br><img src="img/gray_bar.gif" border="0"></br>
<br>&nbsp;</br>
	<%
	   //while 문이 반복 수행될 때마다 cursor를 1씩 증가
		 cursor ++;
         if (cursor >= 7) break; 
        }   // while문의 끝
    }  //  if문의 끝
   %>

<%
} }}
				  finally{}
				 %>

</form>
</body>
</html>