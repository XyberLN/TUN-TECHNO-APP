<%-- 
    Document   : appnews
    Created on : Apr 5, 2020, 9:00:23 PM
    Author     : Xyber LN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<%@ page import="java.sql.*" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<% Class.forName("org.mariadb.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="shortcut icon" type="image/icon" href="appalone/images/Heart.gif"/>
    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <!-- Slick slider -->
    <link href="appalone/assets/css/slick.css" rel="stylesheet">
    <!-- Theme color -->
    <link id="switcher" href="appalone/assets/css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main Style -->
    <link href="appalone/assets/style-funtoura.css" rel="stylesheet">

   <script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '100654438297639');
  fbq('track', 'PageView');
</script>
<nonscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=100654438297639&ev=PageView&noscript=1"/></nonscript>

    <!-- Poppins For Title -->
	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="appalone/assets/js/jquery.timeago.js" type="text/javascript"></script>
    <script src="appalone/assets/js/test_helpers.js" type="text/javascript"></script>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.0/gh-fork-ribbon.min.css" />
  
  <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-2856277-2', 'auto');
      ga('send', 'pageview');
    </script>
</head>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
 
}

.top-container {
  background-color: #f1f1f1;
  padding: 10px;
  text-align: center;
  
}

.header {
  padding: 10px 16px;
  background: #555;
  color: #f1f1f1;
}

.content {
  padding: 16px;
}

.sticky {
  position: fixed;
  top: 0;
  width: 100%;
   z-index: 400;
}

.sticky + .content {
  padding-top: 102px;
}


.icon-bar {
  width: 100%;
  background-color: #555;
  overflow: auto;
}

.icon-bar a {
  float: left;
  width: 20%;
  text-align: center;
  padding: 12px 0;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;
}

.icon-bar a:hover {
  background-color: #000;
}

.active {
  background-color: #4CAF50;
}



/* Use a media query to add a break point at 800px: */
@media screen and (max-width:800px) {
  .left, .main, .right {
    width:100%; /* The width is 100%, when the viewport is 800px or smaller */
  }
}
/*for menu style*/
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
<body oncontextmenu="return false" onkeydown="return false" onmousedown="return false" onselectstart="return false" ondragstart="return false">
<script language="JavaScript">
function tb5_makeArray(n){ this.length = n; return this.length;
}
tb5_messages = new tb5_makeArray(3);
tb5_messages[0] = "Welcome to tuntechno.com";
tb5_messages[1] = "TUN's TECHNO";
tb5_messages[2] = "ဗဟုသုတရှိသူများလူတိုင်းအားဗဟုသုတကိုမျှဝေရန်အားပေးသည်။";
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
for (var i=0; i<tb5_messages[tb5_currMsg].length; i++){ tb5_arr[i] = i; tb5_sts[i] = "TUNTECHNO.COM";
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
  <h1>Scroll Down</h1>
  <p></p>
</div>-->

<div class="header" id="myHeader">
  <div class="icon-bar">
  <a class="az active" href="index.jsp"><i class="fa fa-home"></i></a> 
  <a class="az" href="#"><i class="fa fa-search"></i></a> 
  <a class="az" href="#"><i class="fa fa-envelope"></i></a> 
  <a class="az" href="#"><i class="fa fa-globe"></i></a>
  <a class="az" href="#"><i class='fas fa-user-lock'></i></a> 
</div>
</div>
<!-- Start Featured Tours -->
		<section id="mu-featured-tours">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-featured-tours-area">
							<h2>Share & Grow the world's knowledge!</h2>
                                                        <p class="mu-title-content">ဗဟုသုတရှိသူများလူတိုင်းအားဗဟုသုတကိုမျှဝေရန်အားပေးသည်။</p>
							<!-- Start Featured Tours content -->
							<div class="mu-featured-tours-content">
								<div class="row">
                                                                    <% 
            Connection connection = DriverManager.getConnection(
                "jdbc:mariadb://167.88.15.112:3306/tuntechn_tundb?useUnicode=yes&characterEncoding=UTF-8","tuntechn_tundb","Sunloveheart@1");

            Statement statement = connection.createStatement() ;
            ResultSet resultset = 
                statement.executeQuery("select * from appmvdb ORDER BY mv_id DESC") ; 
                 
              
        %>

            <% 
               
              
            while(resultset.next()){ %>

            <div class="col-md-4">
                    <div class="mu-featured-tours-single">
                            <a href="appalone/appcomment.jsp?id=<%=resultset.getString(1)%>&lifetime$Movie<%=resultset.getString(2)%>"><img src="appalone/myPlaylist/getImage.jsp?id=<%=resultset.getString(1)%>&<%=resultset.getString(5)%>%&*<%=resultset.getString(4)%>" alt="<%=resultset.getString(4)%>" width="100%"></a>
                            <div class="mu-featured-tours-single-info">
                                    <h3><i class="fa fa-hourglass-half" aria-hidden="true"></i><time class="timeago" datetime="<%=resultset.getString(5)%>T00:00:00Z">Updated</time></h3>
                                    <h4><%=resultset.getString(2)%></h4>
                                     <span class="mu-price-tag" style="font-size: 15px;">On: <%=resultset.getString(5)%></span>
<!--    <div
  class="fb-like"
  data-share="true"
  data-width="450"
  data-show-faces="true">
</div>-->

                                    <a href="appalone/appcomment.jsp?id=<%=resultset.getString(1)%>&lifetime$Movie<%=resultset.getString(2)%>" class="mu-book-now-btn">Read Now</a>
                            </div>
                    </div>
         </div>
<%} %>


                    </div>
            </div>
            <!-- End Featured Tours content -->
    </div>
</div>
</div>
</div>
</section>
		<!-- End Featured Tours -->
                <div class="header">
                    <div class="icon-bar">
  <a class="az active" href="index.jsp"><i class="fa fa-home"></i></a> 
  <a class="az" href="#"><i class="fa fa-search"></i></a> 
  <a class="az" href="#"><i class="fa fa-envelope"></i></a> 
  <a class="az" href="#"><i class="fa fa-globe"></i></a>
  <a class="az" href="#"><i class='fas fa-user-lock'></i></a> 
</div>
                </div>
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
	<!-- End footer -->

	
	<!-- JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   
    <script type="text/javascript" src="appalone/assets/js/slick.min.js"></script>
    <!-- Ajax contact form  -->
    <script type="text/javascript" src="appalone/assets/js/app.js"></script>	
    <!-- Custom js -->
    <script type="text/javascript" src="appalone/assets/js/custom.js"></script>
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
    
</body>
</html>
