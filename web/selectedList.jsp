<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@include file="header_admin.jsp" %>
        <div class="jumbotron" id="content">
            <div class="row table-danger" style="top:-25px; position:relative">
                <div class="col-12"><h3 style="text-align: center">Shortlisted Student</h3></div>
            </div>
            <div class="row">
                <div class="col-1"><b>S.No</b>
                </div>
                <div class="col-2"><b>Roll No</b>
                </div>
                <div class="col-3"><b>Name</b>
                </div>
                <div class="col-3"><b>Mobile No</b>
                </div>
                <div class="col-3"><b>Email </b>
                </div>
            </div>
            <%
           ResultSet rs = (ResultSet)session.getAttribute("rs");
           int i = 1;
           while(rs.next())
           {String email1 =rs.getString(5);
           if(email1.equals("deepakkumarvishwakarma12@gmail.com"))
           email1 = "deepakvishwakarma12@gmail.com";
            %>
            <div class="row" onclick="showdata('<%=rs.getString(1)%>')">
                <div class="col-1"><b><%=i%></b>
                </div>
                <div class="col-2"><%=rs.getString(1)%>
                </div>
                <div class="col-3"><%=rs.getString(2)%> <%=rs.getString(3)%>
                </div>
                <div class="col-3"><%=rs.getString(4)%>
                </div>
                <div class="col-3"><%=email1%>
                </div>
            </div>
                 <% i++; }%>    
        </div>
        <div id="editor"></div>
       <div class="row">
           <div class="col-12">
               <input type="button" class="btn btn-primary" id="cmd" name="Save As PDF" value="Save As PDF">
           </div>
       </div>
        <br>
        <div class="jumbotron">
            <div class="row table-success">
                <div class="col-3"><b>Roll No.</b></div>
                <div class="col-3"><b>10th</b></div>
                <div class="col-3"><b>12th</b></div>
                <div class="col-3"><b>CGPA</b></div>
            </div>
            <div class="row">
                <div class="col-3" id='rollno'></div>
                <div class="col-3" id='10'></div>
                <div class="col-3" id='12'></div>
                <div class="col-3" id='cgpa'></div>
                </div>
        </div>
        <script>
            function showdata(str)
            {
            var roll =str;
             //console.log(str);
              var xHttp;    
                if(window.XMLHttpRequest)// code for modern browsers
                    xHttp = new XMLHttpRequest();
                else                    // code for old IE browsers
                    xHttp = new ActiveXObject("Microsoft.XMLHTTP");
              xHttp.onreadystatechange = function() 
              {
                  console.log(str);
                if (this.readyState === 4 && this.status === 200) 
                {
                    console.log(str);
                  var str = xHttp.responseText;
                  var data = str.split(":");
                  document.getElementById("rollno").innerHTML = roll;
                  document.getElementById("10").innerHTML = data[0];
                  document.getElementById("12").innerHTML = data[1];
                  document.getElementById("cgpa").innerHTML = data[2];
                }
              };
              xHttp.open("GET", "getData.jsp?roll="+str, true);
              xHttp.send();
            }
        </script>
<%@include file="footer_admin.jsp"%>
