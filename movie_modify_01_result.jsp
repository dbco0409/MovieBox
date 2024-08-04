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

	 int no = Integer.parseInt(request.getParameter("no"));  
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



	String jsql2 = "update movie set title=?, stitle=?, ctg=?, mctg=?, open=?, date=?, time=?, director=?, actor=?, level=?, site=?, image=?, content=? where no=?";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setString(1, title);
    pstmt2.setString(2, stitle);
    pstmt2.setString(3, ctg);
	pstmt2.setString(4, mctg);
		pstmt2.setString(5, open);
	pstmt2.setString(6, date);
	pstmt2.setString(7, time);
	pstmt2.setString(8, director);
	pstmt2.setString(9, actor);
	pstmt2.setString(10, level);
	pstmt2.setString(11, site);
	pstmt2.setString(12, image);
	pstmt2.setString(13, content);
pstmt2.setInt(14, no);

 pstmt2.executeUpdate();
  response.sendRedirect("actor_modify.jsp?no="+no);

%>