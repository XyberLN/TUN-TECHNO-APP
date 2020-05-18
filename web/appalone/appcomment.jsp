<%-- 
    Document   : appcomment
    Created on : Dec 26, 2019, 7:42:44 PM
    Author     : X-Top
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*,com.appnews.dao.*,com.appnews.beans.*" %>
<%@ page isErrorPage="true" %>
<%@ page import="java.sql.*" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.0/gh-fork-ribbon.min.css" />
<link rel="stylesheet" href="layout.css" />
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="assets/js/jquery.timeago.js" type="text/javascript"></script>
    <script src="assets/js/test_helpers.js" type="text/javascript"></script>
     <script type="text/javascript">
      jQuery(document).ready(function($) {
        prepareDynamicDates();
        $(".timeago").timeago();
//        $("#prog_date").text(jQuery.timeago(new Date()));
          $("#prog_date").text(jQuery.timeago("2020-04-16"));
        $("#prog_string").text(jQuery.timeago("2008-07-17"));
        $("#prog_element").text(jQuery.timeago("2008-07-20"));
      });

    </script>
  
    <!-- Google Analytics -->
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-2856277-2', 'auto');
      ga('send', 'pageview');
    </script>
    <!-- End Google Analytics -->
</head>
<style>
 
</style>
</head>

<body oncontextmenu="return false" onkeydown="return false" onmousedown="return false" onselectstart="return false" ondragstart="return false" onload="startTime()">
<script language="JavaScript">
function tb5_makeArray(n){ this.length = n; return this.length;
}
tb5_messages = new tb5_makeArray(3);
tb5_messages[0] = "Welcome to tuntechno.com";
tb5_messages[1] = "TUN's TECHNO";
tb5_messages[2] = "Train Your Mindset To Be Free As Bird";
tb5_rptType = 'infinite';
tb5_rptNbr = 100;
tb5_speed = 100;
tb5_delay = 400;
var tb5_counter=1;
var tb5_currMsg=0;
var tb5_stsmsg="";
function tb5_shuffle(arr){
var k;
for (i=0; i<arr.length; i++){ k = Math.round(Math.random() * (arr.length - i - 1)) + i; temp = arr[i];arr[i]=arr[k];arr[k]=temp;
}
return arr;
}
tb5_arr = new tb5_makeArray(tb5_messages[tb5_currMsg].length);
tb5_sts = new tb5_makeArray(tb5_messages[tb5_currMsg].length);
for (var i=0; i<tb5_messages[tb5_currMsg].length; i++){ tb5_arr[i] = i; tb5_sts[i] = "%$%$%";
}
tb5_arr = tb5_shuffle(tb5_arr);
function tb5_init(n){
var k;
if (n == tb5_arr.length){ if (tb5_currMsg == tb5_messages.length-1){ if ((tb5_rptType == 'finite') && (tb5_counter==tb5_rptNbr)){ clearTimeout(tb5_timerID); return; } tb5_counter++; tb5_currMsg=0; } else{ tb5_currMsg++; } n=0; tb5_arr = new tb5_makeArray(tb5_messages[tb5_currMsg].length); tb5_sts = new tb5_makeArray(tb5_messages[tb5_currMsg].length); for (var i=0; i<tb5_messages[tb5_currMsg].length; i++){ tb5_arr[i] = i; tb5_sts[i] = "*"; } tb5_arr = tb5_shuffle(tb5_arr); tb5_sp=tb5_delay;
}
else{ tb5_sp=tb5_speed; k = tb5_arr[n]; tb5_sts[k] = tb5_messages[tb5_currMsg].charAt(k); tb5_stsmsg = ""; for (var i=0; i<tb5_sts.length; i++) tb5_stsmsg += tb5_sts[i]; document.title = tb5_stsmsg; n++; } tb5_timerID = setTimeout("tb5_init("+n+")", tb5_sp);
}
function tb5_randomizetitle(){ tb5_init(0);
}
tb5_randomizetitle();
</script>
<!--<div class="top-container">
  <h2>TUN TECHNO</h2>>
  <h3>"Share & grow the world's knowledge!"</h3>
  <p>We want to connect the people who have knowledge to the people who need it, to bring together people with different perspectives so they can understand each other better, and to empower everyone to share their knowledge.</p>

</div>-->

<div class="header" id="myHeader">
  <div class="icon-bar">
  <a class="active" href="appnews.jsp"><i class="fa fa-home"></i></a> 
  <a href="#"><i class="fa fa-search"></i></a> 
  <a href="#"><i class="fa fa-envelope"></i></a> 
  <a href="#"><i class="fa fa-globe"></i></a>
  <a href="#"><i class='fas fa-user-lock'></i></a> 
</div>
</div>
<div class="content">
<div class="left">
    <h2>HAVE A GOOD DAY!</h2>
</div>   
<div class="main">
<a href="#home"><div class="cardz"> Admin</div></a>       
    <!--<div class="fb-page" data-href="https://www.facebook.com/tuntechno" data-tabs="timeline" data-width="" data-height="100" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false"><blockquote cite="https://www.facebook.com/tuntechno" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/tuntechno">Tuntechno.com</a></blockquote></div>-->
