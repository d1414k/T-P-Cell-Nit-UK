<%-- 
    Document   : admin
    Created on : 1 Nov, 2017, 4:06:15 PM
    Author     : deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<%
if(session.getAttribute("uname")==null)
{
    response.sendRedirect("index.jsp");
}
else
{
%>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Admin Dashboard</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <link rel="shortcut icon" href="img/nitlogo.jpg">
  <link rel="stylesheet" href="css/self.css">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="student.jsp"><%=session.getAttribute("uname")%></a>
    
    
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">        
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Edit Profile">
             <a class="nav-link" href="charts.html">
            <span class="navbar-brand">
          <img class="img-fluid rounded-circle mx-auto mb-2" style="max-width:10rem;max-height:10rem;border:.5rem solid rgba(255,255,255,.2)" src="img/profile.jpg" alt="">
            </span>
          </a>
           </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="admin.jsp">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Edit Profile">
          <a class="nav-link" href="admin.jsp">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Edit Profile</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" >
          <a class="nav-link" href="admin-update-pass.jsp">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Update Password</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" >
          <a class="nav-link" href="rec-form.jsp">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Add Recruiter</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
   
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          
        </li>
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="Search for...">
              <span class="input-group-btn">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
      
      <%
          String uname = session.getAttribute("uname").toString();
          String name="",email="";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tp","root","");
                String str = "select * from admin where uname = ?";
                PreparedStatement stmt = con.prepareStatement(str);
                stmt.setString(1,uname);
                ResultSet rs = stmt.executeQuery();
                if(rs.next())
                {
			name = rs.getString(2);
                        email = rs.getString(5); 
                }
                con.close();
            }
            catch(Exception e)
            {
                out.println(e);
            }
      
      %>
     <div class="container-fluid">
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="admin.jsp">Admin Dashboard</a>
        </li>
      </ol>
      <div class="row">
        <div class="col-12">
            <div class="jumbotron">
                <h1 style="margin: 0rem;"><%=name%></h1>
                <p style="margin: 0rem;">Assistant Professor</p>
                <p style="margin: 0rem;">Department of Computer Science & Engineering</p>
                <p style="margin: 0rem;">Email: <%=email%></p>
                <p style="margin: 0rem;">Phone no: 941059279</p>
            </div>
        </div>
      </div>
      <div class="row">
          <div class="col-6">
              <div class="box-content">
                  <h3>Educational Qualification</h3>
                  PhD (Pursuing (IIT-ISM, Dhanbad)), M.Tech. (MNNIT Allahabad), BE(JEC Jabalpur)
              </div>
          </div>
          <div class="col-6">
              <div style="border: 1px #000 solid; border-radius: 0.5rem; padding: 1rem;">
                  <h3>Research Interests</h3>
                  Secure Real Time System, Network Security, Vehicular Ad-hoc network.
              </div>
          </div>
      </div>
    </div>
      
    <% 
    }
    %>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © NIT UK</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    
    
    
    
    
    
    
    
    
    
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <form action="Logout" method="post">
            <input type="submit" value="Logout" class="btn btn-primary">    
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
  </div>
</body>

</html>
