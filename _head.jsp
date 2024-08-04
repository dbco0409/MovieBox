<%@ page contentType="text/html;charset=euc-kr"%>
<script language="javascript" src="menu.js">
</script>
<%                       
session.getAttribute("sid");
String id = (String)session.getAttribute("sid");


if(id==null||id.equals(""))
{   
%>
<%@include file="head.jsp" %>
<%
}

else if (id.equals("admin")){
	%>
<%@include file="adminh.jsp" %>
<%
} else 
{
%>
<%@include file="loginafter.jsp" %>
<% } %>