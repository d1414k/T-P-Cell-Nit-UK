<%-- 
    Document   : reg.jsp
    Created on : 2 Oct, 2017, 11:19:36 AM
    Author     : deepak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
        <title>Registration</title>
        <link rel="shortcut icon" href="img/nitlogo.jpg">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/self.css">
        <script src="js/jquery.js"></script>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script> 
        <script src="js/self.js"></script> 
        <script type="text/javascript">
    $(document).ready(function () {
    var counter = 2;
    var counter1 = 2;
    var counter2 = 2;
    $("#addrow").on("click", function () {
        if(counter <= 8){
        var newRow = $("<tr>");
        var cols = "";
        cols += '<td>'+counter+'.</td>';
        cols += ' <td><input type="number" name="regcredit' + counter + '" class="in" required="required"></td>';
        cols += '<td><input type="number" name="earnedcredit' + counter + '" class="in" required="required"></td>';
        cols += '<td><input type="number" name="totalcredit' + counter + '" class="in" required="required"></td>';
        cols += '<td><input type="number" step="any" name="spi' + counter + '" class="in" required="required"> </td>';
        cols += '<td><input type="number" step="any" name="cpi' + counter + '" class="in" required="required"></td>';

        cols += '<td><input type="button" class="ibtnDel btn btn-md btn-danger "  value="Delete"></td>';
        newRow.append(cols);
        $("table.order-list").append(newRow);
        counter = counter+1;
        document.getElementById("count").value = counter;
    }
    });
    $("table.order-list").on("click", ".ibtnDel", function (event) {
        $(this).closest("tr").remove();       
        counter = counter - 1;
        document.getElementById("count").value = counter;
    });
    //for project
    $("#addrow1").on("click", function () {
        var newRow = $("<tr>");
        var cols = "";
               cols += '<td>';
               cols +=  '<select name="type' + counter1 + '">';
               cols +=   '<option value="-1">--Select--</option>';
               cols +=    '<option value="minor">Minor</option>';
               cols +=     '<option value="major">Major</option>';
               cols +=     '<option value="others">Others</option>';
               cols +=    '</select>';
               cols +=     '</td>';
               cols +=  '<td><input type="text" name = "title' + counter1 + '" class="in" style="width: 100%"></td>';
               cols +=  '<td><input type="text" name = "guide' + counter1 + '" class="in" style="width: 100%"></td>';
               cols +=   '<td>';
               cols +=   '<select name="grade' + counter1 + '">';
               cols +=   '<option value="-1">--Select--</option>';
               cols +=  '<option value="s">Satisfactory</option>';
               cols +=   '<option value="u">Unsatisfactory</option>';
               cols +=   '</select>';
               cols +=   '</td>';
        cols += '<td><input type="button" class="ibtnDel btn btn-md btn-danger "  value="Delete"></td>';
        newRow.append(cols);
        $("table.order-list1").append(newRow);
        counter1++;
        document.getElementById("count1").value = counter1;
    });

    $("table.order-list1").on("click", ".ibtnDel", function (event) {
        $(this).closest("tr").remove();       
        counter1 -= 1;
        document.getElementById("count1").value = counter1;
    });
    //for training
    $("#addrow2").on("click", function () {
        var newRow = $("<tr>");
        var cols = "";
               cols += '<td>' + counter2 + '.</td>';
               cols += '<td><input type="text" name="company' + counter2 + '" class="in"></td>';
               cols +=  '<td><input type="date" name="start1' + counter2 + '" class="in"></td>';
               cols +=  '<td><input type="date" name="end1' + counter2 + '" class="in"></td>';
        cols += '<td><input type="button" class="ibtnDel btn btn-md btn-danger "  value="Delete"></td>';
        newRow.append(cols);
        $("table.order-list2").append(newRow);
        counter2++;
        document.getElementById("count2").value = counter2;
    });

    $("table.order-list2").on("click", ".ibtnDel", function (event) {
        $(this).closest("tr").remove();       
        counter2 -= 1;
        document.getElementById("count2").value = counter2;
    });

});

function calculateRow(row) {
    var price = +row.find('input[name^="price"]').val();

}

