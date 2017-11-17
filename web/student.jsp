<%@include file="header_student.jsp" %>
<%@page import="java.sql.*"%>
<%
    String roll = session.getAttribute("roll").toString();
    String fname = "abc";
    String lname = "deg";
    try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tp","root","");
            String str = "select * from bgeneral where roll = ?"; 
            PreparedStatement stmt = con.prepareStatement(str);
            stmt.setString(1,roll);
            ResultSet rs = stmt.executeQuery();
            if(rs.next())
            {
                out.println(rs.getString(2));
                fname = rs.getString(2);
                lname = rs.getString(3);
            }
           
        }
        catch(Exception e)
        {
            out.println(e);
        }
%>
<div class="row">
    <div class="col-12">
        <div class="jumbotron">
            <h1 style="margin: 0rem;">DEEPAK</h1><%=fname%><%out.println(lname);%>
            <p style="margin: 0rem;">B.Tech Computer Science & Engineering</p>
            <p style="margin: 0rem;">Email: guptaprakhar272@gmail.com</p>
            <p style="margin: 0rem;">Phone no: 941059279</p>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-6">
        <div class="box-content">
            <h3>Educational</h3>
        </div>
    </div>
    <div class="col-6">
        <div style="border: 1px #000 solid; border-radius: 0.5rem; padding: 1rem;">
            <h3>Training and Internships</h3>
        </div>
    </div>
</div>
<%@include file="footer_student.jsp"%>