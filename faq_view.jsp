<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>    
<%@include file="faq_view_head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>view</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt; color:black}
#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d;}
a:active{color:#662c92; font-weight:bold;}
</style>
<script language="javascript">
function changeHeight() { 
var the_height=document.getElementById('view').contentWindow.document.body.scrollHeight; 
document.getElementById('view').height=the_height; } 
</script>
</head>
 <%
     request.setCharacterEncoding("euc-kr");
 		String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
	  Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	   int no = Integer.parseInt(request.getParameter("no"));              
	   String  jsql = "select * from faq where no = ?";
       PreparedStatement pstmt = con.prepareStatement(jsql);
       pstmt.setInt(1, no);
       ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
           rs.next();
           String ctg = rs.getString("ctg").trim();
           String title = rs.getString("title").trim();
           String content = rs.getString("content");

   %> 
<body>
<table width="720" align="center">
   
                    <td width="663">
                        <table width="620" cellpadding="0" cellspacing="0" background="img/beg_view.gif" height="32"    align="center">
                            <tr>
                                <td width="30">
                                    <p ><img src="img/list_icon.gif" border="0"></p>
                                </td>
                                <td width="506"><b>[<%=ctg%>]&nbsp;&nbsp;<%=title%></b></td>
                                <td width="77">
                                    <p align="right"><a href="faq_list_all.jsp" target="_self"><img src="img/list_b.gif" width="77" height="29" border="0"></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
               
                <tr>
                    <td width="663"  valign="top" align="left"><br></br><table width="630" align="center" style="word-wrap: break-word; table-layout: fixed">
<tr><td><pre style="width: 620; height: 100%; overflow: auto;"><%=content%></td></tr></table></td>
                </tr>
				<%   
	   }
	    rs.close();
		pstmt.close();

		con.close();
  %> 
                <tr>
                    <td width="663" height="64" style="background-image:url('img/gray_v.gif') background-repeat:no-repeat;" >
                        <table width="620" height="60" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td width="464">&nbsp;</td>
                                <td width="78">
                                  </p>
                                </td>
                                <td width="78">  <p><a href="faq_list_all.jsp" target="_self"><img src="img/list_b.gif" width="77" height="29" border="0"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td width="663">
        </td>
    </tr>
</table>
<iframe frameborder="no" src="faq_view_list.jsp" width="700" scrolling="no" onLoad="changeHeight();"></iframe>
<p>&nbsp;</p>
</body>

</html>