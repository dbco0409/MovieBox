<%@include file="_head.jsp" %>
<style type="text/css">
td{font-size:9pt;}
a:link, a:visited{text-decoration:none; font-size:9pt; color:#000000}
a:active{color:#662c92; font-weight:bold;}
</style>
<table width="880" cellpadding="0" cellspacing="0" align="center">
 <tr>
        <td width="880" height="170" valign="top" align="center"><%@include file="movie_new.jsp" %>
</td>
    </tr>
    <tr>
        <td width="880" height="150" bgcolor="#662E91">
          <%@include file="review_new.jsp" %>
        </td>
    </tr>
    <tr>
        <td height="209">
            <table width="864" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="277"><%@include file="faq_new.jsp" %></td>
                    <td width="277" valign="top"><%@include file="event_new.jsp" %></td>
                    <td width="277" valign="top"><%@include file="notice_new.jsp" %></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<%@include file="_tail.jsp" %>
