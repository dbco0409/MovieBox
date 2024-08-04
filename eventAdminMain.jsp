<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<%@include file="_head.jsp"%>
<html><head><title>r_admin_list</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
hr{width:620px; color: #ddd; height:2px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d; font-size:9pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
<script language="javascript">
function select()  
{
var select = confirm("정말 삭제 하시겠습니까?");
if (select == true) {
document.form.submit();
}
else {
}

}
</script>
<body>
<%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
<form name="form" action="1_1_delete.jsp" method="post">
<table align="center" width="672">
    <tr>
        <td height="10" valign="bottom" width="586">
           &nbsp;&nbsp;| &nbsp;&nbsp;<a href="eventAdminMain.jsp">영화이벤트</a>
        </td>
        <td width="35" height="10" valign="bottom"><a href="eventWrite.jsp">등록</a></td>
        <td width="37" height="10" align="left">
        </td>
    </tr>
  <tr>
<td width="625" height="20" valign="top" colspan="2"><img src="img/bar.gif" width="625" height="12" border="0"></td>
</tr>
</table>
<%
try {
	request.setCharacterEncoding("euc-kr");
 String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		String group_index;
		int list_index;

		group_index = request.getParameter("group_index");
		//첫 페이지는 group_index 값이 0
		   
		if (group_index != null) 	
				list_index = Integer.parseInt(group_index);  
		else 
				list_index = 0;     //현재 페이지 수 

		//board 테이블에 있는 총 자료의 수(글의 개수) 알아 오기
		String jsql = "select count(*) from event ";
		PreparedStatement pstmt1 = con.prepareStatement(jsql);
		ResultSet cntRs = pstmt1.executeQuery();	

		cntRs.next();
		int cnt = cntRs.getInt(1);//글의 총 개수

		//한 페이지에 20개의 글 출력하기 위해
		//글의 개수를 20으로 나누어 페이지 계산
		int cntList = cnt/7; // 페이지 수 계산하기 위한 변수 
		int remainder = cnt%7; //나머지
		int cntList_1;//총페이지 수
			
		//1(21, 41, 61, 81, ...)번째 글이 올라올 때 총 페이지 수 1 증가
		if (cntList != 0) //글이 20개이상이면
		{
			   if (remainder == 0)	 //20으로 나눈 나머지가 없으면		
				  cntList_1 = cntList;  //몫이 페이지 수          
			   else                    //나머지가 있으면
				   cntList_1 = cntList + 1; //몫에 1 더한 값이 총페이지 수		  
		 } 
		 else 		 
			  cntList_1 = cntList + 1; //총페이지 수		
			   
		cntRs.close();
			
    String jsql55 = "select * from event";   
	 PreparedStatement  pstmt55 = con.prepareStatement(jsql55);
	 ResultSet  rs55 = pstmt55.executeQuery();

if (!rs55.wasNull()) 
	{
	   for(int i = 0; i < list_index * 7; i++) 
	      rs55.next();

       int cursor = 0;

while(rs55.next()){
		String no = rs55.getString("eveNo");
	String name = rs55.getString("eveName");
	String time =  rs55.getString("eveTime");
%>
<table width="620" height="30" cellpadding="0" cellspacing="0" align="center" valign="middle" border="0">
 <tr height="20">
        <td width="33">
            <p align="center"><img src="img/list_icon.gif" border="0"></p>
        </td>
        <td width="34"><%=no%></td>
        <td width="394"> <a href="eventDetailview.jsp?eveNo=<%=no%>"><%=name%></td>
         <td width="34"><a href="eventUpdata.jsp?no=<%=no%>">수정</a></td>
		<td width="34"><a href="eventDelete.jsp?no=<%=no%>"><font color="#8d8d8d">삭제</font></a></td>
</tr>
	</table>
<img src="img/gray_bar.gif" border="0">
	<%
	   //while 문이 반복 수행될 때마다 cursor를 1씩 증가
		 cursor ++;
         if (cursor >= 7) break; 
        }   // while문의 끝
    }  //  if문의 끝
   %>
        <table width="620" border="0" cellspacing="0" cellpadding="5" align="center">
          <tr>&nbsp;</tr><tr>

             <td colspan="5" align="center">    
		<%
			//첫페이지 (group_index 값이 0)로 이동할 수 있게끔 링크
		%>
        <a href="eventAdminDetailview.jsp?group_index=0"  ><img src="img/first.gif" border="0"/></a>
        &nbsp;&nbsp;&nbsp;
                
   <% 
   //페이지 번호를 출력 및 링크시키기 위한 변수들을 선언
       int startpage=1;
       int maxpage = cntList_1;
       int endpage = startpage + maxpage -1;

	//보여줄 페이지가 속한 그룹의 첫번째 페이지부터 마지막 페이지까지의 링크를 추가
       for (int j=1; j<=7; j++) 
	   {
           if(j == list_index) 
		   {
   %>
                <img src="img/page_<%= j %>.gif" border="0"/>
   <%
            } 
            else 
			{
   %>
       <a href="eventAdminDetailview.jsp?group_index=<%= j-1 %>"  ><img src="img/page_<%= j %>.gif" border="0"/></a>
   <%
            }
       }
	    
   %>
    
      &nbsp;&nbsp;&nbsp;
	  <%
			//마지막 페이지로 이동할 수 있게끔 링크
	
	   %>
      <a href="eventAdminDetailview.jsp?group_index=<%= cntList_1 - 1 %>"  ><img src="img/end.gif" border="0"/></a>
    
             </td>
          </tr>   
    </table>
	
<%
}
				  finally{}
				 %>

</form>
</div>
</body>
</html>