<%List<Empnews> list=EmpDaonews.getRecords(1,10);%>
<% for(Empnews en:list){ 
int pageid=en.getMv_id();
%>
    <h2>News</h2>      
<h3 style="text-align:center"><%=request.getParameter(en.getMv_titile())%></h3>
<!-- MAIN (Center website) -->
<div class="mainz">

<!-- Portfolio Gallery Grid -->
<div class="row">
    
  <div class="column comment">
<div class="content">
<br>
<div id="content">

  </div>
<div class="dates">
      <div class="start">
         <strong style="font-size:18px;">Release Date:</strong> <%=request.getParameter(en.getMv_date())%>
          <span></span>
      </div>
      <div class="ends">
          <strong style="font-size:18px;"><i class="fa fa-hourglass-half" aria-hidden="true"></i></strong> <time class="timeago" datetime="<%=request.getParameter(en.getMv_date())%>T00:00:00Z">Updated</time>
      </div>
  </div>
          <img src="images/getImage.jsp?id=<%=pageid%>" alt="<%=request.getParameter(en.getMv_date())%>" width="100%">
 <div class="stats">
                                  <%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter"+ pageid);
         if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
            out.println("Welcome to my website!");
            hitsCount = 1;
         } else {
            /* return visit */
            out.println("Like and Share On Facebook");
            hitsCount += 1;
         }
         application.setAttribute("hitCounter"+ pageid, hitsCount);
      %>
      <center>
         <!--<p>Total number of visits: <%= hitsCount%></p>-->
     </center>

<div class="btn">
    <strong style="color:blue;">Views ထားသည်</strong><i class="fa fa-eye" aria-hidden="true"></i> <%= hitsCount%>
</div>

<div class="btn">
  <strong style="color:blue;"><i class="far fa-thumbs-up"></i>Liked ထားသည်</strong>
  <span></span>
  <div class="fb-like" data-href="https://www.facebook.com/tuntechno/" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="false"></div>

</div>

<div class="btn">
    <strong style="color:purple;"><i class="far fa-share-square"></i>Shared ထားသည်</strong>
    <div class="fb-share-button" data-href="https://tuntechno.com/appalone/appcomment.jsp?id=<%=pageid%>&lifetime$Movie<%=request.getParameter(en.getMv_titile())%>" data-layout="button_count" data-size="small"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Ftuntechno.com%2Fapp%2Fappalone%2Fappcomment.jsp%3Fid%3D<%=pageid%>&lifetime$Movie<%=request.getParameter(en.getMv_titile())%>&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Share</a></div>
 <!--</div>-->
</div>
</div>
    <p><%=request.getParameter(en.getMv_info())%></p>
    <hr class="my-0">
            <div class="card-body py-2 small">
              <a class="mr-3 d-inline-block accordion">
                <i class="fa fa-fw fa-thumbs-up"></i>Like</a>
<div class="panel">
 <div class="chip">
    <img src="images/Heart.gif" alt="<%=request.getParameter(en.getMv_type())%>" width="100%">
  100
  <span class="closebtn" onclick="this.parentElement.style.display='none'">&times;</span>
</div>
 <div class="chip">
                           <!--<div class="fb-like" data-href="https://tuntechno.com" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="false"></div>-->
  <i class="fa fa-fw fa-thumbs-up"></i>

  <span class="closebtn" onclick="this.parentElement.style.display='none'">&times;</span>
</div>
</div>
<% } %>
                <a class="mr-3 d-inline-block accordion">
                  <i class="fa fa-fw fa-comment"></i>Comment</a>
                  <div class="panel">
                      <form action="#">
                         <input type="hidden" name="firstname" value="Mickey">
                           
                            <input type="text" name="lastname" value="">
                         <input type="submit" value="Submit">
                      </form>
                    </div>
  

                 
                  <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v6.0"></script>
                <a class="d-inline-block accordion">
                  <i class="fa fa-fw fa-share"></i>Share</a>
                  <div class="panel">
                      <p>Coming Soon....</p>
                  </div>
              </div>
      <hr>
      
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
  </div>
    <div class="centertab">
<ul class="tab">
              <li><button class="button_tab tablinks" href="javascript:void(0)" onclick="openCity(event, 'news')" id="defaultOpen">News</button>
              </li>
              <li><button class="button_tab tablinks" href="javascript:void(0)" onclick="openCity(event, 'articles')">Articles</button>
              </li>
              <li><button class="button_tab tablinks" href="javascript:void(0)" onclick="openCity(event, 'letters')">Letters</button>
              </li>
</ul>
  </div>
            <div id="news" class="tabcontent">
                <h3>News</h3>
        <center>
