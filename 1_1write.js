
function check_val()  
{
	if (document.form.ok.value == "" && document.form.ok.value == "0")
	{
		alert("�������� ������ ���� ���Ǹ� ���ּž� �մϴ�.");
		document.form.ok.focus();
		return false;			
	}	
	
	if (document.form.ctg.value == "") 
	{
		alert("� ���ǻ������� ������ �ؾ� �մϴ�. ");
		document.form.ctg.focus();
		return false;			
	}
	if (document.form.movie.value == "") 
	{
		alert("��� ������ �ް��ڽ����� ������ �ؾ� �մϴ�. ");
		document.form.movie.focus();
		return false;			
	}
	if (document.form.tel1.value == ""&& document.form.tel2.value == "" && document.form.tel3.value == "" || document.form.email.value == "") 
	{
		alert("����ó�� �̸��� �� �ϳ��� �Է��ϼž� �մϴ�.");
		return false;			
	}
	
if (document.form.title.value == "") 
	{
		alert("������ ���� �ؾ� �մϴ�. ");
		document.form.title.focus();
		return false;			
	}
	if (document.form.content.value == "") 
	{
		alert("������ ���� �ؾ� �մϴ�. ");
		document.form.content.focus();
		return false;			
	}
			document.form.submit();
}