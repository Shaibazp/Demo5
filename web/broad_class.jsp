<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from uitheme.net/zipto/home-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 06 Feb 2021 10:20:29 GMT -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>C-Mist Edutech</title>

    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="css/style.css">
    <script>
function myFunction() {
  document.getElementById("w3review2").value = document.getElementById("w3review1").value;
}
</script>

 <script type="text/javascript">
            function loadXMLDoc()
            {
                var xmlhttp;

                var keys = document.dummy.p_name.value
                
            
                var urls = "xml.jsp?ok=" + keys
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp = new XMLHttpRequest();

                } else
                {// code for IE6, IE5
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                    System.out.println("hello");
                }
                xmlhttp.onreadystatechange = function ()
                {
                    if (xmlhttp.readyState == 4)
                    {
                        var some = xmlhttp.responseXML.documentElement;
                        document.getElementById("w3review1").value = some.getElementsByTagName("empno")[0].childNodes[0].nodeValue;
                        document.getElementById("w3review2").value = some.getElementsByTagName("empname")[0].childNodes[0].nodeValue;
                        document.getElementById("w3review3").value = some.getElementsByTagName("empplace")[0].childNodes[0].nodeValue;
                        // document.getElementById("sp").value = some.getElementsByTagName("empaddr")[0].childNodes[0].nodeValue;
                    }
                }

                xmlhttp.open("GET", urls, true);
                xmlhttp.send();
            }
        </script>  



  <script type="text/javascript">
     
    function auto_height(elem) {  /* javascript */
    elem.style.height = "1px";
    elem.style.height = (elem.scrollHeight)+"px";
}
   </script> 
   
   <style>
       .auto_height { /* CSS */
  width: 100%;
}
       </style>
</head>

<body class="color-theme-blue open-font">

    <div class="preloader"></div>

    
    <div class="backdrop"></div>
    <div class="switchcolor"><img src="images/settings.png" alt="icon"></div>
    <div class="switchcolor-wrap">
        <a class="link sheet-close"><i class="ti-close"></i></a>
        <h2>Settings</h2>
        <h4>Choose Color Theme</h4>
        <ul>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="red"><i class="ti-check"></i>
                    <span class="circle-color bg-red" style="background-color: #ff3b30;"></span>
                </label>
            </li>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="green"><i class="ti-check"></i>
                    <span class="circle-color bg-green" style="background-color: #4cd964;"></span>
                </label>
            </li>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="blue" checked=""><i class="ti-check"></i>
                    <span class="circle-color bg-blue" style="background-color: #132977;"></span>
                </label>
            </li>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="pink"><i class="ti-check"></i>
                    <span class="circle-color bg-pink" style="background-color: #ff2d55;"></span>
                </label>
            </li>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="yellow"><i class="ti-check"></i>
                    <span class="circle-color bg-yellow" style="background-color: #ffcc00;"></span>
                </label>
            </li>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="orange"><i class="ti-check"></i>
                    <span class="circle-color bg-orange" style="background-color: #ff9500;"></span>
                </label>
            </li>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="gray"><i class="ti-check"></i>
                    <span class="circle-color bg-gray" style="background-color: #8e8e93;"></span>
                </label>
            </li>

            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="brown"><i class="ti-check"></i>
                    <span class="circle-color bg-brown" style="background-color: #D2691E;"></span>
                </label>
            </li>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="darkgreen"><i class="ti-check"></i>
                    <span class="circle-color bg-darkgreen" style="background-color: #228B22;"></span>
                </label>
            </li>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="deeppink"><i class="ti-check"></i>
                    <span class="circle-color bg-deeppink" style="background-color: #FFC0CB;"></span>
                </label>
            </li>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="teal"><i class="ti-check"></i>
                    <span class="circle-color bg-teal" style="background-color: #5f9ea0;"></span>
                </label>
            </li>
            <li>
                <label class="item-radio item-content">
                    <input type="radio" name="color-radio" value="darkorchid"><i class="ti-check"></i>
                    <span class="circle-color bg-darkorchid" style="background-color: #9932cc;"></span>
                </label>
            </li>
        </ul> 
    </div>

    <div class="main-wrapper">
        <!-- header wrapper -->
       
        <div class="header-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 navbar">
                         <a href="index.html" class="logo"><h1 class="fredoka-font ls-3 fw-700 text-current display1-size">C-Mist Edutech</h1></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                         <div class="collapse navbar-collapse" id="navbarNavDropdown" >
                            <ul class="navbar-nav nav-menu float-none text-center">
                                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Home <i class="ti-angle-down"></i></a>
                                     
                                
                                </li>
                                <li class="nav-item dropdown"><a class="nav-link  dropdown-toggle" data-toggle="dropdown" href="#">Pages <i class="ti-angle-down"></i></a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="about.html">About</a>
                                        <a class="dropdown-item" href="contact.html">Contact</a>
                                        <a class="dropdown-item" href="contact-two.html">Contact 2</a>
                                        <a class="dropdown-item" href="404.html">404</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Blog <i class="ti-angle-down"></i></a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="blog.html">Blog Default</a>
                                        <a class="dropdown-item" href="blog-sidebar.html">Blog Sidebar</a>
                                        <a class="dropdown-item" href="blog-sidebar-two.html">Blog Sidebar 2</a>
                                        <a class="dropdown-item" href="blog-single.html">Blog Single</a>
                                        
                                    </div>
                                </li>
                                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">Dashboard <i class="ti-angle-down"></i></a>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="dashboard.html">Dashboard</a>
                                        <a class="dropdown-item" href="stat.html">Stat</a>
                                        <a class="dropdown-item" href="email-box.html">Email</a>
                                        <a class="dropdown-item" href="message.html">Message</a>
                                        <a class="dropdown-item" href="saved.html">Saved</a>
                                        <a class="dropdown-item" href="profile.html">Profile</a>
                                        <a class="dropdown-item" href="password.html">Password</a>
                                        <a class="dropdown-item" href="payment.html">Payment</a>
                                    </div>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 text-right">