<div class="scrollmenu">
<a href="#home"><div class="cardz">
<img class="imgz" src="images/1.jpg" alt="Avatar" style="width:100%">
</div>
</a>
<a href="#news"><div class="cardz">
<img class="imgz" src="images/2.jpg" alt="Avatar" style="width:100%">
</div></a>
<a href="#home"><div class="cardz">
<img class="imgz" src="images/3.png" alt="Avatar" style="width:100%">
</div>
</a>
<a href="#news"><div class="cardz">
<img class="imgz" src="images/4.png" alt="Avatar" style="width:100%">
</div></a>
<a href="#news"><div class="cardz">
<img class="imgz" src="images/5.jpg" alt="Avatar" style="width:100%">
</div></a>
<a href="#home"><div class="cardz">
<img class="imgz" src="images/6.jpg" alt="Avatar" style="width:100%">
</div>
</a>
<a href="#news"><div class="cardz">
<img class="imgz" src="images/7.png" alt="Avatar" style="width:100%">
</div></a>

<a href="#home"><div class="cardz">
<img class="imgz" src="images/8.jpg" alt="Avatar" style="width:100%">
</div>
</a>
</div>
</center>
            </div> <!-- end tab -->

            <div id="articles" class="tabcontent">
                <h3>Article</h3>
                <p>Commin Soon</p>
            </div>

            <div id="letters" class="tabcontent">
                <h3>Letter</h3>
                <p>Commin Soon</p>
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
                        tablinks[i].className = tablinks[i].className.replace("active", "");
                    }
                    document.getElementById(cityName).style.display = "block";
                    evt.currentTarget.className += "active";
                }
                document.getElementById("defaultOpen").click();
            </script>
            <!--//End Tab Menu Style-->
        
  
  <center>
<div id="myBtnContainer">
<!--  <button class="btn" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('comment')">Comment</button>
  <button class="btn" onclick="filterSelection('like')">Like</button>
  <button class="btn" onclick="filterSelection('people')">Friends</button>-->
</div>
</center>
  
 <div class="column all">
     <div class="content"><br>

        <div class="stats">
        <center>
            <h2 style="color:red;">COVID-19 In Myanmar</h2>
                <h4>Updated On: <span id="demo"></span></h4>
              <script>
               var d = new Date();
               document.getElementById("demo").innerHTML = d.toDateString();
              </script>
         <p>COVID-19 ရောဂါစောင့်ကြပ်ကြည့်ရှုမှုနှင့်ပတ်သက်၍ သတင်းထုတ်ပြန်ခြင်း</p>
      </center>
            <div class="btn">
                <strong style="color:red;">ပိုးတွေ့သေဆုံးလူနာ (Death Confirmed) ထားသည်</strong><i class="far fa-share-square" style="color:red;"></i>
            </div>
            <div class="btn">
                <strong style="color:blue;">ပိုးတွေ့ (Lab Confirmed) ထားသည်</strong><i class="fa fa-eye" aria-hidden="true" style="color:blue;"></i>
            </div>
            <div class="btn">
                <strong style="color:#00FF00;">ပိုးတွေ့ပြန်လည်သက်သာ (Recovered) ထားသည်</strong><i class="far fa-thumbs-up" style="color:#00FF00;"></i> 
            </div>
        </div>
                  
    </div>
      <button class="button button1" >ကမ္ဘာလုံးဆိုင်ရာ</button>
  <hr>
  <iframe width="100%" height="500" src="https://covid-19-mm-89f01.web.app/">
      
</iframe>
  <hr>
          <div class="footer">
              <!--<p style='font-size:10px'>Covid-19 Dashboard By<a href="#">Mr.Fox Spirit</a></p>-->
                            <!--<a href="https://covid-19-mm-89f01.web.app/" class="Cbtn Cbtn-primary">ကမ္ဘာလုံးဆိုင်ရာ</a>-->
                             <!--<a href="https://covid-19-mm-89f01.web.app/" class="Cbtn Cbtn-danger">ကမ္ဘာလုံးဆိုင်ရာ</a>-->
                             <div class="column comment">
    <div class="content">
        <p>Powered by <a href="https://www.tuntechno.com/">TUN's TECHNOLOGY</a></p>
    </div>
     </div>
     
                        </div>
     </div>

   

<!--       
 <div class="column comment">
    <div class="content">
      <p>Comment</p>
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
     </div>-->
     
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>
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
   
 
    <button class="button button1" >Ask A Question!</button>
  <hr>
  <button class="button button2" style="color:blue;">Questions<br><span>21</span></button>
<button class="button button2" style="color:red;" >Answers<br><span>71</span></button>
  <button class="button button2" style="color:hsl(120,100%,50%);">Best Answers<br><span>13</span></button>
<button class="button button2" style="color:blue;">Users<br><span>21</span></button>
<hr>
</div>
<!--<button class="button button3">8px</button>
<button class="button button4">12px</button>
<button class="button button5" style="width: 100%;">50%</button>-->



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
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '669622043613752',
      cookie     : true,
      xfbml      : true,
      version    : 'v7.0'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
    <script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '669622043613752');
  fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=669622043613752&ev=PageView&noscript=1"
/></noscript>
</body>
</html>
