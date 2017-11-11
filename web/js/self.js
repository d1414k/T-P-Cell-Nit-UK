
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus();
});
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
//for dynamic field
$(document).ready(function () {
    var counter = 0;

    $("#addrow").on("click", function () {
        var newRow = $("<tr>");
        var cols = "";

        cols += '<td><input type="text" class="form-control" name="name' + counter + '"/></td>';
        cols += '<td><input type="text" class="form-control" name="mail' + counter + '"/></td>';
        cols += '<td><input type="text" class="form-control" name="phone' + counter + '"/></td>';

        cols += '<td><input type="button" class="ibtnDel btn btn-md btn-danger "  value="Delete"></td>';
        newRow.append(cols);
        $("table.order-list").append(newRow);
        counter++;
    });



    $("table.order-list").on("click", ".ibtnDel", function (event) {
        $(this).closest("tr").remove();       
        counter -= 1
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