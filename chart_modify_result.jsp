<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title> movie1_write </title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
 </head>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}

#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
</style>
<script language="javascript" src="movie_write.js">
</script>
<script> 
function evalTextbox(a){ 
       document.images["myImage"].src = a;} 

   </script>   
   <body>
   <%
		  request.setCharacterEncoding("euc-kr");
		int chartno=Integer.parseInt(request.getParameter("chartno"));  
		int movieno=Integer.parseInt(request.getParameter("movieno")); 
      String movie_title = request.getParameter("movie_title"); 
	   String title = request.getParameter("title3"); 
       String name = request.getParameter("name");             
       String pwd = request.getParameter("pwd");  
	     String chart = request.getParameter("chart");    
		  String ctg = request.getParameter("ctg3");    
       String icon = request.getParameter("item");  
	   String chk = request.getParameter("chk");  
	       String content = request.getParameter("content");  

       String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	   Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		
     String jsql9 = "update movie_chart set movie_title = ?, title=?, name = ?, password=?, chart=?, icon=?, content=?, chk=?, ctg=? where no = ?";
          PreparedStatement pstmt9 = con.prepareStatement(jsql9);
          pstmt9.setString(1, movie_title);
		  pstmt9.setString(2, title);
          pstmt9.setString(3, name);
		  pstmt9.setString(4, pwd);
		  pstmt9.setString(5, chart);
		  pstmt9.setString(6, icon);
		  pstmt9.setString(7, content);
		   pstmt9.setString(8, chk);
			 pstmt9.setString(9, ctg);
          pstmt9.setInt(10, chartno);
          pstmt9.executeUpdate();
          
        response.sendRedirect("movie_chart_view.jsp?chartno="+chartno+"&no="+movieno);
   %> 

 </body>
</html>
