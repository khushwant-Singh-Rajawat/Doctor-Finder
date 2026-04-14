<%@include file="m1.jsp" %>
<div class="medicine" style="margin-left: 50px;">
    
    
    <h1>Medicine Registration</h1>
<form  method="post" action="MedReg1.jsp">
    <br>
<p>Medicine Name: <input type="text" name="T1" id="txt1"/><span id="sp1"></span></p>
<p>Generic Name: <input type="text" name="T2" id="txt2"/><span id="sp2"></span></p>
<p>Manufacturer: <input type="text" name="T3" id="txt3"/><span id="sp3"></span></p>
<p>Batch Number: <input type="text" name="T4" id="txt4"/><span id="sp4"></span></p>
<p>Expiration Date: <input type="date" name="T5" id="txt5"/><span id="sp5"></span></p>
<p>Price: <input type="number" name="T6" id="txt6" /><span id="sp6"></span></p>
<p>Quantity: <input type="number" name="T7" id="txt7" /><span id="sp7"></span></p>
<p>Unit: <input type="text" name="T8" id="txt8" /><span id="sp8"></span></p>
<p>Category: <input type="text" name="T9" id="txt9" /><span id="sp9"></span></p>
<p>Description: <input type="text" name="T10" id="txt10" /><span id="sp10"></span></p>
<p>Email Of Shop: <input type="text" name="T11" id="txt11" /><span id="sp11"></span></p>

<p><button type="submit" id="btnl">Register</button></p>
</form>

</div>

<%@include file="m2.jsp" %>