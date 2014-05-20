<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Education Time</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.8.2.min.js"></script>
<!-- liteAccordion is Homepage Only -->
<link rel="stylesheet" href="scripts/liteaccordion-v2.2/css/liteaccordion.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper row1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="index.html">Education Time</a></h1>
      <p>Hiegher Education Debate</p>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="topnav">
    <ul>
      <li class="active"><a href="HomePage.aspx">Home</a></li>
      <li><a href="style-demo.html">Conatct Us</a></li>
      <li class="last"><a href="About Us.aspx">About US</a></li>
       <li class="last"><a href="LogIn.aspx">Login</a></li>
    </ul>
    <div  class="clear"></div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="featured_slide">
    <!-- ####################################################################################################### -->
    <ol>
      <li>
        <h2><span>Slide 1</span></h2>
        
          <div><img src="images/3.jpg" alt="" /></div>
      </li>
      <li>
        <h2><span>Slide 2</span></h2>
        <div><img src="images/2.jpg" alt="" /></div>
      </li>
      <li>
        <h2><span>Slide 3</span></h2>
        <div><img src="images/1.png" alt="" /></div>
      </li>
      <li>
        <h2><span>Slide 4</span></h2>
        <div><img src="images/4.jpg" alt="" /></div>
      </li>
      <li>
        <h2><span>Slide 5</span></h2>
        <div><img src="images/5.jpg" alt="" /></div>
      </li>
    </ol>
    <!-- ####################################################################################################### -->
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row4">
  <div id="container" class="clear">
    <!-- ####################################################################################################### -->
    <div id="homepage" class="clear">
      <div class="fl_left">
        <h2 class="title">Quick Links</h2>
        <h2 class="title">Keep Up With What's Happening</h2>
        <div id="hpage_socialize">
          <ul>
            <li><span>Facebook:</span> <a href="#">www.facebook.com/ITI</a></li>
            <li><span>Twitter:</span> <a href="#">www.twitter.com/ITI</a></li>
            <li class="last"><span>LinkedIn:</span> <a href="#">www.linkedin.com/ITI</a></li>
          </ul>
        </div>
      </div>
      <!-- ############### -->
      <div class="fl_right">
        <h2 class="title">WELCOME TO EXAM ONLINE</h2>
          <p>Onlinexams is a web based interactive, independent and intelligent examination platform for students. This innovative platform extend the e-learning capabilities of any educational institution by providing them a real time analysis on their institution health. This platform covers wide range of institutions and boards like,ITI</p>
          <p>Onlinexams not only provide hassle free implementation of cutting edge technology into your institution but also backs up with the real and updated question bank customized as per your needs. This platform works perfectly on any device like mobile, tab, laptop, desktop, and on any platform  like i.e Windows, Mac or Linux. This revolutionary product is a must for every institution who wants to make their pupil high achievers.</p>
          <p>Onlinexams is not a substitute of  your current e-learning solution but a analyzer which closely monitar the performance of not only of your pupils but also of your faculty and institution.</p>
      </div>
    </div>
    <!-- ####################################################################################################### -->
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row5">
  <div id="footer" class="clear">
    <!-- ####################################################################################################### -->
    <div class="foot_contact">
      <h2>ITI</h2>
      <address>
          Alexandria Branch<br />
      </address>
      <ul>
        <li><strong>Tel:</strong>01096833356</li>
        <li class="last"><strong>Email:</strong> <a href="#">NairaMagdy.work@gmail.com</a></li>
      </ul>
    </div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved -<a href="#">Naira@ITI</a></p>
  </div>
</div>
<!-- liteAccordion is Homepage Only -->
<script type="text/javascript" src="scripts/liteaccordion-v2.2/js/liteaccordion.jquery.min.js"></script>
<script type="text/javascript">
    $("#featured_slide").liteAccordion({
        theme: "os-tpl",

        containerWidth: 960, // fixed (px)
        containerHeight: 360, // fixed (px) - overall height of the slider
        headerWidth: 48, // fixed (px) - slide spine title

        firstSlide: 1, // displays slide (n) on page load
        activateOn: "click", // click or mouseover
        autoPlay: true, // automatically cycle through slides
        pauseOnHover: true, // pause slides on hover
        rounded: false, // square or rounded corners
        enumerateSlides: true, // put numbers on slides

        slideSpeed: 800, // slide animation speed
        cycleSpeed: 3000, // time between slide cycles
    });
</script>
</body>
</html>
