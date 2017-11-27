<html>
    <head>
        <style>
            /* meta */
.meta {
  position: absolute;
  right: 0;
  bottom: 0;
  background: #eee;
  padding: 1em;
  text-align: center;
  font-size: .7em;
}
            </style>
    </head>
    <body>
<section>
  <h2>This Will Not Be Downloaded</h2>
  <p>Stare at the wall, play with food and get confused by dust eat and than sleep on your face. Asdflkjaertvlkjasntvkjn (sits on keyboard) play time scamper human give me attention meow. Vommit food and eat it again meowwww so i am the best but sun bathe,
    yet white cat sleeps on a black shirt. Kick up litter flop over, or give attitude. Make meme, make cute face stare at the </p>

  
  <div class="content">
    <h2>This Will Be Downloaded</h2>
    <p>Stare at the wall, play with food and get confused by dust eat and than sleep on your face. Asdflkjaertvlkjasntvkjn (sits on keyboard) play time scamper human give me attention meow. Vommit food and eat it again meowwww so i am the best but sun bathe,
      yet white cat sleeps on a black shirt. Kick up litter flop over, or give attitude. Make meme, make cute face stare at the </p>
  </div>
</section>
<div id="editor"></div>

<button type="button" class="download">Download!</button>


<!-- meta -->
<div class="meta">
  <div>
    <p>
      <a href="http://allurewebsolutions.com/blog/save-pdf-specific-content-jspdf">See blog post for this CodePen</a>
    </p>
  </div>
  <div>
    <p>Created by <a href="http://allurewebsolutions.com">Allure Web Solutions</a></p>
    <a href="http://allurewebsolutions.com"><img src="http://allurewebsolutions.com/wp-content/uploads/2014/02/Allure-Web-Solutions-Logo.png" width="100"></a>
  </div>
</div>
<script>
    var doc = new jsPDF(); // create new jsPDF() function
var specialElementHandlers = { 
  '#editor': function(element, renderer) { // this is where the specific content of our PDF will be rendered
    return true;
  }
};

$('.download').click(function() { // upon clicking the download button, perform the following function
  doc.fromHTML(
    $('.content').html() // take HTML from the .content section
  , 15 // margin from the left
  , 15 // margin from the top
  , { 
    'width': 170, // max width of content in PDF
    'elementHandlers': specialElementHandlers // include are handler from above
  });
  doc.save('content.pdf'); // save pdf to a file with name content.pdf
});


// meta
var getUrl = window.location.host;
if (window.location.host != "s.codepen.io") {
  document.querySelector(".meta").style.display = "none";
}
</script>
</body>
</html>