<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*, java.text.*" %>     
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> New Document </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
 </head>

 <body>
  <%
try{
		request.setCharacterEncoding("euc-kr");

	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속           

 int movieno = Integer.parseInt(request.getParameter("movieno"));  
int chart=Integer.parseInt(request.getParameter("chart"));  

 	String jsql = "select MAX(no), amount from movie_chart where movieno=?";   
	PreparedStatement pstmt = con.prepareStatement(jsql);
	   pstmt.setInt(1, movieno);
ResultSet rs = pstmt.executeQuery(); 

int no;
    if (rs == null) {  
        no = 1;
    }  else {    	  
       	rs.next();
       	no = rs.getInt(1) + 1;
    } 

int am=rs.getInt("amount");
int amt=am+chart;

   rs.close();    


		int total=amt/10;

		String name=request.getParameter("name");
		String password=request.getParameter("pwd");
		String ctg=request.getParameter("ctg");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String datee=(new java.util.Date()).toLocaleString();
		String chk=request.getParameter("chk");
		String icon=request.getParameter("item");

		String[ ]  dateArr = datee.split(" ");   
		String date=dateArr[0]+dateArr[1]+dateArr[2];


	String jsql2 = "INSERT INTO movie_chart (no, chart, name, password, ctg, title, content, date, chk, total,amount, movieno, icon) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setInt(1, no);
	pstmt2.setInt(2, chart);
    pstmt2.setString(3, name);
    pstmt2.setString(4, password);
    pstmt2.setString(5, ctg);
    pstmt2.setString(6, title);
    pstmt2.setString(7, content);
    pstmt2.setString(8, date);
    pstmt2.setString(9, chk);
	  pstmt2.setInt(10, total);
	   pstmt2.setInt(11, amt);
	   pstmt2.setInt(12, movieno);
	   pstmt2.setString(13, icon);
  
  pstmt2.executeUpdate();
			
			response.sendRedirect("movie_list_head.jsp?no="+movieno);


   }  catch(Exception e)  {
        out.println(e);
} finally{}
%>

