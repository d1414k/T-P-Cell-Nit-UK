<%-- 
    Document   : getData.jsp
    Created on : 27 Nov, 2017, 6:31:16 PM
    Author     : deepa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String data="";
       String roll = request.getParameter("roll");
       //String fname="ram";
       try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tp","root","");
                Statement stmt = con.createStatement();
                String str = "select bschool.percent10,bschool.percent12,bgraduate.total "
                        + "from bschool,bgraduate where bschool.roll=bgraduate.roll and bschool.roll='"+roll+"'"; 
                ResultSet rs = stmt.executeQuery(str);
                if(rs.next())
                {
                   data = rs.getDouble(1)+":"+rs.getDouble(2)+":"+rs.getDouble(3);
                   out.println(data); 
                }
            }
            catch(Exception e)
            {
               out.println(e);
            }
       %>
    </body>
</html>