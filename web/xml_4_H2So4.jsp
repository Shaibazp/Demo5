<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%

    response.setContentType("text/xml");
    String sn = request.getParameter("ok");
    System.out.println("abc=" + sn);
    String mobile1=null;
    String name=null;
    String ans=null;
    
    try 
    {
        Connection conn = db.dbConnect.dbConnection();
        PreparedStatement pst1=conn.prepareStatement("select * from mobile_number");
        ResultSet rsr=pst1.executeQuery();
        while (rsr.next()) 
        {                          
            name=rsr.getString(1);
            mobile1=rsr.getString(2);
            System.out.println("Mobile No : "+mobile1);

            PreparedStatement pst = conn.prepareStatement("Select * from result_two_copy where mobile=?");
            pst.setString(1, mobile1);
            ResultSet rst = pst.executeQuery();
            while (rst.next()) 
            {
                ans = rst.getString(1);
                System.err.println("State : " + ans);

                out.println("<emp>");
                if (sn.equals("Yes")) 
                {
                    if (ans.equals("Aromatic")) 
                    {
                        out.println("<Inference>The compound can be tested for the presence of a carbonyl compound/ ester/ ether/ alcohol/ aryl-alkyl hydrocarbon/ during Functional Group Identification.</Inference>");

                    } 
                    else if (ans.equals("Aliphatic")) 
                    {
                        out.println("<Inference>The compound can be tested for the presence of a carbonyl compound/ ester/ ether/ alcohol/ aryl-alkyl hydrocarbon/ during Functional Group Identification.</Inference>");
                    }
                } 
                else if (sn.equals("No")) 
                {
                    if (ans.equals("Aromatic")) 
                    {
                        out.println("<Inference>The compound can be tested for the presence of aromatic hydrocarbon during Functional Group Identification.</Inference>");

                    } 
                    else if (ans.equals("Aliphatic")) 
                    {
                        out.println("<Inference>The compound can be tested for the presence of aromatic hydrocarbon during Functional Group Identification.</Inference>");
                    }
                }
                out.println("</emp>");

            }
        }    
    } 
    catch (Exception e) 
    {
        System.out.println(e);
    }
  
%>