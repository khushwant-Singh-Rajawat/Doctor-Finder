<%@include file="a1.jsp" %>
<h1 class="a1">Hospital registeration</h1>
<form onSubmit="return A()" method="post" action="HospitalReg1.jsp">
    <p>Name<input type="text" name="T1" id="txt1"/>
        <span id="sp1"></span>
    </p>
    <p>License Number<input type="text" name="T2" id="txt2"/>
        <span id="sp2"></span>
    </p>
<p>Address<input type="text" name="T3" id="txt3"/>
    <span id="sp3"></span>
</p>
<p>Contact<input type="text" name="T4" id="txt4"/>
    <span id="sp4"></span>
</p>
<p>Emergency<input type="radio" name="T5" value="yes"/>yes
    <input type="radio" name="T5" value="no"/>No
</p>

<p>
    General Beds<input type="text" name="T6"/>
</p>
<p>
    Ac Beds<input type="text" name="T7"/>
</p>
<p>
    Email<input type="text" name="T8" id="txt5" placeholder="Enter email"/>
    <span id="sp5"></span>
</p>
<p>
    Password<input type="password" name="T9" id="txt9"/>
    <span id="sp9"></span>
</p>
<p>
    Confirm Password<input name="T10" type="password" id="txt10"/>
    <span id="sp10"></span>
</p>
<p>
    <input type="submit" name="B1" id="btnl">
</p>
</form>
<%@include file="a2.jsp" %>