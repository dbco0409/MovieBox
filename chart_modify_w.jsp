<%@ page contentType="text/html;charset=euc-kr" %>
<%@include file="movie_view_head.jsp"%>
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
<script> 
function evalTextbox(a){ 
       document.images["myImage"].src = a;} 

   </script>   
   <body>
   <%
		  request.setCharacterEncoding("euc-kr");
		int chartno=Integer.parseInt(request.getParameter("chartno"));       
		String jsql78 = "select * from movie_chart where no = ?";
		PreparedStatement pstmt78 = con.prepareStatement(jsql78);
		pstmt78.setInt(1, chartno);	
		ResultSet rs78 = pstmt78.executeQuery();

       if(!rs78.wasNull()) {
           rs78.next();
		    int no3 = rs78.getInt("no");
           String title3 = rs78.getString("title").trim();
     	   String name3 = rs78.getString("name").trim();
           String pwd = rs78.getString("password");
		    String chart = rs78.getString("chart").trim();
		String ctg3 = rs78.getString("ctg").trim();
		String item = rs78.getString("icon");
		String content3 = rs78.getString("content").trim();
   %> 
   
 <form action="chart_modify_result.jsp" method="post" name="modify">
<p><font color="black"><b>��������ϱ�</b></font></p>
<table width="703" cellpadding="0" cellspacing="0">
    <tr>
        <td width="460" valign="middle"> 
          <table width="460" cellpadding="3" cellspacing="3">
    <tr>
	<input type="hidden" name="no" value="<%= no %>">
        <td width="70"><img src="img/icon.gif" align="absmiddle" /> ��ȭ�̸�</td>
        <td width="258"><%=title%></td>
    </tr>
    <tr>
        <td width="70" height="9"><img src="img/icon.gif" align="absmiddle" /> �̸�</td>
        <td width="258" height="18">
<input type="text" name="name" value="<%=name3%>">
        </td>
    </tr>
    <tr>
        <td width="70"><img src="img/icon.gif" align="absmiddle" /> ��й�ȣ</td>
        <td width="258">
<input type="password" name="pwd">
        </td>
    </tr>
    <tr>
        <td width="70"><img src="img/icon.gif" align="absmiddle" /> ����</td>
        <td width="258">
            <p>
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
	<% } else if (chart.equals("9")) {%>
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
						<% } else if (chart.equals("8")) {%>
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
						<% } else if (chart.equals("7")) {%>
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
						<% } else if (chart.equals("6")) {%>
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
						<% } else if (chart.equals("5")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5" selected>5/10</option>
                            <option value="4">4/10</option>
                            <option value="3">3/10</option>
                            <option value="2">2/10</option>
                            <option value="1">1/10</option>
					</select>
							<% } else if (chart.equals("4")) {%>
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
						<% } else if (chart.equals("3")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5">5/10</option>
                            <option value="4" >4/10</option>
                            <option value="3"selected>3/10</option>
                            <option value="2">2/10</option>
                            <option value="1">1/10</option>
					</select>
					<% } else if (chart.equals("2")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5">5/10</option>
                            <option value="4" >4/10</option>
                            <option value="3">3/10</option>
                            <option value="2" selected>2/10</option>
                            <option value="1">1/10</option>
					</select>
						<% } else if (chart.equals("1")) {%>
			<select name="chart">
                            <option value="10">10/10</option>
                            <option value="9">9/10</option>
                            <option value="8">8/10</option>
                            <option value="7">7/10</option>
                            <option value="6">6/10</option>
                            <option value="5">5/10</option>
                            <option value="4" >4/10</option>
                            <option value="3">3/10</option>
                            <option value="2">2/10</option>
                            <option value="1" selected>1/10</option>
					</select>
<% } %>
<% if (ctg3.equals("��̸���")) {%>
<select name="ctg3">
                <option value="��̸���" selected>��̸���</option>
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

<% } else if (ctg3.equals("�Ǹ��ؿ�")) {%>
<select name="ctg3">
                <option value="��̸���">��̸���</option>
                <option value="�Ǹ��ؿ�" selected>�Ǹ��ؿ�</option>
                <option value="��������">��������</option>
                <option value="�Ƹ��ٿ�">�Ƹ��ٿ�</option>
                <option value="�����ְ�">�����ְ�</option>
                <option value="���־�¯">���־�¯</option>
                <option value="�����ϳ�">�����ϳ�</option>
                <option value="���Ʊ��">���Ʊ��</option>
                <option value="�����ؿ�">�����ؿ�</option>
                <option value="�����õ">�����õ</option>
					</select>

<% } else if (ctg3.equals("��������")) {%>
<select name="ctg3">
                <option value="��̸���">��̸���</option>
                <option value="�Ǹ��ؿ�">�Ǹ��ؿ�</option>
                <option value="��������" selected>��������</option>
                <option value="�Ƹ��ٿ�">�Ƹ��ٿ�</option>
                <option value="�����ְ�">�����ְ�</option>
                <option value="���־�¯">���־�¯</option>
                <option value="�����ϳ�">�����ϳ�</option>
                <option value="���Ʊ��">���Ʊ��</option>
                <option value="�����ؿ�">�����ؿ�</option>
                <option value="�����õ">�����õ</option>
					</select>

					<% } else if (ctg3.equals("�Ƹ��ٿ�")) {%>
<select name="ctg3">
                <option value="��̸���">��̸���</option>
                <option value="�Ǹ��ؿ�">�Ǹ��ؿ�</option>
                <option value="��������">��������</option>
                <option value="�Ƹ��ٿ�" selected>�Ƹ��ٿ�</option>
                <option value="�����ְ�">�����ְ�</option>
                <option value="���־�¯">���־�¯</option>
                <option value="�����ϳ�">�����ϳ�</option>
                <option value="���Ʊ��">���Ʊ��</option>
                <option value="�����ؿ�">�����ؿ�</option>
                <option value="�����õ">�����õ</option>
					</select>

	<% } else if (ctg3.equals("�����ְ�")) {%>
<select name="ctg3">
                <option value="��̸���">��̸���</option>
                <option value="�Ǹ��ؿ�">�Ǹ��ؿ�</option>
                <option value="��������">��������</option>
                <option value="�Ƹ��ٿ�">�Ƹ��ٿ�</option>
                <option value="�����ְ�" selected>�����ְ�</option>
                <option value="���־�¯">���־�¯</option>
                <option value="�����ϳ�">�����ϳ�</option>
                <option value="���Ʊ��">���Ʊ��</option>
                <option value="�����ؿ�">�����ؿ�</option>
                <option value="�����õ">�����õ</option>
					</select>

	<% } else if (ctg3.equals("���־�¯")) {%>
<select name="ctg3">
                <option value="��̸���">��̸���</option>
                <option value="�Ǹ��ؿ�">�Ǹ��ؿ�</option>
                <option value="��������">��������</option>
                <option value="�Ƹ��ٿ�">�Ƹ��ٿ�</option>
                <option value="�����ְ�">�����ְ�</option>
                <option value="���־�¯" selected>���־�¯</option>
                <option value="�����ϳ�">�����ϳ�</option>
                <option value="���Ʊ��">���Ʊ��</option>
                <option value="�����ؿ�">�����ؿ�</option>
                <option value="�����õ">�����õ</option>
					</select>

	<% } else if (ctg3.equals("�����ϳ�")) {%>
<select name="ctg3">
                <option value="��̸���">��̸���</option>
                <option value="�Ǹ��ؿ�">�Ǹ��ؿ�</option>
                <option value="��������">��������</option>
                <option value="�Ƹ��ٿ�">�Ƹ��ٿ�</option>
                <option value="�����ְ�">�����ְ�</option>
                <option value="���־�¯">���־�¯</option>
                <option value="�����ϳ�"  selected>�����ϳ�</option>
                <option value="���Ʊ��">���Ʊ��</option>
                <option value="�����ؿ�">�����ؿ�</option>
                <option value="�����õ">�����õ</option>
					</select>

	<% } else if (ctg3.equals("���Ʊ��")) {%>
<select name="ctg3">
                <option value="��̸���">��̸���</option>
                <option value="�Ǹ��ؿ�">�Ǹ��ؿ�</option>
                <option value="��������">��������</option>
                <option value="�Ƹ��ٿ�">�Ƹ��ٿ�</option>
                <option value="�����ְ�">�����ְ�</option>
                <option value="���־�¯">���־�¯</option>
                <option value="�����ϳ�">�����ϳ�</option>
                <option value="���Ʊ��"  selected>���Ʊ��</option>
                <option value="�����ؿ�">�����ؿ�</option>
                <option value="�����õ">�����õ</option>
					</select>

						<% } else if (ctg3.equals("�����ؿ�")) {%>
<select name="ctg3">
                <option value="��̸���">��̸���</option>
                <option value="�Ǹ��ؿ�">�Ǹ��ؿ�</option>
                <option value="��������">��������</option>
                <option value="�Ƹ��ٿ�">�Ƹ��ٿ�</option>
                <option value="�����ְ�">�����ְ�</option>
                <option value="���־�¯">���־�¯</option>
                <option value="�����ϳ�">�����ϳ�</option>
                <option value="���Ʊ��">���Ʊ��</option>
                <option value="�����ؿ�"  selected>�����ؿ�</option>
                <option value="�����õ">�����õ</option>
					</select>

							<% } else if (ctg3.equals("�����õ")) {%>
<select name="ctg3">
                <option value="��̸���">��̸���</option>
                <option value="�Ǹ��ؿ�">�Ǹ��ؿ�</option>
                <option value="��������">��������</option>
                <option value="�Ƹ��ٿ�">�Ƹ��ٿ�</option>
                <option value="�����ְ�">�����ְ�</option>
                <option value="���־�¯">���־�¯</option>
                <option value="�����ϳ�">�����ϳ�</option>
                <option value="���Ʊ��">���Ʊ��</option>
                <option value="�����ؿ�">�����ؿ�</option>
                <option value="�����õ"  selected>�����õ</option>
					</select>

<% } %>

					</p>
        </td>
    </tr>
