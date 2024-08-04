
function check_val()  
{
	if (document.form.ok.value == "" && document.form.ok.value == "0")
	{
		alert("개인정보 수집에 대한 동의를 해주셔야 합니다.");
		document.form.ok.focus();
		return false;			
	}	
	
	if (document.form.ctg.value == "") 
	{
		alert("어떤 문의사항인지 기입을 해야 합니다. ");
		document.form.ctg.focus();
		return false;			
	}
	if (document.form.movie.value == "") 
	{
		alert("어느 지역의 메가박스인지 기입을 해야 합니다. ");
		document.form.movie.focus();
		return false;			
	}
	if (document.form.tel1.value == ""&& document.form.tel2.value == "" && document.form.tel3.value == "" || document.form.email.value == "") 
	{
		alert("연락처와 이메일 중 하나는 입력하셔야 합니다.");
		return false;			
	}
	
if (document.form.title.value == "") 
	{
		alert("제목을 기입 해야 합니다. ");
		document.form.title.focus();
		return false;			
	}
	if (document.form.content.value == "") 
	{
		alert("내용을 기입 해야 합니다. ");
		document.form.content.focus();
		return false;			
	}
			document.form.submit();
}