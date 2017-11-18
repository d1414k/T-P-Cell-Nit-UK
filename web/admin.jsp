<%@include file="header_admin.jsp" %>
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
<%@include file="footer_admin.jsp"%>                