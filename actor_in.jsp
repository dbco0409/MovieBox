<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>   
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>movie_list</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#name{font-size:10pt;font-weight:bold; color:black;}
#i_b{ width:49; height:30}
#reach{background-image:url('img/reach_beg.gif');}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d;}
a:active{color:#662c92; font-weight:bold;}
</style>
</head>

<body>
<div style="width:700px; height:100%; position:absolute; z-index:1;">
<%
try {  
    String  jsql3 = "select * from movie_actor where no =?";

       PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	   pstmt3.setInt(1, no);
	   ResultSet rs3 = pstmt3.executeQuery();


while(rs3.next()){
		String profil = rs3.getString("profil");
		   String type = rs3.getString("type");
		    String name = rs3.getString("name");
				    String profiltxt = rs3.getString("profiltxt");
			
%>

    <div style="width:340px; height:170px; z-index:1; float:left" >
        <table width="340" height="160" cellpadding="0" cellspacing="0">
            <tr>
                <td width="100"><img src="<%=profil%>" border="0" width="100" height="160"/></td>
                <td width="230" align="left" valign="middle">
                   <table width="230" height="120"cellpadding="3" cellspacing="3">
    <tr>
        <td width="230" colspan="2"><font color="black"><b><%=type%></b></font></td>
    </tr>
    <tr>
        <td width="230"><span id="name"><%=name%></span></td>
    </tr>
    <tr>
          <td width="230"><%=profiltxt%></td>
    </tr>
</table>
                </td>
            </tr>
        </table>
    </div>

	<p>
 <% } %>
    </div>
        </td>
    </tr>
</table>
</form>

        <%
 }  catch(Exception e)  {
        out.println(e);
}
				  finally{}
%>
</td>
    </tr>
</table>
