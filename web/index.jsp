<%-- 
    Document   : index
    Created on : 24 Sep, 2017, 1:26:13 PM
    Author     : deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
        <title>Home - T&P Cell Nit UK</title>
        <link rel="shortcut icon" href="img/nitlogo.jpg">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/self.css">
    </head>
    <body>
       <!-- <header>
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div id="menu">
                        <ul class="nav navbar-nav">
                            <li><a href="">Why NIT Uk</a></li>
                            <li><a href="">Departments</a></li>
                            <li><a href="">Procedures</a></li>
                            <li><a href="">Downloads</a></li>
                            <li><a href="">Abount Us</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header> -->
        <div class="page-container">    
            <div class="row jumbotron">
                <div class="col-sm-8">
                    <a href="index.jsp"><img src="img/nitlogo.jpg" class="head-logo" height="100%" width="18%"/></a>  
                       <h4>
                                <a class="ltc-black" href="index.jsp">Training &amp; Placement Cell</a><br>
                        </h4>
                        <h6>
                                 <a class="pull-left" href="" target="_blank">National Institute Of Technology Uttarakhand</a><br>
                        </h6>
                        
                    <br>    
                    <div>    
                        <ul class="list-unstyled" >
                            <li style="float : left;">
                                <a href="#" class="btn btn-d btn-sq btn-sm nav-button ">Why NIT UK<span class="caret"></span></a>
                            </li>
                            <li style="float : left">
                                <a href="departments-and-disciplines.html" class="btn btn-d btn-sq btn-sm nav-button">Departments</a>
                            </li>
                            <li style="float : left">
                                <a href="rules-and-procedures.html" class="btn btn-d btn-sq btn-sm nav-button">Procedures</a>
                            </li>
                            <li style="float : left">
                                <a href="downloads.html" class="btn btn-d btn-sq btn-sm nav-button">Downloads</a>
                            </li>
                            <li style="float : left">
                                <a href="#" class="btn btn-d btn-sq btn-sm nav-button">About Us<span class="caret"></span></a> 
                            </li>    
                        </ul>
                        
                     </div>   
                        
                        
                </div>
                <div id="register-container">
                    <div id="register-container-inner">
                        <div id="register-button-positioner">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"> Log In</button>
                            <button type="button" class="btn btn-primary" onclick="location.href='reg.jsp'"> Register</button>
                        </div>
                    </div>
                </div>
            </div>
            
            
            
            
            
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br>
            
            
        <div class="modal-header jumbotron" style="position: relative;padding-bottom: 100px;background-color: #17232e;">
            <ul class="list-unstyled">
		<li style="float : left;color: #ffffff;" class="col-sm-2"><a href="index.jsp">About Nit UK</a>
                    <ul class="list-unstyled">
			<li><a href="index.jsp">T&amp;P Cell</a></li>
			<li><a href="message.jsp">Message</a></li>
			<li><a href="acadtieups.jsp">Academic Tieups</a></li>
			<li><a href="tour.jsp">Campus Tour</a></li>
			<li><a href="studentactivities.jsp">Student Activities</a></li>
                    </ul>
		</li>
		<li style="float : left" class="col-sm-2"><a href="procedure.jsp">For Recruiters</a>
                    <ul class="list-unstyled">
			<li><a href="procedure.jsp">Placement Procedure</a></li>
			<!--<li><a href="downloads.jsp">Downloads</a></li>-->
			<li><a href="demo.jsp">Demographics</a></li>
			<li><a href="fac.jsp">Facilities</a></li>
                    </ul>
		</li>
		<li style="float : left" class="col-sm-2"><a href="">Academics (UG)</a>
                    <ul class="list-unstyled">
			<li><a href="">Departments</a></li>
			<li><a href="">Course Curriculum</a></li>
			<li><a href="">Syllabus</a></li>
                    </ul>
		</li>
		<li style="float : left" class="col-sm-2"><a href="">Academics (PG)</a>
                    <ul class="list-unstyled">
			<li><a href="">Departments</a></li>
			<li><a href="">Course Curriculum</a></li>
                    </ul>
		</li>
		<li style="float : left" class="col-sm-2"><a href="pastRec.jsp">T&amp;P Summary</a>

                    <ul class="list-unstyled">
			<li><a href="pastRec.jsp">Past Recruiters</a></li>
			<li><a href="placementsumm.jsp">Placement Summary</a></li>
			<li><a href="trainingsumm.jsp">Training Summary</a></li>
                    </ul>
		</li>
		<li style="float : left" class="col-sm-2"><a href="contactus.jsp">Contact Us</a>
                    <ul class="list-unstyled">
			<li><a href="howtoreach.jsp">Reaching NIT UK</a></li>
			<li><a href="contactus.jsp">Representatives</a></li>
                    </ul>
		</li>
            </ul>
	</div>

                     
       </div>
        
        
        
        
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                       <div id="user-menu-container">
                           <div id="user-menu">
                               <div class="col-xs-6 user-menu-item" id="stu" style="color: #FF33B5;">Students</div>
                               <div class="col-xs-6 user-menu-item" id="rec">Recruiters</div>
                           </div>
                       </div>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body" id="login">
                        <form action="" role="form" id="modalLoginFormRec" style=" display : none ;" novalidate="novalidate"> 
                            <div class="form-group">
                                <label for="email" class="control-label">Email or Username:
                                </label>
                                <input type="email" class="form-control input-lg" id="email" tabindex="1" name="email">
                            </div>
                            <div class="form-group">
                                <label for="password" class="control-label">Password :</label> 
                                <input type="password" class="form-control input-lg" id="password" tabindex="2" name="password">
                                <a href=""><h6 style="text-align: right;">Forgot Password</h6></a> 
                            </div>
                            <div class="modal-footer table-row">
                                <div class="table-cell">
                                    <p>Don't have an account? Register (<a href="reg.jsp">Student</a> / 
                                        <a href="">Recruiter</a>)</p>
                                </div>
                                <div class="table-cell">
                                    <button type="submit" class="btn btn-primary">Login
                                    </button>
                                </div>
                            </div> 
                        </form>
                        <form action="Login" method="post" role="form" id="modalLoginFormStu" style=" display : block ;" novalidate="novalidate">
                            <div class="form-group">
                                <label for="rollno" class="control-label">Roll No :
                                </label>
                                <input type="text" class="form-control input-lg" id="rollno" tabindex="1" name="roll">
                            </div>
                            <div class="form-group">
                                <label for="password" class="control-label">Password :</label>
                                <input type="password" class="form-control input-lg" id="password" tabindex="2" name="pass">
                                <a href=""><h6 style="text-align: right;">Forgot Password</h6></a> 
                            </div>
                            <div class="modal-footer table-row">
                                <div class="table-cell">
                                    <p>Don't have an account? Register (<a href="reg.jsp">Student</a> / 
                                        <a href="">Recruiter</a>)</p>
                                </div>
                                <div class="table-cell">
                                    <button type="submit" class="btn btn-primary">Login
                                    </button>
                                </div>
                            </div> 
                        </form>
                    </div>
   
                </div>
            </div>
        </div>
        
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/self.js"></script>
        
    </body>
</html>
