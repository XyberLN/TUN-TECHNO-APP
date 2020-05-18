<%-- 
    Document   : appnews
    Created on : Apr 5, 2020, 9:00:23 PM
    Author     : Xyber LN
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.appnews.dao.*,com.appnews.beans.*" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<html  lang="en-US">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta property="fb:pages" content="100654438297639" />
<!-- This site is optimized with the Yoast SEO plugin v14.0.4 - https://yoast.com/wordpress/plugins/seo/ -->
<title>Online Info - TUN's TECHNO</title>
<meta name="description" content="XyberLN" />
<meta name="robots" content="index, follow" />
<meta name="googlebot" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1" />
<meta name="bingbot" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1" />
<link rel="canonical" href="https://www.tuntechno.com/" />
<link rel="next" href="https://www.www.tuntechno.com/page/2" />
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="website" />
<meta property="og:title" content="Tun Techno News" />
<meta property="og:description" content="Share & Grow the world's knowledge!" />
<meta property="og:url" content="https://www.tuntechno.com/" />
<meta property="og:site_name" content="Online Info" />
<meta property="fb:app_id" content="669622043613752" />
<meta name="twitter:card" content="summary_large_image" />
<script type="application/ld+json" class="yoast-schema-graph">{"@context":"https://schema.org","@graph":[{"@type":"WebSite","@id":"https://www.tuntechno.com/#website","url":"https://www.tuntechno.com/","name":"Online Info","description":"XyberLN","potentialAction":[{"@type":"SearchAction","target":"https://www.tuntechno.com/?s={search_term_string}","query-input":"required name=search_term_string"}],"inLanguage":"en-US"},{"@type":"CollectionPage","@id":"https://www.tuntechno.com/#webpage","url":"https://www.tuntechno.com/","name":"Online Info - XyberLN","isPartOf":{"@id":"https://www.tuntechno.com/#website"},"description":"XyberLN","inLanguage":"en-US"}]}</script>
<!-- / Yoast SEO plugin. -->
<meta property="ia:markup_url" content="https://www.tuntechno.com/appnews.jsp?page=1?ia_markup=1" />

    <link rel="shortcut icon" type="image/icon" href="appalone/images/Heart.gif"/>  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
   <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <!-- Font Awesome -->
    <!--<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">-->
     <!-- Bootstrap CSS -->
    <!-- Slick slider -->
    <!--<link href="appalone/assets/css/slick.css" rel="stylesheet">-->
    <!-- Theme color -->
    <!--<link id="switcher" href="appalone/assets/css/theme-color/default-theme.css" rel="stylesheet">-->
    <!-- Main Style -->
    <link href="css/style-funtoura.css" rel="stylesheet">
    <!-- Poppins For Title -->
    <!--<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">-->
     <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>-->
   <!--<script src="appalone/assets/js/jquery.timeago.js" type="text/javascript"></script>-->
    <!--<script src="appalone/assets/js/test_helpers.js" type="text/javascript"></script>-->
<!--     <script type="text/javascript">
      jQuery(document).ready(function($) {
        prepareDynamicDates();
        $(".timeago").timeago();

//        $("#prog_date").text(jQuery.timeago(new Date()));
          $("#prog_date").text(jQuery.timeago("2020-04-16"));
        $("#prog_string").text(jQuery.timeago("2008-07-17"));
        $("#prog_element").text(jQuery.timeago("2008-07-20"));
      });
    </script>-->
    <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.2.0/gh-fork-ribbon.min.css" />-->
  
    <!-- Google Analytics -->
<!--    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-2856277-2', 'auto');
      ga('send', 'pageview');
    </script>-->

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
.read_btn {
    border-color: red;
    color: red ;
}


/* Use a media query to add a break point at 800px: */
@media screen and (max-width:800px) {
  .left, .main, .right {
    width:100%; /* The width is 100%, when the viewport is 800px or smaller */
  }
}
.center {
  text-align: center;
}

.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
  margin: 0 4px;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

/* Style the buttons */
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
String spageid=request.getParameter("page");
int pageid=Integer.parseInt(spageid);
int total=9;
if(pageid==1){}
else{
	pageid=pageid-1;
	pageid=pageid*total+1;
}
List<Empnews> list=EmpDaonews.getRecords(pageid,total);
//out.print("<h1>Page No: "+spageid+"</h1><br><br>");
                                   %>

 <% for(Empnews e:list){ %>

                                        <div class="col-md-4">
                                                <div class="mu-featured-tours-single">
                                                    <a href="appalone/appcomment.jsp?id=<%=e.getMv_id()%>&lifetime$Movie<%=e.getMv_titile()%>"><img src="appalone/images/getImage.jsp?id=<%=e.getMv_id()%>&<%=e.getMv_date()%>%&*<%=e.getMv_type()%>" alt="<%=e.getMv_type()%>" width="100%" height="50%"></a>
                                                        <div class="mu-featured-tours-single-info">
                                                                <h3><i class="fa fa-hourglass-half" aria-hidden="true"></i><time class="timeago" datetime="<%=e.getMv_date()%>T00:00:00Z">Updated</time></h3>
                                                                <h4><%=e.getMv_titile()%></h4>
                                                                 <span class="mu-price-tag" style="font-size: 15px;">On: <%=e.getMv_date()%></span>
                                                                <a href="appalone/appcomment.jsp?id=<%=e.getMv_id()%>&lifetime$Movie<%=e.getMv_titile()%>" class="read_btn mu-book-now-btn">Read Now</a>
                                                        </div>
                                                </div>
                                        </div>
<% } %>
</div>
</div>
<!-- End Featured Tours content -->
</div>
</div>
</div>
</div>
</section>
<!-- End Featured Tours -->
<!--pagination-->
<div class="center">
  <div class="pagination">
           <a href="#">&laquo;</a>
           <a href="appnews.jsp?page=1" class="active">1</a>
           <a href="appnews.jsp?page=2">2</a>
            <a href="appnews.jsp?page=3" >3</a>
            <a href="appnews.jsp?page=4" >4</a>
            <a href="appnews.jsp?page=5">5</a>
            <a href="#">&raquo;</a>
  </div>
</div>

	<!-- End footer -->
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
	
<!-- JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
<!--<script type="text/javascript" src="appalone/assets/js/slick.min.js"></script>-->
<!-- Ajax contact form  -->
<!--<script type="text/javascript" src="appalone/assets/js/app.js"></script>-->
<!-- Custom js -->
<!--<script type="text/javascript" src="appalone/assets/js/custom.js"></script>-->

</body>
</html>
