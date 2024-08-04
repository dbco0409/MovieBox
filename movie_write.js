function check_val()  
{
	if (document.form.title.value == "") 
	{
		alert("영화제목을 기입 해야 합니다.");
		document.form.title.focus();
		return false;			
	}

	if (document.form.date.value == "") 
	{
		alert("개봉일을 기입 해야 합니다. ");
		document.form.date.focus();
		return false;			
	}
  if (document.form.level.value == "") 
	{
		alert("영화등급을 기입 해야 합니다. ");
		document.form.level.focus();
		return false;			
	}
	 if (document.form.director.value == "") 
	{
		alert("영화감독을 기입 해야 합니다. ");
		document.form.director.focus();
		return false;			
	}
	if (document.form.actor.value == "") 
	{
		alert("출연진을 기입 해야 합니다. ");
		document.form.actor.focus();
		return false;			
	}


			document.form.submit();
}

function check2()  
{
	if (document.form2.name.value == "") 
	{
		alert("이름을 기입 해야 합니다.");
		document.form2.name.focus();
		return false;			
	}

	if (document.form2.pwd.value == "") 
	{
		alert("패스워드를 기입 해야 합니다. ");
		document.form2.pwd.focus();
		return false;			
	}
  if (document.form2.title.value == "") 
	{
		alert("제목을 기입 해야 합니다. ");
		document.form.level.focus();
		return false;			
	}
	
			document.form2.submit();
}