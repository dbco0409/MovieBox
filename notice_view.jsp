<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>        
<%@include file="notice_view_head.jsp" %>
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
	   String  jsql = "select * from notice where no = ?";
       PreparedStatement pstmt = con.prepareStatement(jsql);
       pstmt.setInt(1, no);
       ResultSet rs = pstmt.executeQuery();

       if(!rs.wasNull()) {
           rs.next();
           String ctg = rs.getString("ctg").trim();
           String title = rs.getString("title").trim();
           String content = rs.getString("content");
           String date = rs.getString("date").trim();

   %> 
<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" >

<table width="666" align="center">
   
                    <td width="663">
                        <table width="666" cellpadding="0" cellspacing="0" background="img/beg_view.gif" height="32">
    <tr>
                                <td width="30">
                                    <p><img src="img/list_icon.gif" border="0"></p>
                                </td>
                                <td width="300">[<%=ctg%>]&nbsp;&nbsp;<b><%=title%></b></td>
        <td width="62">
            <p>µÓ∑œ¿œ</p>
        </td>
        <td width="160"><%=date%></td>
                                <td width="77">
                                    <p align="right"><a href="notice_list_all.jsp"><img src="img/list_b.gif" width="77" height="29" border="0"></p>
                                </td>
    </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td width="663"  valign="top" align="left"><br></br><table width="630" align="center" style="word-wrap: break-word; table-layout: fixed">
<tr><td><pre style="width: 660; height: 100%; overflow: auto;"><%=content%></td></tr></table></td>
                </tr>
				<%   
	   }
	    rs.close();
		pstmt.close();

		con.close();
  %> 
                <tr>
                    <td width="663" height="64" style="background-image:url('img/gray_v.gif') background-repeat:no-repeat;" >
                        <table width="666" height="60" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td width="464">&nbsp;</td>
                                <td width="78">
                                    <p></p>
                                </td>
                                <td width="78"><a href="notice_list_all.jsp"><img src="img/list_b.gif" width="77" height="29" border="0"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td width="663">
        </td>
    </tr>
</table>
<iframe name="view" frameborder="no" src="notice_view_list.jsp" width="700" scrolling="no" onLoad="changeHeight();"></iframe>
<p>&nbsp;</p>
</body>

</html>