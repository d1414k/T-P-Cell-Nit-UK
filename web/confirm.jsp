<%-- 
    Document   : confirm.jsp
    Created on : 5 Oct, 2017, 5:00:08 PM
    Author     : deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%  
  String degree = request.getParameter("degree");
  String roll = request.getParameter("roll");
  String fname = request.getParameter("fname");
  String lname = request.getParameter("lname");
  String ffname = request.getParameter("ffname");
  String flname = request.getParameter("flname");
  String dob = request.getParameter("dob");
  String category = request.getParameter("category");
  String gender = request.getParameter("gender");
  String main_rank = request.getParameter("main_rank");
  String address = request.getParameter("address");
  String pin = request.getParameter("pin");
  String email = request.getParameter("email");
  String mob1 = request.getParameter("mob1");
  String mob2 = request.getParameter("mob2");
  String account = request.getParameter("account");
  
  String board10 = request.getParameter("board10");
  String board12 = request.getParameter("board12");
  String pass_year10 = request.getParameter("pass_year10");
  String pass_year12 = request.getParameter("pass_year12");
  int  obtain10 = Integer.parseInt(request.getParameter("obtain10"));
  int obtain12 = Integer.parseInt(request.getParameter("obtain12"));
  int total10 = Integer.parseInt(request.getParameter("total10"));
  int total12 = Integer.parseInt(request.getParameter("total2"));
  double percent10 = Double.parseDouble(request.getParameter("percent10"));
  double percent12 = Double.parseDouble(request.getParameter("percent12"));
  int attempts10 = Integer.parseInt(request.getParameter("attempts10"));
  int attempts12 = Integer.parseInt(request.getParameter("attempts12"));
  
  int regcredit1 = Integer.parseInt(request.getParameter("regcredit1"));
  int regcredit2 = Integer.parseInt(request.getParameter("regcredit2"));
  int regcredit3 = Integer.parseInt(request.getParameter("regcredit3"));
  int regcredit4 = Integer.parseInt(request.getParameter("regcredit4"));
  int regcredit5 = Integer.parseInt(request.getParameter("regcredit5"));
  int regcredit6 = Integer.parseInt(request.getParameter("regcredit6"));
  int earnedcredit1 = Integer.parseInt(request.getParameter("earnedcredit1"));
  int earnedcredit2 = Integer.parseInt(request.getParameter("earnedcredit2"));
  int earnedcredit3 = Integer.parseInt(request.getParameter("earnedcredit3"));
  int earnedcredit4 = Integer.parseInt(request.getParameter("earnedcredit4"));
  int earnedcredit5 = Integer.parseInt(request.getParameter("earnedcredit5"));
  int earnedcredit6 = Integer.parseInt(request.getParameter("earnedcredit6"));
  int totalcredit1 = Integer.parseInt(request.getParameter("totalcredit1"));
  int totalcredit2 = Integer.parseInt(request.getParameter("totalcredit2"));
  int totalcredit3 = Integer.parseInt(request.getParameter("totalcredit2"));
  int totalcredit4 = Integer.parseInt(request.getParameter("totalcredit4"));
  int totalcredit5 = Integer.parseInt(request.getParameter("totalcredit5"));
  int totalcredit6 = Integer.parseInt(request.getParameter("totalcredit6"));
  int spi1 = Integer.parseInt(request.getParameter("spi1"));
  int spi2 = Integer.parseInt(request.getParameter("spi2"));
  int spi3 = Integer.parseInt(request.getParameter("spi3"));
  int spi4 = Integer.parseInt(request.getParameter("spi4"));
  int spi5 = Integer.parseInt(request.getParameter("spi5"));
  int spi6 = Integer.parseInt(request.getParameter("spi6"));
  int cpi1 = Integer.parseInt(request.getParameter("cpi1"));
  int cpi2 = Integer.parseInt(request.getParameter("cpi2"));
  int cpi3 = Integer.parseInt(request.getParameter("cpi3"));
  int cpi4 = Integer.parseInt(request.getParameter("cpi4"));
  int cpi5 = Integer.parseInt(request.getParameter("cpi5"));
  int cpi6 = Integer.parseInt(request.getParameter("cpi6"));
  int total = Integer.parseInt(request.getParameter("total"));
  
  String minor = request.getParameter("minor");
  String  minor_guide= request.getParameter("minor_guide");
  String major = request.getParameter("major");
  String major_guide = request.getParameter("major_guide");
  
  String company1 = request.getParameter("company1");
  String company2 = request.getParameter("company2");
  String company3 = request.getParameter("company3");
  String start1 = request.getParameter("start1");
  String start2 = request.getParameter("start2");
  String start3 = request.getParameter("start3");
  String end1 = request.getParameter("end1");
  String end2 = request.getParameter("end2");
  String end3 = request.getParameter("end3");
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
        //out.println("Already Registered....");
        %>
