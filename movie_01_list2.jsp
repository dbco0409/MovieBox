<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>   
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>movie_list</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#i_b{ width:49; height:30}
#reach{background-image:url('img/reach_beg.gif');}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d;}
a:active{color:#662c92; font-weight:bold;}
</style>
</head>

<body>
<%
try {
	request.setCharacterEncoding("euc-kr");
 	String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

     String jsql2 = "select * from movie where open='y' order by title";   
	 PreparedStatement  pstmt = con.prepareStatement(jsql2);
	 ResultSet  rs = pstmt.executeQuery();

while(rs.next()){
			String image = rs.getString("image");
			String date = rs.getString("date");
			String title = rs.getString("title");
    		String director =  rs.getString("director");	    
			String  actor = rs.getString("actor");
			String  level =  rs.getString("level");

%>
<table width="314" height="123" cellpadding="0" cellspacing="0">
    <tr>
        <td width="100"><a href="movie_01_detail.jsp?title=<%=title%>"><img src="<%=image%>" border="0" width="157" height="242"/></td>
        <td width="216">
            <table width="184" cellpadding="0" cellspacing="0" align="center">
                <tr>
                    <td width="204" height="20" colspan="3"><img src="<%=level%>" border="0" align="absmiddle"/><%=title%></td>
                </tr>
                <tr>
                    <td width="204" height="20" colspan="3"><img src="img/icon.gif" align="absmiddle"/>개봉일: <%=date%></td>
                </tr>
                <tr>
                    <td width="204" height="20" colspan="3"><img src="img/icon.gif" align="absmiddle"/>감독: <%=director%></td>
                </tr>
                <tr>
                    <td width="204" height="20" colspan="3"><img src="img/icon.gif" align="absmiddle"/>출연: <%=actor%></td>
                </tr>
				
                <tr>
                    <td width="61" height="37"><img src="img/m_b1.gif" border="0"></td>
                    <td width="61" height="37"><img src="img/m_b2.gif" border="0"></td>
                    <td width="61" height="37"><img src="img/m_b3.gif" border="0"></td>
                </tr>
            </table>
		
        </td>
    </tr>
</table>
<tr>
	<%
		}	
   }  catch(Exception e)  {
        out.println(e);
} 
%>
                            

			