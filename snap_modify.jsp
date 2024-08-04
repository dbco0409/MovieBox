<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %> 
<%@include file="_head.jsp" %>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d; font-size:9pt;}
a:active{color:#662c92; font-weight:bold;}
</style>
 <%@include file="admin.jsp"%>
<div id="layer2" style="position:absolute; left:400px; top: 100px; z-index:1; visibility:visible;">
<p>&nbsp;</p>
 <img src="img/m_write_3.gif">
 <p>&nbsp;</p>
<%
	request.setCharacterEncoding("euc-kr");
 	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

int no = Integer.parseInt(request.getParameter("no"));  

    String jsql2 = "select * from movie_snap where no =?";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql2);
	 pstmt.setInt(1, no);
	 ResultSet  rs = pstmt.executeQuery();


rs.next();
			String image1 = rs.getString("image1");
			String image2 = rs.getString("image2");
			String image3 = rs.getString("image3");

	String[]  image01 = image1.split(",");   
	String[]  image02 = image2.split(",");  
	String[]  image03 = image3.split(",");  
		
%>
<table width="675" cellpadding="0" cellspacing="0" height="456">
    <tr>
        <td width="224" height="221">
            <table width="217" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="217" height="220"><img width="200" height="200" src="<%=image01[0]%>"></td>
                </tr>
            </table>
        </td>
        <td width="224" height="221">
            <table width="217" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="217" height="220"><img width="200" height="200" src="<%=image01[1]%>"></td>
                </tr>
            </table>
        </td>
        <td width="227" height="221">
            <table width="199" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="199" height="220"><img width="200" height="200" src="<%=image02[0]%>"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td width="224" height="235">
            <table width="217" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="217" height="220"><img width="200" height="200" src="<%=image02[1]%>"></td>
                </tr>
            </table>
        </td>
        <td width="224" height="235">
            <table width="217" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="217" height="220"><img width="200" height="200" src="<%=image03[0]%>"></td>
                </tr>
            </table>
        </td>
        <td width="227" height="235">
            <table width="217" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="217" height="220"><img width="200" height="200" src="<%=image03[1]%>"></td>
                </tr>
            </table>
        </td>
    </tr>
</table>


    <table width="676" cellpadding="3" cellspacing="3">
        <tr>
            <td width="664">
                <p align="center"><a href="snap_modify_ing.jsp?no=<%=no%>">스넵샷 수정하기 &nbsp;&nbsp;<a href="admin_list_movie_1.jsp?no=<%=no%>">영화 목록보기</p>
            </td>
        </tr>
    </table>

