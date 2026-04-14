<%@include file="c1.jsp" %>
<head>
    <style>
        body 
        {
          font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
          background-color: #f8f9fa;
        }
        .container1 
        {
            padding: 4rem 0;
        }
        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }
        .section-title h2 {
            font-size: 2.5rem;
            font-weight: 600;
            color: #333;
        }
        .section-title p {
            font-size: 1.2rem;
            color: #555;
        }
        .search-form {
            background-color: #fff;
            padding: 3rem;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .search-form input {
            width: 100%;
            padding: 1rem;
            border: 1px solid #ced4da;
            border-radius: 5px;
            margin-bottom: 1rem;
        }
        .search-form select {
            width: 100%;
            padding: 1rem;
            border: 1px solid #ced4da;
            border-radius: 5px;
            margin-bottom: 2rem;
        }
        .search-form button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 1rem 2rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .search-form button:hover {
            background-color: #0056b3;
        }
        .search-form .form-group {
            margin-bottom: 1.5rem;
        }
        @media (max-width: 768px) {
            .search-form {
                padding: 2rem;
            }
            .search-form input, .search-form select {
                font-size: 1rem;
            }
        }
    </style>

<!-- name of doctor-->
<script type="text/javascript">
function find_doctor(str)
{
	var xmlhttp;
	if (str.length==0)
  	{ 
  		document.getElementById("s1").innerHTML="";
  		return;
  	}
	if (window.XMLHttpRequest)
  	{// code for IE7+, Firefox, Chrome, Opera, Safari
  		xmlhttp=new XMLHttpRequest();
  	}
	else
  	{// code for IE6, IE5
  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  	}
	
	xmlhttp.onreadystatechange=function()
  	{
  		if (xmlhttp.readyState==4 && xmlhttp.status==200)
    		{
    				document.getElementById("s1").innerHTML=xmlhttp.responseText;
    		}
  	}
	xmlhttp.open("GET","search_doctor.jsp?q="+str,true);
        
	xmlhttp.send();
}
</script>

<!-- speciality-->
<script type="text/javascript">
function find_speciality(str)
{
	var xmlhttp;
	if (str.length==0)
  	{ 
  		document.getElementById("s2").innerHTML="";
  		return;
  	}
	if (window.XMLHttpRequest)
  	{// code for IE7+, Firefox, Chrome, Opera, Safari
  		xmlhttp=new XMLHttpRequest();
  	}
	else
  	{// code for IE6, IE5
  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  	}
	
	xmlhttp.onreadystatechange=function()
  	{
  		if (xmlhttp.readyState==4 && xmlhttp.status==200)
    		{
    				document.getElementById("s2").innerHTML=xmlhttp.responseText;
    		}
  	}
	xmlhttp.open("GET","search_speciality.jsp?q="+str,true);
        
	xmlhttp.send();
}
</script>


<!-- hospital_name-->
<script type="text/javascript">
function find_hospital(str)
{
	var xmlhttp;
	if (str.length==0)
  	{ 
  		document.getElementById("s4").innerHTML="";
  		return;
  	}
	if (window.XMLHttpRequest)
  	{// code for IE7+, Firefox, Chrome, Opera, Safari
  		xmlhttp=new XMLHttpRequest();
  	}
	else
  	{// code for IE6, IE5
  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  	}
	
	xmlhttp.onreadystatechange=function()
  	{
  		if (xmlhttp.readyState==4 && xmlhttp.status==200)
    		{
    				document.getElementById("s4").innerHTML=xmlhttp.responseText;
    		}
  	}
	xmlhttp.open("GET","search_hospital.jsp?q="+str,true);
        
	xmlhttp.send();
}
</script>

<!-- search medicine-->
<script type="text/javascript">
function find_medicine(str)
{
	var xmlhttp;
	if (str.length==0)
  	{ 
  		document.getElementById("s5").innerHTML="";
  		return;
  	}
	if (window.XMLHttpRequest)
  	{// code for IE7+, Firefox, Chrome, Opera, Safari
  		xmlhttp=new XMLHttpRequest();
  	}
	else
  	{// code for IE6, IE5
  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  	}
	
	xmlhttp.onreadystatechange=function()
  	{
  		if (xmlhttp.readyState==4 && xmlhttp.status==200)
    		{
    				document.getElementById("s5").innerHTML=xmlhttp.responseText;
    		}
  	}
	xmlhttp.open("GET","search_medicine.jsp?q="+str,true);
        
	xmlhttp.send();
}
</script>

<!-- medical shop-->
<script type="text/javascript">
function find_shop(str)
{
	var xmlhttp;
	if (str.length==0)
  	{ 
  		document.getElementById("s6").innerHTML="";
  		return;
  	}
	if (window.XMLHttpRequest)
  	{// code for IE7+, Firefox, Chrome, Opera, Safari
  		xmlhttp=new XMLHttpRequest();
  	}
	else
  	{// code for IE6, IE5
  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  	}
	
	xmlhttp.onreadystatechange=function()
  	{
  		if (xmlhttp.readyState==4 && xmlhttp.status==200)
    		{
    				document.getElementById("s6").innerHTML=xmlhttp.responseText;
    		}
  	}
	xmlhttp.open("GET","search_shop.jsp?q="+str,true);
        
	xmlhttp.send();
}
</script>
</head>

<div class="container1">
        <div class="row">
            <div class="col-md-12">
                <div class="section-title">
                    <h2>Find Your Doctor, Hospital, and Medicine</h2>
                    <p>Search for the best healthcare providers and services near you.</p>
                </div>
            </div>
        </div>
    
    
        <div class="row">
            <div class="col-md-4">
                <div class="search-form">
                    <h3>Find Your Doctor</h3>
                    <div class="form-group">
                        <input type="text" onkeypress="find_doctor(this.value)" class="form-control" placeholder="Doctor Name">
                         <span id="s1"></span>
                         
                    </div>
                  
                    <div class="form-group">
                        <p> <span id="s2"> </span></p>
                        <select class="form-control" onchange="find_speciality(this.value)">
                            
                            <option value="">Select Speciality</option>
                            <option value="Cardiologist">Cardiologist</option>
                            <option value="Dermatologist">Dermatologist</option>
                            <option value="Endocrinologist">Endocrinologist</option>
                            <option value="Gastroenterologist">Gastroenterologist</option>
                            <option value="Neurologist">Neurologist</option>
                            <option value="Ophthalmologist">Ophthalmologist</option>
                            <option value="Pediatrician">Pediatrician</option>
                        </select>
                    </div>
                    <button type="button" class="btn btn-primary">Search</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="search-form">
                    <h3>Find Hospital</h3>
                    <div class="form-group">
                        <input type="text" onkeyup="find_hospital(this.value)" class="form-control" placeholder="Hospital Name">
                    <span id="s4"></span>
                    </div>
                    <button type="button"  class="btn btn-primary">Search</button>
                    
                </div>
            </div>
            <div class="col-md-4">
                <div class="search-form">
                    <h3>Find Medicine</h3>
                    <div class="form-group">
                        <input type="text" onkeyup="find_medicine(this.value)" class="form-control" placeholder="Medicine Name">
                     <span id="s5"></span>
                    </div>
                    <button type="button" class="btn btn-primary">Search</button>
                </div>
            </div>
        </div>
    </div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<%@include file="c2.jsp" %>
