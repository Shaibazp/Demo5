<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%

    response.setContentType("text/xml");
    String sn = request.getParameter("ok");
    System.out.println("abc=" + sn);
    String mobile1="8975774258";
    String name=null;
    String ans=null;
    
    if(sn.equals("Element Detection Test"))
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
                        } 
                        else if (ans.equals("Liquid")) 
                        {
                            out.println("<Procedure>" + rs.getString(7) + "</Procedure>");
                        }
                        out.println("<Observation>" + rs.getString(8) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(9) + "</Reagent>");
                        out.println("<Inference>" + "The solution is clear and colourless and can be used for three/four tests." + "</Inference>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/LOOvOnohWc0</State>");
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
    else if(sn.equals("Test for Presence of Nitrogen"))
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
                        out.println("<Procedure>" + rs.getString(6) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(8) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(9) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/4b23HVBxjak</State>");
                        //out.println("<Inference>" + "The solution is clear and colourless and can be used for three/four tests." + "</Inference>");

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
    else if(sn.equals("Test for Presence of Sulphur"))
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
                        out.println("<Procedure>" + rs.getString(6) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(8) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(9) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/yNE4eVwE8yE</State>");
                        //out.println("<Inference>" + "The solution is clear and colourless and can be used for three/four tests." + "</Inference>");

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
    else if(sn.equals("Test for Presence of halogen/s."))
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
                        out.println("<Procedure>" + rs.getString(6) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(8) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(9) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/yfEoWriPskE</State>");
                        //out.println("<Inference>" + "The solution is clear and colourless and can be used for three/four tests." + "</Inference>");

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