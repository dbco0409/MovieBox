<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>         
<html>
   <head><title>게시판 내용 수정</title></head>   
   
  <script type="text/javascript">
function check_val()  
{
	if (document.form2.ctg2.value == "") 
	{
		alert("분류를 기입 해야 합니다.");
		document.form2.ctg2.focus();
		return false;			
	}

if (document.form2.title2.value == "") 
	{
		alert("제목을 기입 해야 합니다. ");
		document.form2.title2.focus();
		return false;			
	}
	if (document.form2.content2.value == "") 
	{
		alert("내용을 기입 해야 합니다. ");
		document.form2.content2.focus();
		return false;			
	}
			document.form2.submit();
}
</script>
   
   <%
       request.setCharacterEncoding("euc-kr");

	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속       


		int no = Integer.parseInt(request.getParameter("no"));  
                
		String jsql = "select * from faq where no = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setInt(1, no);
		ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
           rs.next();
		   String ctg = rs.getString("ctg");
           String title = rs.getString("title");
     	   String content = rs.getString("content");

   %> 
   
<body>
<form name="form2" method="post" action="faq_modify_result.jsp">

                            <table width="530" cellpadding="0" cellspacing="0" align="center" height="433">
                                <tr>
                                    <td width="530" height="5" colspan="3"><img src="img/bar.gif" width="625" height="12" border="0"></td>
                                </tr>
                                <tr>
                                    <td width="530" height="40" id="form" valign="middle">
									<input type="hidden" name="no" value="<%= no %>">
									<select name="ctg">
									<option selected>분류</option>
									<% 
											if (ctg.equals("영화관")) {
								%>
										<option value="영화관" selected>영화관</option>
									<option value="멤버십">멤버십</option>
									<option value="할인/신용카드">할인/신용카드</option>
									<option value="영화예매">영화예매</option>
									<option value="홈페이지">홈페이지</option>
									<option value="인재채용">인재채용</option>
									<option value="기타">기타</option>

									<% } else if (ctg.equals("멤버십")) {%>
									<option value="전체" >전체</option>
									<option value="영화관">영화관</option>
									<option value="멤버십" selected>멤버십</option>
									<option value="할인/신용카드">할인/신용카드</option>
									<option value="영화예매">영화예매</option>
									<option value="홈페이지">홈페이지</option>
									<option value="인재채용">인재채용</option>
									<option value="기타">기타</option>

									<% } else if (ctg.equals("할인/신용카드")) {%>
									<option value="전체" >전체</option>
									<option value="영화관">영화관</option>
									<option value="멤버십">멤버십</option>
									<option value="할인/신용카드"selected>할인/신용카드</option>
									<option value="영화예매">영화예매</option>
									<option value="홈페이지">홈페이지</option>
									<option value="인재채용">인재채용</option>
									<option value="기타">기타</option>

									<% } else if (ctg.equals("영화예매")) {%>
									<option value="전체" >전체</option>
									<option value="영화관">영화관</option>
									<option value="멤버십">멤버십</option>
									<option value="할인/신용카드">할인/신용카드</option>
									<option value="영화예매" selected>영화예매</option>
									<option value="홈페이지">홈페이지</option>
									<option value="인재채용">인재채용</option>
									<option value="기타">기타</option>

										<% } else if (ctg.equals("홈페이지")) {%>
									<option value="전체" >전체</option>
									<option value="영화관">영화관</option>
									<option value="멤버십">멤버십</option>
									<option value="할인/신용카드">할인/신용카드</option>
									<option value="영화예매">영화예매</option>
									<option value="홈페이지" selected>홈페이지</option>
									<option value="인재채용">인재채용</option>
									<option value="기타">기타</option>

						
									<% } else if (ctg.equals("인재채용")){%>
									<option value="전체" >전체</option>
									<option value="영화관">영화관</option>
									<option value="멤버십">멤버십</option>
									<option value="할인/신용카드">할인/신용카드</option>
									<option value="영화예매">영화예매</option>
									<option value="홈페이지">홈페이지</option>
									<option value="인재채용" selected>인재채용</option>
									<option value="기타">기타</option>

						

									<% } else if (ctg.equals("기타")){%>
									<option value="전체" >전체</option>
									<option value="영화관">영화관</option>
									<option value="멤버십">멤버십</option>
									<option value="할인/신용카드">할인/신용카드</option>
									<option value="영화예매">영화예매</option>
									<option value="홈페이지">홈페이지</option>
									<option value="인재채용">인재채용</option>
									<option value="기타" selected>기타</option>


									<% } %>

									</select>&nbsp;<input name="title" type="text" size="55" value="<%=title%>"></td>
                                </tr>
                                <tr>
                                    <td width="316" height="15" rowspan="2" valign="top"><textarea name="content" rows="22" cols="70" style="border:1px solid #ddd;"scrolling="yes"><%=content%></textarea></td>
									</tr>
									<tr>
									<% 
        }
       rs.close();
       con.close();
%>
									 <tr  align="right">
                                    <td width="510" height="15" rowspan="2" valign="top"><input type="image" src="img/medify.gif"><a href="admin_list_2.jsp"><img src="img/cut.gif" border="0"></a></td>
									</tr>
									
									
                                </tr>
							
                               
                              
                            </table>
                     
</form>
 </body>
</html>