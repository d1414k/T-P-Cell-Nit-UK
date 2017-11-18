

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="header_admin.jsp" %>
        <div class="jumbotron">
            <div class="row table-danger" style="top:-25px; position:relative">
                <div class="col-12"><h3 style="text-align: center">Selected Student</h3></div>
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
           {%>
           <div class="row">
                <div class="col-1"><b><%=i%></b>
                </div>
                <div class="col-2"><%=rs.getString(1)%>
                </div>
                <div class="col-3"><%=rs.getString(2)%> <%=rs.getString(3)%>
                </div>
                <div class="col-3"><%=rs.getString(4)%>
                </div>
                <div class="col-3"><%=rs.getString(5)%>
                </div>
            </div>
                 <% i++; }
       %>
        </div>
<%@include file="footer_admin.jsp"%>
