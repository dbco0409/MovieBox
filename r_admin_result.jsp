<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*, java.text.*" %>     
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title>notice 글쓰기 결과</title>
 </head>
<%

		request.setCharacterEncoding("euc-kr");
	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속    
	 
	 String subject=request.getParameter("subject");
		String okay=request.getParameter("okay");
		String level=request.getParameter("level");
 int str_m = Integer.parseInt(request.getParameter("str_m")); 
 int str_d = Integer.parseInt(request.getParameter("str_d"));

		String[] timer=request.getParameterValues("time");
String time="";

if(timer != null) 
	{

	for (int i=0;i<timer.length;i++){
		time+=timer[i];
		time+=",";
	}
}


			 int sit1 = Integer.parseInt(request.getParameter("sit1"));
			  int sit2 = Integer.parseInt(request.getParameter("sit2")); 
			   int sit3 = Integer.parseInt(request.getParameter("sit3")); 
			  
				String[] rctger=request.getParameterValues("rctg");
String rctg="";

if(rctger != null) 
	{

	for (int i=0;i<rctger.length;i++){
		rctg+=rctger[i];
		rctg+=",";
	}
}

String jsql = "select MAX(reserve_no) from reserve_adm";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery(); 

	int no;
    if (rs == null) {  
        no = 1;
    }  else {    	  
       	rs.next();
       	no = rs.getInt(1) + 1;
    } 
   	
    rs.close();    

int price=8000;

String jsql2 = "INSERT INTO reserve_adm (reserve_no, subject, okay, str_m, str_d, time, sit, rctg, price, level) VALUES(?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt2 = con.prepareStatement(jsql2);
pstmt2.setInt(1, no);
pstmt2.setString(2, subject);
pstmt2.setString(3, okay);
pstmt2.setInt(4, str_m);
pstmt2.setInt(5, str_d);
pstmt2.setString(6, time);
pstmt2.setInt(7, sit);
pstmt2.setString(8, rctg);
pstmt2.setInt(9, price);
pstmt2.setString(10, level);
pstmt2.executeUpdate();
  response.sendRedirect("r_admin_list.jsp");
  %>