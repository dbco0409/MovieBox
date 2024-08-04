<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>       
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>1_1_write</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#form{background-image:url('img/form_beg.gif');}

#i_b{ width:49; height:30}
input {border:1px solid #ddd; height:22px;}
</style>

</head>
<script type="text/javascript">
function check_val()  
{
if (document.form.r_title.value == "") 
	{
		alert("제목을 기입 해야 합니다. ");
		document.form.r_title.focus();
		return false;			
	}
	if (document.form.r_content.value == "") 
	{
		alert("내용을 기입 해야 합니다. ");
		document.form.r_content.focus();
		return false;			
	}
			document.form.submit();
}
</script>


<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onLoad="nameFocus()">
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
           


   %> 

<form name="form" method="post" action="1_1_Rwrite_result.jsp?no=<%=no%>">

                            <table width="630" cellpadding="0" cellspacing="0" align="center" height="433">
                                <tr>
                                    <td width="630" height="5" colspan="3"><img src="img/bar.gif" width="625" height="12" border="0"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="20" id="form"></td>
                                    <td width="130" height="20" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">질문자 이름</td>
                                    <td width="316" height="20" id="form"><%=name%></td>
                                </tr>
                                <tr>
                                    <td width="15" height="20" id="form"></td>
                                    <td width="130" height="20" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">질문</td>
                                    <td width="316" height="20" id="form">
									<%=title%></td>
                                </tr>
                            <tr>
                                    <td width="15" height="20" id="form"></td>
                                <td width="150" height="20" id="form">
                                    <p><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">지역/영화관</p>
                                </td>
                                    <td width="316" height="20" id="form">
									<%=movie%>

									</td>
                            </tr>
                              
                                <tr>
                                    <td width="15" height="20" id="form"></td>
                                    <td width="99" height="20" id="form"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">제목</td>
                                    <td width="316" height="20" id="form"><input type="text" name="r_title" size="70"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="1" rowspan="2"></td>
                                    <td width="99" height="13"><img src="img/icon.gif" width="7" height="13" border="0" align="absmiddle">내용</td>
                                    <td width="316" height="55" rowspan="2" valign="top"><textarea name="r_content" rows="20" cols="70" style="border:1px solid #ddd;"scrolling="yes"></textarea></td>
                                </tr>
								 
								<%   
	   }
	    rs.close();
		pstmt.close();

		con.close();
  %> 
                                <tr>
                                    <td width="99" height="71"></td>
                                </tr>
                                <tr>
                                    <td width="15" height="50" id="button"></td>
                                    <td width="99" height="50" id="button"></td>
                                    <td width="480" height="50" id="button">
                                    <p align="right"><img src="img/submit.gif" onClick="check_val()"><a href="admin_list_4.jsp"><img src="img/cut.gif" border="0"></a>

</p>
                                    </td>
                                </tr>
                            </table>
                     
</form>
</body>

</html>