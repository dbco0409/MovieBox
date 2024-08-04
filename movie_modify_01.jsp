<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>  
<%@include file="_head.jsp"%>
<%@ page import="java.sql.*, java.text.*" %>
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
 <body>
 <%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
  <%
       request.setCharacterEncoding("euc-kr");

	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB�� ����       


		int no = Integer.parseInt(request.getParameter("no"));  
                
		String jsql = "select * from movie where no = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setInt(1, no);
		ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
           rs.next();
		   String title = rs.getString("title");
           String stitle = rs.getString("stitle");
     	   String date = rs.getString("date");
		    String open = rs.getString("open");
			  String ctg = rs.getString("ctg");
		    String mctg = rs.getString("mctg");
			  String time = rs.getString("time");
			    String level = rs.getString("level");
				String director = rs.getString("director");
			    String actor = rs.getString("actor");
					String image = rs.getString("image");
			    String site = rs.getString("site");
				 String content = rs.getString("content");

   %> 

 <form action="movie_modify_01_result.jsp" method="post" name="form">
 <img src="img/m_write_1.gif">
  <table width="700" cellpadding="3" cellspacing="3">
    <tr>
		<input type="hidden" name="no" value="<%= no %>">
        <td width="152"><img src="img/icon.gif" />��ȭ����</td>
        <td width="400"><input type="text" name="title" size="55" value="<%=title%>"></td>
       
    </tr>
    <tr>
        <td width="200"><img src="img/icon.gif" />������</td>
        <td width="400"><input type="text" name="stitle" size="55" value="<%=stitle%>"></td>
    </tr>
	<tr>
	<td width="400"><img src="img/icon.gif"/>������</td>
        <td width="400"><input type="text" name="date" size="35" value="<%=date%>"> 
		<% if (open.equals("Y")) {%>
		<input type="radio" name="open" value="Y" checked>���� <input type="radio" name="open" value="N">�������� </td>
		<% } else if (open.equals("N")) {%>
			<input type="radio" name="open" value="Y">���� <input type="radio" name="open" value="N" checked>�������� </td>
<% } %>
	</tr>
    <tr>
        <td width="200"><img src="img/icon.gif"/>��ȭ��</td>
        <td width="406">
		<%
	    	String[]  mctgArr = mctg.split(" ");   
			String[]  checked = new String[5];   

			for(int i=0; i<mctgArr.length;i++) {
				if(mctgArr[i].equals("������"))
				{
					checked[0] = "checked";
				}
				else if(mctgArr[i].equals("3D"))
				{
					checked[1] = "checked";
				}
				else if(mctgArr[i].equals("���̸߽�"))
				{
					checked[2] = "checked";
				}
				else if(mctgArr[i].equals("����ö���"))
				{
					checked[3] = "checked";
				}
				else if(mctgArr[i].equals("4D"))
				{
					checked[4] = "checked";
				}
			}
%>
		<input type="checkbox" name="mctg" value="������" <%=checked[0]%>>������ 
		<input type="checkbox" name="mctg" value="3D" <%=checked[1]%>>3D
			<input type="checkbox" name="mctg" value="���̸߽�" <%=checked[2]%>>���̸߽�
				<input type="checkbox" name="mctg" value="����ö���" <%=checked[3]%>>����ö���
				<input type="checkbox" name="mctg" value="4D" <%=checked[4]%>>4D
			</td>
    </tr>
	<tr>
	        <td width="400"><img src="img/icon.gif"/>��ȭ�ð�</td>
        <td width="400"><input type="text" name="time" size="20" value="<%=time%>">��</td>
	</tr>
    <tr>
        <td width="200" height="9"><img src="img/icon.gif"/>���</td>
        <td width="216" height="18">
		<select name="level">
		<% if (level.equals("��ü������")) {%>
		<option>==����==</option>
		<option value="��ü������" selected>All</option>
		<option value="12���̻�">12��</option>
		<option value="15���̻�">15��</option>
		<option value="19���̻�(û�ҳ�����Ұ�)">19��(û�ҳ�����Ұ�)</option>
				<% } else if (level.equals("12���̻�")) {%>
		<option>==����==</option>
		<option value="��ü������">All</option>
		<option value="12���̻�"  selected>12��</option>
		<option value="15���̻�">15��</option>
		<option value="19���̻�(û�ҳ�����Ұ�)">19��(û�ҳ�����Ұ�)</option>
	
	<% } else if (level.equals("15���̻�")) {%>
		<option>==����==</option>
		<option value="��ü������">All</option>
		<option value="12���̻�">12��</option>
		<option value="15���̻�"   selected>15��</option>
		<option value="19���̻�(û�ҳ�����Ұ�)">19��(û�ҳ�����Ұ�)</option>

			<% } else if (level.equals("19���̻�(û�ҳ�����Ұ�)")) {%>
		<option>==����==</option>
		<option value="��ü������">All</option>
		<option value="12���̻�" >12��</option>
		<option value="15���̻�">15��</option>
		<option value="19���̻�(û�ҳ�����Ұ�)"  selected>19��(û�ҳ�����Ұ�)</option>
<%}  else %>
		<option>==����==</option>
		<option value="��ü������">All</option>
		<option value="12���̻�" >12��</option>
		<option value="15���̻�">15��</option>
		<option value="19���̻�(û�ҳ�����Ұ�)">19��(û�ҳ�����Ұ�)</option>

		</td>
		</tr>
		<tr>
        <td width="216" height="18"><img src="img/icon.gif"/>����</td>
        <td width="216" height="18"><input type="text" name="director" size="55" value="<%=director%>"></td>
		</tr>
	<tr>
	 <td width="506"><img src="img/icon.gif"/>�帣</td>
        <td width="500"><br>
				<%
	    	String[]  ctgArr = ctg.split(" ");   
			String[]  checked2 = new String[17];   

			for(int i=0; i<ctgArr.length;i++) {
				if(ctgArr[i].equals("�׼Ǹ���"))
				{
					checked2[0] = "checked";
				}
				else if(ctgArr[i].equals("�ִϸ��̼�"))
				{
					checked2[1] = "checked";
				}
				else if(ctgArr[i].equals("�ڸ޵�"))
				{
					checked2[2] = "checked";
				}
				else if(ctgArr[i].equals("��ť���͸�"))
				{
					checked2[3] = "checked";
				}
				else if(ctgArr[i].equals("���"))
				{
					checked2[4] = "checked";
				}
				else if(ctgArr[i].equals("����ƽ"))
				{
					checked2[5] = "checked";
				}
				else if(ctgArr[i].equals("����/���"))
				{
					checked2[6] = "checked";
				}
				else if(ctgArr[i].equals("����"))
				{
					checked2[7] = "checked";
				}
				else if(ctgArr[i].equals("����"))
				{
					checked2[8] = "checked";
				}
				else if(ctgArr[i].equals("������"))
				{
					checked2[9] = "checked";
				}
				else if(ctgArr[i].equals("�̽��͸�/����"))
				{
					checked2[10] = "checked";
				}
				else if(ctgArr[i].equals("SF"))
				{
					checked[11] = "checked";
				}
				else if(ctgArr[i].equals("�θǽ�"))
				{
					checked2[12] = "checked";
				}
				else if(ctgArr[i].equals("������"))
				{
					checked2[13] = "checked";
				}
				else if(ctgArr[i].equals("����"))
				{
					checked2[14] = "checked";
				}
				else if(ctgArr[i].equals("���α�"))
				{
					checked2[15] = "checked";
				}
				else if(ctgArr[i].equals("��Ÿ"))
				{
					checked2[16] = "checked";
				}
			}
