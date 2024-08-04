 <%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>   
<%@include file="_head.jsp" %>
  <%
    String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	  Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		int cartno = Integer.parseInt(request.getParameter("cartno"));   
  String jsql8 = "select * from reserve_cart where cartno=?";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql8);
	 	 pstmt.setInt(1, cartno);	
	 ResultSet  rs = pstmt.executeQuery();

	rs.next();
			int days=rs.getInt("days");
			id= rs.getString("id");
    		String movie =  rs.getString("movie");
			String megabox =  rs.getString("megabox");
				String date =  rs.getString("date");
				String time =  rs.getString("time");
int people =  rs.getInt("people");
String sit =  rs.getString("sit");
String price =  rs.getString("price");


String jsql2 = "INSERT INTO reserve_cut (cutno, movie, date, megabox, time, sit, price, people, id) VALUES(?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt2 = con.prepareStatement(jsql2);
pstmt2.setInt(1, cartno);
pstmt2.setString(2, movie);
pstmt2.setString(3, date);
pstmt2.setString(4, megabox);
pstmt2.setString(5, time);
pstmt2.setString(6, sit);
pstmt2.setString(7, price);
pstmt2.setInt(8, people);
pstmt2.setString(9, id);
pstmt2.executeUpdate();



		String jsql13 = "delete from reserve_cart where cartno =?";

			  PreparedStatement pstmt13 = con.prepareStatement(jsql13);
			  pstmt13.setInt(1, cartno);
			  pstmt13.executeUpdate();
	
			  response.sendRedirect("reserve_cut.jsp");
         
	
     %> 