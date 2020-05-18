<%-- 
    Document   : appmovie
    Created on : Apr 12, 2020, 12:24:29 AM
    Author     : X-Top
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<% Class.forName("org.mariadb.jdbc.Driver"); %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/mvlayout.css">
<script src='js/mvlayout.js'></script>
<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '2968918193196334');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=2968918193196334&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->
</head>
<style>  
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  
}
.az {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
  /*margin: 0 4px;*/
}
</style>
</head>
<body>
<!--<div class="top-container">
  <h1>Scroll Down</h1>
  <p>Scroll down to see the sticky effect.</p>
</div>-->
<div class="header" id="myHeader">
  <div class="icon-bar">
  <a class="az active" href="www.tuntechno.com"><i class="fa fa-home"></i></a> 
  <a class="az" href="#"><i class="fa fa-search"></i></a> 
  <a class="az" href="appnews.jsp?page=1"><i class="fa fa-envelope"></i></a> 
  <a class="az" href="appnews.jsp?page=2"><i class="fa fa-globe"></i></a>
  <a class="az" href="#"><i class='fas fa-user-lock'></i></a> 
</div>
</div>
<div class="content">
<!--<center>
       <div class="scrollmenu">
  <a href="#home"><div class="cardz">
  <img class="imgz" src="../images/action.png" alt="action" style="width:100%;">
</div>
</a>
  <a href="#news"><div class="cardz">
  <img class="imgz" src="../images/war.jpg" alt="war" style="width:100%">
  </div></a>
    <a href="#home"><div class="cardz">
  <img class="imgz" src="../images/drama.png" alt="Avatar" style="width:100%">
</div>
</a>
  <a href="#news"><div class="cardz">
  <img class="imgz" src="../images/sifi.png" alt="Avatar" style="width:100%">
  </div></a>
  
    <a href="#home"><div class="cardz">
  <img class="imgz" src="../images/horror.jpg" alt="Avatar" style="width:100%">
</div>
</a>
  <a href="#news"><div class="cardz">
  <img class="imgz" src="../images/thriller.png" alt="Avatar" style="width:100%">
  </div></a>
  
    <a href="#home"><div class="cardz">
  <img class="imgz" src="../images/mystery.png" alt="Avatar" style="width:100%">
</div>
</a>
  <a href="#news"><div class="cardz">
  <img class="imgz" src="../images/sifinew.png" alt="Avatar" style="width:100%">
  </div></a>
  
  
</div>

    </center>-->

<div class="left">
  <p>Have A Good Day Everyone!</p>
</div>

<div class="main">
  <h2 style="text-align:center">Welcome To Movies Mall</h2>
  <center>
<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')">Show all</button>
<!--  <button class="btn" onclick="filterSelection('action')">Action</button>
  <button class="btn" onclick="filterSelection('adventure')">Adventure</button>
  <button class="btn" onclick="filterSelection('comedy')">Comedy</button>
   <button class="btn" onclick="filterSelection('crime')">Crime</button>-->
  <button class="btn" onclick="filterSelection('drama')">Drama</button>
<!--   <button class="btn" onclick="filterSelection('fantasy')">Fantasy</button>
  <button class="btn" onclick="filterSelection('historical')">Historical</button>
  <button class="btn" onclick="filterSelection('horror')">Horror</button>
   <button class="btn" onclick="filterSelection('mystery')">Mystery</button>
  <button class="btn" onclick="filterSelection('political')">Political</button>
  <button class="btn" onclick="filterSelection('romance')">Romance</button>
   <button class="btn" onclick="filterSelection('social')">Social</button>
  <button class="btn" onclick="filterSelection('thriller')">Thriller</button>
  <button class="btn" onclick="filterSelection('animation')">Animation</button>-->
   <button class="btn" onclick="filterSelection('other')">0ther</button>
  
</div>
</center>
<!-- MAIN (Center website) -->
<div class="mainz">

<!-- Portfolio Gallery Grid -->
<div class="row">
    <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mariadb://167.88.15.112:3306/tuntechn_tundb?useUnicode=yes&characterEncoding=UTF-8","tuntechn_tundb","Sunloveheart@1");
//                     "jdbc:mariadb://127.0.0.1/appdb","root","");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from appvideodb ORDER BY mv_vid ") ; 
                 
              
        %>

            <% 
               
              
            while(resultset.next()){ %>
<!--New More Video-->
<div class="column <%=resultset.getString(4)%>">
<div class="tile content">
     <div class="wrapper">
      <div class="headera"><%=resultset.getString(2)%></div>
 
    <div class="content">
      <img src="getImage.jsp?id=<%=resultset.getString(1)%>" alt="<%=resultset.getString(4)%>" width="100%">
      <div class="btng">
          
      </div>    
    </div>      
<div class="dates">
   <div class="start">
       <strong>Release Date:</strong> 2020-03-13
       <span></span>
   </div>
   <div class="ends">
       <strong>Quality:</strong> HD
   </div>
</div>

<div class="stats">
    <div>
        <strong style="color:red;">Views ထားသည်</strong><i class="fa fa-eye" aria-hidden="true"></i> 3098
    </div>
    <div>
        <strong style="color:blue;">Liked ထားသည်</strong><i class="far fa-thumbs-up"></i> 562
    </div>
    <div>
        <strong style="color:purple;">Shared ထားသည်</strong><i class="far fa-share-square"></i> 182
    </div>
</div>                       
<div class="footer">                                                  
    <a class="Cbtn Cbtn-danger" href="appmv.jsp?id=<%=resultset.getString(1)%>&lifetime$Movie<%=resultset.getString(2)%>">Watch Now</a>
    <!--<a href="#" class="Cbtn Cbtn-primary">Share</a>-->
</div>
</div>
</div> 
    <hr>
       <%} %>
 </div>
         
 <div class="centertab">
  <ul class="tab">
                <li><button class="button_tab tablinks" href="javascript:void(0)" onclick="openCity(event, 'terms')">Terms</button>
                </li>
                <li><button class="button_tab tablinks" href="javascript:void(0)" onclick="openCity(event, 'privacy')">Privacy</button>
                </li>
                <li><button class="button_tab tablinks" href="javascript:void(0)" onclick="openCity(event, 'contact')">Contact</button>
                </li>               
            </ul>
</div>
<div id="Comment" class="tabcontent">
    <h3><a href="https://tuntechno.com/Terms-of-Services.html">Terms of Services</a></h3>
    <p></p>
</div>

<div id="Paris" class="tabcontent">
    <h3><a href="https://tuntechno.com/Privacy-Policy.html">Privacy Policy</a></h3>
</div>

<div id="Tokyo" class="tabcontent">
    <h3>Contact Us</h3>
    <p></p>
</div>
            <!--//End Tab Menu Style-->
<!-- END GRID -->
</div>
<!-- END MAIN -->
</div>
</div>
                   <script>
                function openCity(evt, cityName) {
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i = 0; i < tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }
                    tablinks = document.getElementsByClassName("tablinks");
                    for (i = 0; i < tablinks.length; i++) {
                        tablinks[i].className = tablinks[i].className.replace(" active", "");
                    }
                    document.getElementById(cityName).style.display = "block";
                    evt.currentTarget.className += " active";
                }
            </script>
 <script type="text/javascript" lang="javascript">
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>


<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("myHeader");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script>

</body>
</html>

