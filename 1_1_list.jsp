<%@include file="_head.jsp" %>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>1_1_write</title>
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
var the_height=document.getElementById('list').contentWindow.document.body.scrollHeight; 
document.getElementById('list').height=the_height; } 
</script>
<script language="javascript">
function changeHeight() { 
var the_height=document.getElementById('view').contentWindow.document.body.scrollHeight; 
document.getElementById('view').height=the_height; } 
</script>
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<table width="890" cellpadding="0" cellspacing="0" align="center" >
    <tr>
        <td width="182" valign="top"> <table width="192" height="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td width="182" height="40"  valign="top">
        <%@include file="admin.jsp"%>
            </td>
        </tr>
        <tr>
            <td width="182" height="31">&nbsp;</td>
        </tr>
        <tr>
            <td width="196" valign="top" background="images/right_bar.gif">
                <p align="center"><img src="images/right_benner.gif" width="151" height="440" border="0"></p>
            </td>
        </tr>
    </table></td>
        <td width="720" valign="top">
<form name="form" method="post" action="1_1_list_all.jsp">
<table width="673" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td width="673">
            <table width="673" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="673" height="42"></td>
                </tr>
                <tr>
                    <td width="673" align="center" valign="top">
                        <table width="673" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="673">
                                    <p><img src="img/1.1.gif" width="673" height="41" border="0"></p>
                                </td>
                            </tr>
                        </table>
                        <table width="673" cellpadding="0" cellspacing="0" align="center" height="633">
                             
                            <tr>
                                <td width="700" height="568" id="form" valign="top">
                                    <p><%@include file="1_1_list_all.jsp" %></p>
                                </td>
                            </tr>
                        </table></td>
    </tr>
</table>

