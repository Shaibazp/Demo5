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
            function start()
            {
                var a="Physical state of a compound is a function of ability of molecules with which they  are held together - inter molecular forces. This in turn depends on the functional groups present  in it.";
                var b="Observe the state of the compound, to derive clues about the functional group present in it.";
                document.getElementById("Instruction").value =b;
                document.getElementById("Rational").value =a;
            }
        </script>
        <script type="text/javascript">
            function enable() 
            {
                document.getElementById("state").disabled=false;
                document.getElementById("myButton").disabled=false;
            }
            function enabledrop() 
            {
                document.getElementById("Melting1").disabled=false;
            }
        </script>
        <script type="text/javascript">
            function hide()
            {
                //alert("Getting the message");
                document.getElementById("start").style.visibility="hidden";
            }
            
        </script>
        <script type="text/javascript">
            function myFunction() 
            {
                var btn = document.getElementById("myButton");
                var btn1 = document.getElementById("myButton").innerHTML;
                var btn2 = document.getElementById("state");
                
                //alert(btn1);alert(btn2);
                if (btn.value == "Submit1") 
                {
                    btn.value = "Submit";
                    btn.innerHTML = "Submit";
                }
                else if (btn.value == "Solid"||btn.value == "Liquid") 
                {
                    
                    btn.value = "Colour Test";
                    btn.innerHTML = "Colour Test";
                    document.getElementById("submit").style.visibility='hidden';
                }
                else if (btn.value == "Colour Test") 
                {
                    document.getElementById("color").disabled=false;
                }
                else if (btn.value == "Black" ||btn.value == "yellow"||btn.value == "Brown" ||btn.value == "Colourless"||btn.value == "dbrown" ||btn.value == "dyellow"
                        ||btn.value == "pink" ||btn.value == "Magenta"||btn.value == "red" ||btn.value == "obrown"
                        ||btn.value == "pyellow" ||btn.value == "White")
                {
                    
                    btn.value = "Odour Test";
                    btn.innerHTML = "Odour Test";  
                }
                else if (btn.value == "Odour Test")
                {
                    document.getElementById("Odour").disabled=false;
                }
                else if (btn.value == "Acrid" ||btn.value == "Aggreable"||btn.value == "Aromatic" ||btn.value == "Almond"||btn.value == "Cinnamon" ||btn.value == "Honeylike"
                        ||btn.value == "Irritating" ||btn.value == "lemonlike"||btn.value == "Odourless" ||btn.value == "Ointmentlike"
                        ||btn.value == "Phenolic" ||btn.value == "Pungent"||btn.value == "SpicySweet" ||btn.value == "Suffocating"||btn.value == "SweetAggreable" ||btn.value == "VanillaFlavour"
                        ||btn.value == "Vinegarlike")
                        {
                            //alert("in");
                            if((btn2.value=="Solid"))
                            {
                                //document.getElementById("Melting").disabled=false;
                                btn.value = "Melting Point";
                                btn.innerHTML = "Melting Point";
                            }
                            else if((btn2.value=="Liquid"))
                            {
                                //document.getElementById("Boiling").disabled=false;
                                btn.value = "Boiling Point";
                                btn.innerHTML = "Odour Test";
                            }
                        }
                else if (btn.value == "Melting Point")
                {
                    document.getElementById("Melting").disabled=false;
                    document.getElementById("Boiling").disabled=true;
                    //btn.value = "mm";
                    btn.innerHTML = "Melting Point";
                    
                }
                
                else if (btn.value == "Boiling Point")
                {
                    document.getElementById("Boiling").disabled=false;
                    document.getElementById("Melting").disabled=true;
                    document.getElementById("Melting1").disabled=true;
                    //btn.value = "BP";
                    btn.innerHTML = "Boiling Point";
                    document.getElementById("submit").style.visibility='visible';
                    document.getElementById("myButton").style.visibility='hidden';
                }
            }
        </script>

        <script>
            function myFunctions() 
            {
                var x = document.getElementById("state").value;
                document.getElementById("myButton").innerHTML =  "Colour Test";
                document.getElementById("myButton").value =  "Colour Test";
                document.getElementById("submit").style.visibility='hidden';
                document.getElementById("myButton").style.visibility='visible';
                
            }
        </script>
        <script>
            function myFunctionss() 
            {
                var x1 = document.getElementById("color").value;
                document.getElementById("myButton").innerHTML =  "Odour Test";
                document.getElementById("myButton").value =  "Odour Test";
            }
        </script>
        <script>
            function myFunctionsss() 
            {
                var x2 = document.getElementById("state").value;
                if
                (x2== "Solid")
                {
                document.getElementById("myButton").innerHTML =  "Melting Point";
                document.getElementById("myButton").value =  "Melting Point";
            }
            else 
                {
                document.getElementById("myButton").innerHTML =  "Boiling Point";
                document.getElementById("myButton").value =  "Boiling Point";
            }
            }
        </script>
        <script>
            function higherv()
            {
                var1 = document.getElementById("Melting").value;
                var2 = document.getElementById("Melting1").value;
                if(var1>var2)
                {
                    alert("Please Select Higher Value.......");
                }
                else
                {
                    document.getElementById("submit").style.visibility='visible';
                    document.getElementById("myButton").style.visibility='hidden';
                }
            }
        </script>
         <!--========================================================-->
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
                var urls = "xml.jsp?ok=" + str
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
                        document.getElementById("Inference").value = some.getElementsByTagName("Inference")[0].childNodes[0].nodeValue;

                        // document.getElementById("sp").value = some.getElementsByTagName("empaddr")[0].childNodes[0].nodeValue;
                    }
                }

                xmlhttp.open("GET", urls, true);
                xmlhttp.send();
            }
        </script>  


            <script type="text/javascript">
            function loadDATA(str)
            {
                var xmlhttp;

                if (str == "")
                {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                }


                var urls = "xml.jsp?ok=" + str
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
                        document.getElementById("Inference").value = some.getElementsByTagName("Inference")[0].childNodes[0].nodeValue;

                        // document.getElementById("sp").value = some.getElementsByTagName("empaddr")[0].childNodes[0].nodeValue;
                    }
                }

                xmlhttp.open("GET", urls, true);
                xmlhttp.send();
            }
        </script>  

         <script type="text/javascript">
            function loadOdour(str)
            {
                var xmlhttp;

                if (str == "")
                {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                }


                var urls = "xml.jsp?ok=" + str
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
                        document.getElementById("Inference").value = some.getElementsByTagName("Inference")[0].childNodes[0].nodeValue;

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
                                    <div class="col-sm-12 mb-2"><div class="fw-700 font-xxl mb-3" style="margin-top: -15px;">Preliminary Observations</div>

                                        <div class="col-sm-12" style="margin-top: -15px;" >Instruction<textarea id="Instruction" name="Instruction" rows="2"   class="auto_height"   oninput="auto_height(this)" name="instuction"    style="width: 100%; margin-top: -5px;" > </textarea></div>
                                        <div class="col-sm-12" style="margin-top: -10px;">Rational<textarea id="Rational" name="Rational" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                        <div class="col-sm-12" style="margin-top: -10px;">Procedure<textarea id="Procedure" name="Procedure" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                        <div class="col-sm-12" style="margin-top: -10px;">Observation<textarea id="Observation" name="Observation" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                        <div class="col-sm-12" style="margin-top: -10px;">Reagent/s<textarea id="Reagent" name="Reagent" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -1px;"> </textarea></div>
                                        <div class="col-sm-12" style="margin-top: -10px;">Inference<textarea id="Inference" name="Inference" readonly rows="2" class="auto_height" oninput="auto_height(this)"  style="width: 100%;  color: red; margin-top: -1px;"> </textarea></div>

                                        <br>

                                        <div class="col-sm-6">
                                            <a href="#"  class="d-block text-center bg-current border-0 w-100 form-bttn fw-500 rounded-lg text-white member-bttn2">Proceed to Recharge</a></div>
                                        <button id="start" onclick="start();enable();hide();">Start</button>
                                        <button onclick="myFunction();loadXMLDoc(this.value);" id="myButton" value="Submit1" disabled>Submit</button><br /><br />
                                        
                                        <form action="result_1.jsp" methos="POST">
                                            <input type="submit" id="submit" value="SUBMIT" style="visibility: hidden;">
                                        <div class="col-sm-12">
                                           
                                            <!--combobox for Classification-->  
                                            <div class="col-sm-12 mb-4"  style="margin-top:20px; ">
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="state">Choose a State:</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                   
                                                        <select id="state"name="state" style="width: 200px;" onchange="loadXMLDoc(this.value);myFunctions()" disabled>
                                                            <option>Select</option>  
                                                            <option value="Solid">Solid</option>
                                                            <option value="Liquid">Liquid</option>


                                                        </select>   
                                                    
                                                </div>
                                            </div>


                                            <div class="col-sm-12 mb-4"   >
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="color:">Choose a Color:</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                  
                                                    <select name="color" id="color" style="width: 200px;" onchange="loadDATA(this.value);myFunctionss();" disabled>
                                                        <option>Select</option> 
                                                        <option value="Black">Black</option>
                                                        <option value="yellow">Bright yellow</option>
                                                        <option value="Brown">Brown</option>
                                                        <option value="Colourless">Colourless</option>
                                                        <option value="dbrown">Dark brown</option>
                                                        <option value="dyellow">Dull yellow</option>
                                                        <option value="pink">Faint pink</option> 
                                                        <option value="Magenta">Magenta</option>
                                                        <option value="red">Orange red</option>
                                                        <option value="obrown">Orange brown</option>
                                                        <option value="pyellow">Pale yellow</option>
                                                        <option value="White">White</option>
                                                    </select>    
                                                 
                                                </div>
                                            </div>


                                            <!--combobox for Odour--> 
                                            <div class="col-sm-12 mb-4"  >
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="odour">Select a Odour:</label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                  
                                                    <select name="odour" id="Odour" style="width: 200px;" onchange="loadOdour(this.value);myFunctionsss();" disabled>
                                                        <option>Select</option> 
                                                        <option value="Acrid">Acrid</option>
                                                        <option value="Aggreable">Aggreable</option>
                                                        <option value="Aromatic">Aromatic</option>
                                                        <option value="Almond">Almond-like</option>
                                                        <option value="Cinnamon">Cinnamon-like</option>
                                                        <option value="Honeylike">Honey-like</option>
                                                        <option value="Irritating">Irritating</option>
                                                        <option value="lemonlike">lemon-like</option>
                                                        <option value="Odourless">Odourless</option>
                                                        <option value="Ointmentlike">Ointment-like</option>
                                                        <option value="Phenolic">Phenolic</option>
                                                        <option value="Pungent">Pungent</option>
                                                        <option value="SpicySweet">Spicy Sweet</option>
                                                        <option value="Suffocating">Suffocating</option>
                                                        <option value="SweetAggreable">Sweet Aggreable</option>
                                                        <option value="VanillaFlavour">Vanilla Flavour</option>
                                                        <option value="Vinegarlike">Vinegar-like</option>

                                                    </select> 
                                                    
                                                </div>
                                            </div>

                                            <!--combobox for Physical Constant--> 
                                            <div class="col-sm-12 mb-4"  >
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="color">Select a Physical Constant:</label>
                                                </div>
                                            </div>

                                            <!--combobox for Physical Constant--> 
                                            <div class="col-sm-12 mb-4"  >
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="color"> Melting Point</label>

                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <!-- <label for="color" >From:  </label> --> 
                                                    <select name="MeltingFrom" id="Melting"  disabled onchange="enabledrop()">
                                                   
                                                        <option value="25">25</option>
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                        <option value="31">31</option>
                                                        <option value="32">32</option>
                                                        <option value="33">33</option>
                                                        <option value="34">34</option>
                                                        <option value="35">35</option>
                                                        <option value="36">36</option>
                                                        <option value="37">37</option>
                                                        <option value="38">38</option>
                                                        <option value="39">39</option>
                                                        <option value="40">40</option>
                                                        <option value="41">41</option>
                                                        <option value="42">42</option>
                                                        <option value="43">43</option>
                                                        <option value="44">44</option>
                                                        <option value="45">45</option>
                                                        <option value="46">46</option>
                                                        <option value="47">47</option>
                                                        <option value="48">48</option>
                                                        <option value="49">49</option>
                                                        <option value="50">50</option>
                                                        <option value="51">51</option>
                                                        <option value="52">52</option>
                                                        <option value="53">53</option>
                                                        <option value="54">54</option>
                                                        <option value="55">55</option>
                                                        <option value="56">56</option>
                                                        <option value="57">57</option>
                                                        <option value="58">58</option>
                                                        <option value="59">59</option>
                                                        <option value="60">60</option>
                                                        <option value="61">61</option>
                                                        <option value="62">62</option>
                                                        <option value="63">63</option>
                                                        <option value="64">64</option>
                                                        <option value="65">65</option>
                                                        <option value="66">66</option>
                                                        <option value="67">67</option>
                                                        <option value="68">68</option>
                                                        <option value="69">69</option>
                                                        <option value="70">70</option>
                                                        <option value="71">71</option>
                                                        <option value="72">72</option>
                                                        <option value="73">73</option>
                                                        <option value="74">74</option>
                                                        <option value="75">75</option>
                                                        <option value="76">76</option>
                                                        <option value="77">77</option>
                                                        <option value="78">78</option>
                                                        <option value="79">79</option>
                                                        <option value="80">80</option>
                                                        <option value="81">81</option>
                                                        <option value="82">82</option>
                                                        <option value="83">83</option>
                                                        <option value="84">84</option>
                                                        <option value="85">85</option>
                                                        <option value="86">86</option>
                                                        <option value="87">87</option>
                                                        <option value="88">88</option>
                                                        <option value="89">89</option>
                                                        <option value="90">90</option>
                                                        <option value="91">91</option>
                                                        <option value="92">92</option>
                                                        <option value="93">93</option>
                                                        <option value="94">94</option>
                                                        <option value="95">95</option>
                                                        <option value="96">96</option>
                                                        <option value="97">97</option>
                                                        <option value="98">98</option>
                                                        <option value="99">99</option>
                                                        <option value="100">100</option>
                                                        <option value="101">101</option>
                                                        <option value="102">102</option>
                                                        <option value="103">103</option>
                                                        <option value="104">104</option>
                                                        <option value="105">105</option>
                                                        <option value="106">106</option>
                                                        <option value="107">107</option>
                                                        <option value="108">108</option>
                                                        <option value="109">109</option>
                                                        <option value="110">110</option>
                                                        <option value="111">111</option>
                                                        <option value="112">112</option>
                                                        <option value="113">113</option>
                                                        <option value="114">114</option>
                                                        <option value="115">115</option>
                                                        <option value="116">116</option>
                                                        <option value="117">117</option>
                                                        <option value="118">118</option>
                                                        <option value="119">119</option>
                                                        <option value="120">120</option>
                                                        <option value="121">121</option>
                                                        <option value="122">122</option>
                                                        <option value="123">123</option>
                                                        <option value="124">124</option>
                                                        <option value="125">125</option>
                                                        <option value="126">126</option>
                                                        <option value="127">127</option>
                                                        <option value="128">128</option>
                                                        <option value="129">129</option>
                                                        <option value="130">130</option>
                                                        <option value="131">131</option>
                                                        <option value="132">132</option>
                                                        <option value="133">133</option>
                                                        <option value="134">134</option>
                                                        <option value="135">135</option>
                                                        <option value="136">136</option>
                                                        <option value="137">137</option>
                                                        <option value="138">138</option>
                                                        <option value="139">139</option>
                                                        <option value="140">140</option>
                                                        <option value="141">141</option>
                                                        <option value="142">142</option>
                                                        <option value="143">143</option>
                                                        <option value="144">144</option>
                                                        <option value="145">145</option>
                                                        <option value="146">146</option>
                                                        <option value="147">147</option>
                                                        <option value="148">148</option>
                                                        <option value="149">149</option>
                                                        <option value="150">150</option>
                                                        <option value="151">151</option>
                                                        <option value="152">152</option>
                                                        <option value="153">153</option>
                                                        <option value="154">154</option>
                                                        <option value="155">155</option>
                                                        <option value="156">156</option>
                                                        <option value="157">157</option>
                                                        <option value="158">158</option>
                                                        <option value="159">159</option>
                                                        <option value="160">160</option>
                                                        <option value="161">161</option>
                                                        <option value="162">162</option>
                                                        <option value="163">163</option>
                                                        <option value="164">164</option>
                                                        <option value="165">165</option>
                                                        <option value="166">166</option>
                                                        <option value="167">167</option>
                                                        <option value="168">168</option>
                                                        <option value="169">169</option>
                                                        <option value="170">170</option>
                                                        <option value="171">171</option>
                                                        <option value="172">172</option>
                                                        <option value="173">173</option>
                                                        <option value="174">174</option>
                                                        <option value="175">175</option>
                                                        <option value="176">176</option>
                                                        <option value="177">177</option>
                                                        <option value="178">178</option>
                                                        <option value="179">179</option>
                                                        <option value="180">180</option>
                                                        <option value="181">181</option>
                                                        <option value="182">182</option>
                                                        <option value="183">183</option>
                                                        <option value="184">184</option>
                                                        <option value="185">185</option>
                                                        <option value="186">186</option>
                                                        <option value="187">187</option>
                                                        <option value="188">188</option>
                                                        <option value="189">189</option>
                                                        <option value="190">190</option>
                                                        <option value="191">191</option>
                                                        <option value="192">192</option>
                                                        <option value="193">193</option>
                                                        <option value="194">194</option>
                                                        <option value="195">195</option>
                                                        <option value="196">196</option>
                                                        <option value="197">197</option>
                                                        <option value="198">198</option>
                                                        <option value="199">199</option>
                                                        <option value="200">200</option>
                                                        <option value="201">201</option>
                                                        <option value="202">202</option>
                                                        <option value="203">203</option>
                                                        <option value="204">204</option>
                                                        <option value="205">205</option>
                                                        <option value="206">206</option>
                                                        <option value="207">207</option>
                                                        <option value="208">208</option>
                                                        <option value="209">209</option>
                                                        <option value="210">210</option>
                                                        <option value="211">211</option>
                                                        <option value="212">212</option>
                                                        <option value="213">213</option>
                                                        <option value="214">214</option>
                                                        <option value="215">215</option>
                                                        <option value="216">216</option>
                                                        <option value="217">217</option>
                                                        <option value="218">218</option>
                                                        <option value="219">219</option>
                                                        <option value="220">220</option>
                                                        <option value="221">221</option>
                                                        <option value="222">222</option>
                                                        <option value="223">223</option>
                                                        <option value="224">224</option>
                                                        <option value="225">225</option>
                                                        <option value="226">226</option>
                                                        <option value="227">227</option>
                                                        <option value="228">228</option>
                                                        <option value="229">229</option>
                                                        <option value="230">230</option>
                                                        <option value="231">231</option>
                                                        <option value="232">232</option>
                                                        <option value="233">233</option>
                                                        <option value="234">234</option>
                                                        <option value="235">235</option>
                                                        <option value="236">236</option>
                                                        <option value="237">237</option>
                                                        <option value="238">238</option>
                                                        <option value="239">239</option>
                                                        <option value="240">240</option>
                                                        <option value="241">241</option>
                                                        <option value="242">242</option>
                                                        <option value="243">243</option>
                                                        <option value="244">244</option>
                                                        <option value="245">245</option>
                                                        <option value="246">246</option>
                                                        <option value="247">247</option>
                                                        <option value="248">248</option>
                                                        <option value="249">249</option>
                                                        <option value="250">250</option>
                                                        <option value="251">251</option>
                                                        <option value="252">252</option>
                                                        <option value="253">253</option>
                                                        <option value="254">254</option>
                                                        <option value="255">255</option>
                                                        <option value="256">256</option>
                                                        <option value="257">257</option>
                                                        <option value="258">258</option>
                                                        <option value="259">259</option>
                                                        <option value="260">260</option>
                                                        <option value="261">261</option>
                                                        <option value="262">262</option>
                                                        <option value="263">263</option>
                                                        <option value="264">264</option>
                                                        <option value="265">265</option>
                                                        <option value="266">266</option>
                                                        <option value="267">267</option>
                                                        <option value="268">268</option>
                                                        <option value="269">269</option>
                                                        <option value="270">270</option>
                                                        <option value="271">271</option>
                                                        <option value="272">272</option>
                                                        <option value="273">273</option>
                                                        <option value="274">274</option>
                                                        <option value="275">275</option>
                                                        <option value="276">276</option>
                                                        <option value="277">277</option>
                                                        <option value="278">278</option>
                                                        <option value="279">279</option>
                                                        <option value="280">280</option>
                                                        <option value="281">281</option>
                                                        <option value="282">282</option>
                                                        <option value="283">283</option>
                                                        <option value="284">284</option>
                                                        <option value="285">285</option>
                                                        <option value="286">286</option>
                                                        <option value="287">287</option>
                                                        <option value="288">288</option>
                                                        <option value="289">289</option>
                                                        <option value="290">290</option>
                                                        <option value="291">291</option>
                                                        <option value="292">292</option>
                                                        <option value="293">293</option>
                                                        <option value="294">294</option>
                                                        <option value="295">295</option>
                                                        <option value="296">296</option>
                                                        <option value="297">297</option>
                                                        <option value="298">298</option>
                                                        <option value="299">299</option>
                                                        <option value="300">300</option>
                                                        <option value="301">301</option>
                                                        <option value="302">302</option>
                                                        <option value="303">303</option>
                                                        <option value="304">304</option>
                                                        <option value="305">305</option>
                                                        <option value="306">306</option>
                                                        <option value="307">307</option>
                                                        <option value="308">308</option>
                                                        <option value="309">309</option>
                                                        <option value="310">310</option>
                                                        <option value="311">311</option>
                                                        <option value="312">312</option>
                                                        <option value="313">313</option>
                                                        <option value="314">314</option>
                                                        <option value="315">315</option>
                                                        <option value="316">316</option>
                                                        <option value="317">317</option>
                                                        <option value="318">318</option>
                                                        <option value="319">319</option>
                                                        <option value="320">320</option>
                                                        <option value="321">321</option>
                                                        <option value="322">322</option>
                                                        <option value="323">323</option>
                                                        <option value="324">324</option>
                                                        <option value="325">325</option>
                                                        <option value="326">326</option>
                                                        <option value="327">327</option>
                                                        <option value="328">328</option>
                                                        <option value="329">329</option>
                                                        <option value="330">330</option>
                                                        <option value="331">331</option>
                                                        <option value="332">332</option>
                                                        <option value="333">333</option>
                                                        <option value="334">334</option>
                                                        <option value="335">335</option>
                                                        <option value="336">336</option>
                                                        <option value="337">337</option>
                                                        <option value="338">338</option>
                                                        <option value="339">339</option>
                                                        <option value="340">340</option>
                                                        <option value="341">341</option>
                                                        <option value="342">342</option>
                                                        <option value="343">343</option>
                                                        <option value="344">344</option>
                                                        <option value="345">345</option>
                                                        <option value="346">346</option>
                                                        <option value="347">347</option>
                                                        <option value="348">348</option>
                                                        <option value="349">349</option>
                                                        <option value="350">350</option>



                                                    </select>    

                                                    <select name="MeltingTo" id="Melting1" style="margin-left: 10px;" disabled onchange="higherv()">
                                                        
                                                        <option value="26">26</option>
                                                        <option value="27">27</option>
                                                        <option value="28">28</option>
                                                        <option value="29">29</option>
                                                        <option value="30">30</option>
                                                        <option value="31">31</option>
                                                        <option value="32">32</option>
                                                        <option value="33">33</option>
                                                        <option value="34">34</option>
                                                        <option value="35">35</option>
                                                        <option value="36">36</option>
                                                        <option value="37">37</option>
                                                        <option value="38">38</option>
                                                        <option value="39">39</option>
                                                        <option value="40">40</option>
                                                        <option value="41">41</option>
                                                        <option value="42">42</option>
                                                        <option value="43">43</option>
                                                        <option value="44">44</option>
                                                        <option value="45">45</option>
                                                        <option value="46">46</option>
                                                        <option value="47">47</option>
                                                        <option value="48">48</option>
                                                        <option value="49">49</option>
                                                        <option value="50">50</option>
                                                        <option value="51">51</option>
                                                        <option value="52">52</option>
                                                        <option value="53">53</option>
                                                        <option value="54">54</option>
                                                        <option value="55">55</option>
                                                        <option value="56">56</option>
                                                        <option value="57">57</option>
                                                        <option value="58">58</option>
                                                        <option value="59">59</option>
                                                        <option value="60">60</option>
                                                        <option value="61">61</option>
                                                        <option value="62">62</option>
                                                        <option value="63">63</option>
                                                        <option value="64">64</option>
                                                        <option value="65">65</option>
                                                        <option value="66">66</option>
                                                        <option value="67">67</option>
                                                        <option value="68">68</option>
                                                        <option value="69">69</option>
                                                        <option value="70">70</option>
                                                        <option value="71">71</option>
                                                        <option value="72">72</option>
                                                        <option value="73">73</option>
                                                        <option value="74">74</option>
                                                        <option value="75">75</option>
                                                        <option value="76">76</option>
                                                        <option value="77">77</option>
                                                        <option value="78">78</option>
                                                        <option value="79">79</option>
                                                        <option value="80">80</option>
                                                        <option value="81">81</option>
                                                        <option value="82">82</option>
                                                        <option value="83">83</option>
                                                        <option value="84">84</option>
                                                        <option value="85">85</option>
                                                        <option value="86">86</option>
                                                        <option value="87">87</option>
                                                        <option value="88">88</option>
                                                        <option value="89">89</option>
                                                        <option value="90">90</option>
                                                        <option value="91">91</option>
                                                        <option value="92">92</option>
                                                        <option value="93">93</option>
                                                        <option value="94">94</option>
                                                        <option value="95">95</option>
                                                        <option value="96">96</option>
                                                        <option value="97">97</option>
                                                        <option value="98">98</option>
                                                        <option value="99">99</option>
                                                        <option value="100">100</option>
                                                        <option value="101">101</option>
                                                        <option value="102">102</option>
                                                        <option value="103">103</option>
                                                        <option value="104">104</option>
                                                        <option value="105">105</option>
                                                        <option value="106">106</option>
                                                        <option value="107">107</option>
                                                        <option value="108">108</option>
                                                        <option value="109">109</option>
                                                        <option value="110">110</option>
                                                        <option value="111">111</option>
                                                        <option value="112">112</option>
                                                        <option value="113">113</option>
                                                        <option value="114">114</option>
                                                        <option value="115">115</option>
                                                        <option value="116">116</option>
                                                        <option value="117">117</option>
                                                        <option value="118">118</option>
                                                        <option value="119">119</option>
                                                        <option value="120">120</option>
                                                        <option value="121">121</option>
                                                        <option value="122">122</option>
                                                        <option value="123">123</option>
                                                        <option value="124">124</option>
                                                        <option value="125">125</option>
                                                        <option value="126">126</option>
                                                        <option value="127">127</option>
                                                        <option value="128">128</option>
                                                        <option value="129">129</option>
                                                        <option value="130">130</option>
                                                        <option value="131">131</option>
                                                        <option value="132">132</option>
                                                        <option value="133">133</option>
                                                        <option value="134">134</option>
                                                        <option value="135">135</option>
                                                        <option value="136">136</option>
                                                        <option value="137">137</option>
                                                        <option value="138">138</option>
                                                        <option value="139">139</option>
                                                        <option value="140">140</option>
                                                        <option value="141">141</option>
                                                        <option value="142">142</option>
                                                        <option value="143">143</option>
                                                        <option value="144">144</option>
                                                        <option value="145">145</option>
                                                        <option value="146">146</option>
                                                        <option value="147">147</option>
                                                        <option value="148">148</option>
                                                        <option value="149">149</option>
                                                        <option value="150">150</option>
                                                        <option value="151">151</option>
                                                        <option value="152">152</option>
                                                        <option value="153">153</option>
                                                        <option value="154">154</option>
                                                        <option value="155">155</option>
                                                        <option value="156">156</option>
                                                        <option value="157">157</option>
                                                        <option value="158">158</option>
                                                        <option value="159">159</option>
                                                        <option value="160">160</option>
                                                        <option value="161">161</option>
                                                        <option value="162">162</option>
                                                        <option value="163">163</option>
                                                        <option value="164">164</option>
                                                        <option value="165">165</option>
                                                        <option value="166">166</option>
                                                        <option value="167">167</option>
                                                        <option value="168">168</option>
                                                        <option value="169">169</option>
                                                        <option value="170">170</option>
                                                        <option value="171">171</option>
                                                        <option value="172">172</option>
                                                        <option value="173">173</option>
                                                        <option value="174">174</option>
                                                        <option value="175">175</option>
                                                        <option value="176">176</option>
                                                        <option value="177">177</option>
                                                        <option value="178">178</option>
                                                        <option value="179">179</option>
                                                        <option value="180">180</option>
                                                        <option value="181">181</option>
                                                        <option value="182">182</option>
                                                        <option value="183">183</option>
                                                        <option value="184">184</option>
                                                        <option value="185">185</option>
                                                        <option value="186">186</option>
                                                        <option value="187">187</option>
                                                        <option value="188">188</option>
                                                        <option value="189">189</option>
                                                        <option value="190">190</option>
                                                        <option value="191">191</option>
                                                        <option value="192">192</option>
                                                        <option value="193">193</option>
                                                        <option value="194">194</option>
                                                        <option value="195">195</option>
                                                        <option value="196">196</option>
                                                        <option value="197">197</option>
                                                        <option value="198">198</option>
                                                        <option value="199">199</option>
                                                        <option value="200">200</option>
                                                        <option value="201">201</option>
                                                        <option value="202">202</option>
                                                        <option value="203">203</option>
                                                        <option value="204">204</option>
                                                        <option value="205">205</option>
                                                        <option value="206">206</option>
                                                        <option value="207">207</option>
                                                        <option value="208">208</option>
                                                        <option value="209">209</option>
                                                        <option value="210">210</option>
                                                        <option value="211">211</option>
                                                        <option value="212">212</option>
                                                        <option value="213">213</option>
                                                        <option value="214">214</option>
                                                        <option value="215">215</option>
                                                        <option value="216">216</option>
                                                        <option value="217">217</option>
                                                        <option value="218">218</option>
                                                        <option value="219">219</option>
                                                        <option value="220">220</option>
                                                        <option value="221">221</option>
                                                        <option value="222">222</option>
                                                        <option value="223">223</option>
                                                        <option value="224">224</option>
                                                        <option value="225">225</option>
                                                        <option value="226">226</option>
                                                        <option value="227">227</option>
                                                        <option value="228">228</option>
                                                        <option value="229">229</option>
                                                        <option value="230">230</option>
                                                        <option value="231">231</option>
                                                        <option value="232">232</option>
                                                        <option value="233">233</option>
                                                        <option value="234">234</option>
                                                        <option value="235">235</option>
                                                        <option value="236">236</option>
                                                        <option value="237">237</option>
                                                        <option value="238">238</option>
                                                        <option value="239">239</option>
                                                        <option value="240">240</option>
                                                        <option value="241">241</option>
                                                        <option value="242">242</option>
                                                        <option value="243">243</option>
                                                        <option value="244">244</option>
                                                        <option value="245">245</option>
                                                        <option value="246">246</option>
                                                        <option value="247">247</option>
                                                        <option value="248">248</option>
                                                        <option value="249">249</option>
                                                        <option value="250">250</option>
                                                        <option value="251">251</option>
                                                        <option value="252">252</option>
                                                        <option value="253">253</option>
                                                        <option value="254">254</option>
                                                        <option value="255">255</option>
                                                        <option value="256">256</option>
                                                        <option value="257">257</option>
                                                        <option value="258">258</option>
                                                        <option value="259">259</option>
                                                        <option value="260">260</option>
                                                        <option value="261">261</option>
                                                        <option value="262">262</option>
                                                        <option value="263">263</option>
                                                        <option value="264">264</option>
                                                        <option value="265">265</option>
                                                        <option value="266">266</option>
                                                        <option value="267">267</option>
                                                        <option value="268">268</option>
                                                        <option value="269">269</option>
                                                        <option value="270">270</option>
                                                        <option value="271">271</option>
                                                        <option value="272">272</option>
                                                        <option value="273">273</option>
                                                        <option value="274">274</option>
                                                        <option value="275">275</option>
                                                        <option value="276">276</option>
                                                        <option value="277">277</option>
                                                        <option value="278">278</option>
                                                        <option value="279">279</option>
                                                        <option value="280">280</option>
                                                        <option value="281">281</option>
                                                        <option value="282">282</option>
                                                        <option value="283">283</option>
                                                        <option value="284">284</option>
                                                        <option value="285">285</option>
                                                        <option value="286">286</option>
                                                        <option value="287">287</option>
                                                        <option value="288">288</option>
                                                        <option value="289">289</option>
                                                        <option value="290">290</option>
                                                        <option value="291">291</option>
                                                        <option value="292">292</option>
                                                        <option value="293">293</option>
                                                        <option value="294">294</option>
                                                        <option value="295">295</option>
                                                        <option value="296">296</option>
                                                        <option value="297">297</option>
                                                        <option value="298">298</option>
                                                        <option value="299">299</option>
                                                        <option value="300">300</option>
                                                        <option value="301">301</option>
                                                        <option value="302">302</option>
                                                        <option value="303">303</option>
                                                        <option value="304">304</option>
                                                        <option value="305">305</option>
                                                        <option value="306">306</option>
                                                        <option value="307">307</option>
                                                        <option value="308">308</option>
                                                        <option value="309">309</option>
                                                        <option value="310">310</option>
                                                        <option value="311">311</option>
                                                        <option value="312">312</option>
                                                        <option value="313">313</option>
                                                        <option value="314">314</option>
                                                        <option value="315">315</option>
                                                        <option value="316">316</option>
                                                        <option value="317">317</option>
                                                        <option value="318">318</option>
                                                        <option value="319">319</option>
                                                        <option value="320">320</option>
                                                        <option value="321">321</option>
                                                        <option value="322">322</option>
                                                        <option value="323">323</option>
                                                        <option value="324">324</option>
                                                        <option value="325">325</option>
                                                        <option value="326">326</option>
                                                        <option value="327">327</option>
                                                        <option value="328">328</option>
                                                        <option value="329">329</option>
                                                        <option value="330">330</option>
                                                        <option value="331">331</option>
                                                        <option value="332">332</option>
                                                        <option value="333">333</option>
                                                        <option value="334">334</option>
                                                        <option value="335">335</option>
                                                        <option value="336">336</option>
                                                        <option value="337">337</option>
                                                        <option value="338">338</option>
                                                        <option value="339">339</option>
                                                        <option value="340">340</option>
                                                        <option value="341">341</option>
                                                        <option value="342">342</option>
                                                        <option value="343">343</option>
                                                        <option value="344">344</option>
                                                        <option value="345">345</option>
                                                        <option value="346">346</option>
                                                        <option value="347">347</option>
                                                        <option value="348">348</option>
                                                        <option value="349">349</option>
                                                        <option value="350">350</option>
                                                        <option value="350">351</option>

                                                    </select> 
                                                </div>
                                            </div>


                                            <!--combobox for Boiling Point:--> 
                                            <div class="col-sm-12 mb-4"   >
                                                <div class="custom-control mr-4   custom-control-inline">
                                                    <label for="cars">Boiling Point </label>
                                                </div>
                                                <div class="custom-control mr-0   custom-control-inline">
                                                    <select name="Boiling" id="Boiling" style="width: 200px;" disabled >
                                                        <option value="40">40</option>
                                                        <option value="41">41</option>
                                                        <option value="42">42</option>
                                                        <option value="43">43</option>
                                                        <option value="44">44</option>
                                                        <option value="45">45</option>
                                                        <option value="46">46</option>
                                                        <option value="47">47</option>
                                                        <option value="48">48</option>
                                                        <option value="49">49</option>
                                                        <option value="50">50</option>
                                                        <option value="51">51</option>
                                                        <option value="52">52</option>
                                                        <option value="53">53</option>
                                                        <option value="54">54</option>
                                                        <option value="55">55</option>
                                                        <option value="56">56</option>
                                                        <option value="57">57</option>
                                                        <option value="58">58</option>
                                                        <option value="59">59</option>
                                                        <option value="60">60</option>
                                                        <option value="61">61</option>
                                                        <option value="62">62</option>
                                                        <option value="63">63</option>
                                                        <option value="64">64</option>
                                                        <option value="65">65</option>
                                                        <option value="66">66</option>
                                                        <option value="67">67</option>
                                                        <option value="68">68</option>
                                                        <option value="69">69</option>
                                                        <option value="70">70</option>
                                                        <option value="71">71</option>
                                                        <option value="72">72</option>
                                                        <option value="73">73</option>
                                                        <option value="74">74</option>
                                                        <option value="75">75</option>
                                                        <option value="76">76</option>
                                                        <option value="77">77</option>
                                                        <option value="78">78</option>
                                                        <option value="79">79</option>
                                                        <option value="80">80</option>
                                                        <option value="81">81</option>
                                                        <option value="82">82</option>
                                                        <option value="83">83</option>
                                                        <option value="84">84</option>
                                                        <option value="85">85</option>
                                                        <option value="86">86</option>
                                                        <option value="87">87</option>
                                                        <option value="88">88</option>
                                                        <option value="89">89</option>
                                                        <option value="90">90</option>
                                                        <option value="91">91</option>
                                                        <option value="92">92</option>
                                                        <option value="93">93</option>
                                                        <option value="94">94</option>
                                                        <option value="95">95</option>
                                                        <option value="96">96</option>
                                                        <option value="97">97</option>
                                                        <option value="98">98</option>
                                                        <option value="99">99</option>
                                                        <option value="100">100</option>
                                                        <option value="101">101</option>
                                                        <option value="102">102</option>
                                                        <option value="103">103</option>
                                                        <option value="104">104</option>
                                                        <option value="105">105</option>
                                                        <option value="106">106</option>
                                                        <option value="107">107</option>
                                                        <option value="108">108</option>
                                                        <option value="109">109</option>
                                                        <option value="110">110</option>
                                                        <option value="111">111</option>
                                                        <option value="112">112</option>
                                                        <option value="113">113</option>
                                                        <option value="114">114</option>
                                                        <option value="115">115</option>
                                                        <option value="116">116</option>
                                                        <option value="117">117</option>
                                                        <option value="118">118</option>
                                                        <option value="119">119</option>
                                                        <option value="120">120</option>
                                                        <option value="121">121</option>
                                                        <option value="122">122</option>
                                                        <option value="123">123</option>
                                                        <option value="124">124</option>
                                                        <option value="125">125</option>
                                                        <option value="126">126</option>
                                                        <option value="127">127</option>
                                                        <option value="128">128</option>
                                                        <option value="129">129</option>
                                                        <option value="130">130</option>
                                                        <option value="131">131</option>
                                                        <option value="132">132</option>
                                                        <option value="133">133</option>
                                                        <option value="134">134</option>
                                                        <option value="135">135</option>
                                                        <option value="136">136</option>
                                                        <option value="137">137</option>
                                                        <option value="138">138</option>
                                                        <option value="139">139</option>
                                                        <option value="140">140</option>
                                                        <option value="141">141</option>
                                                        <option value="142">142</option>
                                                        <option value="143">143</option>
                                                        <option value="144">144</option>
                                                        <option value="145">145</option>
                                                        <option value="146">146</option>
                                                        <option value="147">147</option>
                                                        <option value="148">148</option>
                                                        <option value="149">149</option>
                                                        <option value="150">150</option>
                                                        <option value="151">151</option>
                                                        <option value="152">152</option>
                                                        <option value="153">153</option>
                                                        <option value="154">154</option>
                                                        <option value="155">155</option>
                                                        <option value="156">156</option>
                                                        <option value="157">157</option>
                                                        <option value="158">158</option>
                                                        <option value="159">159</option>
                                                        <option value="160">160</option>
                                                        <option value="161">161</option>
                                                        <option value="162">162</option>
                                                        <option value="163">163</option>
                                                        <option value="164">164</option>
                                                        <option value="165">165</option>
                                                        <option value="166">166</option>
                                                        <option value="167">167</option>
                                                        <option value="168">168</option>
                                                        <option value="169">169</option>
                                                        <option value="170">170</option>
                                                        <option value="171">171</option>
                                                        <option value="172">172</option>
                                                        <option value="173">173</option>
                                                        <option value="174">174</option>
                                                        <option value="175">175</option>
                                                        <option value="176">176</option>
                                                        <option value="177">177</option>
                                                        <option value="178">178</option>
                                                        <option value="179">179</option>
                                                        <option value="180">180</option>
                                                        <option value="181">181</option>
                                                        <option value="182">182</option>
                                                        <option value="183">183</option>
                                                        <option value="184">184</option>
                                                        <option value="185">185</option>
                                                        <option value="186">186</option>
                                                        <option value="187">187</option>
                                                        <option value="188">188</option>
                                                        <option value="189">189</option>
                                                        <option value="190">190</option>
                                                        <option value="191">191</option>
                                                        <option value="192">192</option>
                                                        <option value="193">193</option>
                                                        <option value="194">194</option>
                                                        <option value="195">195</option>
                                                        <option value="196">196</option>
                                                        <option value="197">197</option>
                                                        <option value="198">198</option>
                                                        <option value="199">199</option>
                                                        <option value="200">200</option>
                                                        <option value="201">201</option>
                                                        <option value="202">202</option>
                                                        <option value="203">203</option>
                                                        <option value="204">204</option>
                                                        <option value="205">205</option>
                                                        <option value="206">206</option>
                                                        <option value="207">207</option>
                                                        <option value="208">208</option>
                                                        <option value="209">209</option>
                                                        <option value="210">210</option>
                                                        <option value="211">211</option>
                                                        <option value="212">212</option>
                                                        <option value="213">213</option>
                                                        <option value="214">214</option>
                                                        <option value="215">215</option>
                                                        <option value="216">216</option>
                                                        <option value="217">217</option>
                                                        <option value="218">218</option>
                                                        <option value="219">219</option>
                                                        <option value="220">220</option>
                                                        <option value="221">221</option>
                                                        <option value="222">222</option>
                                                        <option value="223">223</option>
                                                        <option value="224">224</option>
                                                        <option value="225">225</option>
                                                        <option value="226">226</option>
                                                        <option value="227">227</option>
                                                        <option value="228">228</option>
                                                        <option value="229">229</option>
                                                        <option value="230">230</option>
                                                        <option value="231">231</option>
                                                        <option value="232">232</option>
                                                        <option value="233">233</option>
                                                        <option value="234">234</option>
                                                        <option value="235">235</option>
                                                        <option value="236">236</option>
                                                        <option value="237">237</option>
                                                        <option value="238">238</option>
                                                        <option value="239">239</option>
                                                        <option value="240">240</option>
                                                        <option value="241">241</option>
                                                        <option value="242">242</option>
                                                        <option value="243">243</option>
                                                        <option value="244">244</option>
                                                        <option value="245">245</option>
                                                        <option value="246">246</option>
                                                        <option value="247">247</option>
                                                        <option value="248">248</option>
                                                        <option value="249">249</option>
                                                        <option value="250">250</option>
                                                        <option value="251">251</option>
                                                        <option value="252">252</option>
                                                        <option value="253">253</option>
                                                        <option value="254">254</option>
                                                        <option value="255">255</option>
                                                        <option value="256">256</option>
                                                        <option value="257">257</option>
                                                        <option value="258">258</option>
                                                        <option value="259">259</option>
                                                        <option value="260">260</option>
                                                        <option value="261">261</option>
                                                        <option value="262">262</option>
                                                        <option value="263">263</option>
                                                        <option value="264">264</option>
                                                        <option value="265">265</option>
                                                        <option value="266">266</option>
                                                        <option value="267">267</option>
                                                        <option value="268">268</option>
                                                        <option value="269">269</option>
                                                        <option value="270">270</option>
                                                        <option value="271">271</option>
                                                        <option value="272">272</option>
                                                        <option value="273">273</option>
                                                        <option value="274">274</option>
                                                        <option value="275">275</option>
                                                        <option value="276">276</option>
                                                        <option value="277">277</option>
                                                        <option value="278">278</option>
                                                        <option value="279">279</option>
                                                        <option value="280">280</option>
                                                        <option value="281">281</option>
                                                        <option value="282">282</option>
                                                        <option value="283">283</option>
                                                        <option value="284">284</option>
                                                        <option value="285">285</option>
                                                        <option value="286">286</option>
                                                        <option value="287">287</option>
                                                        <option value="288">288</option>
                                                        <option value="289">289</option>
                                                        <option value="290">290</option>
                                                        <option value="291">291</option>
                                                        <option value="292">292</option>
                                                        <option value="293">293</option>
                                                        <option value="294">294</option>
                                                        <option value="295">295</option>
                                                        <option value="296">296</option>
                                                        <option value="297">297</option>
                                                        <option value="298">298</option>
                                                        <option value="299">299</option>
                                                        <option value="300">300</option>

                                                    </select>      
                                                </div>
                                            </div>
                                            <!--Button--> 
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