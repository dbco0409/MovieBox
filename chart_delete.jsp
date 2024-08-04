  <%@ page contentType="text/html;charset=euc-kr" %>
<%@include file="movie_view_head.jsp"%>
<%  int chartno=Integer.parseInt(request.getParameter("chartno"));   %>

	  <body>
	  <form method="post" action="chart_delete_ok.jsp?chartno=<%=chartno%>&no=<%=no%>">
   <table width="360" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td width="101"><img src="img/icon.gif" align="absmiddle" /> 패스워드</td>
        <td width="164"><input type="password" name="pwd"></td>
        <td width="95"><img src="img/ok.gif" width="49" height="30" onClick="submit()"></td>
    </tr>
    <tr>
        <td width="360" colspan="3" height="30">
            <p><img src="img/icon.gif" align="absmiddle" />이 게시물의 패스워드를 입력하십시오.</p>
        </td>
    </tr>
</table>
</form>
    <% 
        } 
       rs.close();
       con.close();
%>

<% } 
		finally{}
		
				 %>
 </head>

 <body>
  
 </body>
</html>
