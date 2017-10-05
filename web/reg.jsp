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
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/self.css">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script> 
    </head>
    <body>
        <form action="confirm.jsp" class="form-control" method="post">
            <table align="center" class="table">
                <tr align="center">
                   <td><b><u>TPC Registration Form</u></b></td> 
                </tr>
                <tr align="center">
                   <td>(For the record of Training & Placement Cell)</td> 
                </tr>
            </table>
            <table align="center" class="table">
                <tr>
                   <td>Degree</td>
                   <td>
                       <select name="degree" style='border-radius: 5px;text-align: center;'>
                           <option value="b">B.Tech</option>
                           <option value="m">M.Tech</option>
                       </select>
                   </td>
                </tr>
                <tr>
                    <td>
                        Roll No
                    </td>
                    <td>
                        <!--<input type="text" name="roll" placeholder="Roll No Ex : BT15CSE059" pattern="(BT/MT/bt/mt)+[0-9]+[0-9]+(cse/civ/mec/eee/ece/CSE/CIV/MEC/EEE/ECE)+[0-9]+[0-9]+[0-9]" maxlength="10" style='border-radius: 5px;text-align: center;'> -->
                        <input type="text" name="roll" placeholder="Roll No Ex : BT15CSE059" class="in">
                    </td>
                </tr>
                <tr>
                    <td><b><u>General</u></b></td>
                </tr>
                <tr>
                    <td>
                        Name
                    </td>
                    <td>
                        <input type="text" name="fname" placeholder="First Name" class="in">
                    </td>
                    <td>
                        <input type="text" name="lname" placeholder="Last Name" class="in">
                    </td>
                </tr>
                <tr>
                    <td>
                        Father's Name
                    </td>
                    <td>
                        <input type="text" name="ffname" placeholder="First Name" class="in">
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
                        <input type='date' name='dob' class="in">
                    </td>
                </tr>
                <tr>
                    <td>
                        Category
                    </td>
                    <td>
                       <select name='category' class="in">
                           <option>General</option>
                           <option>OBC-NCL</option>
                           <option>SC</option>
                           <option>ST</option>
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
                        <input type="number" name="main_rank" class="in">   
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
                        maxlength = "6" class="in"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        E-mail Id
                    </td>
                    <td>
                        <input type="email" name="email" style='border-radius: 5px;text-align: center;'>
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
                        maxlength = "10" style='border-radius: 5px;text-align: center;'/>
                    </td>
                    <td>
                        Alternative Contact No
                    </td>
                    <td>
                        <input name="mob2"
                        oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                        type = "number"
                        maxlength = "10" style='border-radius: 5px;text-align: center;'/>
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
                        maxlength = "11" class="in"/> &nbsp;&nbsp;(Only SBI)
                    </td>
                </tr>
                <tr>
                    <td><b><u>EDUCATIONAL QUALIFICATION</u></b></td>
                </tr>
                <tr>
                    <td><b>Secondary and Higher secondary education details:</b></td>
                </tr>
                <tr>
                <table class='table'>
                    <tr>
                        <th rowspan='2'>Examination</th>
                        <th rowspan='2'>Board/Institution</th>
                        <th rowspan='2'>Passing Year</th>
                        <th colspan='3'style='text-align: center;'>Marks</th>
                        <th rowspan='2'>No. of Attempts</th>
                    </tr>
                    <tr>
                        <th>Obtained</th>
                        <th>Out of(Total)</th>
                        <th>%age</th>
                    </tr>
                    <tr>
                        <td>10th</td>
                        <td><input type='text' name='board10' style='border-radius: 5px;text-align: center;'></td>
                        <td><input name="pass_year10"
                            oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                            type = "number"
                            maxlength = "4" style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='obtain10' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='total10' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='percent10' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='attempts10' style='border-radius: 5px;text-align: center;'></td>
                    </tr>
                    <tr>
                        <td>12th</td>
                        <td><input type='text' name='board12' style='border-radius: 5px;text-align: center;'></td>
                        <td><input name="pass_year12"
                            oninput="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"
                            type = "number"
                            maxlength = "4" style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='obtain12' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='total12' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='percent12' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='attrmpts12' style='border-radius: 5px;text-align: center;'></td>
                    </tr>
                </table>
                </tr>
                <table class='table'>
                    <tr><td><b>Under Graduation</b></td></tr><br><br>
                    <tr>
                        <th rowspan='2'>Examination</th>
                        <th rowspan='2'>Credit Reg.</th>
                        <th rowspan='2'>Credit earned</th>
                        <th rowspan='2'>Total Credit Earned</th>
                        <th colspan='2' style='text-align: center;'>Grade</th>
                    </tr>
                    <tr>
                       
                        <th>SPI</th>
                        <th>CPI</th>
                    </tr>
                    <tr>
                        <td>1st Sem</td>
                        <td><input type='number' name='regcredit1' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='earnedcredit1' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='totalcredit1' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='spi1' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='cpi1' style='border-radius: 5px;text-align: center;'></td>
                    </tr>
                    <tr>
                        <td>2st Sem</td>
                        <td><input type='number' name='regcredit2' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='earnedcredit2' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='totalcredit2' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='spi2' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='cpi2' style='border-radius: 5px;text-align: center;'></td>
                    </tr>
                    <tr>
                        <td>3st Sem</td>
                        <td><input type='number' name='regcredit3' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='earnedcredit3' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='totalcredit3' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='spi3' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='cpi3' style='border-radius: 5px;text-align: center;'></td>
                    </tr>
                    <tr>
                        <td>4st Sem</td>
                        <td><input type='number' name='regcredit4' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='earnedcredit4' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='totalcredit4' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='spi4' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='cpi4' style='border-radius: 5px;text-align: center;'></td>
                    </tr>
                    <tr>
                        <td>5st Sem</td>
                        <td><input type='number' name='regcredit5' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='earnedcredit5' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='totalcredit5' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='spi5' style='border-radius: 5px;text-align: center;'></td>
                        <td><input type='number' name='cpi5' style='border-radius: 5px;text-align: center;'></td>
                    </tr>
                    <tr>
                        <td>6st Sem</td>
                        <td><input type='number' name='regcredit6' class='in'></td>
                        <td><input type='number' name='earnedcredit6' class='in'></td>
                        <td><input type='number' name='totalcredit6' class='in'></td>
                        <td><input type='number' name='spi6' class='in'></td>
                        <td><input type='number' name='cpi6' class='in'></td>
                    </tr>
                    <tr>
                        <th colspan='5'>Total</th>
                        <td><input type='number' name='total' class='in'><td>
                    </tr>
                </table>
            <table class='table'>
                <tr>
                    <td>Title of Minor Project</td>
                    <td><input type="text" name="minor" class="in" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Name of Guide</td>
                    <td><input type="text" name="minor_guide" class="in" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Title of Major Project</td>
                    <td><input type="text" name="major" class="in" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>Name of Guide</td>
                    <td><input type="text" name="major_guide" class="in" style="width: 100%"></td>
                </tr>
                <tr>
                    <td><b><u>PRACTICAL TRAINING</u></b></td>
                </tr>
                <tr>
                    <td>Have you under gone practical training</td>
                    <td><input type="radio" name="practical" value="yes" checked="true">Yes</td>
                    <td><input type="radio" name="practical" value="no">No</td>
                </tr>
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
                </tr>
                <tr>
                    <td>2.</td>
                    <td><input type="text" name="company2" class="in"></td>
                    <td><input type="date" name="start2" class="in"></td>
                    <td><input type="date" name="end2" class="in"></td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td><input type="text" name="company3" class="in"></td>
                    <td><input type="date" name="start3" class="in"></td>
                    <td><input type="date" name="end3" class="in"></td>
                </tr>
                <tr>
                    <td><b><u>EXTRA-CURRICULAR ACTIVITY</u></b></td>
                </tr>
                <tr>
                    <th>Sr. No</th>
                    <th>Name of Activity</th>
                    <th>Level of Participation</th>
                    <th>Year of Participation</th>
                </tr>
                <tr>
                    <td>1.</td>
                    <td><input type="text" name="activity1" class="in"></td>
                    <td><input type="number" name="level1" class="in"></td>
                    <td><input type="number" name="year1" class="in"></td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td><input type="text" name="activity2" class="in"></td>
                    <td><input type="number" name="level2" class="in"></td>
                    <td><input type="number" name="year2" class="in"></td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td><input type="text" name="activity3" class="in"></td>
                    <td><input type="number" name="level3" class="in"></td>
                    <td><input type="number" name="year3" class="in"></td>
                </tr>
                <tr>
                    <td><b><u>ADDITIONAL INFORMATION, IF ANY</u></b></td>
                </tr>
                <tr>
                    <td>a)</td>
                    <td><input type="text" name="additional1" class="in" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>b)</td>
                    <td><input type="text" name="additional2" class="in" style="width: 100%"></td>
                </tr>
                <tr>
                    <td>c)</td>
                    <td><input type="text" name="additional3" class="in" style="width: 100%"></td>
                </tr>
            </table>
            <h4 align="center"><b><u>UNDERTAKING</u></b></h4><br>
            <p>I, <input type="text" name="" class="in"> (BT15<input type="text" maxlength="6" class="in">), student of Department of
            <input type="text" maxlength="3" class="in">, am willing to enroll for the placement session 2017-18. I hereby declare
            that i will strictly follow the following T & P policy laid down by the training and placement cell,NIT
            Uttarakhand. I understand that if i fail to comply the T & P policy,I may be deregistered from placement
            activity of the Institute or I may lose my eligibility for TA/DA support for attending placement session(s)
            outside the campus.</p>
            <p>
            1. I will regularly participate in all the pre-placement and training activity organized by the institute
            time to time.</p>
            <p>
            2. Having attendance less than 85%,in these activity I may be deregisteded from the placement session.</p>
            <p>3. I will adhere to the placement policy of the institute.</p>
            <p>4. I will attend at least two counseling sessions with institute counselor as scheduled by the traing and 
            placement cell</p>
            <p>5. I will maintain discipline during the training session (on/off-campus)</p>
            <p>
                <h5><b>NOTE : </b></h5> Any suppression of data will be viewed seriously . Update your Email id and Contact number at T & P
                office from time to time.</p>

            <br><br>
        <div class="container">        
            <div class="row">
                <div class="col-md-6"><input type="reset" value="Clear" class="btn btn-primary"></div>
                <div class="col-md-6"><input type="submit" value="Next" class="btn btn-primary"></div>
            </div>
        </div>
        </form>
    </body>
</html>
