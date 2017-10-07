<%-- 
    Document   : demo
    Created on : 7 Oct, 2017, 12:17:31 AM
    Author     : deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<% String roll="bt15cse060";
%>
<<!DOCTYPE html>
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
            <form action="passconfirm.jsp" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h3 align="center">Create a password</h3>
                    </div>
                    <div>
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
        </script>
</body>
</html>