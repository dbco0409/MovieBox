<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>         
<html><head><title>1:1 ��ü ����</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}

a:link,a:visited{text-decoration:none; color: #8d8d8d; font-size:9pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
</head>
<body>
<%@include file="faq_list.jsp" %>
<table align="center">
    <tr>
        <td height="10" valign="bottom" width="640">
            <p align="left">&nbsp;&nbsp;| &nbsp;&nbsp;<a href="faq_list_all.jsp">��ü</a> &nbsp;&nbsp;| &nbsp;&nbsp;<a href="faq_list_2.jsp">��ȭ��</a>&nbsp;&nbsp;| &nbsp;&nbsp;<a href="faq_list_3.jsp">����/�ſ�ī��</a>&nbsp;&nbsp;| &nbsp;&nbsp;<a href="faq_list_4.jsp">�����</a> &nbsp;&nbsp;| &nbsp;&nbsp;<a href="faq_list_5.jsp">��ȭ����</a> &nbsp;&nbsp;| &nbsp;&nbsp;<a href="faq_list_6.jsp">Ȩ������</a> &nbsp;&nbsp;| &nbsp;&nbsp;<a
href="faq_list_7.jsp">����ä��</a> &nbsp;&nbsp;| &nbsp;&nbsp;<a href="faq_list_8.jsp">��Ÿ</a></p>
        </td>
    </tr>

  <tr>
<td width="620" height="20" valign="top"><img src="img/bar.gif" width="625" height="12" border="0"></td>
</tr>
</table>
<%
try {
	request.setCharacterEncoding("euc-kr");
 	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		String group_index;
		int list_index;

		group_index = request.getParameter("group_index");
		//ù �������� group_index ���� 0
		   
		if (group_index != null) 	
				list_index = Integer.parseInt(group_index);  
		else 
				list_index = 0;     //���� ������ �� 

		//board ���̺� �ִ� �� �ڷ��� ��(���� ����) �˾� ����
		String jsql = "select count(*) from faq where ctg='��ȭ��'";
		PreparedStatement pstmt1 = con.prepareStatement(jsql);
		ResultSet cntRs = pstmt1.executeQuery();	

		cntRs.next();
		int cnt = cntRs.getInt(1);//���� �� ����

		//�� �������� 20���� �� ����ϱ� ����
		//���� ������ 20���� ������ ������ ���
		int cntList = cnt/7; // ������ �� ����ϱ� ���� ���� 
		int remainder = cnt%7; //������
		int cntList_1;//�������� ��
			
		//1(21, 41, 61, 81, ...)��° ���� �ö�� �� �� ������ �� 1 ����
		if (cntList != 0) //���� 20���̻��̸�
		{
			   if (remainder == 0)	 //20���� ���� �������� ������		
				  cntList_1 = cntList;  //���� ������ ��          
			   else                    //�������� ������
				   cntList_1 = cntList + 1; //�� 1 ���� ���� �������� ��		  
		 } 
		 else 		 
			  cntList_1 = cntList + 1; //�������� ��		
			   
		cntRs.close();
			
     String jsql2 = "select * from faq where ctg='��ȭ��'";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql2);
	 ResultSet  rs = pstmt.executeQuery();

if (!rs.wasNull()) 
	{
	   for(int i = 0; i < list_index * 7; i++) 
	      rs.next();

       int cursor = 0;

while(rs.next()){
			int no=rs.getInt("no");
			String ctg = rs.getString("ctg");
    		String title =  rs.getString("title");
%>
<table width="620" height="43" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0" style="background-image:url('img/list_faq.gif')">
 <tr height="20">
        <td width="20">
            <p align="center"><img src="img/list_icon.gif" border="0"></p>
        </td>
        <td width="86"><%=ctg%></td>
        <td width="488"> <a href="faq_view.jsp?no=<%=no%>"><%=title%></td>
</tr>
	</table>
	<%
	   //while ���� �ݺ� ����� ������ cursor�� 1�� ����
		 cursor ++;
         if (cursor >= 7) break; 
        }   // while���� ��
    }  //  if���� ��
   %>
        <table width="620" border="0" cellspacing="0" cellpadding="5" align="center">
          <tr>&nbsp;</tr><tr>

             <td colspan="5" align="center">    
		<%
			//ù������ (group_index ���� 0)�� �̵��� �� �ְԲ� ��ũ
		%>
        <a href="faq_list_all.jsp?group_index=0" ><img src="img/first.gif" border="0"/></a>
        &nbsp;&nbsp;&nbsp;
                
   <% 
   //������ ��ȣ�� ��� �� ��ũ��Ű�� ���� �������� ����
       int startpage=1;
       int maxpage = cntList_1;
       int endpage = startpage + maxpage -1;

	//������ �������� ���� �׷��� ù��° ���������� ������ ������������ ��ũ�� �߰�
       for (int j=1; j<=7; j++) 
	   {
           if(j == list_index) 
		   {
   %>
                <img src="img/page_<%= j %>.gif" border="0"/>
   <%
            } 
            else 
			{
   %>
       <a href="faq_list_all.jsp?group_index=<%= j-1 %>" ><img src="img/page_<%= j %>.gif" border="0"/></a>
   <%
            }
       }
	    
   %>
    
      &nbsp;&nbsp;&nbsp;
	  <%
			//������ �������� �̵��� �� �ְԲ� ��ũ
	
	   %>
      <a href="faq_list_all.jsp?group_index=<%= cntList_1 - 1 %>" ><img src="img/end.gif" border="0"/></a>
    
             </td>
          </tr>   
    </table>
	
<%
}
				  finally{}
				 %>

</form>
</body>
</html>