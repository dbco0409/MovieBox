  <%@ page contentType="text/html;charset=euc-kr" %>
<%@include file="movie_view_head.jsp"%>
<%  int chartno=Integer.parseInt(request.getParameter("chartno"));   %>

	  <body>
	  <form method="post" action="chart_delete_ok.jsp?chartno=<%=chartno%>&no=<%=no%>">
   <table width="360" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td width="101"><img src="img/icon.gif" align="absmiddle" /> �н�����</td>
        <td width="164"><input type="password" name="pwd"></td>
        <td width="95"><img src="img/ok.gif" width="49" height="30" onClick="submit()"></td>
    </tr>
    <tr>
        <td width="360" colspan="3" height="30">
            <p><img src="img/icon.gif" align="absmiddle" />�� �Խù��� �н����带 �Է��Ͻʽÿ�.</p>
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
