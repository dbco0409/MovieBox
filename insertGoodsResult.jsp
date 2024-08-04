<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %> 
<html><head><title>상품 등록 처리 결과</title></head>
<body>

<% 
	request.setCharacterEncoding("euc-kr");  // 입력폼에서 전송된 한글데이터 처리

	// 입력폼에서 받는 데이터는 모두 String형임
    String ctg = request.getParameter("ctg");
	String ctgTypedetail = request.getParameter("ctgTypedetail");
	String no = request.getParameter("no");
	String name = request.getParameter("name");
   	double price =  Integer.parseInt(request.getParameter("price")); // String => int 변환
	int stock =  Integer.parseInt(request.getParameter("stock")); // String => int 변환
	double point =  price*0.05;
	String description = request.getParameter("description");


try {
 	 String DB_URL="jdbc:mysql://localhost:3306/project4";  //  접속할 DB명
     String DB_ID="multi";  //  접속할 아이디
     String DB_PASSWORD="abcd"; // 접속할 패스워드
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속           

	//SQL문 작성 : 테이블 필드명
    String jsql = "INSERT INTO GOODS  (ctgType, ctgTypedetail, prdNo, prdName, prdPrice, prdStock, ";
	jsql = jsql + "  prdDescription, prdPoint)  VALUES  (?, ?, ?, ?, ?, ?, ?, ?)"; 
      
    //PreparedStatement 생성(SQL문의 형틀을 정의함)
	PreparedStatement pstmt = con.prepareStatement(jsql); 

	//위의 SQL문에서 ?에 해당되는 곳에 다음의 값들을 하나씩 할당함 (인수 전달)
	//정수형의 경우에는 setInt()를 사용함
    pstmt.setString(1, ctg);
	pstmt.setString(2, ctgTypedetail);
	pstmt.setString(3, no); 
    pstmt.setString(4, name);
	pstmt.setDouble(5, price);  //정수값인 경우
	pstmt.setInt(6, stock); //정수값인 경우
	pstmt.setString(7, description);
	pstmt.setDouble(8, point);
	pstmt.executeUpdate(); // SQL문 실행
%>
<center>
<font color="blue" size='6'><b>[등록된 상품 정보]</b></font><p>
<table border="2" cellpadding="10"  style="font-size:10pt;font-family:맑은 고딕">
		<tr><td width="100">카테고리분류</td><td width="300"><%=ctg%></td></tr>
		<tr><td width="100">세부카테고리</td><td width="300"><%=ctgTypedetail%></td></tr>
		<tr><td width="100">상품번호</td><td width="300"><%=no%></td></tr>
		<tr><td width="100">상품명</td><td width="300"><%=name%></td></tr>
		<tr><td width="100">상품가격</td><td width="300"><%=price%> 원</td></tr>
		<tr><td width="100">포인트></td><td width="300"><%=point%> 원</td></tr>
		<tr><td width="100">재고수량</td><td width="300"><%=stock%> 개</td></tr>
		<tr><td width="100">포인트점수</td><td width="300"><%=point%>점</td></tr>
		<tr><td width="100">상품설명</td><td width="300"><%=description%></td></tr>
</table><p>
<% 
  } catch(Exception e) { 
		out.println(e);
}
%>
<p>
<a href = "selectAllGoods.jsp" style="font-size:10pt;font-family:맑은 고딕">전체 등록상품  조회</a><br><br>
</center>
</body>
</html>