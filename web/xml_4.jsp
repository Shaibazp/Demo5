<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%

    response.setContentType("text/xml");
    String sn = request.getParameter("ok");
    System.out.println("abc=" + sn);
    String mobile1= (String)session.getAttribute("Userid").toString();
    String name=null;
    String ans=null;
    
    if(sn.equals("Test for  solubility in water"))
    {   
        try
        {   
            Connection conn = db.dbConnect.dbConnection();
//            PreparedStatement pst1=conn.prepareStatement("select * from mobile_number");
//            ResultSet rsr=pst1.executeQuery();
//            while (rsr.next()) 
//            {                          
//                name=rsr.getString(1);
//                mobile1=rsr.getString(2);
//                System.out.println("Mobile No : "+mobile1);
            
            
                PreparedStatement pst=conn.prepareStatement("Select * from result_one_copy where mobile=?");
                pst .setString(1,mobile1);
                ResultSet rst=pst.executeQuery();
                while (rst.next()) 
                {                          
                    ans=  rst.getString(1);
                    //System.err.println("State : "+ans);

                    PreparedStatement pstmt=conn.prepareStatement("select * from chem_reation_1 where cases='"+sn+"'");

                    ResultSet rs=pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(4) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");

                        if (ans.equals("Solid")) 
                        {
                            out.println("<Procedure>" + rs.getString(6) + "</Procedure>");
                            out.println("<State>https://www.youtube-nocookie.com/embed/LOOvOnohWc0</State>");
                        } 
                        else if (ans.equals("Liquid")) 
                        {
                            out.println("<Procedure>" + rs.getString(7) + "</Procedure>");
                            out.println("<State>https://www.youtube-nocookie.com/embed/LOOvOnohWc0</State>");
                        }
                        out.println("<Observation>" + rs.getString(8) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(9) + "</Reagent>");
                        
                        out.println("</emp>");
                    }
                }
            //}
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    else if(sn.equals("Test for  solubility in Diethyl ether"))
    {
        try
        {   
            Connection conn = db.dbConnect.dbConnection();
//            PreparedStatement pst1=conn.prepareStatement("select * from mobile_number");
//            ResultSet rsr=pst1.executeQuery();
//            while (rsr.next()) 
//            {                          
//                name=rsr.getString(1);
//                mobile1=rsr.getString(2);
//                System.out.println("Mobile No : "+mobile1);
            
            
                PreparedStatement pst=conn.prepareStatement("Select * from result_one_copy where mobile=?");
                pst .setString(1,mobile1);
                ResultSet rst=pst.executeQuery();
                while (rst.next()) 
                {                          
                    ans=  rst.getString(1);
                    //System.err.println("State : "+ans);


                    PreparedStatement pstmt=conn.prepareStatement("select * from chem_reation_1 where cases='"+sn+"'");

                    ResultSet rs=pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(4) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");

                        if (ans.equals("Solid")) 
                        {
                            out.println("<Procedure>" + rs.getString(6) + "</Procedure>");
                            out.println("<State>https://www.youtube-nocookie.com/embed/yfEoWriPskE</State>");
                        } 
                        else if (ans.equals("Liquid")) 
                        {
                            out.println("<Procedure>" + rs.getString(7) + "</Procedure>");
                            out.println("<State>https://www.youtube-nocookie.com/embed/yfEoWriPskE</State>");
                        }
                        out.println("<Observation>" + rs.getString(8) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(9) + "</Reagent>");

                        out.println("</emp>");
                    }
                }
            //}
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    else if(sn.equals("NaOH Test"))
    {
        try
        {   
            Connection conn = db.dbConnect.dbConnection();
//            PreparedStatement pst1=conn.prepareStatement("select * from mobile_number");
//            ResultSet rsr=pst1.executeQuery();
//            while (rsr.next()) 
//            {                          
//                name=rsr.getString(1);
//                mobile1=rsr.getString(2);
//                System.out.println("Mobile No : "+mobile1);
            
            
                PreparedStatement pst=conn.prepareStatement("Select * from result_one_copy where mobile=?");
                pst .setString(1,mobile1);
                ResultSet rst=pst.executeQuery();
                while (rst.next()) 
                {                          
                    ans=  rst.getString(1);
                    //System.err.println("State : "+ans);


                    PreparedStatement pstmt=conn.prepareStatement("select * from chem_reation_1 where cases='"+sn+"'");

                    ResultSet rs=pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(4) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");

                        if (ans.equals("Solid")) 
                        {
                            out.println("<Procedure>" + rs.getString(6) + "</Procedure>");
                            out.println("<State>https://www.youtube-nocookie.com/embed/bQmrYg3biS0</State>");
                        } 
                        else if (ans.equals("Liquid")) 
                        {
                            out.println("<Procedure>" + rs.getString(7) + "</Procedure>");
                            out.println("<State>https://www.youtube-nocookie.com/embed/bQmrYg3biS0</State>");
                        }
                        out.println("<Observation>" + rs.getString(8) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(9) + "</Reagent>");

                        out.println("</emp>");
                    }
                }
            //}
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    else if(sn.equals("HCL Test"))
    {
        try
        {   
            Connection conn = db.dbConnect.dbConnection();
//            PreparedStatement pst1=conn.prepareStatement("select * from mobile_number");
//            ResultSet rsr=pst1.executeQuery();
//            while (rsr.next()) 
//            {                          
//                name=rsr.getString(1);    
//                mobile1=rsr.getString(2);
//                System.out.println("Mobile No : "+mobile1);
            
            
                PreparedStatement pst=conn.prepareStatement("Select * from result_one_copy where mobile=?");
                pst .setString(1,mobile1);
                ResultSet rst=pst.executeQuery();
                while (rst.next()) 
                {                          
                    ans=  rst.getString(1);
                    //System.err.println("State : "+ans);


                    PreparedStatement pstmt=conn.prepareStatement("select * from chem_reation_1 where cases='"+sn+"'");

                    ResultSet rs=pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(4) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");

                        if (ans.equals("Solid")) 
                        {
                            out.println("<Procedure>" + rs.getString(6) + "</Procedure>");
                            out.println("<State>https://www.youtube-nocookie.com/embed/tVpQSwiAOe4</State>");
                        } 
                        else if (ans.equals("Liquid")) 
                        {
                            out.println("<Procedure>" + rs.getString(7) + "</Procedure>");
                            out.println("<State>https://www.youtube-nocookie.com/embed/tVpQSwiAOe4</State>");
                        }
                        out.println("<Observation>" + rs.getString(8) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(9) + "</Reagent>");

                        out.println("</emp>");
                    }
                }
            //}
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    else if(sn.equals("H2SO4 Test"))
    {
        try
        {   
            Connection conn = db.dbConnect.dbConnection();
//            PreparedStatement pst1=conn.prepareStatement("select * from mobile_number");
//            ResultSet rsr=pst1.executeQuery();
//            while (rsr.next()) 
//            {                          
//                name=rsr.getString(1);    
//                mobile1=rsr.getString(2);
//                System.out.println("Mobile No : "+mobile1);
            
            
                PreparedStatement pst=conn.prepareStatement("Select * from result_one_copy where mobile=?");
                pst .setString(1,mobile1);
                ResultSet rst=pst.executeQuery();
                while (rst.next()) 
                {                          
                    ans=  rst.getString(1);
                    //System.err.println("State : "+ans);

                    PreparedStatement pstmt=conn.prepareStatement("select * from chem_reation_1 where cases='"+sn+"'");

                    ResultSet rs=pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(4) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");

                        if (ans.equals("Solid")) 
                        {
                            out.println("<Procedure>" + rs.getString(6) + "</Procedure>");
                            out.println("<State>https://www.youtube-nocookie.com/embed/C1uHQaXt-Lk</State>");
                        } 
                        else if (ans.equals("Liquid")) 
                        {
                            out.println("<Procedure>" + rs.getString(7) + "</Procedure>");
                            out.println("<State>https://www.youtube-nocookie.com/embed/C1uHQaXt-Lk</State>");
                        }
                        out.println("<Observation>" + rs.getString(8) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(9) + "</Reagent>");

                        out.println("</emp>");
                    }
                }
            //}
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    

%>