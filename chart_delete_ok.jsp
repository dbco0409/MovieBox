<%@ page contentType="text/html;charset=euc-kr" %>
<%@include file="movie_view_head.jsp"%>
<%
int chartno=Integer.parseInt(request.getParameter("chartno"));   
int movieno=Integer.parseInt(request.getParameter("no"));   
String password = request.getParameter("pwd");  

String jsql13 = "select password from movie_chart where no = ?";
       PreparedStatement pstmt13 = con.prepareStatement(jsql13);
       pstmt13.setInt(1, chartno);
       ResultSet rs13 = pstmt13.executeQuery();
       
	  if(!rs13.wasNull()) {
       rs13.next();
       String rs_pwd = rs13.getString("password");

       if (password.equals(rs_pwd)) 
	  {
		   String jsql15 = "delete from movie_chart where no =?";

			  PreparedStatement pstmt15 = con.prepareStatement(jsql15);
			  pstmt15.setInt(1, chartno);
			  pstmt15.executeUpdate();

	  response.sendRedirect("movie_list_head.jsp?no="+movieno);
		 
	 continue; } 
	  else
	  
	  %>
	
   	<h2><br><br><center><font size=5 color=red><글 삭제 실패!></font></h2><br><br>
              <font size=2>비밀 번호가 틀려서 글 수정을 못했습니다.</font><p>
              <font size=2>비밀 번호를 확인해 주세요.</font><p>
              <font size=2>돌아 가시려면 <a href="javascript:history.back();"> 여기</a>를 클릭하세요.</font>
        </center>
    
	<%} }} 
		finally{}
		
				 %>