%>

		<input type="checkbox" name="ctg" value="�׼�/����" <%=checked2[0]%>>�׼�/����
		<input type="checkbox" name="ctg" value="�ִϸ��̼�" <%=checked2[1]%>>�ִϸ��̼�
		<input type="checkbox" name="ctg" value="�ڸ޵�" <%=checked2[2]%>>�ڸ޵�
		<input type="checkbox" name="ctg" value="��ť���͸�" <%=checked2[3]%>>��ť���͸�
		<input type="checkbox" name="ctg" value="���" <%=checked2[4]%>>���
		<input type="checkbox" name="ctg" value="����ƽ" <%=checked2[5]%>>����ƽ</br>
		<br>
		<input type="checkbox" name="ctg" value="����/���" <%=checked2[6]%>>����/���
		<input type="checkbox" name="ctg" value="����" <%=checked2[7]%>>����
		<input type="checkbox" name="ctg" value="����" <%=checked2[8]%>>����
		<input type="checkbox" name="ctg" value="������" <%=checked2[9]%>>������
		<input type="checkbox" name="ctg" value="�̽��͸�/����" <%=checked2[10]%>>�̽��͸�/����
		<input type="checkbox" name="ctg" value="SF" <%=checked2[11]%>>SF
		</br>
		<br>
		<input type="checkbox" name="ctg" value="�θǽ�" <%=checked2[12]%>>�θǽ�
		<input type="checkbox" name="ctg" value="������" <%=checked2[13]%>>������
		<input type="checkbox" name="ctg" value="����" <%=checked2[14]%>>����
		<input type="checkbox" name="ctg" value="���α�" <%=checked2[15]%>>���α�
			<input type="checkbox" name="ctg" value="��Ÿ" <%=checked2[16]%>>��Ÿ
			<br>
		</select>
		
		</td>
	</tr>
	<tr>
	<td width="217"><img src="img/icon.gif"/>�⿬��</td>
        <td width="217"><input type="text" name="actor" size="55" value="<%=actor%>"></td>
	</tr>
	<tr>
	  <td width="217"><img src="img/icon.gif"/>������ ��ũ</td>
        <td width="217"><input type="text" name="image" size="55" value="<%=image%>"></td>
	</tr>
	<tr>
	  <td width="217"><img src="img/icon.gif"/>Ȩ������ �ּ�</td>
        <td width="217"><input type="text" name="site" size="55" value="<%=site%>"></td>
	</tr>
    <tr>
        <td width="700" height="4" colspan="4"><textarea name="content" rows="42" cols="90" style="border:1px solid #ddd;"scrolling="yes"><%=content%></textarea></td>
    </tr>
	<tr>
	<% 
        }
       rs.close();
       con.close();
%>
        <td width="700" height="4" colspan="4" align="right"><img src="img/next.gif" onclick="check_val()"><a href="admin_list_movie_01.jsp"><img src="img/back.gif" border="0"></a></td>
    </tr>

</table>
</form>
 </body>
</html>
