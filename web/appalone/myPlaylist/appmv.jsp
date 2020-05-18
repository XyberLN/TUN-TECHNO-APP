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
</style>
</head>
<body>

<!--<div class="top-container">
  <h1>TUN TECHNO</h1>
  

</div>-->

<div class="header" id="myHeader">
  <div class="icon-bar">
  <a class="active" href="http://tuntechno.com/tuntechnoapp/appalone/myPlaylist/"><i class="fa fa-home"></i></a> 
  <a href="#"><i class="fa fa-search"></i></a> 
  <a href="#"><i class="fa fa-envelope"></i></a> 
  <a href="#"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fas fa-user-lock"></i></a> 
</div>
</div>
<div class="content">
    <%
    String id = request.getParameter("id");
%>

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
  <img src="getImage.jsp?id=<%=id%>" width="200px"/>
</div>

<div class="main">
  <!--<h2 style="text-align:center">Welcome To Movies Mall</h2>-->
<!-- MAIN (Center website) -->
<div class="mainz">

<!-- Portfolio Gallery Grid -->
<div class="row">
   
<!--New More Video-->
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v7.0&appId=669622043613752&autoLogAppEvents=1"></script>
  <% 
            Connection connection = DriverManager.getConnection(
//                "jdbc:mysql://127.0.0.1/appdb","root","");
                    "jdbc:mariadb://167.88.15.112:3306/tuntechn_tundb?useUnicode=yes&characterEncoding=UTF-8","tuntechn_tundb","Sunloveheart@1");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from appvideodb where mv_vid='"+id+"'") ;      
            while(resultset.next()){   
             
             String mv_t = resultset.getString("mv_title");
              String mv_i = resultset.getString("mv_info");
              String mv_link = resultset.getString("mv_link");
              String dev_link= resultset.getString("dev_link");
            %>
     <div class="wrapper">
      <div class="headera"><%=mv_t%></div>   
<!--fb mv-->
<div class="fb-post" data-href="<%=mv_link%>" data-show-text="false" data-width="600">
    <blockquote cite="https://www.developers.<%=dev_link%>" class="fb-xfbml-parse-ignore">
    </blockquote></div>
                         <div class="dates">
                            <div class="start">
                                <strong>Release Date:</strong> Updated
                                <span></span>
                            </div>
                            <div class="ends">
                                <strong>Quality:</strong> HD
                            </div>
                        </div>

                        <div class="stats">
                                  <%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter"+resultset.getString(1));
         if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
            out.println("Welcome to my website!");
            hitsCount = 1;
         } else {
            /* return visit */
//            out.println("Welcome back to my website!");
            hitsCount += 1;
         }
         application.setAttribute("hitCounter"+resultset.getString(1), hitsCount);
      %>
      <center>
         <p>Like and Share On Facebook!</p>
      </center>

                         <div class="btn">
                    <strong style="color:blue;">Watched</strong><i class="fa fa-eye" aria-hidden="true"></i> <%= hitsCount%>
                </div>

                <div class="btn">
                  <strong style="color:blue;"><i class="far fa-thumbs-up"></i>Liked </strong>
                  <span></span>
                  <div class="fb-like" data-href="https://www.facebook.com/tuntechno/" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="false"></div>
                 
                </div>

                <div class="btn">
                    <strong style="color:purple;"><i class="far fa-share-square"></i>Shared </strong>
                    <div class="fb-share-button" data-href="https://tuntechno.com/tuntechnoapp/appalone/myPlaylist/" data-layout="button_count" data-size="small"><a target="_blank" href=https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Ftuntechno.com%2Ftuntechnoapp%2Fappalone%2FmyPlaylist%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Share</a></div>
                 <!--</div>-->
                </div>

                        </div>

                        
                        <div class="footer">
                             <a class="Cbtn Cbtn-danger" href="http://tuntechno.com/tuntechnoapp/appalone/myPlaylist/">Watch More Movies</a>
                        </div>
                    </div>
                </div> 
          
           <hr class="my-0">
              <div class="card-body py-2 small">
<!--                <a class="mr-3 d-inline-block accordion">
                  <i class="fa fa-fw fa-thumbs-up"></i>Like</a>
                  <div class="panel">
 <div class="chip">
  <img src="../../../UploadMe/getImage.jsp?id=117" alt="Person" width="96" height="96">
  100
  <span class="closebtn" onclick="this.parentElement.style.display='none'">&times;</span>
</div>
                       <div class="chip">
  <i class="fa fa-fw fa-thumbs-up"></i>
  100
  <span class="closebtn" onclick="this.parentElement.style.display='none'">&times;</span>
</div>
</div>

                <a class="mr-3 d-inline-block accordion">
                  <i class="fa fa-fw fa-comment"></i>Comment</a>
                  <div class="panel">
                      <form action="#">
                         <input type="hidden" name="firstname" value="Mickey">
                           
                            <input type="text" name="lastname" value="">
                         <input type="submit" value="Submit">
                      </form>
                    </div>
  -->

                 
                  
                <a class="d-inline-block accordion">
                  <i class="fa fa-fw fa-share"></i>Details</a>
                  <div class="panel">
                      <p><%=mv_i%></p>
                  </div>
              </div>
      <hr>
      <%} %>
      <script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].onclick = function(){
        this.classList.toggle("active");
        this.nextElementSibling.classList.toggle("show");
  }
}
</script>
    
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
<div id="terms" class="tabcontent">
    <h3><a href="https://tuntechno.com/Terms-of-Services.html">Terms of Services</a></h3>
    <p></p>
</div>

<div id="privacy" class="tabcontent">
    <h3><a href="https://tuntechno.com/Privacy-Policy.html">Privacy Policy</a></h3>
</div>

<div id="contact" class="tabcontent">
    <h3>Contact Us</h3>
    <p></p>
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
            <!--//End Tab Menu Style-->
        
  
<!--  <center>
<div id="myBtnContainer">
  <button class="btn" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('comment')">Comment</button>
  <button class="btn" onclick="filterSelection('like')">Like</button>
  <button class="btn" onclick="filterSelection('people')">Friends</button>
</div>
</center>
  
            <center>
       <div class="scrollmenu column all">

    <div class="content">
      <a href="#home"><div class="cardz">
  <img class="imgz" src="../images/action.png" alt="action" style="width:100%;">
</div>
</a>
    </div>

     
       
 <div class="column comment">
    <div class="content">
       <a href="#news"><div class="cardz">
  <img class="imgz" src="../images/war.jpg" alt="war" style="width:100%">
  </div></a>
    </div>
     </div>
     
       
 <div class="column like">
    <div class="content">
      <p>Like</p>
    </div>
     </div>
     
       
 <div class="column people">
    <div class="content">
      <p>People</p>
    </div>
     </div>
     
 END GRID 
</div>
            </center>

 END MAIN 
</div>


</div>
<script>
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
<div class="right">
    Related 
  
</div>
</div>-->

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

