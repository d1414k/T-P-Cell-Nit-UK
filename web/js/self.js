/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})

rec = document.getElementById("modalLoginFormRec");
    rec.addEventListener("click",function(){
    form = document.getElementById("modalLoginFormRec");
    form2 = document.getElementById("modalLoginFormStu");
    form2.style.display = "none";
    form.style.display= "block";
});

stu = document.getElementById("modalLoginFormStu");
    stu.addEventListener("click",function(){
    form = document.getElementById("modalLoginFormStu");
    form2 = document.getElementById("modalLoginFormRec");
    form2.style.display = "none";
    form.style.display= "block";
});

var pass1 = document.getElementById("pass1");
var pass1 = document.getElementById("pass2");
function passMatch()
{
    if(pass1 != pass2)
        alert("Password don't match");
}