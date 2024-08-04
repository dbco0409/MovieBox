<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<%@include file="_head.jsp" %>
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


</head>
<table width="720" cellpadding="0" cellspacing="0" align="center" >
    <tr>
        <td width="720" valign="top">
		<p>&nbsp;</p>
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

	String[]  image01 = image1.split(",");   
	String[]  image02 = image2.split(",");  
	String[]  image03 = image3.split(",");  	

  
    rs2.close();  
	
	%>
<body>
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
<td width="233">�򰡰� �������Դϴ�.	
								</td>
                            <tr>
                                <td width="456" valign="top">
                                    <table width="470" cellpadding="0" cellspacing="0" height="83">
                                        <tr>
                                            <td width="31">�⺻</td>
                                            <td width="245"><%=ctg%> | ������ : <%=date%> | <%=time%></td>
                                        </tr>
                                        <tr>
                                            <td width="31">����</td>
                                            <td width="245"><%=director%> </td>
                                        </tr>
                                        <tr>
                                            <td width="31">�⿬</td>
                                            <td width="245"><%=actor%></td>
                                        </tr>
                                        <tr>
                                            <td width="31">���</td>
                                            <td width="245"><%=level%></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
						
                                <td width="456" colspan="3" valign="top">
                                    <table width="508" cellpadding="0" cellspacing="0" height="54">
                                        <tr>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image01[0]%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image01[1]%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image02[0]%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image02[1]%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image03[0]%>" width="80" height="64" border="0"></td>
                                            <td width="78"><a href="snap.jsp?no=<%=no%>"><img src="<%=image03[1]%>" width="80" height="64" border="0"></td>
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
            <p align="center"><a href="movie_view.jsp?no=<%=no%>">�ֿ�����</font></a></p>
        </td>
        <td width="10">
            <p align="center">|</p>
        </td>
        <td width="109" bgcolor="ffffff" onclick=location.href="actor.jsp?no=<%=no%>">
            <p align="center"><a href="actor.jsp?no=<%=no%>">���/����</a></p>
        </td>
        <td width="10">
            <p align="center">|</p>
        </td>
        <td width="109" bgcolor="#ffffff" onclick=location.href="snap.jsp?no=<%=no%>">
            <p align="center"><a href="snap.jsp?no=<%=no%>">��ƿ��</a></p>
        </td>
        <td width="10">
            <p align="center">|</p>
        </td>
        <td width="109" bgcolor="#6D3A99" onclick=location.href="review.jsp?no=<%=no%>">
            <p align="center"><a href="movie_list_head.jsp?no=<%=no%>"><font color="white">����</a></p>
        </td>
    </tr>
</table>	<br>&nbsp;</br>

<%
int chartno=Integer.parseInt(request.getParameter("chartno"));   
String password = request.getParameter("pwd");  

String jsql13 = "select * from movie_chart where movieno = ?";
       PreparedStatement pstmt13 = con.prepareStatement(jsql13);
       pstmt13.setInt(1, chartno);
       ResultSet rs13 = pstmt13.executeQuery();
       
	  if(!rs13.wasNull()) {
       rs13.next();
       String rs_pwd = rs13.getString("password");

       if (password.equals(rs_pwd)) 
	  {
		    int no3 = rs13.getInt("no");
           String title3 = rs13.getString("title");
     	   String name3 = rs13.getString("name").trim();
           String pwd = rs13.getString("password");
		    String chart = rs13.getString("chart").trim();
		String ctg3 = rs13.getString("ctg").trim();
		String item = rs13.getString("icon");
		String content3 = rs13.getString("content").trim();

		  %>
		  <script> 
function evalTextbox(a){ 
       document.images["myImage"].src = a;} 
</script> 
  <form action="chart_modify_result.jsp?chartno=<%=no3%>&movieno=<%=no%>" method="post" name="modify">
<p><font color="black"><b>��������ϱ�</b></font></p>
<table width="703" cellpadding="0" cellspacing="0">
    <tr>
        <td width="460" valign="middle"> 
          <table width="460" cellpadding="3" cellspacing="3">
    <tr>
        <td width="70"><img src="img/icon.gif" align="absmiddle" /> ��ȭ�̸�</td>
        <td width="258"><input type="text" name="movie_title" value="<%=title%>"></td>
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
<input type="password" name="pwd" value="<%=pwd%>">
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
                        <p><input type="text" name="title3" size="35" value="<%=title3%>"> <input type="checkbox" name="chk" value="�ǰ�����" checked> �ǰ����� </p>
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
	 continue; } 
	  else
	  
	  %>
	
   	<h2><br><br><center><font size=5 color=red><�� ���� ����!></font></h2><br><br>
              <font size=2>��� ��ȣ�� Ʋ���� �� ������ ���߽��ϴ�.</font><p>
              <font size=2>��� ��ȣ�� Ȯ���� �ּ���.</font><p>
              <font size=2>���� ���÷��� <a href="javascript:history.back();"> ����</a>�� Ŭ���ϼ���.</font>
        </center>
    
	<%} }} 
		finally{}
		
				 %>