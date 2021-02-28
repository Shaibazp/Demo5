<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
    <head>
       
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
                        document.getElementById("s").value = some.getElementsByTagName("empno")[0].childNodes[0].nodeValue;
                        document.getElementById("p1").value = some.getElementsByTagName("empname")[0].childNodes[0].nodeValue;
                        document.getElementById("Instruction").value = some.getElementsByTagName("empplace")[0].childNodes[0].nodeValue;
                        // document.getElementById("sp").value = some.getElementsByTagName("empaddr")[0].childNodes[0].nodeValue;
                    }
                }

                xmlhttp.open("GET", urls, true);
                xmlhttp.send();
            }
        </script>   




    </head>
    <body style="background-color: lavenderblush">
        <!---header--->
        < 
        <!---header--->
        <!---banner--->
                 <!-- End header -->


      
                <div>
                    
            
               
                        <form action="update_submit.jsp" name="dummy"  >


                            <table >
                                <tr>
                                    <td>
                                        Product Name:
                                    </td>
                                    <td>
                                        <select name="p_name" style="width: 70%" onchange="loadXMLDoc()">
                                            <option>Select</option>
                                               <option value="Solid">Aliphatic</option>
                                                <option value="Aromatic">Aromatic</option>
                                                

                                            

                                        </select>
                                    </td>
                                </tr>
                                <tr >
                                    <td >
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td >
                                        Available Quantity:
                                    </td>
                                    <td>
                                        <input type="text" name="avl_quantity" id="s" style="width: 200%;height: 40px">
                                    </td>
                                </tr>
                                <tr style="background-color: lavenderblush" >
                                    <td >
                                        <br>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Product Prise:
                                    </td>
                                    <td>
                                        <input type="text" name="p_prise" id="p1" style="width: 200%;height: 40px">
                                    </td>
                                </tr>

                                <tr style="background-color: lavenderblush" >
                                    <td >
                                        <br>
                                    </td>
                                </tr>
                                
                                 
                                 
                          
                                <tr>
                                    <td>
                                        Place:
                                    </td>
                                    <td>
                                        <input type="text" name="place" id="place" style="width: 200%;height: 40px">
                                    </td>
                                </tr>
                                <tr>
                                    <td >
                                        <br>
                                    </td>
                                </tr>

 <div class="col-sm-12" style="margin-top: -15px;" > Instruction<textarea id="Instruction" name="Instruction" rows="2" readonly class="auto_height"   oninput="auto_height(this)" name="instuction"    style="width: 100%; margin-top: -5px;" > </textarea></div>
                                     <div class="col-sm-12" style="margin-top: -10px;">Rational<textarea id="Rational" name="Rational" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                    <div class="col-sm-12" style="margin-top: -10px;">Procedure<textarea id="Procedure" name="Procedure" readonly rows="2" class="auto_height" oninput="auto_height(this)" style="width: 100%; margin-top: -5px;"> </textarea></div>
                                   
                                 
                            </table>

                        </form>
                    </div>
                





 
              
                </body>
                </html>