</table>
                    </td>
					    <td width="216">
            <table width="216" cellpadding="3" cellspacing="3">
    <tr>
                    <td width="216" height="150" valign="middle" align="left">
                       <IMG SRC="<%=image%>" width="120" height="120" name="myImage">
			<select NAME="item"  onChange="evalTextbox(form.item.options[form.item.selectedIndex].value)">
                            <option value="<%=image%>">�̹��� ����</option>
                            <option value="<%=image01[0]%>">�̹��� 1</option>
                            <option value="<%=image01[1]%>">�̹��� 2</option>
                            <option value="<%=image02[0]%>">�̹��� 3</option>
                            <option value="<%=image02[1]%>">�̹��� 4</option>
                            <option value="<%=image03[0]%>">�̹��� 5</option>
                            <option value="<%=image03[1]%>">�̹��� 6</option>

</select>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
            </table>
        </td>
    </tr>
</table>
<table width="700" cellpadding="0" cellspacing="0">
    <tr>
        <td width="700">
            <table width="700" cellpadding="3" cellspacing="3">
                <tr>
                    <td width="80"><img src="img/icon.gif" align="absmiddle"/> ����</td>
                    <td width="495">
                        <p><input type="text" name="title" size="35" value="<%=title%>"> <input type="checkbox" name="chk" value="�ǰ�����" checked> �ǰ����� </p>
                    </td>
                </tr>
                <tr>
                    <td width="80" height="6"><img src="img/icon.gif" align="absmiddle" /> ����</td>
                    <td width="495" height="18"><textarea name="content" rows="22" cols="70" style="border:1px solid #ddd;" scrolling="yes"><%=content3%></textarea></td>
                </tr>
                <tr>
                    <td width="80" height="40">&nbsp;</td>
                    <td width="495" height="18">
                        <p align="right"><img src="img/submit.gif" OnClick="submit()"><a href="movie_chart_list.jsp?no=<%=no%>"><img src="img/cut.gif" border="0"></a></p>
                    </td>
                </tr>
            </table>
	
        </td>
    </tr>
</table>

</form>
<% 
        } }
       rs.close();
       con.close();
%>

<% } 
		finally{}
		
				 %>
 </body>
</html>
