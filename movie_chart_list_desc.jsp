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
a:link,a:visited{text-decoration:none; color: #8d8d8d; font-weight:bold; font-size:10pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<table width="700" cellpadding="0" cellspacing="0">
    <tr>
       <td width="110"><a href="movie_list_head.jsp?no=<%=no%>">최신순</a></td>
        <td width="116"><a href="movie_list_hit.jsp?no=<%=no%>">조회수순</a></td>
        <td width="148"><a href="movie_list_order.jsp?no=<%=no%>">평점 높은 순</a></td>
        <td width="122"><a href="movie_list_desc.jsp?no=<%=no%>">평점 낮은 순</a></td>
        <td width="327">
            <p align="right"><a href="review.jsp?no=<%=no%>"><img src="img/submit.gif" border="0"></p>
        </td>
    </tr>
</table>

<%
		  int movieno=no;
		String group_index;
		int list_index;

		group_index = request.getParameter("group_index");
		//첫 페이지는 group_index 값이 0
		   
		if (group_index != null) 	
				list_index = Integer.parseInt(group_index);  
		else 
				list_index = 0;     //현재 페이지 수 
		
	
		//board 테이블에 있는 총 자료의 수(글의 개수) 알아 오기
		String jsql21 = "select count(*) from movie_chart where movieno="+movieno;
		PreparedStatement pstmt21 = con.prepareStatement(jsql21);
		ResultSet cntrs = pstmt21.executeQuery();	

		cntrs.next();
		int cnt = cntrs.getInt(1);//글의 총 개수

		//한 페이지에 20개의 글 출력하기 위해
		//글의 개수를 20으로 나누어 페이지 계산
		int cntList = cnt/7; // 페이지 수 계산하기 위한 변수 
		int remainder = cnt%7; //나머지
		int cntList_1;//총페이지 수
			
		//1(21, 41, 61, 81, ...)번째 글이 올라올 때 총 페이지 수 1 증가
		if (cntList != 0) //글이 20개이상이면
		{
			   if (remainder == 0)	 //20으로 나눈 나머지가 없으면		
				  cntList_1 = cntList;  //몫이 페이지 수          
			   else                    //나머지가 있으면
				   cntList_1 = cntList + 1; //몫에 1 더한 값이 총페이지 수		  
		 } 
		 else 		 
			  cntList_1 = cntList + 1; //총페이지 수		
			   
		cntrs.close();

			
     String jsql51 = "select * from movie_chart where movieno=? desc by chart";   
	 PreparedStatement  pstmt51 = con.prepareStatement(jsql51);
	 pstmt51.setInt(1, movieno);	
	 ResultSet  rs51 = pstmt51.executeQuery();

if (!rs51.wasNull()) 
	{
	   for(int i = 0; i < list_index * 7; i++) 
	      rs51.next();

       int cursor = 0;

while(rs51.next()){
				int no3 = rs51.getInt("no");
			int chart3 = rs51.getInt("chart");
    		String name3 =  rs51.getString("name");	
    		String title3 =  rs51.getString("title");
			String ctg3 = rs51.getString("ctg");
			String date3 = rs51.getString("date");
			String chk3 = rs51.getString("chk");
			String content3 = rs51.getString("content");
			int total = rs51.getInt("total");
			
%>
<table width="700" cellpadding="0" cellspacing="0">
    <tr>
        <td width="123" rowspan="3" height="106"  valign="top"><a href="movie_view.jsp?no=<%=no%>"><img src="<%=image%>" border="0" width="107" height="90" /></td>
        <td width="13"><%=no3%></td>
        <td width="66">
           <font color="red"><b><%=ctg3%></b></font>
        </td>
        <td width="518">
         <b><%=title3%></b>
        </td>
    </tr>
    <tr>
        <td width="577" colspan="3" valign="top">
            <div style="width:550px;height:56px;overflow:hidden; overflow:hidden; text-overflow:ellipsis;margin-top:10px;"><%=content3%></div>
        </td>
    </tr>
    <tr>
        <td width="577" colspan="3">            <div align="right">
                <table width="360" cellpadding="0" cellspacing="0" bordercolordark="black" bordercolorlight="black">
                    <tr>
                        <td width="70"><%=chk3%></td>
                        <td width="70"><%=name3%></td>
                        <td width="70"><%=date3%></td>
                        <td width="100"><img src="img/m_<%=chart3%>.gif"></td>
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

        <table width="620" border="0" cellspacing="0" cellpadding="5" align="left">
          <tr>&nbsp;</tr><tr>
             <td colspan="5" align="center">        
		<%
			//첫페이지 (group_index 값이 0)로 이동할 수 있게끔 링크
		%>
        <a href="movie_list_head.jsp?group_index=0&no=<%=no%>"><img src="img/first.gif" border="0"/></a>
        &nbsp;&nbsp;&nbsp;
                
   <% 
   //페이지 번호를 출력 및 링크시키기 위한 변수들을 선언
       int startpage=1;
       int maxpage = cntList_1;
       int endpage = startpage + maxpage -1;

	//보여줄 페이지가 속한 그룹의 첫번째 페이지부터 마지막 페이지까지의 링크를 추가
       for (int j=1; j<=7; j++) 
	   {
           if(j == list_index) 
		   {
   %>
                <img src="img/page_<%= j %>.gif" border="0"/>
   <%
            } 
            else 
			{
   %>
       <a href="movie_list_head.jsp?group_index=<%= j-1 %>&no=<%=no%>"><img src="img/page_<%= j %>.gif" border="0"/></a>
   <%
            }
       }
	    
   %>
    
      &nbsp;&nbsp;&nbsp;
	  <%
	  //마지막 페이지로 이동할 수 있게끔 링크
	
	   %>
      <a href="movie_list_head.jsp?group_index=<%= cntList_1 - 1 %>&no=<%=no%>"><img src="img/end.gif" border="0"/></a>
    
             </td>
          </tr>                
    </table>
<%
} }
				  finally{}
				 %>

</form>
</body>
</html>