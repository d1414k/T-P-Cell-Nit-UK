/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})
student = document.getElementById("stu");
recruiter = document.getElementById("rec");
form = document.getElementById("modalLoginFormRec");
form2 = document.getElementById("modalLoginFormStu");
    recruiter.addEventListener("click",function(){
    form2.style.display = "none";
    form.style.display= "block";
    recruiter.style.color = "#FF33B5";
    student.style.color = "black";
});

    student.addEventListener("click",function(){
    form.style.display = "none";
    form2.style.display= "block";
    student.style.color = "#FF33B5";
    recruiter.style.color = "black";
});

var pass1 = document.getElementById("pass1").value;
var pass2 = document.getElementById("pass2").value;
function passMatch()
{
    if(pass1 != pass2)
    {
        //location.href="confirm.jsp";
        alert("Password don't match");
        return false;
    }
    return true;
}