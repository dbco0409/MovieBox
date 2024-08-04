<%@ page contentType="text/html;charset=euc-kr" %>

<%

int chartno=Integer.parseInt(request.getParameter("chartno"));  
 String jsql75 = "select * from movie_chart where no=? and movieno=?";   
	 PreparedStatement  pstmt75 = con.prepareStatement(jsql75);
	 pstmt75.setInt(1, chartno);	
	 pstmt75.setInt(2, movieno);	
	 ResultSet  rs75 = pstmt75.executeQuery();

     if(!rs75.wasNull()) {
rs75.next();
		
		int no5 = rs75.getInt("no");
			int chart5 = rs75.getInt("chart");
    		String name5 =  rs75.getString("name");	
			String icon =  rs75.getString("icon");	
    		String title5 =  rs75.getString("title");
			String ctg5 = rs75.getString("ctg");
			String date5 = rs75.getString("date");
			String chk5 = rs75.getString("chk");
			String content5 = rs75.getString("content");
			int total = rs75.getInt("total");
			 int readcount = rs75.getInt("readcount");
			readcount ++;

			
			
%>
<table width="600" cellpadding="0" cellspacing="0">
    <tr>
        <td width="397" height="60"><a href="movie_list_head.jsp?no=<%=movieno%>"><img src="img/list_b.gif" border="0"></a></td>
        <td width="397" height="60">
            <p align="right"><a href="chart_modify.jsp?chartno=<%=chartno%>&no=<%=movieno%>"><img src="img/modify.gif" border="0"></a><a href="chart_delete.jsp?chartno=<%=chartno%>&no=<%=movieno%>"><img src="img/delete.gif" border="0"></a><a href="m_chart.jsp?no=<%=movieno%>"><img src="img/submit2.gif" border="0"></a></p>
        </td>
    </tr>
	<tr>
	<td  colspan="2"><hr /></td>
	</tr>
    <tr>
        <td width="600" height="25" colspan="2">
		<p><img src="img/list_icon.gif" border="0"> <font color="red"><b><%=ctg5%></b></font> | <%=title5%> <font color="gray"><b>(<%=chk5%>)</b></p></td>
    </tr>
   <tr>
        <td width="326" height="25"><%=name5%> &nbsp;<font size="1">|</font>&nbsp; <%=date5%></td>
        <td width="319" height="25">조회수  &nbsp;<font size="1">|</font>&nbsp; <%=readcount%>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  
		평점 &nbsp;<font size="1">|</font>&nbsp;<img src="img/m_<%=chart5%>.gif" align="absbottom"></td>
    </tr>
    <tr>
        <td width="600" colspan="2" style="word-wrap: break-word;">
            <p>&nbsp;</p>
			<p><img src="<%=icon%>" border="0" width="70%"></p>
            <pre><%=content5%></pre>
			<p>&nbsp;</p>
        </td>
    </tr>
		<tr>
	<td  colspan="2"><hr /></td>
	</tr>
    <tr>
	<% 
	rs75.close();
		pstmt75.close();

	String jsql9 = "update movie_chart set readcount = ? where no = ?";
        PreparedStatement up_readcount_Pstmt = con.prepareStatement(jsql9);
        up_readcount_Pstmt.setInt(1, readcount);
        up_readcount_Pstmt.setInt(2, chartno);
        up_readcount_Pstmt.executeUpdate();
        
		up_readcount_Pstmt.close(); 

		 
		}  
	
		%> 
        <td width="392" colspan="2"></td>
    </tr>
    <tr>
        <td width="82" height="9"><a href="movie_list_head.jsp?no=<%=movieno%>"><img src="img/list_b.gif" border="0"></a></td>
        <td width="310" height="18">
            <p align="right"><a href="review.jsp?no=<%=movieno%>"><img src="img/submit2.gif" border="0"></a>
			</p>
        </td>
    </tr>
</table>
<%   }} 
		finally{}
		
				 %>
				


</form>
</body>
</html>