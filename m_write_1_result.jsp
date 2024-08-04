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

	 
		String title=request.getParameter("title");
		String stitle=request.getParameter("stitle");
		String[] ctgor=request.getParameterValues("ctg");
		String date=request.getParameter("date");
		String open=request.getParameter("open");
		String[] mctgor=request.getParameterValues("mctg");
		String time=request.getParameter("time");
		String level=request.getParameter("level");
		String director=request.getParameter("director");
		String actor=request.getParameter("actor");
		String image=request.getParameter("image");
		String content=request.getParameter("content");
		String site=request.getParameter("site");
		String ctg="";
		String mctg="";

if(ctgor != null) 
	{

	for (int i=0;i<ctgor.length;i++){
		ctg+=ctgor[i];
		ctg+="  ";
	}
}

if(mctgor != null) 
	{

for (int i=0;i<mctgor.length;i++){
		mctg+=mctgor[i];
		mctg+="  ";
}
	}

 	String jsql = "select MAX(no) from movie";   
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
 


	String jsql2 = "INSERT INTO movie (no, title, stitle, ctg, mctg, open, date, time, director, actor, level, site, image, content) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setInt(1, no);
	pstmt2.setString(2, title);
    pstmt2.setString(3, stitle);
    pstmt2.setString(4, ctg);
	pstmt2.setString(5, mctg);
		pstmt2.setString(6, open);
	pstmt2.setString(7, date);
	pstmt2.setString(8, time);
	pstmt2.setString(9, director);
	pstmt2.setString(10, actor);
	pstmt2.setString(11, level);
	pstmt2.setString(12, site);
	pstmt2.setString(13, image);
	pstmt2.setString(14, content);

  
  pstmt2.executeUpdate();
  response.sendRedirect("m_write_2.jsp?no="+no);

%>