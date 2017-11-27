<%@include file="header_admin.jsp" %>
  <div class="container jumbotron">
    <div class="card card-login mx-auto">
      <div class="card-header">Update Password</div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <input class="form-control" id="exampleInputEmail1" type="password" name="old" placeholder="Old Password">
          </div>
            <div class="form-group">
            <input class="form-control" id="exampleInputEmail1" type="password" name="new1" placeholder="New Password">
          </div>
            <div class="form-group">
            <input class="form-control" id="exampleInputEmail1" type="password" name="new2" placeholder="Confirm Password">
          </div>
            <a class="btn btn-primary btn-block" href="admin.jsp">Update</a>
        </form>
        <div class="text-center">
          <a class="d-block small" href="index.jsp">Login Page</a>
        </div>
      </div>
    </div>
  </div>
 <%@include file="footer_admin.jsp"%> 