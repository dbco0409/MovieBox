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
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<table align="center">
<tr>
<td height="35"  valign="top">
</td>
</tr>
    <tr>
      <td height="10" valign="bottom" width="540">
            <p align="left">&nbsp;&nbsp;| &nbsp;&nbsp;<a href="1_1_list_all.jsp" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'"  target="_parent"><span>��ü</span></a> &nbsp;&nbsp;| &nbsp;&nbsp;<a href="1_1_list_1.jsp" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'"  target="_parent">���ǻ���</a>&nbsp;&nbsp;| &nbsp;&nbsp;<a href="1_1_list_2.jsp" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'"  target="_parent">����/����</a>&nbsp;&nbsp;| &nbsp;&nbsp;<a href="1_1_list_3.jsp" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'"  target="_parent">�Ҹ�����</a> &nbsp;&nbsp;| &nbsp;&nbsp;<a href="1_1_list_4.jsp" Onclick="this.style.color='#662e91';this.style.fontWeight ='bold'"  target="_parent">Ī��/�ݷ�</a> </p>
        </td>
    </tr>

  <tr>
<td width="620" height="20" valign="top" colspan="2"><img src="img/bar.gif" width="625" height="12" border="0"></td>
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
		String jsql = "select count(*) from 1_1 ";
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
			
     String jsql2 = "select * from 1_1";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql2);
	 ResultSet  rs = pstmt.executeQuery();

if (!rs.wasNull()) 
	{
	   for(int i = 0; i < list_index * 7; i++) 
	      rs.next();

       int cursor = 0;

while(rs.next()){
			int no2=rs.getInt("no");
			String ctg2 = rs.getString("ctg");
			String movie2 =  rs.getString("movie");
    		String title2 =  rs.getString("title");
			String date2 = rs.getString("date");
%>
<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
 <tr height="20">
        <td width="20">
            <p align="center"><img src="img/list_icon.gif" border="0"></p>
        </td>
        <td width="100"><%=ctg2%></td>
        <td width="75"><%=movie2%></td>
        <td width="315"> <a href="1_1_view.jsp?no=<%=no2%>" target="_parent"><%=title2%></td>
		<%
	String[ ]  dateArr2 = date2.split(" ");   
	%>
        <td width="65"><%=dateArr2[0]%><%=dateArr2[1]%><%=dateArr2[2]%></td>
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
        <a href="1_1_list_all.jsp?group_index=0" target="_parent"><img src="img/first.gif" border="0"/></a>
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
       <a href="1_1_list_all.jsp?group_index=<%= j-1 %>" target="_parent"><img src="img/page_<%= j %>.gif" border="0"/></a>
   <%
            }
       }
	    
   %>
    
      &nbsp;&nbsp;&nbsp;
	  <%
			//������ �������� �̵��� �� �ְԲ� ��ũ
	
	   %>
      <a href="1_1_list_all.jsp?group_index=<%= cntList_1 - 1 %>" target="_parent"><img src="img/end.gif" border="0"/></a>
    
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