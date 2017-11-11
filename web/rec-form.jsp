<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Recruiter Registration</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header" align="center"><strong>Company Registration Form</strong></div>
      <div class="card-body">
        <form action="companyReg" method="post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-12">
                <label for="companyName"><strong>Company Name</strong></label>
                <input class="form-control" id="companyName" type="text" aria-describedby="nameHelp" placeholder="Enter Company's Name" name="name">
              </div>
            </div>
          </div>
          <div class="form-group">
              <label for="branch"><strong>Eligible Branches</strong></label></br>
            <label for="branch">CSE</label>&nbsp;&nbsp;&nbsp;
            <input class="" type="checkbox" name="cse" value="1" checked>&nbsp;&nbsp;&nbsp;
            <label for="branch">ECE</label>&nbsp;&nbsp;&nbsp;
            <input class="" type="checkbox" name="ece" value="1">&nbsp;&nbsp;&nbsp;
            <label for="branch">CIV</label>&nbsp;&nbsp;&nbsp;
            <input class="" type="checkbox" name="civ" value="1">&nbsp;&nbsp;&nbsp;
            <label for="branch">EEE</label>&nbsp;&nbsp;&nbsp;
            <input class="" type="checkbox" name="eee" value="1">&nbsp;&nbsp;&nbsp;
            <label for="branch">MEC</label>&nbsp;&nbsp;&nbsp;
            <input class="" type="checkbox" name="mec" value="1">&nbsp;&nbsp;&nbsp; 
          </div>
          <div class="form-group">
              <label><strong>Eligibility Criteria</strong></label>
            <div class="form-row">
              <div class="col-md-4">
                <label for="10">10th</label>
                <select name="10th">
                 <option value=0>--Select--</option>
                 <option value="50">50</option>
                 <option value="50">55</option>
                 <option value="50">60</option>
                 <option value="50">65</option>
                 <option value="50">70</option>
                 <option value="50">75</option>
                 <option value="50">80</option>
                 <option value="50">85</option>
                 <option value="50">90</option>
                 <option value="50">95</option>
                </select> %
              </div>
              <div class="col-md-4">
                <label for="12">12th</label>
                <select name="12th">
                 <option value=0>--Select--</option>
                 <option value="50">50</option>
                 <option value="50">55</option>
                 <option value="50">60</option>
                 <option value="50">65</option>
                 <option value="50">70</option>
                 <option value="50">75</option>
                 <option value="50">80</option>
                 <option value="50">85</option>
                 <option value="50">90</option>
                 <option value="50">95</option>
                </select> %
              </div>
              <div class="col-md-4">
                <label for="cgpa">CGPA</label>
                <input type="number" step=0.01 id="cgpa" name="cgpa" style="width:130px" value="5">
              </div>
              
            </div>
              
          </div>
            <div class="form-group">
                <label for="package"><strong>Package (LPA)</strong></label>
            <div class="form-row">
                
              <div class="col-md-5">
                
                <input class="form-control" id="companyName" type="number" step=0.01 aria-describedby="nameHelp" placeholder="Starting Value" name="p1">
                
              </div>
                
                <div class="col-md-2" style="text-align: center;">
                    -
                </div>
                <div class="col-md-5">
                    <input class="form-control" id="companyName" type="number"  step=0.01 aria-describedby="nameHelp" placeholder="Maximum amount" name="p2">
                </div>
            </div>
          </div> 
        <div class="form-group">
            <label for="job-profile"><strong>Job Profile offered</strong></label>
            <input class="form-control" id="job-profile" type="text" name="job_profile">
        </div>
        <div class="form-group">
            <label for="last-date"><strong>Last Date of Filling Willing form</strong></label>
            <input class="form-control" id="last-date" type="date" name="last_date">
        </div>
                <input type="submit" value="Register" class="btn btn-primary btn-block">
                    <div class="text-center">
                        <a class="d-block small mt-3" href="admin.jsp">Home</a>
                    </div>
        </form>
        
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
