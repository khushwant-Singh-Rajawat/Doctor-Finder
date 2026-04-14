<body>
<h1>User registration</h1>
<form onSubmit="return A()" method="post" action="HospitalReg1.jsp">
    <p>Name<input type="text" name="T1" id="txt1"/><span id="sp1"></span></p>
    <p>License Number<input type="text" name="T2" id="txt2"/><span id="sp2"></span></p>
<p>Address<input type="text" name="T3" id="txt3"/><span id="sp3"></span></p>
<p>Contact<input type="text" name="T4" id="txt4"/><span id="sp4"></span></p>
<p>Emergency<input type="radio" name="T5" value="yes"/>yes
    <input type="radio" name="T5" value="no"/>No</p>

<p>General Beds<input type="text" name="T6" id="txt1"/></p>
<p>Ac Beds<input type="text" name="T7" /></p>
<p>Email<input type="text" name="T8" id="txt8" placeholder="Enter email"/><span id="sp8"></span></p>
<p>Password<input type="password" name="T9" id="txt9"/><span id="sp9"></span></p>
<p>Confirm Password<input name="T10" type="password" id="txt10"/><span id="sp10"></span></p>
<p><button type="submit" name="B1" id="btnl">Register</button></p>
</form>

<script>
	function A()
	{
		// mapping input
		var t1,t2,t3,t4,t5,t6;
		t1=document.getElementById("txt1");
		t2=document.getElementById("txt2");
		t3=document.getElementById("txt3");
		t4=document.getElementById("txt4");
		t5=document.getElementById("txt5");
		t6=document.getElementById("txt6");
		
		//grab value of text
		var a,b,c,d,e,f;
		a=t1.value;
		b=t2.value;
		c=t3.value;
		d=t4.value;
		e=t5.value;
		f=t6.value;
		
		//mapping span
		var er1,er2,er3,er4,er5,er6;
		er1=document.getElementById("sp1");
		er2=document.getElementById("sp2");
		er3=document.getElementById("sp3");
		er4=document.getElementById("sp4");
		er5=document.getElementById("sp5");
		er6=document.getElementById("sp6");
		
		//show result
		er1.innerHTML=" ";
		er2.innerHTML=" ";
		er3.innerHTML=" ";
		er4.innerHTML=" ";
		er5.innerHTML=" ";
		er6.innerHTML=" ";
		
		if(a==null||a=="")
		{
			er1.innerHTML="Enter name";
			t1.focus();
			return false;
		}
		else if(name(a)==false)
		{
			er1.innerHTML="use only alphabet";
			t1.select();
			return false;
		}
		else if(b==null||b=="")
		{
			er2.innerHTML="Enter Address";
			t2.select();
			return false;
		}
		else if(c==null||c=="")
		{
			er3.innerHTML="Enter Contact";
			t3.select();
			return false;
		}
		else if(con1(c)==false)
		{
			er3.innerHTML="Enter only digit";
			t3.focus();
			return false;
		}
		else if(d==null||d=="")
		{
			er4.innerHTML="Enter Email";
			t4.select();
			return false;
		}
		else if(e==null||e=="")
		{
			er5.innerHTML="Enter Password";
			t5.select();
			return false;
		}
		else if(f==null||f=="")
		{
			er6.innerHTML="Enter Confirm Password";
			t6.select();
			return false;
		}
		else if(pass(e,f)==false)
		{
			er6.innerHTML="Password doesn't match";
			t5.value="";
			t6.value="";
			t5.focus();
			return false;
		}
	}
	function name(str)
	{
		var f=true;
		for(var i=0;i<str.length;i++)
		{
			// fetch char from string
			var ch=str.charAt(i);
			if(ch>='A'&&ch<='Z'||ch>='a'&&ch<='z')
			{
				f=true;
			}
			else
			{
				f=false;
				break;
			}
		}
		return f;
	}
	
	function con1(str)
	{
		var f=true;
		for(var i=0;i<str.length;i++)
		{
			//fetch char from string
			var ch=str.charAt(i);
			if(ch>='0'&& ch<='9'|| ch=='')
			{
				f=true;
			}
			else
			{
				f=false;
				break;
			}
		}
		return f;	
	}
	
	function con2(v,mn,mx)
	{
		if(v<mx||v>mn)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	function pass(p1,p2)
	{
		if(p1==p2)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
  </script>
</body>