<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>

<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>영화,극장 선택</title>
<style type="text/css">
hr { height:1px; color:#744c92}
td { color:#ffffff; font-family:"맑은 고딕", "돋움"; font-size:9pt;}
span {color:Red;font-weight:bold;}
a, a:link, a:visited { color:#a8a8a8; font-family:"맑은 고딕", "돋움"; font-size:9pt; text-decoration: none}
</style>
<script language="JavaScript">
<!--
function na_hide_layer(lname)
{
  if(document.getElementById) {
    document.getElementById(lname).style.visibility = 'hidden';
  } else if(document.layers) {
    document.layers[lname].visibility = 'hide'   
  } else if(document.all)
    document.all(lname).style.visibility = 'hidden' 
}

function na_show_layer(lname)
{
  if (na_show_layer.arguments.length <= 1) { // don't delete, backword compatibility
    if(document.getElementById) {
      document.getElementById(lname).style.visibility = 'visible';
    } else if(document.layers) {
      document.layers[lname].visibility = 'show'   
    } else if(document.all)
      document.all(lname).style.visibility = 'visible' 
  } else {
    if(document.getElementById) {
      document.getElementById(lname).style.visibility = 'hidden';
    } else if(document.layers) {
      document.layers[lname].visibility = 'hide'   
    } else if(document.all)
      document.all(lname).style.visibility = 'hidden' 
  }
}

// -->
</script>
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red">
<table width="662" bgcolor="#6B2C8C" cellpadding="0" cellspacing="0" height="350">
    <tr>
        <td width="510" height="350" valign="middle" align="right">
            <table width="500" cellpadding="0" cellspacing="0" height="325" bgcolor="white">
                <tr>
                    <td width="321">
                        <table width="500" cellpadding="5" cellspacing="0">
                            <tr>
                                <td width="490" colspan="2">
                                    <p align="center"><img src="img/res_1.gif" width="410" height="25" border="0"></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="295"><img src="img/res_01.gif" width="71" height="20" border="0"></td>
                                <td width="189"><img src="img/res_02.gif" width="71" height="20" border="0"></td>
                            </tr>
                            <tr>
                                <td width="490" colspan="2"  valign="top">
                                 <table width="490" cellpadding="0" cellspacing="0" align="center">
                                        <tr>
                                            <td width="250" height="237" valign="top">
											<div style="padding:10px; width:200px; height:236px; border:2px solid #a8a8a8; position:relative; overflow:auto">
<%
  request.setCharacterEncoding("euc-kr");

	   try{   String DB_URL="jdbc:mysql://localhost:3306/project4";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";

	 Class.forName("org.gjt.mm.mysql.Driver");  // JDBC 드라이버 로딩
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
     // DB에 접속   
	 
String jsql = "select * from reserve_adm where okay = 'y'";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		ResultSet rs = pstmt.executeQuery();
		
		   while(rs.next()){
			int reserve_no=rs.getInt("reserve_no");
		   String subject = rs.getString("subject");
		   String level = rs.getString("level");
  %>
  <a href="reserve_where.jsp?reserve_no=<%=reserve_no%>" OnClick="na_show_layer('sub');na_hide_layer('main');this.style.color='#662e91';this.style.fontWeight ='bold'"" target="content"><img src="img/<%=level%>.gif" border="0"><%=subject%></a></p>
  <% } %>
  </div>
                                            </td>
                                            <td width="40"><img src="img/res_next.gif" width="22" height="29" border="0"></td>
                                           
											<td width="200" valign="top">
			 <div id="main" style="padding:10px; width:180px; height:236px; border:2px solid #a8a8a8;position:absolute; z-index:1; overflow:auto">
				<%
		String jsql4 = "select * from reserve_adm where okay = 'y'";
		PreparedStatement pstmt4 = con.prepareStatement(jsql4);
		ResultSet rs4 = pstmt4.executeQuery();
		while(rs4.next()){
		   String rctg = rs4.getString("rctg");

	    	String[]  rctgArr = rctg.split(",");
			for (int i=0;i<rctgArr.length;i++){
			%>
			<a onClick="alert('영화부터 선택해주세요.')"><%=rctgArr[i]%></a></br>
			<% } } %>
            </div>
			<div id="sub" style="width:180px; height:236px; border:2px solid #a8a8a8; position:absolute; z-index:2; visibility:hidden;">
    <iframe frameborder="0" name="content" width="180" height="236" scrolling="yes"></iframe>
            </div>
											 </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <td width="154" valign="top" align="left">
                <table width="148" height="350" cellpadding="0" cellspacing="0" valign="top">
                    <tr>
<div id="ing" style="padding:5px; width:141px; height:350px; position:absolute; z-index:2">
    <iframe frameborder="0" src="reserve_w_none.jsp" name="ing" width="148" height="350" scrolling="no" allowTransparency=false ></iframe>
            </div>
                    </tr>
                </table>
				</td>
    </tr>
</table>
           <%
 }
				  finally{}
				 %>
        
<p>&nbsp;</p>
</body>

</html>