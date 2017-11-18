<%@include file="header_student.jsp" %>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    String roll = session.getAttribute("roll").toString();
    String fname = "DEEPAK KUMAR";
    String lname = "VISHWAKARMA";
    String email = "deep@gmail.com";
    String mob1 = "7533978164";
    String mob2 = "7533978164";
    String board10="CBSE",board12="CBSE",pass_year10="2012",pass_year12="2014";
    double percent10=80,percent12=85,cgpa=8;
    String company="",start="",end="";
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
                fname = rs.getString(2);
                lname = rs.getString(3);
                email = rs.getString(12);
                mob1 = rs.getString(13);
                mob2 = rs.getString(14);
            }
            String str1 = "select * from bschool where roll = ?"; 
            PreparedStatement stmt1 = con.prepareStatement(str1);
            stmt1.setString(1,roll);
            ResultSet rs1 = stmt1.executeQuery();
            if(rs1.next())
            {
                board10 = rs1.getString(2).toUpperCase();
                board12 = rs1.getString(3).toUpperCase();
                pass_year10 = rs1.getString(4).toUpperCase(); 
                pass_year12 = rs1.getString(5).toUpperCase();
                percent10 = rs1.getDouble(10);
                percent12 = rs1.getDouble(11);
            }
            String str2 = "select * from bgraduate where roll = ?"; 
            PreparedStatement stmt2 = con.prepareStatement(str2);
            stmt2.setString(1,roll);
            ResultSet rs2 = stmt2.executeQuery();
            if(rs2.next())
            {
                cgpa = rs2.getDouble(21);
            }
            String str3 = "select * from btraining where roll = ?"; 
            PreparedStatement stmt3 = con.prepareStatement(str3);
            stmt3.setString(1,roll);
            ResultSet rs3 = stmt3.executeQuery();
            if(rs3.next())
            {
               company = rs3.getString(2);
               start = rs3.getString(3);
               end = rs3.getString(4);
            }
           con.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
    String degree = roll.substring(0,2);
    if(degree.equals("BT"))
    degree = "B.Tech";
    else if(degree.equals("MT"))
    degree = "M.Tech";
    else
    degree = "Ph.D";
%>
<div class="row">
    <div class="col-12">
        <div class="jumbotron">
            <h1 style="margin: 0rem;"><%=fname%> <%=lname%></h1>
            <p style="margin: 0rem;"><%=degree%> Computer Science & Engineering</p>
            <p style="margin: 0rem;">Email : <%=email%></p>
            <p style="margin: 0rem;">Phone no: <%=mob1%> , <%=mob2%></p>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-6">
        <div class="box-content jumbotron">
            <h3>Educational</h3>
            <div class="row">
                <div class="col-3"><h6>Secondary</h6></div>
                <div class="col-3">
                    <%=board10%>
                </div>
                <div class="col-3">
                    <%=pass_year10%>
                </div>
                <div class="col-3">
                    <%=percent10%>
                </div>
                <div class="col-1"></div>
            </div>
            <div class="row">
                <div class="col-3"><h6>Higher Secondary</h6></div>
                <div class="col-3">
                    <%=board12%>
                </div>
                <div class="col-3">
                    <%=pass_year12%>
                </div>
                <div class="col-3">
                    <%=percent12%>
                </div>
            </div>
            <div class="row">
                <div class="col-3"><h6>B.Tech</h6></div>
                <div class="col-3">
                    NIT
                </div>
                <div class="col-3">
                    2019
                </div>
                <div class="col-3">
                    <%=cgpa%>
                </div>
            </div>
        </div>
    </div>
    <div class="col-6">
        <div class="box-content jumbotron">
            <h3>Training and Internships</h3>
            <div class="row">
                <div class="col-3"><h6>Summer Training</h6></div>
                <div class="col-3">
                    <%=company%>
                </div>
                <div class="col-3">
                    <%=start%>
                </div>
                <div class="col-3">
                  <%=end%>
                </div>
            </div>
            <div class="row">
                <div class="col-3"><h6>Internship</h6></div>
            </div>
        </div>
    </div>
</div>
<%@include file="footer_student.jsp"%>