
<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setContentType("text/xml");
    String sn = request.getParameter("ok");//"start";//
    System.out.println("abc=" + sn);
    String mobile1 = (String)session.getAttribute("Userid").toString();

    try 
    {

        Connection con = db.dbConnect.dbConnection();
//        PreparedStatement pstmt1 = con.prepareStatement("select * from mobile_number");
//        ResultSet rsr = pstmt1.executeQuery();
//        if (rsr.next()) 
//        {
//            String name = rsr.getString(1);
//            String mobile1 = rsr.getString(2);

            PreparedStatement pst = con.prepareStatement("Select * from result_one_copy where mobile=?");
            pst.setString(1, mobile1);
            ResultSet rst = pst.executeQuery();
            while (rst.next()) 
            {
                String result1 = rst.getString(1);
                System.err.println("Solid/Liquid:- " + result1);
                PreparedStatement pst1 = con.prepareStatement("Select * from result_two_copy where mobile=?");
                pst1.setString(1, mobile1);
                ResultSet rst1 = pst1.executeQuery();
                while (rst1.next()) 
                {
                    String result2 = rst1.getString(1);
                    System.err.println("Ali/Aro:- " + result2);
                    PreparedStatement pst2 = con.prepareStatement("Select * from result_three_copy where mobile=?");
                    pst2.setString(1, mobile1);
                    ResultSet rst2 = pst2.executeQuery();
                    while (rst2.next()) 
                    {
                        String nitro = rst2.getString(1);
                        String sulphur = rst2.getString(2);
                        String halogen = rst2.getString(3);
                        System.err.println("Nitro/Sulp/Halogen" + nitro + sulphur + halogen);

                        PreparedStatement pst3 = con.prepareStatement("Select * from result_four_copy where mobile=?");
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
                            String lines[];// = string.split("\\r?\\n");

                            PreparedStatement pst4 = con.prepareStatement("Select * from result_five_1_copy where mobile=?");
                            pst4.setString(1, mobile1);
                            ResultSet rst4 = pst4.executeQuery();
                            while (rst4.next()) 
                            {
                                System.out.println("inside");
                                String result = rst4.getString(15);
                                System.out.println(result);
                                if (result1.equals("Solid") && result.equals("Carboxylic Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=2");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Carboxylic Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=1");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Amide Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=3");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Ketone Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=4");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Ketone Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=5");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Aldehyde Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=4");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Aldehyde Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=5");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Phenol Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=6");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    out.println("<Ennable>If it is solid determine its melting point and proceed.\nIf the derivative is liquid seek guidance \nfrom the instructor to investigate further.</Ennable>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Phenol Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=7");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Primary Amine Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=8");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Primary Amine Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=9");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Aryl_Alkylamine Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=8");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Aryl_Alkylamine Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=9");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Secondary Amine Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=10");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Secondary Amine Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=11");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result.equals("Tertiary Amine Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=12");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Hydrocarbons Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=16");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Hydrocarbons Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=14");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Nitro Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=23");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    out.println("<Ennable>If it is solid determine its melting point and proceed.\nIf the derivative is liquid seek guidance \nfrom the instructor to investigate further.</Ennable>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Nitro Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=22");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    out.println("<Ennable>If it is solid determine its melting point and proceed.\nIf the derivative is liquid seek guidance \nfrom the instructor to investigate further.</Ennable>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Ester Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=20");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Ester Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=21");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Liquid") && result.equals("Aryl_Alky Hydro Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=15");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result1.equals("Solid") && result.equals("Aryl_Alky Hydro Present")) 
                                {
                                    System.out.println("inddside");
                                    PreparedStatement pstmt = con.prepareStatement("select * from derivatives_result1 where id=14");

                                    ResultSet rs = pstmt.executeQuery();
                                    out.println("<emp>");
                                    while (rs.next()) 
                                    {
                                        out.println("<Instruction>" + rs.getString(3) + "</Instruction>");
                                        out.println("<Rational>" + rs.getString(4) + "</Rational>");
                                        out.println("<Procedure>" + rs.getString(5) + "</Procedure>");
                                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                    }
                                    out.println("</emp>");

                                } 
                                else if (result.equals("Primary Alcohol Present") || result.equals("Secondary Alcohol Present")) 
                                {
                                    System.out.println("inddside");
                                    out.println("<emp>");
                                    out.println("<Instruction>The sample seems to be an alcohol. Handling alcohols at this stage is dangerous.\n Beginners are advised to restrat with another sample from Priliminary observations.</Instruction>");
                                    out.println("</emp>");
                                    
                                }
                            }
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


%>