<!--                        <a href="#" class="header-btn bg-dark fw-500 text-white font-xssss" data-toggle="modal" data-target="#Modallogin">Login</a>
                        <a href="#" class="header-btn bg-current fw-500 text-white font-xssss" data-toggle="modal" data-target="#ModalregisterD">Register</a>
 -->
                    </div>
                </div>
            </div>
        </div>
        <div class="header-wrapper bg-dark shadow-none d-none d-lg-block p-0" >
            <div class="container" style="margin-left: 1px;">
                <div class="row">
                    <div class="col-md-3 text-left pr-2">
                        <a href="#" class="bg-current p-3 w-100  fw-600 text-white ls-3 font-xssss d-inline-block">BROWSE CATEGORIES <i class="ti-menu float-right"></i></a>
                    </div>
                    <div class="col-md-9 text-right">
                           <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>                      
                    </div>
                </div>
            </div>
        </div>
    
        <!-- header wrapper -->
         <div class="online bg-lightgrey-after pb-7 pt-3 position-relative">
            <div class="container" style="margin-left: 1px;">
                <div class="row">
                    <div class="col-lg-3 pr-md--2 margin">
                        <div class="bg-white shadow-xs rounded-lg h-81">
                            <a href="#"  class="dash-menu d-none d-block-md fw-700 p-3 text-current font-xsss ls-3 "> BROWSE CATEGORIES <i class="ti-menu float-right font-xss mt-1"></i></a>
                            <ul class="tab-ul">
                                
                               
                                <li><a href="#" class="bg-white p-3 border-bottom-light w-100 fw-700 text-grey-700 font-xsss d-inline-block"><i class="ti-mobile font-md float-left mr-3"></i>Preliminary Observations<i class="ti-angle-right float-right text-grey-400 mt-1"></i></a></li>
                                <li><a href="#" class="bg-white p-3 border-bottom-light w-100 fw-700 text-grey-700 font-xsss d-inline-block"><i class="ti-mobile font-md float-left mr-3"></i>Broad Classification<i class="ti-angle-right float-right text-grey-400 mt-1"></i></a></li>
                                 <li><a href="#" class="bg-white p-3 border-bottom-light w-100 fw-600 text-grey-500 font-xsss d-inline-block"><i class="ti-pie-chart font-md float-left mr-3"></i> Element Detection <i class="ti-angle-right float-right text-grey-400 mt-1"></i></a></li>
                                <li><a href="#" class="bg-white p-3 border-bottom-light w-100 fw-600 text-grey-500 font-xsss d-inline-block"><i class="ti-stats-up font-md float-left mr-3"></i> Solubility Tests  <i class="ti-angle-right float-right text-grey-400 mt-1"></i></a></li>
                                <li><a href="#" class="bg-white p-3 border-bottom-light w-100 fw-600 text-grey-500 font-xsss d-inline-block"><i class="ti-harddrives font-md float-left mr-3"></i> Functional Group Identify  <i class="ti-angle-right float-right text-grey-400 mt-1"></i></a></li>
                                <li><a href="#" class="bg-white p-3 border-bottom-light w-100 fw-600 text-grey-500 font-xsss d-inline-block"><i class="ti-game font-md float-left mr-3"></i> Derivative preparation  <i class="ti-angle-right float-right text-grey-400 mt-1"></i></a></li>
                                <li><a href="#" class="bg-white p-3 border-bottom-light w-100 fw-600 text-grey-500 font-xsss d-inline-block"><i class="ti-dropbox font-md float-left mr-3"></i> Discussion  <i class="ti-angle-right float-right text-grey-400 mt-1"></i></a></li>
                                <li><a href="#" class="bg-white p-3 border-bottom-light w-100 fw-600 text-grey-500 font-xsss d-inline-block"><i class="ti-credit-card font-md float-left mr-3"></i> Result <i class="ti-angle-right float-right text-grey-400 mt-1"></i></a></li>
