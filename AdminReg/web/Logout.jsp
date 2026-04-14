<%
    //check session
    session=request.getSession(false); //open only existing session
    if(session==null)
    {
        response.sendRedirect("index.jsp");
    }
    else
    {
        try
        {
            //remove the session
            session.removeAttribute("email");
            session.removeAttribute("usertype");
            session.invalidate();
            response.sendRedirect("index.jsp");
        }
        catch(NullPointerException e)
        {
            response.sendRedirect("index.jsp");
        }
    }
%>