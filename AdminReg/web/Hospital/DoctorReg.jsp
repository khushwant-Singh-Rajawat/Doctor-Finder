<%@include file="h1.jsp" %>
<body bgcolor="lightYellow">
    <h3 style="alignment-adjust: central; background-color: bisque; box-shadow: black" >Doctor Registration</h3>
    <form onSubmit="return A()" method="post" action="DoctorReg1.jsp" style="font-family: sans-serif;  size: 22px; border:solid 1px black; width: 500px; padding-left: 20px"   >
        <p >
            Name: <input type="text" name="T1" id="txt1">
        <span id="s1"></span>
        </p>
        
        <p>
            Contact: <input type="text" name="T2" id="txt2">
        <span id="s2"></span>
        </p>
        
        <p>
            Address: <input type="text" name="T3" id="txt3">
        <span id="s3"></span>
        </p>
        
        <p>
            Email: <input type="text" name="T6" id="txt6">
        <span id="s6"></span>
        </p>
        
        <p>
            Qualification: <input type="text" name="T5" id="txt5">
        <span id="s5"></span>
        </p>
        
        <p>
            Specialisation: <input type="text" name="T4" id="txt4">
        <span id="s4"></span>
        </p>
        
        <p>
            Password: <input type="text" name="T7" id="txt7">
        <span id="s7"></span>
        </p>
        
        <p>
            Confirm Password: <input type="text" name="T8" id="txt8">
        <span id="s8"></span>
        </p>
        <p>
        Available time: <input type="text" name="T9" id="txt9">
        <span id="s9"></span>
        </p>
        <p>Select Week</p>
        <input type="checkbox" name="T10" value="yes">Monday
        <input type="checkbox" name="T11" value="yes">tuesday
        <input type="checkbox" name="T12" value="yes">wednesday
        <input type="checkbox" name="T13" value="yes">thrusday
        <input type="checkbox" name="T14" value="yes">friday
        <input type="checkbox" name="T15" value="yes">Saturday
        <input type="checkbox" name="T16" value="yes">Sunday
        <br><br>
        <input type="submit" name="B1" id="btn1" style="font-size: larger;padding: 5px; margin-bottom: 20px;" value="Submit"/>
    </form>
    
</body>
<%@include file="h2.jsp" %>