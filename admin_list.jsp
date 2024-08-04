<%@ page contentType = "text/html; charset=EUC-KR" import= "java.util.*, java.text.*" %>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>admin_list</title>
<style type="text/css">
body {overflow-x:hidden;}
td{font-size:9pt;}
#i_b{ width:49; height:30}
#reach{background-image:url('img/reach_beg.gif');}
input {border:1px solid #ddd; height:22px;}
a:link,a:visited{text-decoration:none; color: #8d8d8d;}
a:active{color:#662c92; font-weight:bold;}
</style>
<script language="javascript">
function changeHeight() { 
var the_height=document.getElementById('list').contentWindow.document.body.scrollHeight; 
document.getElementById('list').height=the_height; } 
</script>

</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
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
                                <td width="673" height="42" valign="top">
                                    <p><img src="img/admin.gif" width="684" height="42" border="0"></p>
                                </td>
                            </tr>
                        </table>
                       <table width="673" cellpadding="0" cellspacing="0" align="center" height="633">
                           
                            <tr>
                                <td width="700" height="568" id="form" valign="top">
                                    <p><iframe name="list" frameborder="no" src="admin_list_all.jsp" width="700" scrolling="no" onLoad="changeHeight();"></iframe></p>
                                </td>
                            </tr>

                        </table>

