<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<%

		request.setCharacterEncoding("euc-kr");
		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속           

 int reserve_no = Integer.parseInt(request.getParameter("no"));  
String subject=request.getParameter("subject");
String okay=request.getParameter("okay");
 int str_m = Integer.parseInt(request.getParameter("str_m"));  
 int str_d = Integer.parseInt(request.getParameter("str_d")); 
 String level=request.getParameter("level");
 int sit = Integer.parseInt(request.getParameter("sit"));  

String[] timer=request.getParameterValues("time");
String time="";

if(timer != null) 
	{

	for (int i=0;i<timer.length;i++){
		time+=timer[i];
		time+=",";
	}
}

String[] rctger=request.getParameterValues("rctg");
String rctg="";

if(rctger != null) 
	{

	for (int i=0;i<rctger.length;i++){
		rctg+=rctger[i];
		rctg+=",";
	}
}

	String jsql2 = "update reserve_adm set subject=?, okay=?, str_m=?, str_d=?, level=?, sit=?, time=?, rctg=? where reserve_no=?";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setString(1, subject);
    pstmt2.setString(2, okay);
  	    pstmt2.setInt(3, str_m);
	    pstmt2.setInt(4, str_d);
		  pstmt2.setString(5, level);
		  	    pstmt2.setInt(6, sit);
				 pstmt2.setString(7, time);
				  pstmt2.setString(8, rctg);
				    pstmt2.setInt(9, reserve_no);
	
  pstmt2.executeUpdate();

response.sendRedirect("r_admin_list.jsp");
%>
