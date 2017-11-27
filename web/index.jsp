<%-- 
    Document   : index
    Created on : 24 Sep, 2017, 1:26:13 PM
    Author     : deepak
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="img/nitlogo.jpg">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/self.css">
<style>
* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;margin:0}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 800px;
  position: relative;
  margin: auto;
  margin-top: 170px;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name:fade;
  -webkit-animation-duration: 2.5s;
  animation-name: fade;
  animation-duration: 2.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
.message
{
  max-width:300px;
  position: relative;
  margin: auto;
  margin-top: 170px;
}
.body
{
    background-color: 	#e7e4e4;
}
#x
{
 width: 100%;   
}
</style>
</head>
<body class="body">
    <div class="row">
        <div class="col-md-3 message">
            <p style="text-align: justify">
                We welcome you to the web page of Training and Placement Cell, NIT Uttarakhand.
                National Institute of Technology, Uttarakhand (NIT UK) is one among the ten newly
                established NITs by the Ministry of Human Resource and Development, Government of India,
                providing technical education in various branches of Engineering. The Institute started 
                in 2010 with three branches viz. Electrical and Electronics, Electronics and Communication 
                and Computer Science & Engg. In the Academic year 2012-2013 Mechanical Engineering and in 
                the Academic year 2013-2014, Civil Engineering has been started. The Institute admits students
                to B.Tech. courses through Joint Entrance Examination (JEE) Mains (formerly known as AIEEE) 
                conducted all over India by CBSE.
            </p>
        </div>
        <div class="slideshow-container col-md-6">
            <div class="mySlides fade">
              <div class="numbertext">1 / 3</div>
              <img src="img/1tnp.jpg" style="width:100%">
            </div>
        <div class="mySlides fade">
          <div class="numbertext">2 / 3</div>
          <img src="img/2tnp.jpg" style="width:100%">
        </div>
        <div class="mySlides fade">
          <div class="numbertext">3 / 3</div>
          <img src="img/3tnp.jpg" style="width:100%">
        </div>
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <div class="col-md-3 message">
            <br>
            <div class="row">
                <div class="box-content btn btn-primary" id="x">
                    <h5>Upcomming Events</h5>
                </div>
                <div class="box-content" id="x" style="background-color: #fff">
                    <marquee direction = "up" onmouseover="this.stop();" onmouseout="this.start();"><p><a href="">Smartprix</a></p>
                        <p><a href="">Wipro</a></p>
                        <p><a href="">India Mart</a></p>
                    </marquee>
                </div>
            </div>
            <br>
            <div class="row">
                <div class="box-content btn btn-primary" id="x">
                    <h5>Recent Events</h5>
                </div>
                <div class="box-content" id="x" style="background-color: #fff">
                    <marquee direction = "up" onmouseover="this.stop();" onmouseout="this.start();"><p><a href="">Envestnet Yodlee</a></p>
                        <p><a href="">Directi</a></p>
                        <p><a href="">IBM</a></p>
                        <p><a href="">Capgemini India</a></p></marquee>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div style="text-align:center">
      <span class="dot" onclick="currentSlide(1)"></span> 
      <span class="dot" onclick="currentSlide(2)"></span> 
      <span class="dot" onclick="currentSlide(3)"></span> 
    </div>

    <footer class="py-5 bg-dark" style="background-color: #333">
        <div class="container">
            <p class="text-center text-white">Copyright © NITUK</p>
        </div>
        <!-- /.container -->
    </footer>
<script>
var slideIndex1 = 1;
showSlides1(slideIndex1);

function plusSlides(n) {
  showSlides1(slideIndex1 += n);
}

function currentSlide(n) {
  showSlides1(slideIndex1 = n);
}

function showSlides1(n) {
  var j;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex1 = 1}    
  if (n < 1) {slideIndex1 = slides.length}
  for (j = 0; j< slides.length; j++) {
      slides[j].style.display = "none";  
  }
  for (j = 0; j < dots.length; j++) {
      dots[j].className = dots[j].className.replace(" active", "");
  }
  slides[slideIndex1-1].style.display = "block";  
  dots[slideIndex1-1].className += " active";
}
</script>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
</body>
</html> 
