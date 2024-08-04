<%@ page contentType="text/html;charset=euc-kr" %>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>좌석</title>
<style type="text/css">
.r, label { color:#a8a8a8; font-family:"맑은 고딕", "돋움"; font-size:9pt;}
.b {color:#662e91; font-weight:bold;font-size:9pt;}
.c { color:#a8a8a8; font-family:"맑은 고딕", "돋움"; font-size:9pt;}
</style>
</head>
	<body leftmargin="0" marginwidth="0" topmargin="3" marginheight="0">
  <%
	int reserve_no = Integer.parseInt(request.getParameter("reserve_no"));  
	 int where=Integer.parseInt(request.getParameter("where"));
	 int date=Integer.parseInt(request.getParameter("date")); 
	int time=Integer.parseInt(request.getParameter("time")); 
	int people=Integer.parseInt(request.getParameter("people")); 

	
	%>
	<script language="javascript">
function checkCheckbox(frm,obj,num) {
  var str = obj.name;
  var len = frm.length;

  var chk = 0;
  for(i=0; i<len; i++) {
    if (frm[i].name == str && frm[i].checked == true) {
      chk++;
    }

    if (chk > num) {
      alert(num + "개 까지 선택할 수 있습니다.");
      obj.checked = false;
      break;
    }
  }
}

t=document.getElementsByTagName('label');

for(i=0; i<t.length; i++) {
 if (t[i].childNodes(0).id==1){
  t[i].childNodes(0).className = "c";
 }
}

function ch1() {
 f=document.frm;
 for(i=0; i<t.length; i++) {
  if(f.elements[i].checked == true ) {
   t[i].className = "b";
  } else {
   t[i].className = "r";

   if (t[i].className.display=="none"){
    t[i].className = "b";
   }
  }
 }
}
</script>
<form action="reserve_ing2.jsp?reserve_no=<%=reserve_no%>&where=<%=where%>&date=<%=date%>&time=<%=time%>&people=<%=people%>" method="post" name="frm" target="ing">
<table width="114" cellspacing="0" height="142" border="0" align="center" valign="middle">
    <tr>
        <td width="114" align="center" valign="middle">
            <table width="114" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="104">
                        <p align="center"><img src="img/stage.gif" width="109" height="17" border="0"></p>
                    </td>
                </tr>
                <tr>
                    <td width="104" valign="bottom">
                        <table width="114" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="16"><input type="checkbox" id="A1" name="sit" value="A1" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0"><label for="A1">A1</label></td>
                                <td width="16"><input type="checkbox" id="A2" name="sit" value="A2" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0"><label for="A2">A2</label></td>
                                <td width="16"><input type="checkbox" id="A3" name="sit" value="A3" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0"><label for="A3">A3</label></td>
                                <td width="16"><input type="checkbox" id="A4" name="sit" value="A4" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0"><label for="A4">A4</label></td>
                                <td width="16"><input type="checkbox" id="A5" name="sit" value="A5" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0"><label for="A5">A5</label></td>
                            </tr>
                            <tr>
                                <td width="16">
								<input type="checkbox" id="B5" name="sit" value="B5" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="B1">B1</label></td>
                                <td width="16">
								<input type="checkbox" id="B2" name="sit" value="B2" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="B2">B2</label></td>
                                <td width="16">
								<input type="checkbox" id="B3" name="sit" value="B3" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="B3">B3</label></td>
                                <td width="16">
								<input type="checkbox" id="B4" name="sit" value="B4" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="B4">B4</label></td>
                                <td width="16">
								<input type="checkbox" id="B4" name="sit" value="B5" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="B5">B5</label></td>
                            </tr>
                            <tr>
                                <td width="16">
								<input type="checkbox" id="C1" name="sit" value="C1" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="C1">C1</label></td>
                                <td width="16">
								<input type="checkbox" id="C2" name="sit" value="C2" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="C2">C2</label></td>
                                <td width="16">
								<input type="checkbox" id="C3" name="sit" value="C3" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="C3">C3</label></td>
                                <td width="16">
								<input type="checkbox" id="C4" name="sit" value="C4" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="C4">C4</label></td>
                                <td width="16">
								<input type="checkbox" id="C5" name="sit" value="C5" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="C5">C5</label></td>
                            </tr>
                            <tr>
                                <td width="16">
								<input type="checkbox" id="D1" name="sit" value="D1" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="D1">D1</label></td>
                                <td width="16">
								<input type="checkbox" id="D2" name="sit" value="D2" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="D2">D2</label></td>
                                <td width="16">
								<input type="checkbox" id="D3" name="sit" value="D3" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="D3">D3</label></td>
                                <td width="16">
								<input type="checkbox" id="D4" name="sit" value="D4" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="D4">D4</label></td>
                                <td width="16">
								<input type="checkbox" id="D5" name="sit" value="D5" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="D5">D5</label></td>
                            </tr>
                            <tr>
                                <td width="16">
								<input type="checkbox" id="E1" name="sit" value="E1" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="E1">E1</label></td>
                                <td width="16">
							<input type="checkbox" id="E2" name="sit" value="E2" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="E2">E2</label></td>
                                <td width="16">
								<input type="checkbox" id="E3" name="sit" value="E3" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="E3">E3</label></td>
                                <td width="16">
								<input type="checkbox" id="E4" name="sit" value="E4" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="E4">E4</label></td>
                                <td width="16">
								<input type="checkbox" id="E5" name="sit" value="E5" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="E5">E5</label></td>
                            </tr>
                            <tr>
                                <td width="16">
								<input type="checkbox" id="F1" name="sit" value="F1" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="F1">F1</label></td>
                                <td width="16">
								<input type="checkbox" id="F2" name="sit" value="F2" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="F2">F2</label></td>
                                <td width="16">
								<input type="checkbox" id="F3" name="sit" value="F3" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="F3">F3</label></td>
                                <td width="16">
								<input type="checkbox" id="F4" name="sit" value="F4" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="F4">F4</label></td>
                                <td width="16">
								<input type="checkbox" id="F5" name="sit" value="F5" onClick="checkCheckbox(this.form,this,<%=people%>);ch1()" style="width:0;height:0;"><label for="F5">F5</label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
			<img src="img/checked.gif" onclick="submit()" align="right"/>
        </td>
    </tr>
</table>
</form>
</body>

</html>