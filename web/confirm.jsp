<%-- 
    Document   : confirm.jsp
    Created on : 5 Oct, 2017, 5:00:08 PM
    Author     : deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
    String reference_no = "T&P/";
    int counter =Integer.parseInt(request.getParameter("counter"));
    int counter1 = Integer.parseInt(request.getParameter("counter1"));
    int counter2 = Integer.parseInt(request.getParameter("counter2"));
  String degree = request.getParameter("degree");
  String roll = request.getParameter("roll").toUpperCase();
  /*reference no generation*/
  Calendar now = Calendar.getInstance();
  int year = now.get(Calendar.YEAR);
  reference_no +=  ""+year+"/"+degree+"/"+roll.substring(4,7)+"/"+roll.substring(7);
  
  String fname = request.getParameter("fname").toUpperCase();
  String lname = request.getParameter("lname").toUpperCase();
  String ffname = request.getParameter("ffname").toUpperCase();
  String flname = request.getParameter("flname").toUpperCase();
  String dob = request.getParameter("dob");
  String category = request.getParameter("category");
  String gender = request.getParameter("gender");
  String main_rank = request.getParameter("main_rank");
  String address = request.getParameter("address").toUpperCase();
  String pin = request.getParameter("pin");
  String email = request.getParameter("email").toLowerCase();
  String mob1 = request.getParameter("mob1");
  String mob2 = request.getParameter("mob2");
  String account = request.getParameter("account");
  
  String board10 = request.getParameter("board10").toUpperCase();
  String board12 = request.getParameter("board12").toUpperCase();
  String pass_year10 = request.getParameter("pass_year10");
  String pass_year12 = request.getParameter("pass_year12");
  int  obtain10 = Integer.parseInt(request.getParameter("obtain10"));
  int obtain12 = Integer.parseInt(request.getParameter("obtain12"));
  int total10 = Integer.parseInt(request.getParameter("total10"));
  int total12 = Integer.parseInt(request.getParameter("total12"));
  double percent10 = Double.parseDouble(request.getParameter("percent10"));
  double percent12 = Double.parseDouble(request.getParameter("percent12"));
  int regcredit[] = new int[counter];
  int earnedcredit[] = new int[counter];
  int totalcredit[] = new int[counter]; 
  double spi[] = new double[counter];
  double cpi[] = new double[counter];
  for(int i = 1 ; i <counter ;i++)
  {
      regcredit[i] = Integer.parseInt(request.getParameter("regcredit"+i));
      earnedcredit[i] = Integer.parseInt(request.getParameter("earnedcredit"+i));
      totalcredit[i] = Integer.parseInt(request.getParameter("totalcredit"+i));
      spi[i] = Double.parseDouble(request.getParameter("spi"+i));
      cpi[i] = Double.parseDouble(request.getParameter("cpi"+i));
  }
  double total = cpi[counter-1];
  String type[] = new String[counter1];
  String title[] = new String[counter1];
  String guide[] = new String[counter1];
  String grade[] = new String[counter1];
   for(int i = 1 ; i <counter1 ;i++)
  {
      type[i] = request.getParameter("type"+i);
      title[i] = request.getParameter("title"+i).toUpperCase();
      guide[i] = request.getParameter("guide"+i).toUpperCase();
      grade[i] = request.getParameter("grade"+i);
  }
  String company[] = new String[counter2];
  String start[] = new String[counter2];
  String end[] = new String[counter2];
  for(int i = 1 ; i <counter2 ;i++)
  {
      company[i] = request.getParameter("company"+i).toUpperCase();
      start[i] = request.getParameter("start"+i);
      end[i] = request.getParameter("end"+i);
  }
  int x=-1,y=-1,z=-1,w=-1,u=-1;
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
        x = st.executeUpdate();
        String sql1 = "insert into bschool values(?,?,?,?,?,?,?,?,?,?,?)";
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
        y = st1.executeUpdate();
        String sql2 = "insert into bgraduate(roll";
        for(int i = 1 ; i < counter; i++)
        {
        sql2 += ",regcredit"+i+",earnedcredit"+i+",totalcredit"+i+",spi"+i+",cpi"+i+"";
        }
        sql2 += ",total) values(?";
        for(int i = 1 ; i < counter; i++)
        {
        sql2 += ",?,?,?,?,?";
        }
        sql2 += ",?)";
        //out.println(sql2);
        PreparedStatement st2 = con.prepareStatement(sql2);
        st2.setString(1,roll);
        int count = 2;
        for(int i = 1 ; i < counter; i++)
        {
        st2.setInt(count++,regcredit[i]);
        st2.setInt(count++,earnedcredit[i]);
        st2.setInt(count++,totalcredit[i]);
        st2.setDouble(count++,spi[i]);
        st2.setDouble(count++,cpi[i]);
        }
        st2.setDouble(count,total);
        z = st2.executeUpdate();

        //st2.setDouble(32,total);
        String sql3 = "insert into bproject(roll";
        for(int i = 1 ; i < counter1; i++)
        {
        sql3 += ",type"+i+",title"+i+",guide"+i+",grade"+i+"";
        }
        sql3 += ") values(?";
        for(int i = 1 ; i < counter1; i++)
        {
        sql3 += ",?,?,?,?";
        }
        sql3 += ")";
        //out.println(sql3);
        PreparedStatement st3 = con.prepareStatement(sql3);
        st3.setString(1,roll);
        int count1 = 2;
        for(int i = 1 ; i < counter1; i++)
        {
        st3.setString(count1++,type[i]);
        st3.setString(count1++,title[i]);
        st3.setString(count1++,guide[i]);
        st3.setString(count1++,grade[i]);
        }
        w = st3.executeUpdate();
        String sql4 = "insert into btraining(roll";
        for(int i = 1 ; i < counter2; i++)
        {
        sql4 += ",company"+i+",start"+i+",end"+i+"";
        }
        sql4 += ") values(?";
        for(int i = 1 ; i < counter2; i++)
        {
        sql4 += ",?,?,?";
        }
        sql4 += ")";
        //out.println(sql4);
        PreparedStatement st4 = con.prepareStatement(sql4);
        st4.setString(1,roll);
        int count2 = 2;
        for(int i = 1 ; i < counter2; i++)
        {
        st4.setString(count2++,company[i]);
        st4.setString(count2++,start[i]);
        st4.setString(count2++,end[i]);
        }
        u = st4.executeUpdate();
    }
    if(x>0&&y>0&&z>0&&w>0&&u>0)
    {%>
    <script>
    alert("Thanks for Registration");
    //document.location = "passconfirm.jsp";
    </script> 
    <%}
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
       <body>
       <body>
           <form action="passconfirm.jsp" method="post" onsubmit="return validate()">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h3 align="center">Thanks for Registration</h3>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-12">
                        <h6 align="center">Reference No : <%=reference_no%></h6>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-12">
                        <h3 align="center">Create a password</h3>
                    </div>
                    <div>
                        <input type="hidden" name="reference_no" value=<%=reference_no%>>
                        <input type="hidden" name="roll" value=<%=roll%>>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        Enter Password
                    </div>
                    <div class="col-md-6">
                        <input type="password" id="pass1" name="pass1" class="in" required="true">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        Confirm Password
                    </div>
                    <div class="col-md-6">
                        <input type="password" id="pass2" name="pass2" class="in" required="true">
                        <span id='message'></span>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-md-6"><input type="reset" value="Clear" class="btn btn-primary"></div>
                    <div class="col-md-6"><input type="submit" value="submit" class="btn btn-primary"></div>
                </div>
            </div>
        </form>
       <script>
            $('#pass1, #pass2').on('keyup', function () {
                if ($('#pass1').val() == $('#pass2').val()) {
                  $('#message').html('Matching').css('color', 'green');
                } else 
                  $('#message').html('Not Matching').css('color', 'red');
                });
                function validate()
                {
                    var isvalid = false;
                    var pass1  = document.getElementById("pass1").value;
                    var pass2  = document.getElementById("pass2").value;
                    if(pass1==pass2)
                        isvalid = true;
                    return isvalid;
                }
        </script>
    </body>
</html>
