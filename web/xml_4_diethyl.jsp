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
//                    name = rsr.getString(1);
//                    mobile1 = rsr.getString(2);
//                    System.out.println("Mobile No : " + mobile1);

                    PreparedStatement pst = conn.prepareStatement("Select * from result_two_copy where mobile=?");
                    pst.setString(1, mobile1);
                    ResultSet rst = pst.executeQuery();
                    while (rst.next()) 
                    {
                        ans = rst.getString(1);
                        System.err.println("State : " + ans);

                        PreparedStatement pstmt = conn.prepareStatement("select * from result_three_copy where mobile=?");
                        pstmt.setString(1, mobile1);
                        ResultSet rs = pstmt.executeQuery();
                        out.println("<emp>");
                        out.println("<op>aa</op>");
                        while (rs.next()) 
                        {
                            String nitro = rs.getString(1);
                            String sulphur = rs.getString(2);
                            String halogen = rs.getString(3);
                            System.err.println("Nitro/Sulp/Halogen11" + nitro + sulphur + halogen);
                            if (sn.equals("Yes") && nitro.equals("Positive")) 
                            {
                                out.println("<Inference>The compound can be tested for the presence of amine group.</Inference>");
                            } 
                            else if (sn.equals("Yes") && ans.equals("Aromatic")) 
                            {
                                out.println("<Inference>The compound can be tested for the presence of phenol.</Inference>");
                            } else if (sn.equals("Yes")) 
                            {
                                out.println("<Inference>The compound can be tested for the presence of carbonyl group,carboxyl group, ester, alcohol, or ether.</Inference>");
                            }
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
            
                PreparedStatement pst=conn.prepareStatement("Select * from result_one_copy where mobile=?");
                pst .setString(1,mobile1);
                ResultSet rst=pst.executeQuery();
                while (rst.next()) 
                {                          
                    ans=  rst.getString(1);
                    System.err.println("State : "+ans);


                    PreparedStatement pstmt=conn.prepareStatement("select * from result_three_copy where mobile=?");
                    pstmt .setString(1,mobile1);
                    ResultSet rs=pstmt.executeQuery();
                    out.println("<emp>");
                    out.println("<op>bb</op>");
                    while (rs.next()) 
                    {
                        String nitro = rs.getString(1);
                        String sulphur = rs.getString(2);
                        String halogen = rs.getString(3);
                        System.err.println("Nitro/Sulp/Halogen" + nitro + sulphur + halogen);

                        if (ans.equals("Solid")) 
                        {
                            if (sn.equals("No") && nitro.equals("Positive")) 
                            {
                                out.println("<Inference>The compound can be tested for the presence of an amide.</Inference>");
                            } 
                            else if (sn.equals("No")) 
                            {
                                out.println("<Inference>The compound can be tested for the presence of carboxyl group, polyhydric alcohol or carbonyl group,  ester, alcohol, ether.</Inference>");
                            }
                        } 
                        else 
                        {
                            out.println("<Inference>The compound can be tested for the presence of carboxyl group, polyhydric alcohol or carbonyl group,  ester, alcohol, ether.</Inference>");
                        }
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