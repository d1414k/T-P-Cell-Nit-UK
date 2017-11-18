<%@include file="header_admin.jsp" %>
  <div class="container jumbotron">
      <div class="card mx-auto" style="top:-30px; position:relative">
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
  <%@include file="footer_admin.jsp"%>