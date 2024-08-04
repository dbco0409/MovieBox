<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>당신의 꿈을 개봉합니다, 메가박스</title>
<style type="text/css">
hr { height:1px; color:#744c92}
td { font-family:"맑은 고딕", "돋움"; font-size:9pt;}
span {color:Red;font-weight:bold;}
a, a:link, a:visited { color:#a8a8a8; font-family:Verdana, Geneva, sans-serif; font-size:9pt; text-decoration: none}
a:active {color:#662e91; font-weight:bold; text-decoration: none}
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
<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
<table width="890" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td width="890" valign="top">
            <table width="870" height="41" cellpadding="0" cellspacing="0" align="center">
                <tr>
                    <td width="437"><a href="index.jsp" ><img src="images/logo.gif" width="238" height="37" border="0" /></a></td>
                    <td width="437">
                        <div align="right">
                            <table width="223" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="445" valign="bottom">
                                        <div align="right">
                                            <table width="100" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td width="34"><a href="login.jsp"><img src="images/login_top.gif" border="0"></a></td>
                                                    <td width="7">&nbsp;</td>
                                                    <td width="28"><a href="insertMember.jsp"><img src="images/join_top.gif" border="0"></a></td>
                                                    <td width="7">&nbsp;</td>
                                                    <td width="22"><a href="faq_list.jsp"><img src="images/faq_top.gif" border="0"></a></td>
                                                    <td width="7">&nbsp;</td>
                                                    <td width="47"><a href="sitemap.jsp"><img src="images/sitemap_top.gif" border="0"></a></td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="445" height="9">
                                        <div align="right">
										<form action="allserch.jsp" method="post">
                                            <table width="211" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td width="188" align="right"><input type="text" name="reach" size="25" style="border:1px solid #662e91"></td>
                                                    <td width="23"><img src="images/serch_02.gif" width="23" height="19" border="0" onClick="submit()"/></td>
                                                </tr>
                                            </table>
											</form>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table width="890" cellpadding="0" cellspacing="0" align="center">
    <tr>
        <td  width="886" bgcolor="#632c94">
            <table width="491" cellspacing="0" bordercolordark="white" bordercolorlight="black" cellpadding="0">
                <tr>
                    <td width="41">&nbsp;</td>
                    <td width="73"><a href="reserve_m.jsp"><img src="images/m1_sub.gif" width="73" height="30" border="0" id="mainmenu1" /></a></td>
                    <td width="29">&nbsp;</td>
                    <td width="48"><a href="movie_01_list.jsp"><img src="images/m2_sub.gif" width="48" height="30" border="0" id="mainmenu2" /></a></td>
                    <td width="31">&nbsp;</td>
                    <td width="58"><a href="eventMain.jsp"><img src="images/m3_sub.gif" width="53" height="30" border="0" id="mainmenu3" /></a></td>
                    <td width="20">&nbsp;</td>
                    <td width="102"><a href="faq_list_all.jsp"><img src="images/m4_sub.gif" width="102" height="30" border="0" id="mainmenu4"/></a></td>
                    <td width="27">&nbsp;</td>
                    <td width="69"><a href="updataMember.jsp"><img src="images/m5_sub.gif" width="67" height="30" border="0" id="mainmenu5"/></a></td>
                </tr>
            </table>
        </td>
    </tr>
</table>

