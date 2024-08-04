<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %> 
<html><head><title>��ǰ ��� ó�� ���</title></head>
<body>

<% 
	request.setCharacterEncoding("euc-kr");  // �Է������� ���۵� �ѱ۵����� ó��

	// �Է������� �޴� �����ʹ� ��� String����
    String ctg = request.getParameter("ctg");
	String ctgTypedetail = request.getParameter("ctgTypedetail");
	String no = request.getParameter("no");
	String name = request.getParameter("name");
   	double price =  Integer.parseInt(request.getParameter("price")); // String => int ��ȯ
	int stock =  Integer.parseInt(request.getParameter("stock")); // String => int ��ȯ
	double point =  price*0.05;
	String description = request.getParameter("description");


try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  //  ������ DB��
     String DB_ID="multi";  //  ������ ���̵�
     String DB_PASSWORD="abcd"; // ������ �н�����
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC ����̹� �ε�
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB�� ����           

	//SQL�� �ۼ� : ���̺� �ʵ��
    String jsql = "INSERT INTO GOODS  (ctgType, ctgTypedetail, prdNo, prdName, prdPrice, prdStock, ";
	jsql = jsql + "  prdDescription, prdPoint)  VALUES  (?, ?, ?, ?, ?, ?, ?, ?)"; 
      
    //PreparedStatement ����(SQL���� ��Ʋ�� ������)
	PreparedStatement pstmt = con.prepareStatement(jsql); 

	//���� SQL������ ?�� �ش�Ǵ� ���� ������ ������ �ϳ��� �Ҵ��� (�μ� ����)
	//�������� ��쿡�� setInt()�� �����
    pstmt.setString(1, ctg);
	pstmt.setString(2, ctgTypedetail);
	pstmt.setString(3, no); 
    pstmt.setString(4, name);
	pstmt.setDouble(5, price);  //�������� ���
	pstmt.setInt(6, stock); //�������� ���
	pstmt.setString(7, description);
	pstmt.setDouble(8, point);
	pstmt.executeUpdate(); // SQL�� ����
%>
<center>
<font color="blue" size='6'><b>[��ϵ� ��ǰ ����]</b></font><p>
<table border="2" cellpadding="10"  style="font-size:10pt;font-family:���� ���">
		<tr><td width="100">ī�װ��з�</td><td width="300"><%=ctg%></td></tr>
		<tr><td width="100">����ī�װ�</td><td width="300"><%=ctgTypedetail%></td></tr>
		<tr><td width="100">��ǰ��ȣ</td><td width="300"><%=no%></td></tr>
		<tr><td width="100">��ǰ��</td><td width="300"><%=name%></td></tr>
		<tr><td width="100">��ǰ����</td><td width="300"><%=price%> ��</td></tr>
		<tr><td width="100">����Ʈ></td><td width="300"><%=point%> ��</td></tr>
		<tr><td width="100">������</td><td width="300"><%=stock%> ��</td></tr>
		<tr><td width="100">����Ʈ����</td><td width="300"><%=point%>��</td></tr>
		<tr><td width="100">��ǰ����</td><td width="300"><%=description%></td></tr>
</table><p>
<% 
  } catch(Exception e) { 
		out.println(e);
}
%>
<p>
<a href = "selectAllGoods.jsp" style="font-size:10pt;font-family:���� ���">��ü ��ϻ�ǰ  ��ȸ</a><br><br>
</center>
</body>
</html>