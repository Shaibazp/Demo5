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

        <!--========================================================-->

        <script type="text/javascript">
            
            function enable()
            {

                document.getElementById("myButton").disabled = false;
                document.getElementById("myButton").style.visibility='visible';
                document.getElementById("submit").style.visibility='hidden';
                document.getElementById("Couplings").style.visibility='hidden';
                document.getElementById("Liebermanns").style.visibility='hidden';
                document.getElementById("Carbylmines").style.visibility='hidden';
                document.getElementById("Riminis").style.visibility='hidden';
                document.getElementById("Simonss").style.visibility='hidden';
                document.getElementById("Amides").style.visibility='hidden';

            }
        </script>
        <script type="text/javascript">
            function enablebtn()
            {
                var btn = document.getElementById("myButton");
                //alert(btn.value);
                if (btn.innerHTML == "Click for Coupling Test")
                {
                    document.getElementById("Coupling").disabled = false;
                }
                else if (btn.innerHTML == "Click for Liebermann Test")
                {
                    document.getElementById("Liebermann").disabled = false;
                }
                else if (btn.innerHTML == "Click for Carbylamine Test")
                {
                    document.getElementById("Carbylmine").disabled = false;
                }
                else if (btn.innerHTML == "Click for Rimini's Test")
                {
                    document.getElementById("Rimini").disabled = false;
                }
                else if (btn.innerHTML == "Click for Simon's Test")
                {
                    document.getElementById("Simons").disabled = false;
                }
                else if (btn.innerHTML == "Test for Amide group")
                {
                    document.getElementById("Amide").disabled = false;
                }
                
            }
        </script>
        <!--===============================================================-->
        
        <script type="text/javascript">
            function Aminealiss()
            {
                if(document.getElementById('Amineali').value == "Primary")
                {
                    document.getElementById("Result").value ="Primary Amine Present";
                    document.getElementById("Inference").value ="Perform the Rimini's Test.";
                    document.getElementById("myButton").value = "Click for Rimini's Test";
                    document.getElementById("myButton").innerHTML = "Click for Rimini's Test";
                    document.getElementById("myButton").style.visibility='visible';
                    document.getElementById("submit").style.visibility='hidden';
                    document.getElementById("Riminis").style.visibility='visible';
                    document.getElementById("Simonss").style.visibility='hidden';
                }
                else if(document.getElementById('Amineali').value == "Secondary")
                {
                    document.getElementById("Result").value ="Secondary Amine Present";
                    document.getElementById("Inference").value ="Do the Simon's Test.";
                    document.getElementById("myButton").value = "Click for Simon's Test";
                    document.getElementById("myButton").innerHTML = "Click for Simon's Test";
                    document.getElementById("myButton").style.visibility='visible';
                    document.getElementById("submit").style.visibility='hidden';
                    document.getElementById("Riminis").style.visibility='hidden';
                    document.getElementById("Simonss").style.visibility='visible';
                }
                else if(document.getElementById('Amineali').value == "Tertiary")
                {
                    document.getElementById("Result").value ="Tertiary Amine Present";
                    document.getElementById("Inference").value ="The compound is Tertiary Amine";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                    document.getElementById("Riminis").style.visibility='hidden';
                    document.getElementById("Simonss").style.visibility='hidden';
                }
            }
        </script>
        
        <script type="text/javascript">
            function Riminiss()
            {
                if(document.getElementById('Rimini').value == "Positive")
                {
                    document.getElementById("Inference").value ="The test compound is a primary amine.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                }
                else if(document.getElementById('Rimini').value == "Negative")
                {
                    document.getElementById("Inference").value = "The test compound is not a primary amine.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                }
            }
        </script>
        
        <script type="text/javascript">
            function Simonsss()
            {
                if(document.getElementById('Simons').value == "Positive")
                {
                    document.getElementById("Inference").value ="The test compound is a secondary amine.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                }
                else if(document.getElementById('Simons').value == "Negative")
                {
                    document.getElementById("Inference").value = "The test compound is a not secondary amine.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                }
            }
        </script>
        <!--===============================================================-->
        
        <script type="text/javascript">
            function Amineaross()
            {
                if(document.getElementById('Aminearo').value == "Primary")
                {
                    document.getElementById("Result").value ="Primary Amine Present";
                    document.getElementById("Inference").value ="Perform the Coupling Reaction Test.";
                    document.getElementById("myButton").value = "Click for Coupling Test";
                    document.getElementById("myButton").innerHTML = "Click for Coupling Test";
                    document.getElementById("Couplings").style.visibility='visible';
                    document.getElementById("myButton").style.visibility='visible';
                    document.getElementById("submit").style.visibility='hidden';
                    document.getElementById("Liebermanns").style.visibility='hidden';
                    document.getElementById("Carbylmines").style.visibility='hidden';
                }
                else if(document.getElementById('Aminearo').value == "Secondary")
                {
                    document.getElementById("Result").value ="Secondary Amine Present";
                    document.getElementById("Inference").value = "Perform the Liebermann-Nitroso Test.";
                    document.getElementById("myButton").value = "Click for Liebermann Test";
                    document.getElementById("myButton").innerHTML = "Click for Liebermann Test";
                    document.getElementById("Liebermanns").style.visibility='visible';
                    document.getElementById("myButton").style.visibility='visible';
                    document.getElementById("submit").style.visibility='hidden';
                    document.getElementById("Couplings").style.visibility='hidden';
                    document.getElementById("Carbylmines").style.visibility='hidden';
                }
                else if(document.getElementById('Aminearo').value == "Tertiary")
                {
                    document.getElementById("Result").value ="Tertiary Amine Present";
                    document.getElementById("Inference").value = "The compound is Tertiary Amine";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                    document.getElementById("Couplings").style.visibility='hidden';
                    document.getElementById("Liebermanns").style.visibility='hidden';
                    document.getElementById("Carbylmines").style.visibility='hidden';
                }
                else if(document.getElementById('Aminearo').value == "Aryl-Alkyl")
                {
                    document.getElementById("Result").value ="Aryl_Alkylamine Present";
                    document.getElementById("Inference").value = "The compound is Aryl-Alkylamine";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                    document.getElementById("Couplings").style.visibility='hidden';
                    document.getElementById("Liebermanns").style.visibility='hidden';
                    document.getElementById("Carbylmines").style.visibility='hidden';
                }
            }
        </script>
        
        <script type="text/javascript">
            function Couplingss()
            {
                if(document.getElementById('Coupling').value == "Positive")
                {
                    document.getElementById("Inference").value ="Perform Carbylamine Test";
                    document.getElementById("myButton").value = "Click for Carbylamine Test";
                    document.getElementById("myButton").innerHTML = "Click for Carbylamine Test";
                    document.getElementById("Carbylmines").style.visibility='visible';
                    document.getElementById("myButton").style.visibility='visible';
                    document.getElementById("submit").style.visibility='hidden';
                    document.getElementById("Liebermanns").style.visibility='hidden';
                }
                else if(document.getElementById('Coupling').value == "Negative")
                {
                    document.getElementById("Inference").value = "The test compound is not a primary aromatic amine. The test seems to have gone wrong. Repeate the Nitrous acid test followed by Coupling test.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                    document.getElementById("Carbylmines").style.visibility='hidden';
                }
            }
        </script>
        
        <script type="text/javascript">
            function Carbylminess()
            {
                if(document.getElementById('Carbylmine').value == "Positive")
                {
                    document.getElementById("Inference").value ="The test compound is a primary aromatic amine.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                }
                else if(document.getElementById('Carbylmine').value == "Negative")
                {
                    document.getElementById("Inference").value = "The test compound is not a primary aromatic amine. The test seems to have gone wrong. Repeate the Nitrous acid test follwed by Carbylamine test.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                }
            }
        </script>
        
        <script type="text/javascript">
            function Liebermannss()
            {
                if(document.getElementById('Liebermann').value == "Positive")
                {
                    document.getElementById("Inference").value ="The test compound is a secondary aromatic amine.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                }
                else if(document.getElementById('Liebermann').value == "Negative")
                {
                    document.getElementById("Inference").value = "The test seems to have gone wrong. Repeat the Nitrous acid test followed by libermann's test. If the result is same restart the analysis. Please restart from Preliminary test.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                }
            }
        </script>
        <!--========================================================-->
        
        <script type="text/javascript">
            function Amidess()
            {
                if(document.getElementById('Amide').value == "Present")
                {
                    document.getElementById("Result").value ="Amide Present";
                    document.getElementById("Inference").value ="The test compound is an Amide.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                }
                else if(document.getElementById('Amide').value == "Absent")
                {
                    document.getElementById("Inference").value = "The test compound is not an Amide.";
                    document.getElementById("myButton").style.visibility='hidden';
                    document.getElementById("submit").style.visibility='visible';
                }
            }
        </script>
        <!--===============================================================-->
        <script type="text/javascript">
            function loadXMLDoc(str)
            {
                var xmlhttp;

                //var keys = document.dummy.state.value

                if (str == "")
                {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                }
                var urls = "xml_5_4.jsp?ok=" + str
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
                        document.getElementById("Instruction").value = some.getElementsByTagName("Instruction")[0].childNodes[0].nodeValue;
                        document.getElementById("Rational").value = some.getElementsByTagName("Rational")[0].childNodes[0].nodeValue;
                        document.getElementById("Procedure").value = some.getElementsByTagName("Procedure")[0].childNodes[0].nodeValue;
                        document.getElementById("Observation").value = some.getElementsByTagName("Observation")[0].childNodes[0].nodeValue;
                        document.getElementById("Reagent").value = some.getElementsByTagName("Reagent")[0].childNodes[0].nodeValue;
                        var a=some.getElementsByTagName("Ennable")[0].childNodes[0].nodeValue;
                        if(a=="amine_ali_combo")
                        {
                            document.getElementById("Aminealis").style.visibility = 'visible';
                        }
                        else if(a=="amine_aro_combo")
                        {
                            document.getElementById("Aminearos").style.visibility = 'visible';
                        }
                        else if(a=="nitro_combo")
                        {
                            document.getElementById("Nitros").style.visibility = 'visible';
                        }
                    }
                }
                xmlhttp.open("GET", urls, true);
                xmlhttp.send();
            }
        </script>  
        
        <script type="text/javascript">
            function Nitross(str)
            {
                var xmlhttp;

                //var keys = document.dummy.state.value

                if (str == "")
                {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                }
                var urls = "xml_5_4.jsp?ok=" + str
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
                        var a= some.getElementsByTagName("Instruction")[0].childNodes[0].nodeValue;
                        if(a=="aa")
                        {
                            document.getElementById("Inference").value = some.getElementsByTagName("Inference")[0].childNodes[0].nodeValue;
                            document.getElementById("Result").value = some.getElementsByTagName("Result")[0].childNodes[0].nodeValue;
                            document.getElementById("myButton").style.visibility='hidden';
                            document.getElementById("submit").style.visibility='visible';
                            document.getElementById("Amides").style.visibility='hidden';
                        }
                        else if(a=="bb")
                        {
                            document.getElementById("Inference").value = some.getElementsByTagName("Inference")[0].childNodes[0].nodeValue;
                            document.getElementById("myButton").value = "Test for Amide group";
                            document.getElementById("myButton").innerHTML = "Test for Amide group";
                            document.getElementById("myButton").style.visibility='visible';
                            document.getElementById("submit").style.visibility='hidden';
                            document.getElementById("Amides").style.visibility='visible';
                        }
                        else if(a=="cc")
                        {
                            document.getElementById("Inference").value = some.getElementsByTagName("Inference")[0].childNodes[0].nodeValue;
                            document.getElementById("myButton").style.visibility='hidden';
                            document.getElementById("submit").style.visibility='visible';
                            document.getElementById("Amides").style.visibility='hidden';
                            
                        }
                    }
                }
                xmlhttp.open("GET", urls, true);
                xmlhttp.send();
            }
        </script>
        
        
    <!--========================================================-->    
        <script type="text/javascript">

            function auto_height(elem) {  /* javascript */
                elem.style.height = "1px";
                elem.style.height = (elem.scrollHeight) + "px";
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
                            <div class="row">
                                <div class="col-sm-12 mb-2"><div class="fw-700 font-xxl mb-3" style="margin-top: -15px;">Solubility Tests </div>

                                    <div class="col-sm-12" style="margin-top: -15px;" >Instruction<textarea id="Instruction" name="Instruction" rows="2"   class="auto_height"   oninput="auto_height(this)" name="instuction"    style="width: 100%; margin-top: -5px;" > </textarea></div>
                                    <div class="col-sm-12" style="margin-top: -10px;">Rational<textarea id="Rational" name="Rational" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                    <div class="col-sm-12" style="margin-top: -10px;">Procedure<textarea id="Procedure" name="Procedure" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                    <div class="col-sm-12" style="margin-top: -10px;">Observation<textarea id="Observation" name="Observation" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                    <div class="col-sm-12" style="margin-top: -10px;">Reagent/s<textarea id="Reagent" name="Reagent" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -1px;"> </textarea></div>
                                    <div class="col-sm-12" style="margin-top: -10px;">Inference<textarea id="Inference" name="Inference" readonly rows="2" class="auto_height" oninput="auto_height(this)"  style="width: 100%;  color: red; margin-top: -1px;"> </textarea></div>

                                    <br>

                                    <div class="col-sm-6">
                                        <a href="#"  class="d-block text-center bg-current border-0 w-100 form-bttn fw-500 rounded-lg text-white member-bttn2">Proceed to Recharge</a></div>
                                    <button id="start" onclick="enable();loadXMLDoc(this.value);" value="start">Start</button>
                                    <button onclick="loadXMLDoc(this.value);enablebtn();" id="myButton" value="submit" disabled>Submit</button><br /><br />

                                    <form action="result_5_4.jsp" methos="POST">
                                        
                                        <input type="submit" id="submit" value="Proceed"  style="visibility: hidden;">
                                        <input type="text" id="Result" name="Result" style="visibility: hidden;" > 
                                        <div class="col-sm-12">
                                            
                                            <!--combobox for Classification-->  
                                            <div class="col-sm-12 mb-4"  style="margin-top:20px;visibility: hidden; " id="Aminealis">
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="Carboxylic">Amine Group :</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <select id="Amineali" name="Amineali" style="width: 200px;" onchange="Aminealiss();" >
                                                        <option>Select</option>  
                                                        <option value="Primary">Primary</option>
                                                        <option value="Secondary">Secondary</option>
                                                        <option value="Tertiary">Tertiary</option>
                                                    </select>   
                                                </div>
                                            </div> 
                                            
                                            <!--combobox for Classification-->  
                                            <div class="col-sm-12 mb-4"  style="margin-top:20px;visibility: hidden; " id="Aminearos">
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="Carbonyl">Amine Group :</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <select id="Aminearo" name="Aminearo" style="width: 200px;" onchange="Amineaross();" >
                                                        <option>Select</option>  
                                                        <option value="Primary">Primary</option>
                                                        <option value="Secondary">Secondary</option>
                                                        <option value="Tertiary">Tertiary</option>
                                                        <option value="Aryl-Alkyl">Aryl-Alkyl</option>
                                                    </select>   
                                                </div>
                                            </div> 
                                            
                                            <!--combobox for Classification-->  
                                            <div class="col-sm-12 mb-4"  style="margin-top:20px;visibility: hidden; " id="Riminis">
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="Carbonyl">Rimini's Test :</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <select id="Rimini" name="Rimini" style="width: 200px;" onchange="Riminiss();" disabled >
                                                        <option>Select</option>  
                                                        <option value="Positive">Positive</option>
                                                        <option value="Negative">Negative</option>
                                                    </select>   
                                                </div>
                                            </div>

                                            <!--combobox for Classification-->  
                                            <div class="col-sm-12 mb-4"  style="margin-top:20px;visibility: hidden; " id="Simonss">
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="Carbonyl">Simons's Test :</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <select id="Simons" name="Simons" style="width: 200px;" onchange="Simonsss();" disabled >
                                                        <option>Select</option>  
                                                        <option value="Positive">Positive</option>
                                                        <option value="Negative">Negative</option>
                                                    </select>   
                                                </div>
                                            </div>
                                            
                                            <!--combobox for Classification-->  
                                            <div class="col-sm-12 mb-4"  style="margin-top:20px;visibility: hidden; " id="Couplings">
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="Carbonyl">Coupling Test :</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <select id="Coupling" name="Coupling" style="width: 200px;" onchange="Couplingss();" disabled >
                                                        <option>Select</option>  
                                                        <option value="Positive">Positive</option>
                                                        <option value="Negative">Negative</option>
                                                    </select>   
                                                </div>
                                            </div>
                                            
                                            <!--combobox for Classification-->  
                                            <div class="col-sm-12 mb-4"  style="margin-top:20px;visibility: hidden; " id="Carbylmines">
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="Carbonyl">Carbylmine Test :</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <select id="Carbylmine" name="Carbylmine" style="width: 200px;" onchange="Carbylminess();" disabled >
                                                        <option>Select</option>  
                                                        <option value="Positive">Positive</option>
                                                        <option value="Negative">Negative</option>
                                                    </select>   
                                                </div>
                                            </div>
                                            
                                            <!--combobox for Classification-->  
                                            <div class="col-sm-12 mb-4"  style="margin-top:20px;visibility: hidden; " id="Liebermanns">
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="Carbonyl">Liebermann's Test :</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <select id="Liebermann" name="Liebermann" style="width: 200px;" onchange="Liebermannss();" disabled >
                                                        <option>Select</option>  
                                                        <option value="Positive">Positive</option>
                                                        <option value="Negative">Negative</option>
                                                    </select>   
                                                </div>
                                            </div>
                                            
                                            <!--combobox for Classification-->  
                                            <div class="col-sm-12 mb-4"  style="margin-top:20px;visibility: hidden; " id="Nitros">
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="Carbonyl">Nitro Group :</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <select id="Nitro" name="Nitro" style="width: 200px;" onchange="Nitross(this.value);" >
                                                        <option>Select</option>  
                                                        <option value="Present">Present</option>
                                                        <option value="Absent">Absent</option>
                                                    </select>   
                                                </div>
                                            </div>
                                            
                                            <!--combobox for Classification-->  
                                            <div class="col-sm-12 mb-4"  style="margin-top:20px;visibility: hidden; " id="Amides">
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="Carbonyl">Amide Group :</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <select id="Amide" name="Amide" style="width: 200px;" onchange="Amidess();" disabled >
                                                        <option>Select</option>  
                                                        <option value="Present">Present</option>
                                                        <option value="Absent">Absent</option>
                                                    </select>   
                                                </div>
                                            </div>
                                        </div>
                                    </form>
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