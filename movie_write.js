function check_val()  
{
	if (document.form.title.value == "") 
	{
		alert("��ȭ������ ���� �ؾ� �մϴ�.");
		document.form.title.focus();
		return false;			
	}

	if (document.form.date.value == "") 
	{
		alert("�������� ���� �ؾ� �մϴ�. ");
		document.form.date.focus();
		return false;			
	}
  if (document.form.level.value == "") 
	{
		alert("��ȭ����� ���� �ؾ� �մϴ�. ");
		document.form.level.focus();
		return false;			
	}
	 if (document.form.director.value == "") 
	{
		alert("��ȭ������ ���� �ؾ� �մϴ�. ");
		document.form.director.focus();
		return false;			
	}
	if (document.form.actor.value == "") 
	{
		alert("�⿬���� ���� �ؾ� �մϴ�. ");
		document.form.actor.focus();
		return false;			
	}


			document.form.submit();
}

function check2()  
{
	if (document.form2.name.value == "") 
	{
		alert("�̸��� ���� �ؾ� �մϴ�.");
		document.form2.name.focus();
		return false;			
	}

	if (document.form2.pwd.value == "") 
	{
		alert("�н����带 ���� �ؾ� �մϴ�. ");
		document.form2.pwd.focus();
		return false;			
	}
  if (document.form2.title.value == "") 
	{
		alert("������ ���� �ؾ� �մϴ�. ");
		document.form.level.focus();
		return false;			
	}
	
			document.form2.submit();
}