<!--                                <li><a href="#" class="bg-white p-3 border-bottom-light w-100 fw-600 text-grey-500 font-xsss d-inline-block"><i class="ti-video-clapper font-md float-left mr-3"></i> Book Movie <i class="ti-angle-right float-right text-grey-400 mt-1"></i></a></li>
                                <li><a href="#" class="bg-white p-3 w-100 fw-600 text-grey-500 font-xsss d-inline-block"><i class="ti-package font-md float-left mr-3"></i> More <i class="ti-angle-right float-right text-grey-400 mt-1"></i></a></li>
                                <label style="margin-top: 10px;" class="w-100"> <marquee><h3><b>Video Demonstration</b></h3></marquee></label>-->
                                 <br> <a href="#" class="d-block text-center bg-current border-0 w-100 form-bttn fw-500 rounded-lg text-white member-bttn2"  >Demonstration</a>  <br>
                                <a href="#" class="d-block text-center bg-current border-0 w-100 form-bttn fw-500 rounded-lg text-white member-bttn2" style="margin-top: -18px;" >Chemical equation</a> 

                            
                            </ul>
                        </div>
                    </div>
                    
                      
                      <div class="col-lg-6 pl-md--2 pr-md--2 mt-sm--3" >
                        <div class="bg-white shadow-xs rounded-lg h-100 p-4 member-1">
                            <form action="#"   name="dummy"> 
                                <div class="row">
                                    <div class="col-sm-12 mb-2"><div class="fw-700 font-xxl mb-3" style="margin-top: -15px;">Broad Classification</div>
 
                                        <div class="col-sm-12" style="margin-top: -15px;" > Instruction<textarea id="w3review1" rows="2" readonly class="auto_height"   oninput="auto_height(this)" name="instuction"    style="width: 100%; margin-top: -5px;" > </textarea></div>
                                     <div class="col-sm-12" style="margin-top: -10px;">Rational<textarea id="w3review2" name="w3review2" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                    <div class="col-sm-12" style="margin-top: -10px;">Procedure<textarea id="w3review3" name="w3review3" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                   <div class="col-sm-12" style="margin-top: -10px;">Observation<textarea id="w3review4" name="w3review4" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                    <div class="col-sm-12" style="margin-top: -10px;">Reagent/s<textarea id="w3review5" name="w3review5" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -1px;"> </textarea></div>
                                
                                 <br>
                                    <div class="col-sm-6"><a href="#" class="d-block text-center bg-current border-0 w-100 form-bttn fw-500 rounded-lg text-white member-bttn2">Proceed to Recharge</a></div>
                                  <button name="p_name" onclick="loadXMLDoc()">Copy Text</button>
                                   </form>      
                           
                                  
                                     
          
            
                                    <div class="col-sm-12">
                                        <h4 class="mb-3 fw-600 font-xss mt-2">Promo Code</h4>
                                
                                     