<script>
    alert("You are Already Registered ....");
    document.location = "index.jsp";
 /* setTimeout(function() {
      document.location = "reg.jsp";
  }, 1000); // <-- this is the delay in milliseconds*/
</script>
<%
        //response.sendRedirect("reg.jsp");
    }
    else
    {
        String sql = "insert into bgeneral values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement st = con.prepareStatement(sql);
        st.setString(1, roll);
        st.setString(2,fname );
        st.setString(3,lname);
        st.setString(4,ffname);
        st.setString(5,flname);
        st.setString(6,dob);
        st.setString(7,category);
        st.setString(8,gender);
        st.setString(9,main_rank);
        st.setString(10,address);
        st.setString(11,pin);
        st.setString(12,email);
        st.setString(13,mob1);
        st.setString(14,mob2);
        st.setString(15,account);
        st.executeUpdate();
        String sql1 = "insert into bschool values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement st1 = con.prepareStatement(sql1);
        st1.setString(1,roll);
        st1.setString(2,board10);
        st1.setString(3,board12);
        st1.setString(4,pass_year10);
        st1.setString(5,pass_year12);
        st1.setInt(6,obtain10);
        st1.setInt(7,obtain12);
        st1.setInt(8,total10);
        st1.setInt(9,total12);
        st1.setDouble(10,percent10);
        st1.setDouble(11,percent12);
        st1.setInt(12,attempts10);
        st1.setInt(13,attempts12);
        st1.executeUpdate();
        String sql2 = "insert into bgraduate values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement st2 = con.prepareStatement(sql2);
        st2.setString(1,roll);
        st2.setInt(2,regcredit1);
        st2.setInt(3,earnedcredit1);
        st2.setInt(4,totalcredit1);
        st2.setInt(5,spi1);
        st2.setInt(6,cpi1);
        st2.setInt(7,regcredit2);
        st2.setInt(8,earnedcredit2);
        st2.setInt(9,totalcredit2);
        st2.setInt(10,spi2);
        st2.setInt(11,cpi2);
        st2.setInt(12,regcredit3);
        st2.setInt(13,earnedcredit3);
        st2.setInt(14,totalcredit3);
        st2.setInt(15,spi3);
        st2.setInt(16,cpi3);
        st2.setInt(17,regcredit4);
        st2.setInt(18,earnedcredit4);
        st2.setInt(19,totalcredit4);
        st2.setInt(20,spi4);
        st2.setInt(21,cpi4);
        st2.setInt(22,regcredit5);
        st2.setInt(23,earnedcredit5);
        st2.setInt(24,totalcredit5);
        st2.setInt(25,spi5);
        st2.setInt(26,cpi5);
        st2.setInt(27,regcredit6);
        st2.setInt(28,earnedcredit6);
        st2.setInt(29,totalcredit6);
        st2.setInt(30,spi6);
        st2.setInt(31,cpi6);
        st2.setInt(32,total);
        st2.executeUpdate();
        String sql3 = "insert into bproject values(?,?,?,?,?)";
        PreparedStatement st3 = con.prepareStatement(sql3);
        st3.setString(1, roll);
        st3.setString(2, minor);
        st3.setString(3, minor_guide);
        st3.setString(4, major);
        st3.setString(5, major_guide);
        st3.executeUpdate();
        String sql4 = "insert into btraining values(?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement st4 = con.prepareStatement(sql4);
        st4.setString(1,roll);
        st4.setString(2,company1);
        st4.setString(3,start1);
        st4.setString(4,end1);
        st4.setString(5,company2);
        st4.setString(6,start2);
        st4.setString(7,end2);
        st4.setString(8,company3);
        st4.setString(9,start3);
        st4.setString(10,end3);
        st4.executeUpdate();
    }
    con.close();
  }
  catch(Exception e)
  {
      out.println(e);
  }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
        <title>Confirmation</title>
        <link rel="shortcut icon" href="img/nitlogo.jpg">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/self.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script> 
        <script src="js/self.js"></script>
    </head>
    <body>
        <form action="confirmPass.jsp" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h3 align="center">Create a password</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        Enter Password
                    </div>
                    <div class="col-md-6">
                        <input type="password" id="pass1" name="pass1" class="in">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        Confirm Password
                    </div>
                    <div class="col-md-6">
                        <input type="password" id="pass1" name="pass2" class="in">
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-md-6"><input type="reset" value="Clear" class="btn btn-primary"></div>
                    <div class="col-md-6"><input type="submit" value="submit" class="btn btn-primary"></div>
                </div>
            </div>
        </form>
    </body>
</html>
