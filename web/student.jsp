<%-- 
    Document   : student
    Created on : 7 Oct, 2017, 12:58:07 PM
    Author     : deepa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(session.getAttribute("roll")==null)
{
    response.sendRedirect("index.jsp");
}
else
{
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student DashBoard</title>
    </head>
    <body>
        <h1>Student: <%=session.getAttribute("roll")%></h1>
        <form action="Logout" method="post">
            <input type="submit" value="Log Out">    
        </form>
    </body>
</html>
<%
    }
%>