<!--combobox for Classification--> 
                                    <div class="col-sm-12 mb-4"  style="margin-top:20px; ">
                                        <div class="custom-control mr-4   custom-control-inline">
                                             <label for="Classification">Classification:</label>
                                        </div>
                                        <div class="custom-control mr-0   custom-control-inline">
                                            <select name="cars" id="cars" style="width: 200px;">
                                                <option value="volvo" >Select One</option>
                                                <option value="Aliphatic">Aliphatic</option>
                                                <option value="Aromatic">Aromatic</option>
                                                 
                                            </select>      
                                        </div>
                                    </div>
 
  
<!--Button--> 
                                    <div class="col-sm-12 mb-4" style="margin-top:20px; ">
                                        <div class="custom-control mr-4   custom-control-inline">
                             
                                            <input type="submit" value="Start">

                                        </div>
                                        <div class="custom-control mr-0   custom-control-inline">
                               <br> <a href="#" class="d-block text-center bg-current border-0 w-100 form-bttn fw-500 rounded-lg text-white member-bttn2"  >Demonstration</a>  <br>
  
                                            
                                        </div>
                                    </div>



                                    </div>
                                </div>
                           
                        </div>
                        <div class="member-2" style="display: none;">
                            <div class="card w-100 shadow-xs rounded-lg border-0">
                                <!-- <div class="card-body w-100 bg-greylight p-3 border-bottom"><a href="#" class="mb-0 text-grey-800 fw-500 font-xsss"><i class="ti-angle-left text-grey-800 dark-text-white font-xssss mr-1"></i> Go Back</a></div> -->
                                <div class="card-body w-100 p-4 border-0"> 
                                    <h4 class="float-left fw-600 mb-0 font-sm text-grey-900">Recharge or Bill payment Order <br>
                                        <span class="font-xssss text-grey-500 fw-300">Transaction ID: 12679624220</span></h4>
                                     <!-- <h4 class="mb-0 float-right font-xl text-grey-900 mt-3 fw-600"><span class="font-xs">$</span> 129</b></h4>    -->
                                </div>
                            </div>
                            <div class="card mt-3 w-100 shadow-xs rounded-lg border-0">
                                <div class="card-body w-100 p-4 border-bottom"><h4 class="mb-0 text-grey-500 fw-500 font-xsss">SELECT AN OPTION TO PAY</h4></div>
                            </div>

                            <div class="card bg-white border-0 shadow-xs">
                                <div class="card-body d-flex justify-content-between align-items-end p-4">
                                    <div>
                                        <h4 class="text-grey-700 mb-0 d-flex align-items-center justify-content-between mt-0 fw-600 lato-font font-xsss">
                                            <img src="images/b-10.png" alt="image" class="float-left mr-3">
                                             4321 4432 6565 **** 
                                        </h4>
                                    </div>
                                    <div class="round float-right mb-2">
                                        <input id="radio-1" class="radio-custom" name="radio-group" type="radio" checked="">
                                        <label for="radio-1" class="radio-custom-label m-0"></label>
                                    </div>
                                </div>
                            </div>

                            <div class="card bg-white shadow-xs border-0">
                                <div class="card-body d-flex justify-content-between align-items-end p-4">
                                    <div>
                                        <h4 class="text-grey-700 mb-0 d-flex align-items-center justify-content-between mt-0 fw-600 lato-font font-xsss">
                                            <img src="images/b-9.png" alt="image" class="float-left mr-3">
                                            ***port@gmail.com
                                        </h4>
                                    </div>
                                    <div class="round float-right mb-2">
                                        <input id="radio-2" class="radio-custom" name="radio-group" type="radio">
                                        <label for="radio-2" class="radio-custom-label m-0"></label>
                                    </div>

                                </div>
                            </div>

                            <div class="card bg-white shadow-xs border-0">
                                <div class="card-body d-flex justify-content-between align-items-end p-4">
                                    <div>
                                        <h4 class="text-grey-700 mb-0 d-flex align-items-center justify-content-between mt-0 fw-600 lato-font font-xsss">
                                            <img src="images/b-11.png" alt="image" class="float-left mr-3">
                                             6565 4321 4432  **** 
                                        </h4>
                                    </div>
                                    <div class="round float-right mb-2">
                                        <input id="radio-3" class="radio-custom" name="radio-group" type="radio">
                                        <label for="radio-3" class="radio-custom-label m-0"></label>
                                    </div>

                                </div>
                            </div>

                            <div class="card w-100 bg-greylight shadow-none rounded-lg border-0 mt-3">
                                <div class="card-body w-100 p-4 border-0"> 
                                    <h4 class="mb-0 float-left font-xxl text-grey-700 mt-0 fw-900"><span class="font-xs">$</span> 129<br><span class="font-xssss text-grey-500 fw-300 d-block">inclusive tax*</span></h4>   
                                    <a href="#" class="mt-0 btn lh-32 member-bttn3 rounded-lg ls-3 bg-current border-0 font-xssss text-white fw-600 ls-md text-uppercase float-right w175 p-3">Next</a>
                                </div>
                            </div>
                        </div>

                        <div class="member-3" style="display: none;">
                            <div class="card dark-card bg-white shadow-xs p-4 text-center border-0">
                                <div class="card-body">
                                    <i class="ti-check btn-round-xxxl text-white bg-success display3-size mt-5 shadow-lg"></i>
                                    <h2 class="fw-900 display1-size mb-2 lh-3 mt-4">Done </h2>
                                    <p class="font-xsss text-grey-500 pl-3 pr-3">We con't seem to find the page you are looking for...</p>
                                    <a href="home-1.html" class="mt-3 mb-5 border-0 w200 bg-current pt-2 pb-2 lh-32 text-white fw-600 rounded-lg d-inline-block btn-light font-xsss ls-3 text-uppercase">Continue</a>
                                </div>
                            </div>
                            <div class="card w-100 bg-greylight shadow-none rounded-lg border-0 mt-3">
                                <div class="card-body w-100 p-4 border-0"> 
                                    <h4 class="mb-0 float-left font-xssss text-grey-700 mt-1 fw-300 mb-0"><i class="ti-reload text-success mr-2"></i> 100% Secure Payments Powered by Paytm</h4>   
                                    <img src="images/payment-logo.png" alt="icon" class="float-right w250">
                                </div>
                            </div>
                        </div>


                    </div>
                   
                </div>
            </div>            
        </div>
         
        
        
        
        
        <div class="feedback-wrapper bg-greyblue pt-7 pb-7">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center mb-5 pb-3 page-title style1">
                        <h2 class="text-grey-900 fw-300 display2-size">Our Customers love what we do</h2>
                    </div>
                    <div class="col-lg-12">
                        <div class="feedback-slider-2 owl-carousel owl-theme overflow-visible">
                            <div class="owl-items">
                                <div class="card shadow-lg rounded-lg p-5 bg-white text-left border-0">
                                    <img src="images/icon-12.png" alt="icon" class="position-absolute right-0 mr-5 top-0 mt-4 w30 opacity-2">
                                    <h4 class="text-current font-xs fw-700 mb-3">Good Quality</h4>
                                    <p class="font-xsss fw-500 text-grey-500 lh-32 mt-0 mb-4">Human coronaviruses are common and are typically associated with mild illnesses, similar to the common cold. We are digital agency.</p>
                                    <div class="card-body p-0">
                                        <img src="images/user-6.png" alt="user" class="w60 float-left mr-3">
                                        <h4 class="text-grey-900 fw-700 font-xsss mt-2 pt-1">Thomas Smith</h4>    
                                        <h5 class="text-uppercase font-xsssss fw-700 mb-1 ls-3 text-grey-500">Ceo Zipto</h5>
                                    </div>                            
                                </div>
                            </div>

                            <div class="owl-items">
                                <div class="card shadow-lg rounded-lg p-5 bg-white text-left border-0">
                                    <img src="images/icon-12.png" alt="icon" class="position-absolute right-0 mr-5 top-0 mt-4 w30 opacity-2">
                                    <h4 class="text-current font-xs fw-700 mb-3">Clean Code</h4>
                                    <p class="font-xsss fw-500 text-grey-500 lh-32 mt-0 mb-4">Human coronaviruses are common and are typically associated with mild illnesses, similar to the common cold. We are digital agency.</p>
                                    <div class="card-body p-0">
                                        <img src="images/user-7.png" alt="user" class="w60 float-left mr-3">
                                        <h4 class="text-grey-900 fw-700 font-xsss mt-2 pt-1">Thomas Smith</h4>    
                                        <h5 class="text-uppercase font-xsssss fw-700 mb-1 ls-3 text-grey-500">Ceo Zipto</h5>
                                    </div>                            
                                </div>
                            </div>

                            <div class="owl-items">
                                <div class="card shadow-lg rounded-lg p-5 bg-white text-left border-0">
                                    <img src="images/icon-12.png" alt="icon" class="position-absolute right-0 mr-5 top-0 mt-4 w30 opacity-2">
                                    <h4 class="text-current font-xs fw-700 mb-3">Awesome Design</h4>
                                    <p class="font-xsss fw-500 text-grey-500 lh-32 mt-0 mb-4">Human coronaviruses are common and are typically associated with mild illnesses, similar to the common cold. We are digital agency.</p>
                                    <div class="card-body p-0">
                                        <img src="images/user-4.png" alt="user" class="w60 float-left mr-3">
                                        <h4 class="text-grey-900 fw-700 font-xsss mt-2 pt-1">Thomas Smith</h4>    
                                        <h5 class="text-uppercase font-xsssss fw-700 mb-1 ls-3 text-grey-500">Ceo Zipto</h5>
                                    </div>                            
                                </div>
                            </div>
                            <div class="owl-items">
                                <div class="card shadow-lg rounded-lg p-5 bg-white text-left border-0">
                                    <img src="images/icon-12.png" alt="icon" class="position-absolute right-0 mr-5 top-0 mt-4 w30 opacity-2">
                                    <h4 class="text-current font-xs fw-700 mb-3">Great Support</h4>
                                    <p class="font-xsss fw-500 text-grey-500 lh-32 mt-0 mb-4">Human coronaviruses are common and are typically associated with mild illnesses, similar to the common cold. We are digital agency.</p>
                                    <div class="card-body p-0">
                                        <img src="images/user-3.png" alt="user" class="w60 float-left mr-3">
                                        <h4 class="text-grey-900 fw-700 font-xsss mt-2 pt-1">Thomas Smith</h4>    
                                        <h5 class="text-uppercase font-xsssss fw-700 mb-1 ls-3 text-grey-500">Ceo Zipto</h5>
                                    </div>                            
                                </div>
                            </div>
                        </div>   
                    </div>              
                </div>
            </div>
        </div>
   
 
       

        
        <!-- footer wrapper -->
        <div class="footer-wrapper bg-dark mt-0">
            <div class="container">
                <div class="row">
                     <div class="col-sm-6 col-xs-12">
                        <p class="copyright-text">© 2021 copyright. All rights reserved.</p>
                    </div>
                    <div class="col-sm-6 col-xs-12 text-right">
                        <p class="copyright-text float-right">Design by <a href="#" class="">uitheme</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer wrapper -->

    </div> 

    <!-- Modal Register -->
    <div class="modal bottom fade" id="ModalregisterD" tabindex="-1" role="dialog">
         <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content border-0">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="ti-close text-grey-500"></i></button>
                <div class="modal-body p-3 d-flex align-items-center bg-none">
                    <div class="card shadow-none rounded-0 w-100 p-2 pt-3 border-0">
                        <div class="card-body rounded-0 text-left pt-0">
                            <h2 class="fw-600 display2-size mb-4">Create <br>your account</h2>
                            <form>
                                <div class="form-group mb-3">
                                    <input type="text" class="form-control h60 border-2 bg-color-none text-grey-700" value="Name">                        
                                </div>
                                <div class="form-group mb-3">
                                    <input type="text" class="form-control h60 border-2 bg-color-none text-grey-700" value="Email">                        
                                </div>
                                <div class="form-group icon-tab mb-3">
                                    <input type="text" class="form-control h60 border-2 bg-color-none text-grey-700" value="Password">
                                    <i class="ti-lock text-grey-700 pr-0"></i>
                                </div>
                                <div class="form-group icon-tab mb-3">
                                    <input type="text" class="form-control h60 border-2 bg-color-none text-grey-700" value="Confirm Password">
                                    <i class="ti-lock text-grey-700 pr-0"></i>
                                </div>
                            </form>
                             
                            <div class="col-sm-12 p-0 text-center">
                                <a href="#" class="form-control h60 bg-current text-white font-xss fw-500 border-2 border-0 p-0">Create an account</a>
                                <h6 class="text-grey-500 font-xsss fw-500 mt-2 mb-4 lh-32">Are you already member? <a href="#" class="fw-700 ml-1">Login</a></h6>
                                <div class="row">
                                    <div class="col-6 pr-1"><a href="#" class="form-control h60 p-0 pl-5 bg-lightblue text-grey-700 border-2 border-0 font-xssss fw-600 text-left position-relative"><img src="images/icon-facebook.png" style="width: 30px; position: absolute; left:10px; top:15px;" alt=""> Connect with Facebook</a></div>
                                    <div class="col-6 pl-1"><a href="#" class="form-control h60 p-0 pl-5 bg-lightblue text-grey-700 border-2 border-0 font-xssss fw-600 text-left position-relative"><img src="images/google-icon.png" style="width: 30px; position: absolute; left:10px; top:15px;" alt=""> Connect with Google</a></div>
                                </div>
                            </div>
                            
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Register -->
    <div class="modal bottom fade" id="Modallogin" tabindex="-1" role="dialog">
         <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content border-0">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="ti-close text-grey-500"></i></button>
                <div class="modal-body p-3 d-flex align-items-center bg-none">
                    <div class="card shadow-none rounded-0 w-100 p-2 pt-3 border-0">
                        <div class="card-body rounded-0 text-left pt-0 pb-2">
                            <h2 class="fw-600 display2-size mb-4">Login into <br>your account</h2>
                            <form>
                                
                                <div class="form-group mb-3">
                                    <input type="text" class="form-control h60 border-2 bg-color-none text-grey-700" value="Email">                        
                                </div>
                                <div class="form-group icon-tab mb-1">
                                    <input type="text" class="form-control h60 border-2 bg-color-none text-grey-700" value="Password">
                                    <i class="ti-lock text-grey-700 pr-0"></i>
                                </div>
                                <div class="form-check text-left mb-3">
                                    <input type="checkbox" class="form-check-input mt-2" id="exampleCheck1">
                                    <label class="form-check-label font-xsss text-grey-500" for="exampleCheck1">Remember me</label>
                                    <a href="#" class="fw-600 font-xsss text-grey-700 mt-1 float-right">Forgot your Password?</a>
                                </div>
                            </form>
                             
                            <div class="col-sm-12 p-0 text-center">
                                <a href="#" class="form-control h60 bg-current text-white font-xss fw-500 border-2 border-0 p-0">Login</a>
                                <h6 class="text-grey-500 font-xsss fw-500 mt-2 mb-0 lh-32">Dont have account <a href="#" class="fw-700 ml-1">Register</a></h6>
                            </div>
                            
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>

   

    <script src="js/plugin.js"></script>
    <script src="js/scripts.js"></script>
    
</body>


<!-- Mirrored from uitheme.net/zipto/home-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 06 Feb 2021 10:21:23 GMT -->
</html>