function calculateGrandTotal() {
    var grandTotal = 0;
    $("table.order-list").find('input[name^="price"]').each(function () {
        grandTotal += +$(this).val();
    });
    $("#grandtotal").text(grandTotal.toFixed(2));
}
</script>
    </head>
    <body>
        <div class="container-fluid">
        <form action="confirm.jsp" class="form-control jumbotron-fluid jumbotron" method="post">
            <table align="center" class="table table-inverse" style="top:-50px; position:relative">
                <tr align="center">
                   <td><b><u>TPC Registration Form</u></b></td> 
                </tr>
                <tr align="center">
                   <td>(For the record of Training & Placement Cell)</td> 
                </tr>
            </table>
            <table align="center" class="table table-responsive" style="top:-25px; position:relative">
                <tr>
                   <td>Degree</td>
                   <td>
                       <select name="degree" style='border-radius: 5px;text-align: center;'>
                           <option value="BT">B.Tech</option>
                           <option value="MT">M.Tech</option>
                           <option value="PD">Ph.D</option>
                       </select>
                   </td>
                    <td>
                        Roll No
                    </td>
                    <td>
                        <!--<input type="text" name="roll" placeholder="Roll No Ex : BT15CSE059" pattern="(BT/MT/bt/mt)+[0-9]+[0-9]+(cse/civ/mec/eee/ece/CSE/CIV/MEC/EEE/ECE)+[0-9]+[0-9]+[0-9]" maxlength="10" style='border-radius: 5px;text-align: center;'> -->
                        <input type="text" name="roll" placeholder="Roll No Ex : BT15CSE059" class="in" required="required">
                    </td>
                </tr>
                <tr class="table-info">
                    <td><b><u>General</u></b></td>
                </tr>
                <tr>
                    <td>
                        Name
                    </td>
                    <td>
                        <input type="text" name="fname" placeholder="First Name" class="in" required="required">
                    </td>
                    <td>
                        <input type="text" name="lname" placeholder="Last Name" class="in" required="required">
                    </td>
                </tr>
                <tr>
                    <td>
                        Father's Name
                    </td>
                    <td>
                        <input type="text" name="ffname" placeholder="First Name" class="in" required="required">
                    </td>
                    <td>
                        <input type="text" name="flname" placeholder="Last Name" class="in">
                    </td>
                </tr>
                <tr>
                    <td>
                        Date Of Birth
                    </td>
                    <td>
                        <input type='date' name='dob' class="in" required="required">
                    </td>
                </tr>
                <tr>
                    <td>
                        Category
                    </td>
                    <td>
                       <select name='category' class="in">
                           <option value="-1">--Select--</option>
                           <option value="general">General</option>
                           <option value="obc">OBC-NCL</option>
                           <option value="sc">SC</option>
                           <option value="st">ST</option>
                        </selct>
                    </td>
                </tr>
                <tr>
                    <td>
                        Gender
                    </td>
                    <td>
                        <input type="radio" name="gender" value="male" checked> Male &nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="gender" value="female"> Female &nbsp;&nbsp;&nbsp;&nbsp;  
                    </td>
                </tr>
                <tr>
                    <td>
                        JEE Mains Rank(All India)
                    </td>
                    <td>
                        <input type="number" name="main_rank" class="in" required="required">   
                    </td>
                </tr>
                <tr>
                    <td>
                        Address for Contacting
                    </td>
                    <td>
                        <textarea type="text" name="address" class="in"></textarea>   
                    </td>
                    <id>   
                    </td>
                    <td>
                        PIN  <input name="pin"
                        oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                        type = "number"
                        maxlength = "6" class="in" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        E-mail Id
                    </td>
                    <td>
                        <input type="email" name="email" class="in" required="required">
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact No
                    </td>
                    <td>
                        <input name="mob1"
                        oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                        type = "number"
                        maxlength = "10" class="in" required="required"/>
                    </td>
                    <td>
                        Alternative Contact No
                    </td>
                    <td>
                        <input name="mob2"
                        oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                        type = "number"
                        maxlength = "10" class="in" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Account Number (for TA/DA Settlement)
                    </td>
                    <td>
                        <input name="account"
                        oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                        type = "number"
                        maxlength = "11" class="in" required="required"/> &nbsp;&nbsp;(Only SBI)
                    </td>
                </tr>
                <tr class="table-info">
                    <td><b><u>EDUCATIONAL QUALIFICATION</u></b></td>
                </tr>
                <tr class="table-active">
                    <td><b>Secondary and Higher secondary education details:</b></td>
                </tr>
            </table>
                <table class="table table-responsive">
                    <tr>
                        <th>Examination</th>
                        <th>Board/Institution</th>
                        <th>Passing Year</th>
                        <th>Marks Obtained</th>
                        <th>Out of(Total)</th>
                        <th>Percentage/CGPA</th>
                    </tr>
                    <tr>
                        <td>10th</td>
                        <td><input type='text' name='board10' class="in" required="required"></td>
                        <td><input name="pass_year10"
                            oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                            type = "number"
                            maxlength = "4" class="in" required="required"></td>
                        <td><input type='number' name='obtain10' class="in" required="required"></td>
                        <td><input type='number' name='total10' class="in" required="required"></td>
                        <td><input type='number' step="any" name='percent10' class="in" required="required"></td>
                        
                    </tr>
                    <tr>
                        <td>12th</td>
                        <td><input type='text' name='board12' style='border-radius: 5px;text-align: center;' required="required"></td>
                        <td><input name="pass_year12"
                            oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                            type = "number"
                            maxlength = "4" style='border-radius: 5px;text-align: center;' required="required"></td>
                        <td><input type='number' name='obtain12' style='border-radius: 5px;text-align: center;' required="required"></td>
                        <td><input type='number' name='total12' style='border-radius: 5px;text-align: center;' required="required"></td>
                        <td><input type='number' step="any" name='percent12' required="required"style='border-radius: 5px;text-align: center;'></td>
                        
                    </tr>
                </table>
                </tr>
                <input type="hidden" id="count" name="counter" value="2">
                <input type="hidden" id="count1" name="counter1" value="2">
                <input type="hidden" id="count2" name="counter2" value="2">
                <div class="table-active">
                <b>Under Graduation</b>
                </div>
               <table id="myTable" class=" table order-list table-responsive">
                    <thead>
                        <tr>
                            <th>Semester</th>
                            <th >Credit Reg.</th>
                            <th >Credit earned</th>
                            <th >Total Credit Earned</th>
                            <th>SPI</th>
                            <th>CPI</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1.</td>
                            <td><input type="number" name='regcredit1' required="required" class="in"></td>
                            <td><input type='number' name='earnedcredit1' required="required" style='border-radius: 5px;text-align: center;'></td>
                            <td><input type='number' name='totalcredit1' required="required" style='border-radius: 5px;text-align: center;'></td>
                            <td><input type='number' step="any" name='spi1' required="required" style='border-radius: 5px;text-align: center;'></td>
                            <td><input type='number' step="any" name='cpi1' required="required" style='border-radius: 5px;text-align: center;'></td>
                            <td class="col-sm-2"><a class="deleteRow"></a></td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="12" style="text-align: right;">
                                <input type="button" class="btn btn-primary " id="addrow" value="Add Semester" />
                            </td>
                        </tr>
                    </tfoot> 
                <!--<table>
                    <tr>
                        <th colspan='5'>Total</th>
                        <td><input type='number' step="any"  name='total' class='in' value="0"><td>
                    </tr>
                </table>-->
            <table <table id="myTable" class=" table order-list1 table-responsive">
                <div class="table-info">
                <b>Projects</b>
                </div>
               
                <tr>
                    <th>Type</th>
                    <th>Title</th>
                    <th>Name of Guide</th>
                    <th>Grade</th>
                </tr>
                <tr>
                    <td>
                        <select name="type1">
                            <option value="-1">--Select--</option>
                            <option value="minor">Minor</option>
                            <option value="major">Major</option>
                            <option value="others">Others</option>
                        </select>
                    </td>
                    <td><input type="text" name = "title1" class="in" style="width: 100%"></td>
                    <td><input type="text" name = "guide1" class="in" style="width: 100%"></td>
                    <td>
                        <select name='grade1'>
                            <option value="-1">--Select--</option>
                            <option value="s">Satisfactory</option>
                            <option value="u">Unsatisfactory</option>
                        </select>
                    </td>
                    <td><a class="deleteRow"></a></td>
                </tr>
                <tfoot>
                        <tr>
                            <td colspan="1" style="text-align: right;">
                                <input type="button" class="btn btn-primary " id="addrow1" value="Add Project" />
                            </td>
                        </tr>
                </tfoot> 
            </table>
            <table class="table order-list2 table-responsive">
                <div class="table-info">
                    <b><u>PRACTICAL TRAINING</u></b>
                </div>
                <!--<tr>
                    <td>Have you under gone practical training</td>
                    <td><input type="radio" name="practical" value="yes" checked="true">Yes</td>
                    <td><input type="radio" name="practical" value="no">No</td>
                </tr>-->
                <tr>
                    <th>Sr. No</th>
                    <th>Name of Company</th>
                    <th colspan="2" class="in">Period</th>
                </tr>
                <tr>
                    <td>1.</td>
                    <td><input type="text" name="company1" class="in"></td>
                    <td><input type="date" name="start1" class="in"></td>
                    <td><input type="date" name="end1" class="in"></td>
                    <td><a class="deleteRow"></a></td>
                </tr>
                <tfoot>
                        <tr>
                            <td colspan="1">
                                <input type="button" class="btn btn-primary " id="addrow2" value="Add Training" />
                            </td>
                        </tr>
                </tfoot> 
                </table>  
                <br><br>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3"><input type="reset" value="Clear" class="btn btn-primary"></div>
                    <div class="col-md-6"><input type="submit" value="Submit" class="btn btn-primary"></div>
                </div>
        </form>
       </div>   
    </body>
</html>
