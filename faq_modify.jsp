<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>         
<html>
   <head><title>�Խ��� ���� ����</title></head>   
   
  <script type="text/javascript">
function check_val()  
{
	if (document.form2.ctg2.value == "") 
	{
		alert("�з��� ���� �ؾ� �մϴ�.");
		document.form2.ctg2.focus();
		return false;			
	}

if (document.form2.title2.value == "") 
	{
		alert("������ ���� �ؾ� �մϴ�. ");
		document.form2.title2.focus();
		return false;			
	}
	if (document.form2.content2.value == "") 
	{
		alert("������ ���� �ؾ� �մϴ�. ");
		document.form2.content2.focus();
		return false;			
	}
			document.form2.submit();
}
</script>
   
   <%
       request.setCharacterEncoding("euc-kr");

	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB�� ����       


		int no = Integer.parseInt(request.getParameter("no"));  
                
		String jsql = "select * from faq where no = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setInt(1, no);
		ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
           rs.next();
		   String ctg = rs.getString("ctg");
           String title = rs.getString("title");
     	   String content = rs.getString("content");

   %> 
   
<body>
<form name="form2" method="post" action="faq_modify_result.jsp">

                            <table width="530" cellpadding="0" cellspacing="0" align="center" height="433">
                                <tr>
                                    <td width="530" height="5" colspan="3"><img src="img/bar.gif" width="625" height="12" border="0"></td>
                                </tr>
                                <tr>
                                    <td width="530" height="40" id="form" valign="middle">
									<input type="hidden" name="no" value="<%= no %>">
									<select name="ctg">
									<option selected>�з�</option>
									<% 
											if (ctg.equals("��ȭ��")) {
								%>
										<option value="��ȭ��" selected>��ȭ��</option>
									<option value="�����">�����</option>
									<option value="����/�ſ�ī��">����/�ſ�ī��</option>
									<option value="��ȭ����">��ȭ����</option>
									<option value="Ȩ������">Ȩ������</option>
									<option value="����ä��">����ä��</option>
									<option value="��Ÿ">��Ÿ</option>

									<% } else if (ctg.equals("�����")) {%>
									<option value="��ü" >��ü</option>
									<option value="��ȭ��">��ȭ��</option>
									<option value="�����" selected>�����</option>
									<option value="����/�ſ�ī��">����/�ſ�ī��</option>
									<option value="��ȭ����">��ȭ����</option>
									<option value="Ȩ������">Ȩ������</option>
									<option value="����ä��">����ä��</option>
									<option value="��Ÿ">��Ÿ</option>

									<% } else if (ctg.equals("����/�ſ�ī��")) {%>
									<option value="��ü" >��ü</option>
									<option value="��ȭ��">��ȭ��</option>
									<option value="�����">�����</option>
									<option value="����/�ſ�ī��"selected>����/�ſ�ī��</option>
									<option value="��ȭ����">��ȭ����</option>
									<option value="Ȩ������">Ȩ������</option>
									<option value="����ä��">����ä��</option>
									<option value="��Ÿ">��Ÿ</option>

									<% } else if (ctg.equals("��ȭ����")) {%>
									<option value="��ü" >��ü</option>
									<option value="��ȭ��">��ȭ��</option>
									<option value="�����">�����</option>
									<option value="����/�ſ�ī��">����/�ſ�ī��</option>
									<option value="��ȭ����" selected>��ȭ����</option>
									<option value="Ȩ������">Ȩ������</option>
									<option value="����ä��">����ä��</option>
									<option value="��Ÿ">��Ÿ</option>

										<% } else if (ctg.equals("Ȩ������")) {%>
									<option value="��ü" >��ü</option>
									<option value="��ȭ��">��ȭ��</option>
									<option value="�����">�����</option>
									<option value="����/�ſ�ī��">����/�ſ�ī��</option>
									<option value="��ȭ����">��ȭ����</option>
									<option value="Ȩ������" selected>Ȩ������</option>
									<option value="����ä��">����ä��</option>
									<option value="��Ÿ">��Ÿ</option>

						
									<% } else if (ctg.equals("����ä��")){%>
									<option value="��ü" >��ü</option>
									<option value="��ȭ��">��ȭ��</option>
									<option value="�����">�����</option>
									<option value="����/�ſ�ī��">����/�ſ�ī��</option>
									<option value="��ȭ����">��ȭ����</option>
									<option value="Ȩ������">Ȩ������</option>
									<option value="����ä��" selected>����ä��</option>
									<option value="��Ÿ">��Ÿ</option>

						

									<% } else if (ctg.equals("��Ÿ")){%>
									<option value="��ü" >��ü</option>
									<option value="��ȭ��">��ȭ��</option>
									<option value="�����">�����</option>
									<option value="����/�ſ�ī��">����/�ſ�ī��</option>
									<option value="��ȭ����">��ȭ����</option>
									<option value="Ȩ������">Ȩ������</option>
									<option value="����ä��">����ä��</option>
									<option value="��Ÿ" selected>��Ÿ</option>


									<% } %>

									</select>&nbsp;<input name="title" type="text" size="55" value="<%=title%>"></td>
                                </tr>
                                <tr>
                                    <td width="316" height="15" rowspan="2" valign="top"><textarea name="content" rows="22" cols="70" style="border:1px solid #ddd;"scrolling="yes"><%=content%></textarea></td>
									</tr>
									<tr>
									<% 
        }
       rs.close();
       con.close();
%>
									 <tr  align="right">
                                    <td width="510" height="15" rowspan="2" valign="top"><input type="image" src="img/medify.gif"><a href="admin_list_2.jsp"><img src="img/cut.gif" border="0"></a></td>
									</tr>
									
									
                                </tr>
							
                               
                              
                            </table>
                     
</form>
 </body>
</html>