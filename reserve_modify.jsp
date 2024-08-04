<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>  
<%@include file="_head.jsp"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>r_admin_write</title>
<style type="text/css">
td {font-size:10pt}
</style>
</head>
<%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px;z-index:1; visibility:visible;">
<p>&nbsp;</p>
   <%
      try{ String DB_URL="jdbc:mysql://localhost:3306/project4";  
       String DB_ID="multi";  
       String DB_PASSWORD="abcd"; 
 	 
	   Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");

		int no = Integer.parseInt(request.getParameter("reserve_no"));      
                
		String jsql = "select * from reserve_adm where reserve_no = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setInt(1, no);
		ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
           rs.next();
           String subject = rs.getString("subject");
     	   String okay = rs.getString("okay").trim();
           int str_m = rs.getInt("str_m");
		    int str_d = rs.getInt("str_d");
			 String level = rs.getString("level").trim();
			 	 String time = rs.getString("time").trim();
				  String rctg = rs.getString("rctg").trim();
				   int sit = rs.getInt("sit");
   %> 

<form action="r_modify_result.jsp?no=<%=no%>" method="post" name="form">
<table width="749" align="center" cellpadding="0" cellspacing="0" height="447">
	<tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">��ȭ����</td>
        <td width="613"><input type="text" name="subject" value="<%=subject%>"> 
		<% if (okay.equals("y")) {%>
		<input type="checkbox" name="okay" value="y" checked>����  <input type="checkbox" name="okay" value="n">��������
		<% } else if (okay.equals("n")) {%>
				<input type="checkbox" name="okay" value="y">����  <input type="checkbox" name="okay" value="n" checked>��������
<% } %></td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">����</td>
        <td width="613">
            <table width="607" cellpadding="0" cellspacing="0">
                    <tr>
                    <td width="258">
                      
                            <p><input type="text" name="str_m" size="9" value="<%=str_m%>"> ��<input type="text" name="str_d" size="9" value="<%=str_d%>"> ��</p>
                       
                    </td>
                        <td width="99"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">�󿵵��</td>
                    <td width="250">
                  
                            <p><input type="text" name="level" size="9" value="<%=level%>"></p>
                      
                    </td>
                    </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">�ð�</td>
        <td width="613">
            <table width="608" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="56">1��</td>
                    <td width="532">
					<%
	    	String[]  timeArr = time.split(",");   
			String[]  checked = new String[39];   

			for(int i=0; i<timeArr.length;i++) {
				if(timeArr[i].equals("1�� 08:00"))
				{
					checked[0] = "checked";
				}
				else if(timeArr[i].equals("1�� 08:50"))
				{
					checked[1] = "checked";
				}
				else if(timeArr[i].equals("1�� 10:35"))
				{
					checked[2] = "checked";
				}
				else if(timeArr[i].equals("1�� 11:25"))
				{
					checked[3] = "checked";
				}
				else if(timeArr[i].equals("1�� 13:10"))
				{
					checked[4] = "checked";
				}
				else if(timeArr[i].equals("1�� 15:45"))
				{
					checked[5] = "checked";
				}
				else if(timeArr[i].equals("1�� 16:35"))
				{
					checked[6] = "checked";
				}
					else if(timeArr[i].equals("1�� 18:20"))
				{
					checked[7] = "checked";
				}
						else if(timeArr[i].equals("1�� 19:10"))
				{
					checked[8] = "checked";
				}
						else if(timeArr[i].equals("1�� 20:55"))
				{
					checked[9] = "checked";
				}
						else if(timeArr[i].equals("1�� 21:45"))
				{
					checked[10] = "checked";
				}
						else if(timeArr[i].equals("1�� 23:30"))
				{
					checked[11] = "checked";
				}
					else if(timeArr[i].equals("1�� 24:20"))
				{
					checked[12] = "checked";
				}
				else if(timeArr[i].equals("2�� 08:00"))
				{
					checked[13] = "checked";
				}
				else if(timeArr[i].equals("2�� 08:50"))
				{
					checked[14] = "checked";
				}
				else if(timeArr[i].equals("2�� 10:35"))
				{
					checked[15] = "checked";
				}
				else if(timeArr[i].equals("2�� 11:25"))
				{
					checked[16] = "checked";
				}
				else if(timeArr[i].equals("2�� 13:10"))
				{
					checked[17] = "checked";
				}
				else if(timeArr[i].equals("2�� 15:45"))
				{
					checked[18] = "checked";
				}
				else if(timeArr[i].equals("2�� 16:35"))
				{
					checked[19] = "checked";
				}
					else if(timeArr[i].equals("2�� 18:20"))
				{
					checked[20] = "checked";
				}
						else if(timeArr[i].equals("2�� 19:10"))
				{
					checked[21] = "checked";
				}
						else if(timeArr[i].equals("2�� 20:55"))
				{
					checked[22] = "checked";
				}
						else if(timeArr[i].equals("2�� 21:45"))
				{
					checked[23] = "checked";
				}
						else if(timeArr[i].equals("2�� 23:30"))
				{
					checked[24] = "checked";
				}
					else if(timeArr[i].equals("2�� 24:20"))
				{
					checked[25] = "checked";
				
				}
				else if(timeArr[i].equals("3�� 08:00"))
				{
					checked[26] = "checked";
				}
				else if(timeArr[i].equals("3�� 08:50"))
				{
					checked[27] = "checked";
				}
				else if(timeArr[i].equals("3�� 10:35"))
				{
					checked[28] = "checked";
				}
				else if(timeArr[i].equals("3�� 11:25"))
				{
					checked[29] = "checked";
				}
				else if(timeArr[i].equals("3�� 13:10"))
				{
					checked[30] = "checked";
				}
				else if(timeArr[i].equals("3�� 15:45"))
				{
					checked[31] = "checked";
				}
				else if(timeArr[i].equals("3�� 16:35"))
				{
					checked[32] = "checked";
				}
					else if(timeArr[i].equals("3�� 18:20"))
				{
					checked[33] = "checked";
				}
						else if(timeArr[i].equals("3�� 19:10"))
				{
					checked[34] = "checked";
				}
						else if(timeArr[i].equals("3�� 20:55"))
				{
					checked[35] = "checked";
				}
						else if(timeArr[i].equals("3�� 21:45"))
				{
					checked[36] = "checked";
				}
						else if(timeArr[i].equals("3�� 23:30"))
				{
					checked[37] = "checked";
				}
					else if(timeArr[i].equals("3�� 24:20"))
				{
					checked[38] = "checked";
				}

			}
%>

					<input type="checkbox" name="time" value="1�� 08:00" <%=checked[0]%>>08:00
					<input type="checkbox" name="time" value="1�� 08:50" <%=checked[1]%>>08:50
					<input type="checkbox" name="time" value="1�� 10:35" <%=checked[2]%>>10:35
					<input type="checkbox" name="time" value="1�� 11:25" <%=checked[3]%>>11:35
					<input type="checkbox" name="time" value="1�� 13:10" <%=checked[4]%>>13:10
					<input type="checkbox" name="time" value="1�� 15:45" <%=checked[5]%>>15:45
					<input type="checkbox" name="time" value="1�� 16:35" <%=checked[6]%>>16:35
					<input type="checkbox" name="time" value="1�� 18:20" <%=checked[7]%>>18:20
					<input type="checkbox" name="time" value="1�� 19:10" <%=checked[8]%>>19:10
					<input type="checkbox" name="time" value="1�� 20:55" <%=checked[9]%>>20:55
					<input type="checkbox" name="time" value="1�� 21:45" <%=checked[10]%>>21:45
					<input type="checkbox" name="time" value="1�� 23:30" <%=checked[11]%>>23:30
					<input type="checkbox" name="time" value="1�� 24:20" <%=checked[12]%>>24:20
					</td>
                </tr>
                <tr>
                    <td width="56">2��</td>
                    <td width="532"><input type="checkbox" name="time" value="2�� 08:00" <%=checked[13]%>>08:00
					<input type="checkbox" name="time" value="2�� 08:50" <%=checked[14]%>>08:50
					<input type="checkbox" name="time" value="2�� 10:35" <%=checked[15]%>>10:35
					<input type="checkbox" name="time" value="2�� 11:25" <%=checked[16]%>>11:35
					<input type="checkbox" name="time" value="2�� 13:10" <%=checked[17]%>>13:10
					<input type="checkbox" name="time" value="2�� 15:45" <%=checked[18]%>>15:45
					<input type="checkbox" name="time" value="2�� 16:35" <%=checked[19]%>>16:35
					<input type="checkbox" name="time" value="2�� 18:20" <%=checked[20]%>>18:20
					<input type="checkbox" name="time" value="2�� 19:10" <%=checked[21]%>>19:10
					<input type="checkbox" name="time" value="2�� 20:55" <%=checked[22]%>>20:55
					<input type="checkbox" name="time" value="2�� 21:45" <%=checked[23]%>>21:45
					<input type="checkbox" name="time" value="2�� 23:30" <%=checked[24]%>>23:30
					<input type="checkbox" name="time" value="2�� 24:20" <%=checked[25]%>>24:20</td>
                </tr>
                <tr>
                    <td width="56">3��</td>
                    <td width="532"><input type="checkbox" name="time" value="3�� 08:00" <%=checked[26]%>>08:00
					<input type="checkbox" name="time" value="3�� 08:50" <%=checked[27]%>>08:50
					<input type="checkbox" name="time" value="3�� 10:35" <%=checked[28]%>>10:35
					<input type="checkbox" name="time" value="3�� 11:25" <%=checked[29]%>>11:35
					<input type="checkbox" name="time" value="3�� 13:10" <%=checked[30]%>>13:10
					<input type="checkbox" name="time" value="3�� 15:45" <%=checked[31]%>>15:45
					<input type="checkbox" name="time" value="3�� 16:35" <%=checked[32]%>>16:35
					<input type="checkbox" name="time" value="3�� 18:20" <%=checked[33]%>>18:20
					<input type="checkbox" name="time" value="3�� 19:10" <%=checked[34]%>>19:10
					<input type="checkbox" name="time" value="3�� 20:55" <%=checked[35]%>>20:55
					<input type="checkbox" name="time" value="3�� 21:45" <%=checked[36]%>>21:45
					<input type="checkbox" name="time" value="3�� 23:30" <%=checked[37]%>>23:30
					<input type="checkbox" name="time" value="3�� 24:20" <%=checked[38]%>>24:20</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">�� �¼���</td>
        <td width="613">
        <input type="text" name="sit" value="<%=sit%>"> 
        </td>
    </tr>
    <tr>
        <td width="104"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">������ ��ȭ��</td>
        <td width="613">
          <%
	    	String[]  rctgArr = rctg.split(",");   
			String[]  checked2 = new String[21];   

			for(int i=0; i<rctgArr.length;i++) {
				if(rctgArr[i].equals("����"))
				{
					checked2[0] = "checked";
				}
				else if(rctgArr[i].equals("���빮"))
				{
					checked2[1] = "checked";
				}
				else if(rctgArr[i].equals("��"))
				{
					checked2[2] = "checked";
				}
				else if(rctgArr[i].equals("���"))
				{
					checked2[3] = "checked";
				}
				else if(rctgArr[i].equals("��Ʈ��"))
				{
					checked2[4] = "checked";
				}
				else if(rctgArr[i].equals("�ڿ���"))
				{
					checked2[5] = "checked";
				}
				else if(rctgArr[i].equals("����"))
				{
					checked2[6] = "checked";
				}
					else if(rctgArr[i].equals("������"))
				{
					checked2[7] = "checked";
				}
						else if(rctgArr[i].equals("����"))
				{
					checked2[8] = "checked";
				}
						else if(rctgArr[i].equals("Ų�ؽ�"))
				{
					checked2[9] = "checked";
				}
						else if(rctgArr[i].equals("����"))
				{
					checked2[10] = "checked";
				}
						else if(rctgArr[i].equals("����"))
				{
					checked2[11] = "checked";
				}
					else if(rctgArr[i].equals("õ��"))
				{
					checked2[12] = "checked";
				}
				else if(rctgArr[i].equals("����"))
				{
					checked2[13] = "checked";
				}
				else if(rctgArr[i].equals("���"))
				{
					checked2[14] = "checked";
				}
				else if(rctgArr[i].equals("�ؿ��"))
				{
					checked2[15] = "checked";
				}
				else if(rctgArr[i].equals("����"))
				{
					checked2[16] = "checked";
				}
				else if(rctgArr[i].equals("����"))
				{
					checked2[17] = "checked";
				}
				else if(rctgArr[i].equals("����"))
				{
					checked2[18] = "checked";
				}
				else if(rctgArr[i].equals("����"))
				{
					checked2[19] = "checked";
				}
					else if(rctgArr[i].equals("����"))
				{
					checked2[20] = "checked";
				}

			}
%>
		<input type="checkbox" name="rctg" value="����" <%=checked2[0]%>>����
		<input type="checkbox" name="rctg" value="���빮" <%=checked2[1]%>>���빮
		<input type="checkbox" name="rctg" value="��" <%=checked2[2]%>>��
		<input type="checkbox" name="rctg" value="���" <%=checked2[3]%>>���
		<input type="checkbox" name="rctg" value="��Ʈ��" <%=checked2[4]%>>��Ʈ��
		<input type="checkbox" name="rctg" value="�ڿ���" <%=checked2[5]%>>�ڿ���
		<input type="checkbox" name="rctg" value="����" <%=checked2[6]%>>����
		<input type="checkbox" name="rctg" value="������" <%=checked2[7]%>>������
		<input type="checkbox" name="rctg" value="����" <%=checked2[8]%>>����
		<input type="checkbox" name="rctg" value="Ų�ؽ�" <%=checked2[9]%>>Ų�ؽ�<br/>
		<input type="checkbox" name="rctg" value="����" <%=checked2[10]%>>����
		<input type="checkbox" name="rctg" value="����" <%=checked2[11]%>>����
		<input type="checkbox" name="rctg" value="õ��" <%=checked2[12]%>>õ��
		<input type="checkbox" name="rctg" value="����" <%=checked2[13]%>>����
		<input type="checkbox" name="rctg" value="���" <%=checked2[14]%>>���
		<input type="checkbox" name="rctg" value="�ؿ��" <%=checked2[15]%>>�ؿ��
		<input type="checkbox" name="rctg" value="����" <%=checked2[16]%>>����
			<input type="checkbox" name="rctg" value="����" <%=checked2[17]%>>����
		<input type="checkbox" name="rctg" value="����" <%=checked2[18]%>>����
		<input type="checkbox" name="rctg" value="����" <%=checked2[19]%>>����
		<input type="checkbox" name="rctg" value="����" <%=checked2[20]%>>����
		
		
        </td>
    </tr>
    <tr>
	<tr>

        <td width="104" height="40">&nbsp;</td>
            <td width="613" height="60" valign="bottom">
                <p align="center"><img src="img/submit2.gif" onclick="submit()"><a href="r_admin_list.jsp"><img src="img/back.gif" border="0"></a></p>
            </td>
    </tr>
</table>
<% 
        }}
	   finally{}
%>

</form>
</div>
<p>&nbsp;</p>
</body>

</html>