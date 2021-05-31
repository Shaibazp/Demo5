<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%

    response.setContentType("text/xml");
    String sn = request.getParameter("ok");//"start";//
    System.out.println("abc=" + sn);
    

    if (sn.equals("start")) 
    {
        try 
        {
            Connection conn = db.dbConnect.dbConnection();
            PreparedStatement pstmt1=conn.prepareStatement("select * from mobile_number");
            ResultSet rsr=pstmt1.executeQuery();
            if( rsr.next())
            {
                String name=rsr.getString(1);
                String mobile1=rsr.getString(2);

                PreparedStatement pst = conn.prepareStatement("Select * from result_one_copy where mobile=?");
                pst.setString(1, mobile1);
                ResultSet rst = pst.executeQuery();
                while (rst.next()) 
                {
                    String result1 = rst.getString(1);

                    System.err.println("Solid/Liquid:- " + result1);
                    PreparedStatement pst1 = conn.prepareStatement("Select * from result_two_copy where mobile=?");
                    pst1.setString(1, mobile1);
                    ResultSet rst1 = pst1.executeQuery();
                    while (rst1.next()) 
                    {
                        String result2 = rst1.getString(1);

                        System.err.println("Ali/Aro:- " + result2);

                        PreparedStatement pst2 = conn.prepareStatement("Select * from result_three_copy where mobile=?");
                        pst2.setString(1, mobile1);
                        ResultSet rst2 = pst2.executeQuery();
                        while (rst2.next()) 
                        {
                            String nitro = rst2.getString(1);
                            String sulphur = rst2.getString(2);
                            String halogen = rst2.getString(3);
                            System.err.println("Nitro/Sulp/Halogen" + nitro + sulphur + halogen);

                            PreparedStatement pst3 = conn.prepareStatement("Select * from result_four_copy where mobile=?");
                            pst3.setString(1, mobile1);
                            ResultSet rst3 = pst3.executeQuery();
                            while (rst3.next()) 
                            {
                                String water = rst3.getString(1);
                                String ether = rst3.getString(2);
                                String naoh = rst3.getString(3);
                                String hcl = rst3.getString(4);
                                String h2so4 = rst3.getString(5);
                                System.err.println("Water " + water + " Eher " + ether + " NAOH " + naoh + " HCL " + hcl + " H2SO4 " + h2so4);
                                String split[];
                                String lines[];
                                if (result1.equals("Solid")) 
                                {
                                    if (water.equals("Negative") && naoh.equals("Positive")  && result2.equals("Aliphatic")) 
                                    {
                                        PreparedStatement pstmt = conn.prepareStatement("select * from functional_grp_2 where test='Test for presence of a Carboxylic acid solid s5'");

                                        ResultSet rs = pstmt.executeQuery();
                                        out.println("<emp>");
                                        //out.println("<Result>phenol</Result>");
                                        while (rs.next()) 
                                        {
                                            out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                                            out.println("<Rational>" + rs.getString(3) + "</Rational>");
                                            out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                                            out.println("<Observation>" + rs.getString(5) + "</Observation>");
                                            out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                        }
                                        out.println("</emp>");
                                    } 
                                    else if (water.equals("Negative") && naoh.equals("Positive")  && result2.equals("Aromatic")) 
                                    {
                                        PreparedStatement pstmt = conn.prepareStatement("select * from functional_grp_2 where test='Test for presence of a Carboxylic acid solid s5'");

                                        ResultSet rs = pstmt.executeQuery();
                                        out.println("<emp>");
                                        //out.println("<Result>phenol</Result>");
                                        while (rs.next()) 
                                        {
                                            out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                                            out.println("<Rational>" + rs.getString(3) + "</Rational>");
                                            out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                                            out.println("<Observation>" + rs.getString(5) + "</Observation>");
                                            out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                        }
                                        out.println("</emp>");
                                        
                                    }
                                } 
                                else if (result1.equals("Liquid")) 
                                {
                                    
                                    if (water.equals("Negative") && naoh.equals("Positive")  && result2.equals("Aromatic")) 
                                    {System.out.println("im ssain Liquid");
                                        PreparedStatement pstmt = conn.prepareStatement("select * from functional_grp_2 where test='Test for presence of a Carboxylic acid liquid s5'");

                                        ResultSet rs = pstmt.executeQuery();
                                        out.println("<emp>");
                                        //out.println("<Result>phenol</Result>");
                                        while (rs.next()) 
                                        {
                                            
                                            out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                                            out.println("<Rational>" + rs.getString(3) + "</Rational>");
                                            out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                                            out.println("<Observation>" + rs.getString(5) + "</Observation>");
                                            out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                        }
                                        out.println("</emp>");
                                    } 
                                    else if (water.equals("Negative") && naoh.equals("Positive")  && result2.equals("Aliphatic"))
                                    {
                                        PreparedStatement pstmt = conn.prepareStatement("select * from functional_grp_2 where test='Test for presence of a Carboxylic acid liquid s5'");

                                        ResultSet rs = pstmt.executeQuery();
                                        out.println("<emp>");
                                        //out.println("<Result>phenol</Result>");
                                        while (rs.next()) 
                                        {
                                            
                                            out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                                            out.println("<Rational>" + rs.getString(3) + "</Rational>");
                                            out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                                            out.println("<Observation>" + rs.getString(5) + "</Observation>");
                                            out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                        }
                                        out.println("</emp>");
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } 
        catch (Exception e) 
        {
            System.out.println(e);
        }
    }
    else if((sn.equals("Present"))||(sn.equals("Absent")))
    {
        if (sn.equals("Present"))
        {
            out.println("<emp>");
            out.println("<Instruction>aa</Instruction>");
            out.println("<Inference>The test compound is a carboxylic acid.</Inference>");
            out.println("<Result>Carboxylic Present</Result>");
            out.println("</emp>");
        } 
        else if (sn.equals("Absent"))
        {
            try 
            {
                Connection con = db.dbConnect.dbConnection();

                PreparedStatement pstmt=con.prepareStatement("select * from mobile_number");
                ResultSet rs=pstmt.executeQuery();
                if( rs.next())
                {
                    String name=rs.getString(1);
                    String mobile1=rs.getString(2);
                    PreparedStatement pst = con.prepareStatement("Select * from result_two_copy where mobile=?");
                    pst.setString(1, mobile1);
                    ResultSet rst = pst.executeQuery();
                    while (rst.next()) 
                    {
                        String result2 = rst.getString(1);
                            
                        if(result2.equals("Aliphatic"))
                        {
                            out.println("<emp>");
                            out.println("<Instruction>bb</Instruction>");
                            out.println("<Inference>It seems that the investigation has gone wrong somewhere. Repeat the identification from start.</Inference>");
                            out.println("</emp>");
                        }
                        else if(result2.equals("Aromatic"))
                        {
                            out.println("<emp>");
                            out.println("<Instruction>cc</Instruction>");
                            out.println("<Inference>The test compound is not a carboxylic acid. It should be subjected to a Phenol group.</Inference>");
                            out.println("</emp>");
                        }    
                    }
                }
            }
            catch (Exception e) 
            {
                System.out.println(e);
            }
        }
    }
    else if(sn.equals("Test for Phenol group"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='8975774258'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_2 where test='Test for the presence of Phenol solid s5'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_2 where test='Test for the presence of Phenol liquid s5'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        //System.out.println(rs.getString(2));
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                    }
                    out.println("</emp>");
                }
            }   
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    
    
%>