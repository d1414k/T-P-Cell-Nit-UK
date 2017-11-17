<%-- 
    Document   : passconfirm
    Created on : 7 Oct, 2017, 1:00:29 AM
    Author     : deepak
--%>
<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
String pass1 = request.getParameter("pass1");
String pass2 = request.getParameter("pass2");
String roll = request.getParameter("roll");
byte[]   bytesEncoded = Base64.encodeBase64(roll.getBytes());//encoding part
String encoded_pass = new String(bytesEncoded);
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tp","root","");
    String str = "insert into buser values(?,?)";
    PreparedStatement stmt = con.prepareStatement(str);
    stmt.setString(1,roll);
    stmt.setString(2, encoded_pass);
    int m = stmt.executeUpdate();
    if(m > 0)
    {%>
        <script>
        alert("Password is created Successfully..");
        document.location = "index.jsp";
        </script>
    <%}
    else
    {%>
    <script>
        alert("Already Registered..");
        document.location = "index.jsp";
    </script>
    <%}
    con.close();
    
    }
    catch(Exception e)
    {
    //out.println("problem : "+e);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Password</title>
    </head>
    <body>
        ${roll}
    </body>
</html>
