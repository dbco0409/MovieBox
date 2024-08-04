<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>        
<%@include file="1_1_view_head.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>view</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
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
	   String  jsql = "select * from 1_1 where no = ?";
       PreparedStatement pstmt = con.prepareStatement(jsql);
       pstmt.setInt(1, no);
       ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
           rs.next();
           String name = rs.getString("name").trim();
           String ctg = rs.getString("ctg").trim();
           String movie = rs.getString("movie").trim();
           String title = rs.getString("title").trim();
           String content = rs.getString("content");
           String date = rs.getString("date").trim();

	
	String[ ]  dateArr = date.split(" ");   
String datea=dateArr[0]+dateArr[1]+dateArr[2];

   %> 
<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<table width="666">
   
                    <td width="663">
                        <table width="620" cellpadding="0" cellspacing="0" background="img/beg_view.gif" height="32" >
                            <tr>
                                <td width="30">
                                    <p ><img src="img/list_icon.gif" border="0"></p>
                                </td>
                                <td width="506">[<%=ctg%>]&nbsp;&nbsp;<%=title%>&nbsp;&nbsp;-<b><%=name%></b></td>
                                <td width="77">
                                    <p align="right"><a href="1_1_list_all.jsp"><img src="img/list_b.gif" width="77" height="29" border="0"></p>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td width="663">
                        <table width="620" cellpadding="0" cellspacing="0" background="img/beg_gview.gif" >
                            <tr>
                                <td width="25">&nbsp;</td>
                                <td width="93">지역/영화관 &nbsp;<img src="img/bar_v.gif" width="1" height="11" border="0"></td>
                                <td width="148"><%=movie%></td>
                                <td width="214" height="32">&nbsp;</td>
                                <td width="62">
                                    <p>등록일 &nbsp;<img src="img/bar_v.gif" width="1" height="11" border="0"></p>
                                </td>
                                <td width="220"><%=datea%></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td width="663" valign="top" style="margin-left:20px"><br>&nbsp;</br><%=content%><br>&nbsp;</br></td>
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
                                    <p><a href="admin_list_4.jsp"><img src="img/list_b.gif" width="77" height="29" border="0"></p>
                                </td>
                                <td width="78"><a href="1_1_Rwrite.jsp?no=<%=no%>"><img src="img/replay.gif" width="72" height="25" border="0"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td width="663">
        </td>
    </tr>
</table>
<iframe name="view" frameborder="no" src="1_1_view_list.jsp" width="700" scrolling="no" onLoad="changeHeight();"></iframe>
<p>&nbsp;</p>
</body>

</html>