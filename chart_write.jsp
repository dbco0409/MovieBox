<%@ page contentType="text/html;charset=euc-kr" %>

<%@include file="movie_view_head.jsp"%>

<% String chart = request.getParameter("chart");  %>

<form action="chart_write_result.jsp?movieno=<%=no%>" method="post" name="form2">
<table width="575" cellpadding="0" cellspacing="0">
<input type="hidden" name="movieno" value="<%= movieno %>">
    <tr>
        <td width="575">
            <table width="575" cellpadding="0" cellspacing="0">
                <tr>
				<input type="hidden" name="movieno" value="<%= no %>">
                    <td width="279"><img src="img/icon.gif" />��ȭ�̸�</td>
                    <td width="279"><%=title%></td>
                </tr>
                <tr>
                    <td width="279" height="9"><img src="img/icon.gif" />�̸�</td>
                    <td width="279" height="18"><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td width="279"><img src="img/icon.gif" />��й�ȣ</td>
                    <td width="279"><input type="password" name="pwd"></td>
                </tr>
                <tr>
                    <td width="279"><img src="img/icon.gif" />����</td>
                    <td width="279">
					<% 
											if (chart.equals("10")) {
								%>
					<select name="chart">
					<option value="10" selected>10/10</option>
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

					<% 
}	else if (chart.equals("9")) {
								%>
					<select name="chart">
					<option value="10">10/10</option>
					<option value="9" selected>9/10</option>
					<option value="8">8/10</option>
					<option value="7">7/10</option>
					<option value="6">6/10</option>
					<option value="5">5/10</option>
					<option value="4">4/10</option>
					<option value="3">3/10</option>
					<option value="2">2/10</option>
					<option value="1">1/10</option>
					</select>

					<% 
					}	else if (chart.equals("8")) {
								%>
					<select name="chart">
					<option value="10">10/10</option>
					<option value="9">9/10</option>
					<option value="8" selected>8/10</option>
					<option value="7">7/10</option>
					<option value="6">6/10</option>
					<option value="5">5/10</option>
					<option value="4">4/10</option>
					<option value="3">3/10</option>
					<option value="2">2/10</option>
					<option value="1">1/10</option>
					</select>

						<% 
					}	else if (chart.equals("7")) {
								%>
					<select name="chart">
					<option value="10">10/10</option>
					<option value="9">9/10</option>
					<option value="8">8/10</option>
					<option value="7" selected>7/10</option>
					<option value="6">6/10</option>
					<option value="5">5/10</option>
					<option value="4">4/10</option>
					<option value="3">3/10</option>
					<option value="2">2/10</option>
					<option value="1">1/10</option>
					</select>

						<% 
						}	else if (chart.equals("6")) {
								%>
					<select name="chart">
					<option value="10">10/10</option>
					<option value="9">9/10</option>
					<option value="8">8/10</option>
					<option value="7">7/10</option>
					<option value="6" selected>6/10</option>
					<option value="5">5/10</option>
					<option value="4">4/10</option>
					<option value="3">3/10</option>
					<option value="2">2/10</option>
					<option value="1">1/10</option>
					</select>

							<% 
						}	else if (chart.equals("5")) {
								%>
					<select name="chart">
					<option value="10">10/10</option>
					<option value="9">9/10</option>
					<option value="8">8/10</option>
					<option value="7">7/10</option>
					<option value="6">6/10</option>
					<option value="5"  selected>5/10</option>
					<option value="4">4/10</option>
					<option value="3">3/10</option>
					<option value="2">2/10</option>
					<option value="1">1/10</option>
					</select>
					
					<% 
							}	else if (chart.equals("4")) {
								%>
					<select name="chart">
					<option value="10">10/10</option>
					<option value="9">9/10</option>
					<option value="8">8/10</option>
					<option value="7">7/10</option>
					<option value="6">6/10</option>
					<option value="5">5/10</option>
					<option value="4" selected>4/10</option>
					<option value="3">3/10</option>
					<option value="2">2/10</option>
					<option value="1">1/10</option>
					</select>

						<% 
					}		else if (chart.equals("3")) {
								%>
					<select name="chart">
					<option value="10">10/10</option>
					<option value="9">9/10</option>
					<option value="8">8/10</option>
					<option value="7">7/10</option>
					<option value="6">6/10</option>
					<option value="5">5/10</option>
					<option value="4">4/10</option>
					<option value="3" selected>3/10</option>
					<option value="2">2/10</option>
					<option value="1">1/10</option>
					</select>

						<% 
						}	else if (chart.equals("2")) {
								%>
					<select name="chart">
					<option value="10">10/10</option>
					<option value="9">9/10</option>
					<option value="8">8/10</option>
					<option value="7">7/10</option>
					<option value="6">6/10</option>
					<option value="5">5/10</option>
					<option value="4">4/10</option>
					<option value="3">3/10</option>
					<option value="2" selected>2/10</option>
					<option value="1">1/10</option>
					</select>

					<% 
						}	else if (chart.equals("1")) {
								%>
					<select name="chart">
					<option value="10">10/10</option>
					<option value="9">9/10</option>
					<option value="8">8/10</option>
					<option value="7">7/10</option>
					<option value="6">6/10</option>
					<option value="5">5/10</option>
					<option value="4">4/10</option>
					<option value="3">3/10</option>
					<option value="2">2/10</option>
					<option value="1" selected>1/10</option>
					</select>
					<% } %>
					<select name="ctg">
					<option value="��̸���">��̸���</option>
					<option value="�Ǹ��ؿ�">�Ǹ��ؿ�</option>
					<option value="��������">��������</option>
					<option value="�Ƹ��ٿ�">�Ƹ��ٿ�</option>
					<option value="�����ְ�">�����ְ�</option>
					<option value="���־�¯">���־�¯</option>
					<option value="�����ϳ�">�����ϳ�</option>
					<option value="���Ʊ��">���Ʊ��</option>
					<option value="�����ؿ�">�����ؿ�</option>
					<option value="�����õ">�����õ</option>
					</select>
</td>
                </tr>
                <tr>
                    <td width="279"><img src="img/icon.gif" />����</td>
                    <td width="279"><input type="text" name="title" size="55"><input type="checkbox" name="chk">�ǰ����� </td>
                </tr>
                <tr>
                    <td width="279" height="6"><img src="img/icon.gif" />����</td>
                    <td width="279" height="18"><textarea name="content" rows="22" cols="70" style="border:1px solid #ddd;"scrolling="yes"></textarea></td>
                </tr>
              
				<tr>
									 <tr  align="right">
                                    <td width="510" height="15" rowspan="2" valign="top"><img src="img/submit.gif" onClick="check2()"><a href="notice_list.jsp" target="list"><img src="img/cut.gif" border="0"></a></td>
									</tr>
            </table>
        </td>
    </tr>
</table>
<p>&nbsp;</p>
 <% } %>
<form>
  <%
		 }  catch(Exception e)  {
        out.println(e);
}
				  finally{}
%>
 </body>
</html>
