
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  order.jsp �� directOrder.jsp ������ ���Ǵ� �ڹٽ�ũ��Ʈ �ڵ��� ���ۺ�
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function check_val()             // �ֹ����� ���Է��׸� �κ��� üũ�ϴ� �ڹٽ�ũ��Ʈ �Լ�
{
	if (document.form.memTel.value == "") 
	{
		alert("�ֹ��� ��ȭ��ȣ�� �ݵ�� ������ �ؾ� �մϴ�. ");
		document.form.memTel.focus();
		return false;			
	}			

	if (document.form.receiver.value == "") 
	{
		alert("������ ������ �ݵ�� ������ �ؾ� �մϴ�. ");
		document.form.receiver.focus();
		return false;			
	}

	if (document.form.rcvAddress.value == "") 
	{
		alert("������ �ּҴ� �ݵ�� ������ �ؾ� �մϴ�. ");
		document.form.rcvAddress.focus();
		return false;			
	}

	if (document.form.rcvPhone.value == "") 
	{
		alert("������ ��ȭ��ȣ�� �ݵ�� ������ �ؾ� �մϴ�. ");
		document.form.rcvPhone.focus();
		return false;			
	}
 
	if (document.form.cardNo.value == "" && document.form.bank.value == 0 ) 
	{
		alert("������� �� �ϳ��� �����ؾ� �մϴ�. ");
		document.form.cardNo.focus();
		return false;			
	}

    	if (document.form.cardNo.value != "" && document.form.bank.value != 0 ) 
	{
		alert("������� �� �ϳ��� �����ؾ� �մϴ�. ");
		document.form.cardNo.focus();
		return false;			
	}

	if (document.form.cardNo.value != "" && document.form.cardPass.value == "" ) 
	{
		alert("ī�� ��й�ȣ�� �ݵ�� ������ �ؾ� �մϴ�. ");
		document.form.cardNo.focus();
		return false;			
	}

   	document.form.submit();
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  order.jsp �� directOrder.jsp ������ ���Ǵ� �ڹٽ�ũ��Ʈ �ڵ��� ��
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  insertMember.jsp ������ ���Ǵ� �ڹٽ�ũ��Ʈ �ڵ��� ���ۺ�
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function checkID()		// ID�� �Է¹��� �Ŀ� �˾�â�� ����ָ鼭 
{  										//   checkId.jsp (�ߺ��˻� ����)�� ȣ���� �ִ� �ڹٽ�ũ��Ʈ �Լ�
	var id = newMem.id.value;		//  form�� �̸��� newMem�� �Ϳ� �ָ��� ��!

    if (id  == "")				//   11~16��:  ID�� �Է¾��� ID �ߺ�üũ ��ư�� Ŭ���� ����� ó��
    {
		alert("ID�� �Է��� �ּ���!"); 
		newMem.id.focus(); 
		return; 
    }

	window.open("checkId.jsp?id="+id,"win", "width=255, height=145, scrollbars=no, resizable=no");
}                                        // ���)  =>  window.open("URL", "â�̸�", "â�� Ư��");





function checkValue()             // ȸ������������ ���Է��� �׸��� ���� ���, ���޽����� �����ִ� �Լ�
{
	if(document.newMem.agree.checked == "") 
    {
		alert("������ �� �������ּ���.");
		document.newMem.agree.focus();
		return;
    }
	if(newMem.id.value == "")     // if(document.newMem.id.value == "")��� ����ص� ������
    {
		alert("ID�� �Է��� �ּ���!");  //  ���ڿ��� ���Ե� ���â�� �����Ŵ
		newMem.id.focus();					//  �۾��� ��Ŀ��(Ŀ��)�� ID�� �Է��ϴ� �ؽ�Ʈ�ʵ�� �̵���Ŵ  
		return;                         //  �Լ��� ������ ������ ( "return false; " ��� ����ص� ������)
    }

    if(newMem.password1.value == "") 
    {
		alert("��й�ȣ�� �Է��� �ּ���!");
		newMem.password1.focus();
		return;
    }
	if(newMem.password2.value == "") 
    {
		alert("Ȯ�κ�й�ȣ�� �Է��� �ּ���!");
		newMem.password2.focus();
		return;
    }
	if(newMem.password1.value !=newMem.password2.value){
	alert("��й�ȣ�� �ٸ��ϴ�.");  //  ���ڿ��� ���Ե� ���â�� �����Ŵ
		newMem.password2.focus();					//  �۾��� ��Ŀ��(Ŀ��)�� ID�� �Է��ϴ� �ؽ�Ʈ�ʵ�� �̵���Ŵ  
		return;                         //  �Լ��� ������ ������ ( "return false; " ��� ����ص� ������)
	}

    if(newMem.name.value == "") 
    {
		alert("�̸��� �Է��� �ּ���!");
		newMem.name.focus();
		return;
    }

    if(newMem.joomin1.value == "") 
    {
		alert("�ֹε�Ϲ�ȣ ���ڸ��� �Է��� �ּ���!");
		newMem.joomin1.focus();
		return;
    }

    if(newMem.joomin2.value == "") 
    {
		alert("�ֹε�Ϲ�ȣ ���ڸ��� �Է��� �ּ���!");
		newMem.joomin2.focus();
		return;
    }

	    if(newMem.hp2.value == "") 
    {
		alert("�޴��� �߰��ڸ� ��ȣ�� �Է��� �ּ���!");
		newMem.hp2.focus();
		return;
    }

    if(newMem.hp3.value == "") 
    {
		alert("�޴��� ���ڸ� ��ȣ�� �Է��� �ּ���!");
		newMem.hp3.focus();
		return;
    }

    if(newMem.zipcode.value == "") 
    {
		alert("�����ȣ�� �Է��� �ּ���!");
		newMem.address1.focus();
		return;
    }
	if(newMem.address2.value == "") 
    {
		alert("�ּҸ� �Է��� �ּ���!");
		newMem.address2.focus();
		return;
    }
	 if(newMem.address2.value == "") 
    {
		alert("���ּҸ� �Է��� �ּ���!");
		newMem.address2.focus();
		return;
    }

	if(newMem.email1.value == "") 
    {
		alert("�̸����� �Է��� �ּ���!");
		newMem.email1.focus();
		return;
    }
	
	if(document.newMem.mailing.checked == "") 
		{
			document.newMem.mailing.value = "no";
		}

    document.newMem.submit();   // �Է��� ������ ��� ������ ������ (���۹�ư Ŭ���ϴ� �Ͱ� ���� ȿ��)
}


function upcheckValue()             // ȸ������������ ���Է��� �׸��� ���� ���, ���޽����� �����ִ� �Լ�
{
	if(upMem.id.value == "")
    {
		alert("ID�� �Է��� �ּ���!");
		upMem.id.focus();	
		return; 
    }

    if(upMem.password.value == "") 
    {
		alert("��й�ȣ�� �Է��� �ּ���!");
		upMem.password.focus();
		return;
    }

    if(upMem.name.value == "") 
    {
		alert("�̸��� �Է��� �ּ���!");
		upMem.name.focus();
		return;
    }

    if(upMem.joomin1.value == "") 
    {
		alert("�ֹε�Ϲ�ȣ ���ڸ��� �Է��� �ּ���!");
		upMem.joomin1.focus();
		return;
    }

    if(upMem.joomin2.value == "") 
    {
		alert("�ֹε�Ϲ�ȣ ���ڸ��� �Է��� �ּ���!");
		upMem.joomin2.focus();
		return;
    }

	    if(upMem.hp2.value == "") 
    {
		alert("�޴��� �߰��ڸ� ��ȣ�� �Է��� �ּ���!");
		upMem.hp2.focus();
		return;
    }

    if(upMem.hp3.value == "") 
    {
		alert("�޴��� ���ڸ� ��ȣ�� �Է��� �ּ���!");
		upMem.hp3.focus();
		return;
    }

    if(upMem.zipcode.value == "") 
    {
		alert("�����ȣ�� �Է��� �ּ���!");
		upMem.address1.focus();
		return;
    }
	if(upMem.address2.value == "") 
    {
		alert("�ּҸ� �Է��� �ּ���!");
		upMem.address2.focus();
		return;
    }
	 if(upMem.address2.value == "") 
    {
		alert("���ּҸ� �Է��� �ּ���!");
		upMem.address2.focus();
		return;
    }

	if(upMem.email1.value == "") 
    {
		alert("�̸����� �Է��� �ּ���!");
		upMem.email1.focus();
		return;
    }
	
	if(document.upMem.mailing.checked == "") 
		{
			document.upMem.mailing.value = "no";
		}

    document.upMem.submit();
}

function allupcheckValue()             // ȸ������������ ���Է��� �׸��� ���� ���, ���޽����� �����ִ� �Լ�
{
	if(allupMem.id.value == "")
    {
		alert("ID�� �Է��� �ּ���!");
		allupMem.id.focus();	
		return; 
    }

    if(allupMem.password.value == "") 
    {
		alert("��й�ȣ�� �Է��� �ּ���!");
		allupMem.password.focus();
		return;
    }

    if(allupMem.name.value == "") 
    {
		alert("�̸��� �Է��� �ּ���!");
		allupMem.name.focus();
		return;
    }

    if(allupMem.joomin1.value == "") 
    {
		alert("�ֹε�Ϲ�ȣ ���ڸ��� �Է��� �ּ���!");
		allupMem.joomin1.focus();
		return;
    }

    if(allupMem.joomin2.value == "") 
    {
		alert("�ֹε�Ϲ�ȣ ���ڸ��� �Է��� �ּ���!");
		allupMem.joomin2.focus();
		return;
    }

	    if(allupMem.hp2.value == "") 
    {
		alert("�޴��� �߰��ڸ� ��ȣ�� �Է��� �ּ���!");
		allupMem.hp2.focus();
		return;
    }

    if(allupMem.hp3.value == "") 
    {
		alert("�޴��� ���ڸ� ��ȣ�� �Է��� �ּ���!");
		allupMem.hp3.focus();
		return;
    }

    if(allupMem.zipcode.value == "") 
    {
		alert("�����ȣ�� �Է��� �ּ���!");
		allupMem.address1.focus();
		return;
    }
	if(allupMem.address2.value == "") 
    {
		alert("�ּҸ� �Է��� �ּ���!");
		allupMem.address2.focus();
		return;
    }
	 if(allupMem.address2.value == "") 
    {
		alert("���ּҸ� �Է��� �ּ���!");
		allupMem.address2.focus();
		return;
    }

	if(allupMem.email1.value == "") 
    {
		alert("�̸����� �Է��� �ּ���!");
		allupMem.email1.focus();
		return;
    }	

    document.allupMem.submit();
}





function idFocus()        // ���� �ε��Ǹ�  ID�� �Է��ϴ� ��ġ�� �ٷ� Ŀ���� ��ġ���ѳ���
{										// �ڹٽ�ũ��Ʈ �Լ�  (body �±׾��� onLoad �̺�Ʈ �ڵ鷯�� �ָ��� ��!)
	newMem.id.focus();
	return;
}

function reset()
{
	newMem.id.focus();
}

function upreset()
{
	upMem.id.focus();
}

function zipCheck()
{
	window.open("zipCheck.jsp", "win", "width=600, height=200, scrollbars=yes, status=yes");
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  insertMember.jsp ������ ���Ǵ� �ڹٽ�ũ��Ʈ �ڵ��� ��
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  login.jsp �� manager.html ������ ���Ǵ� �ڹٽ�ũ��Ʈ �ڵ��� ���ۺ�
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function login_check()      // �α��ν� ���Է��׸� �κ��� üũ���ִ� �ڹٽ�ũ��Ʈ �Լ�
{
	if(document.login.id.value=="")
	{
    	alert("���̵� �Է��� �ּ���.");
    	document.login.id.focus();
    	return;	
    }

    if(document.login.pass.value=="")
	{
    	alert("��й�ȣ�� �Է��� �ּ���.");
    	document.login.pass.focus();			
    	return;
    }
		
    document.login.submit();
}



function onEnterSubmit()     // �α��ι�ư�� Ŭ������ �ʰ�, ����Ű�� �Է��ϴ��� �α��� �����ϰ� ����               
{
  	var keyCode = window.event.keyCode;
   	if(keyCode==13)  login.submit();    //  "keyCode==13"�� ����Ű�� �Էµ��� �ǹ���
}
	

function login_focus()     // ���� �ε��Ǹ�  ID�� �Է��ϴ� ��ġ�� �ٷ� Ŀ���� ��ġ���ѳ���
{											// �ڹٽ�ũ��Ʈ �Լ�  (body �±׾��� onLoad �̺�Ʈ �ڵ鷯�� �ָ��� ��!)
   	document.login.id.focus();
   	return;
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  login.jsp �� manager.html ������ ���Ǵ� �ڹٽ�ũ��Ʈ �ڵ��� ��
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////







/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  viewDetailProduct.jsp ������ ���Ǵ� �ڹٽ�ũ��Ʈ �ڵ��� ���ۺ�
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function directOrd()        //  "��ñ����ϱ�" ��ư�� Ŭ���� ȣ��
{
	var str=product.qty.value;
	var frm = document.product;
	frm.action = "directOrder.jsp";
	frm.submit();
}


function inCart()              //  "��ٱ��ϴ��" ��ư�� Ŭ���� ȣ��
{
	var str=product.qty.value;
	var frm = document.product;
	frm.action = "inCart.jsp";
	frm.submit();
}


function enlarge()           //  ��ǰ�̹��� Ŭ���� �˾�â�� ����ָ鼭 �̹��� ǥ��
{
	var no = document.product.prdNo.value;
	window.open("./images/"+no+".jpg","win", "width=280, height=280, scrollbars=no, resizable=no");
}



function amountCheck()     //   �ֹ������� ��ȿ�� ���� ������ ó���� ��
{
	obj=document.product.qty;
	if(isNaN(obj.value))          //    isNaN(a)�Լ��� a�� ���ڰ� �ƴ� ���, true�� return����
	{
		obj.value="1";
		alert('���ڸ� �Է����ּ���');
		return;
	}

   if(obj.value < 1)
	{
		obj.value="1";
	}
}


function amountPlus()         //   �ֹ������� 1 ���� ��Ŵ
{
	obj=document.product.qty;
	obj.value=parseInt(obj.value) + 1;
}


function amountMinus()        //   �ֹ������� 1 ���� ��Ŵ
{
	obj=document.product.qty;
	if(parseInt(obj.value)  > 1)
	{
		obj.value=parseInt(obj.value) - 1;
	}
	else
	{
		alert('���̻� ���ϼ��� �����ϴ�');
		return;
	}
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  viewDetailProduct.jsp ������ ���Ǵ� �ڹٽ�ũ��Ʈ �ڵ��� ��
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function searchId() 
{
	if(document.search.name.value=="")
	{
    	alert("�̸��� �Է��� �ּ���.");
    	document.search.name.focus();
    	return;	
    }
	if(document.search.joomin1.value=="")
	{
    	alert("�ֹι�ȣ ���ڸ��� �Է��� �ּ���.");
    	document.search.joomin1.focus();
    	return;	
    }
	if(document.search.joomin2.value=="")
	{
    	alert("�ֹι�ȣ ���ڸ��� �Է��� �ּ���.");
    	document.search.joomin2.focus();
    	return;	
    }

	var str1=search.name.value;
	var str2=search.joomin1.value;
	var str3=search.joomin2.value;
	var frm = document.search;
	frm.action = "searchMemberResult1.jsp";
	frm.submit();
}
function searchPassword() 
{
	if(document.search.id.value=="")
	{
    	alert("���̵� �Է��� �ּ���.");
    	document.search.id.focus();
    	return;	
    }
	if(document.search.name2.value=="")
	{
    	alert("�̸��� �Է��� �ּ���.");
    	document.search.name2.focus();
    	return;	
    }
	if(document.search.joomin3.value=="")
	{
    	alert("�ֹι�ȣ ���ڸ��� �Է��� �ּ���.");
    	document.search.joomin3.focus();
    	return;	
    }
	if(document.search.joomin4.value=="")
	{
    	alert("�ֹι�ȣ ���ڸ��� �Է��� �ּ���.");
    	document.search.joomin4.focus();
    	return;	
    }

	var str1=search.id.value;
	var str2=search.name2.value;
	var str3=search.joomin3.value;
	var str4=search.joomin4.value;
	var frm = document.search;
	frm.action = "searchMemberResult2.jsp";
	frm.submit();
}
function eventWrite() 
{
	 if(document.event.no.value=="") 
    {
		alert("�۹�ȣ�� �Է��� �ּ���!");
		document.event.no.focus();
		return;
    }
    document.event.submit();
}

function eventup() 
{
    document.eventup.submit();
}