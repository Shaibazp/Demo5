<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%

    response.setContentType("text/xml");
    String sn = request.getParameter("ok");
    System.out.println("abc=" + sn);
    String mobile1= (String)session.getAttribute("Userid").toString();
    String name=null;
    String ans=null;
    
    if(sn.equals("Yes"))
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
            
            
                PreparedStatement pst=conn.prepareStatement("Select * from result_two_copy where mobile=?");
                pst .setString(1,mobile1);
                ResultSet rst=pst.executeQuery();
                while (rst.next()) 
                {                          
                    ans=  rst.getString(1);
                    System.err.println("State : "+ans);

                    out.println("<emp>");
                    if (ans.equals("Aromatic")) 
                    {
                        out.println("<Instruction>aa</Instruction>");
                        out.println("<Inference>The compound can be tested for presence of a carboxylic acid / phenol.</Inference>");
                    } 
                    else if (ans.equals("Aliphatic") )
                    {
                        out.println("<Instruction>aa</Instruction>");
                        out.println("<Inference>The compound can be tested for presence of a carboxylic acid.</Inference>");
                    }
                    out.println("</emp>");

                }
            //}
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    else if(sn.equals("No"))
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

                PreparedStatement pst4 = conn.prepareStatement("Select * from result_one where mobile=?");
                pst4.setString(1, mobile1);
                ResultSet rst4 = pst4.executeQuery();
                while (rst4.next()) 
                {
                    String solid = rst4.getString(1);
                    
                    PreparedStatement pst = conn.prepareStatement("Select * from result_two_copy where mobile=?");
                    pst.setString(1, mobile1);
                    ResultSet rst = pst.executeQuery();
                    while (rst.next()) 
                    {
                        ans = rst.getString(1);
                        System.err.println("State : " + ans);

                        PreparedStatement pst11 = conn.prepareStatement("Select * from result_three_copy where mobile=?");
                        pst11.setString(1, mobile1);
                        ResultSet rst11 = pst11.executeQuery();
                        while (rst11.next()) 
                        {
                            String nitro = rst11.getString(1);
                            String sulphur = rst11.getString(2);
                            String halogen = rst11.getString(3);
                            System.err.println("==="+nitro);

                            if (nitro.equals("Positive")) 
                            {
                                out.println("<emp>");
                                out.println("<Instruction>bb</Instruction>");
//                                System.out.println("in...........");
//                                out.println("<Instruction>Click for 5% HCl</Instruction>");
                                if (ans.equals("Aromatic")) 
                                {
                                    out.println("<Instruction>aa</Instruction>");
                                    out.println("<Inference>The compound cannot be tested for the presence of carboxylic acid or phenol during Functional Group Identification.</Inference>");
                                } 
                                else if (ans.equals("Aliphatic")) 
                                {
                                    out.println("<Instruction>aa</Instruction>");
                                    out.println("<Inference>The compound cannot be tested for the presence of carboxylic acid during Functional Group Identification.</Inference>");
                                }
                                out.println("</emp>");
                            } 
                            else if (nitro.equals("Negtive") || sulphur.equals("Negative")) 
                            {
                                out.println("<emp>");
//                                out.println("<Instruction>Click for H2So4</Instruction>");
                                out.println("<Instruction>cc</Instruction>");
                                if (ans.equals("Aromatic")) 
                                {
                                    out.println("<Instruction>aa</Instruction>");
                                    out.println("<Inference>The compound cannot be tested for the presence of carboxylic acid or phenol during Functional Group Identification.</Inference>");
                                } 
                                else if (ans.equals("Aliphatic")) 
                                {
                                    out.println("<Instruction>aa</Instruction>");
                                    out.println("<Inference>The compound cannot be tested for the presence of carboxylic acid during Functional Group Identification.</Inference>");
                                }
                                out.println("</emp>");
                            }
                        } 
                    }

                }
            //}    
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
    }
    
%>