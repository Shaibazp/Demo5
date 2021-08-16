<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%                

    String result=request.getParameter("Result");
    System.out.println("Result : "+result);
    String carbonal=request.getParameter("Carbonyl");
    String schiff=request.getParameter("Schiffs");
    String tollens=request.getParameter("Tollen");
    String fehling=request.getParameter("Fehling");
    String carboxylic=request.getParameter("Carboxylic");
    String ester=request.getParameter("Ester");
    String alcohol=request.getParameter("Alcohol");
    String alcohol_classi=request.getParameter("Classification");
    String amine=request.getParameter("Amine");
//    String result=request.getParameter("Rimini");
//    String result=request.getParameter("Simon");
    String phenol=request.getParameter("Phenol");
    System.out.println("phenol : "+phenol);
    
    String mobile1=(String)session.getAttribute("Userid").toString();
    
    
    if (phenol.equals("Present")) 
    {
        System.out.println("Im in Phenol");
        try 
        {
            Connection con=db.dbConnect.dbConnection();
                                                  
//            PreparedStatement pstmt=con.prepareStatement("select * from mobile_number");
//            ResultSet rs=pstmt.executeQuery();
//            if( rs.next())
//            {
//                String name=rs.getString(1);
//                String mobile1=rs.getString(2);
                
                PreparedStatement pstn1=con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1,mobile1);
                ResultSet rs1=pstn1.executeQuery();
            
                if(!rs1.next())
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5,  "NA");
                    ps.setString(6,  "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "Present");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps.executeUpdate();
                    %>
                        <script>
                            window.location = "sp_6.jsp";
                        </script>
                    <%
                    ps.close(); 
                
                }
                else
                {
                    PreparedStatement ps  = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5,  "NA");
                    ps.setString(6,  "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "Present");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps .executeUpdate();
                    %>
                        <script>
                            window.location = "sp_6.jsp";
                        </script>
                    <%
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    else if(phenol.equals("Absent"))
    {
        System.out.println("im in alcohol Absent");  
        %>
            <script>
                window.location = "404.jsp";
            </script>
        <%
  
    }
    else if (carbonal.equals("Present")) 
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();          
//            PreparedStatement pstmt=con.prepareStatement("select * from mobile_number");
//            ResultSet rs=pstmt.executeQuery();
//            if( rs.next())
//            {
//                String name=rs.getString(1);
//                String mobile1=rs.getString(2);
                
                PreparedStatement pstn1=con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1,mobile1);
                ResultSet rs1=pstn1.executeQuery();
            
                if(!rs1.next())
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "Present");
                    ps.setString(4, schiff);
                    ps.setString(5,  tollens);
                    ps.setString(6,  fehling);
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps.executeUpdate();
                    %>
                        <script>
                            window.location = "sp_6.jsp";
                        </script>
                    <%
                    ps.close();

                }
                else
                {
                    PreparedStatement ps  = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "Present");
                    ps.setString(4, schiff);
                    ps.setString(5,  tollens);
                    ps.setString(6,  fehling);
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile1);
                    ps .executeUpdate();
                    %>
                        <script>
                            window.location = "sp_6.jsp";
                        </script>
                    <%
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }

    else  if (carbonal.equals("Absent") && carboxylic.equals("Present")) 
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();
                                       
//            PreparedStatement pstmt=con.prepareStatement("select * from mobile_number");
//            ResultSet rs=pstmt.executeQuery();
//            if( rs.next())
//            {
//                String name=rs.getString(1);
//                String mobile1=rs.getString(2);
                
                PreparedStatement pstn1=con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1,mobile1);
                ResultSet rs1=pstn1.executeQuery();
            
                if(!rs1.next())
                {
                 
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "Absent");
                    ps.setString(4, "NA");
                    ps.setString(5,  "NA");
                    ps.setString(6,  "NA");
                    ps.setString(7, "Present");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps.executeUpdate();
                    %>
                        <script>
                            window.location = "sp_6.jsp";
                        </script>
                    <%
                    ps.close();
                }
                else
                {
                    PreparedStatement ps  = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "Absent");
                    ps.setString(4, "NA");
                    ps.setString(5,  "NA");
                    ps.setString(6,  "NA");
                    ps.setString(7, "Present");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps .executeUpdate();
                    %>
                        <script>
                            window.location = "sp_6.jsp";
                        </script>
                    <%
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    else  if (carbonal.equals("Absent") && carboxylic.equals("Absent") && ester.equals("Present")) 
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();
                                          
