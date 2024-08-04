
<style type="text/css">
a:link, a:visited { color:#a8a8a8; font-family:"¸¼Àº °íµñ", "µ¸¿ò"; font-size:9pt; text-decoration: none}
</style>
  <%
	int reserve_no = Integer.parseInt(request.getParameter("reserve_no"));  
	 int where=Integer.parseInt(request.getParameter("where"));
	 int date=Integer.parseInt(request.getParameter("date")); 
		int time=Integer.parseInt(request.getParameter("time")); 
	int people=1;
	int people2=2;
	int people3=3;
	int people4=4;
	int people5=5;
	int people6=6;
	int people7=7;
	int people8=8;
	%>
	<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<table width="117" height="33" cellpadding="0" cellspacing="0" bgcolor="white" align="center">
                <tr>
                    <td width="94">
					<a href="reserve_sit.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time=<%=time%>&people=<%=people%>" target="sitN" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'">1</a></td>
                    <td width="94">
					<a href="reserve_sit.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time=<%=time%>&people=<%=people2%>" target="sitN" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'">2</a></td>
                    <td width="94">
					<a href="reserve_sit.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time=<%=time%>&people=<%=people3%>" target="sitN" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'">3</a></td>
                    <td width="94">
					<a href="reserve_sit.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time=<%=time%>&people=<%=people4%>" target="sitN" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'">4</a></td>
                    <td width="94">
					<a href="reserve_sit.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time=<%=time%>&people=<%=people5%>" target="sitN" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'">5</a></td>
                    <td width="94">
					<a href="reserve_sit.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time=<%=time%>&people=<%=people6%>" target="sitN" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'">6</a></td>
                    <td width="94">
					<a href="reserve_sit.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time=<%=time%>&people=<%=people7%>" target="sitN" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'">7</a></td>
                    <td width="94">
					<a href="reserve_sit.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time=<%=time%>&people=<%=people8%>" target="sitN" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'">8</a>
				</td>
                </tr>
            </table>
 </body>