//            PreparedStatement pstmt=con.prepareStatement("select * from mobile_number");
//            ResultSet rs=pstmt.executeQuery();
//            if( rs.next())
//            {
//                String name=rs.getString(1);
//                String mobile1=rs.getString(2);
                
                PreparedStatement pstn1=con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1,mobile1);
                ResultSet rs1=pstn1.executeQuery();
            
                if(!rs1.next())
                {
                  
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "Absent");
                    ps.setString(4, "NA");
                    ps.setString(5,  "NA");
                    ps.setString(6,  "NA");
                    ps.setString(7, "Absent");
                    ps.setString(8, "Present");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps.executeUpdate();
                    %>
                        <script>
                            window.location = "sp_6.jsp";
                        </script>
                    <%
                    ps.close();
                }
                else
                {
                    PreparedStatement ps  = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "Absent");
                    ps.setString(4, "NA");
                    ps.setString(5,  "NA");
                    ps.setString(6,  "NA");
                    ps.setString(7, "Absent");
                    ps.setString(8, "Present");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps .executeUpdate();
                    %>
                        <script>
                            window.location = "sp_6.jsp";
                        </script>
                    <%
                }
            //}      
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    else  if (carbonal.equals("Absent") && carboxylic.equals("Absent") && ester.equals("Absent") && alcohol.equals("Present")) 
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();
                                                                                                                 
//            PreparedStatement pstmt=con.prepareStatement("select * from mobile_number");
//            ResultSet rs=pstmt.executeQuery();
//            if( rs.next())
//            {
//                String name=rs.getString(1);
//                String mobile1=rs.getString(2);
                
                PreparedStatement pstn1=con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1,mobile1);
                ResultSet rs1=pstn1.executeQuery();
            
                if(!rs1.next())
                {
              
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "Present");
                    ps.setString(2, alcohol_classi);
                    ps.setString(3, "Absent");
                    ps.setString(4, "NA");
                    ps.setString(5,  "NA");
                    ps.setString(6,  "NA");
                    ps.setString(7, "Absent");
                    ps.setString(8, "Absent");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps.executeUpdate();
                    %>
                        <script>
                            window.location = "sp_6.jsp";
                        </script>
                    <%
                    ps.close();
                }
                else
                {
                    PreparedStatement ps  = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "Present");
                    ps.setString(2, alcohol_classi);
                    ps.setString(3, "Absent");
                    ps.setString(4, "NA");
                    ps.setString(5,  "NA");
                    ps.setString(6,  "NA");
                    ps.setString(7, "Absent");
                    ps.setString(8, "Absent");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps .executeUpdate();
                    %>
                        <script>
                            window.location = "sp_6.jsp";
                        </script>
                    <%
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    else  if (carbonal.equals("Absent") && carboxylic.equals("Absent") && ester.equals("Absent") && alcohol.equals("Absent") && amine.equals(amine)) 
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();

//            PreparedStatement pstmt=con.prepareStatement("select * from mobile_number");
//            ResultSet rs=pstmt.executeQuery();
//            if( rs.next())
//            {
//                String name=rs.getString(1);
//                String mobile1=rs.getString(2);
                
                PreparedStatement pstn1=con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1,mobile1);
                ResultSet rs1=pstn1.executeQuery();
                System.out.println("im in amin");         
                if(!rs1.next())
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "Absent");
                    ps.setString(2, "NA");
                    ps.setString(3, "Absent");
                    ps.setString(4, "NA");
                    ps.setString(5,  "NA");
                    ps.setString(6,  "NA");
                    ps.setString(7, "Absent");
                    ps.setString(8, "Absent");
                    ps.setString(9, amine+"Amine");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps.executeUpdate();
                    %>
                        <script>
                            window.location = "404.jsp";
                        </script>
                    <%
                    ps.close();
                }
                else
                {
                    PreparedStatement ps  = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "Absent");
                    ps.setString(2, "NA");
                    ps.setString(3, "Absent");
                    ps.setString(4, "NA");
                    ps.setString(5,  "NA");
                    ps.setString(6,  "NA");
                    ps.setString(7, "Absent");
                    ps.setString(8, "Absent");
                    ps.setString(9, amine+"Amine");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15,  result);
                    ps.setString(16, mobile1);
                    ps .executeUpdate();
                    %>
                        <script>
                            window.location = "404.jsp";
                        </script>
                    <%
                }
            //}      
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }


//else if(alcohol.equals("Absent"))
//    {
//        System.out.println("im in alcohol Absent");  
        %>
<!--//            <script>
//                window.location = "404.jsp";
//            </script>-->
        <%
//  
//    }
    
//    else if(amine.equals("Absent"))
//    {
        %>
<!--//            <script>
//                window.location = "404.jsp";
//            </script>-->
        <%
//    }

    


%>