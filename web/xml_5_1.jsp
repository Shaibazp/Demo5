<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%

    response.setContentType("text/xml");
    String sn = request.getParameter("ok");
    System.out.println("abc=" + sn);
    String mobile1 = "8975774258";

    if (sn.equals("start")) 
    {
        try 
        {
            Connection conn = db.dbConnect.dbConnection();
//            PreparedStatement pstmt1=conn.prepareStatement("select * from mobile_number");
//            ResultSet rsr=pstmt1.executeQuery();
//            if( rsr.next())
//            {
//                String name=rsr.getString(1);
//                String mobile1=rsr.getString(2);

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
                                    if (water.equals("Positive") && ether.equals("Positive") && result2.equals("Aromatic")) 
                                    {
                                        PreparedStatement pstmt = conn.prepareStatement("select * from functional_grp_1 where test='Test for the presence of Phenol solid'");

                                        ResultSet rs = pstmt.executeQuery();
                                        out.println("<emp>");
                                        out.println("<Result>phenol</Result>");
                                        while (rs.next()) 
                                        {
                                            out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                                            out.println("<Rational>" + rs.getString(3) + "</Rational>");
                                            out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                                            out.println("<Observation>" + rs.getString(5) + "</Observation>");
                                            out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                            out.println("<State>https://www.youtube-nocookie.com/embed/T94PHkuydcw</State>");
                                        }
                                        out.println("</emp>");
                                    } 
                                    else if (water.equals("Positive") && ether.equals("Positive")) 
                                    {
                                        PreparedStatement pstmt = conn.prepareStatement("select * from functional_grp_1 where test='Carbonyl compound Solid'");

                                        ResultSet rs = pstmt.executeQuery();
                                        out.println("<emp>");
                                        out.println("<Result>carbonyl</Result>");
                                        while (rs.next()) 
                                        {
                                            out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                                            out.println("<Rational>" + rs.getString(3) + "</Rational>");
                                            out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                                            out.println("<Observation>" + rs.getString(5) + "</Observation>");
                                            out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                            out.println("<State>https://www.youtube-nocookie.com/embed/M7tsJ8-JdH8</State>");
                                        }
                                        out.println("</emp>");
                                    }
                                } 
                                else if (result1.equals("Liquid")) 
                                {
                                    System.out.println("im ssain");
                                    if (water.equals("Positive") && ether.equals("Positive") && result2.equals("Aromatic")) 
                                    {
                                        PreparedStatement pstmt = conn.prepareStatement("select * from functional_grp_1 where test='Test for the presence of Phenol liquid'");

                                        ResultSet rs = pstmt.executeQuery();
                                        out.println("<emp>");
                                        out.println("<Result>phenol</Result>");
                                        while (rs.next()) 
                                        {
                                            out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                                            out.println("<Rational>" + rs.getString(3) + "</Rational>");
                                            out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                                            out.println("<Observation>" + rs.getString(5) + "</Observation>");
                                            out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                            out.println("<State>https://www.youtube-nocookie.com/embed/T94PHkuydcw</State>");
                                        }
                                        out.println("</emp>");
                                    } 
                                    else if (water.equals("Positive") && ether.equals("Positive")) 
                                    {
                                        System.out.println("im ain");
                                        PreparedStatement pstmt = conn.prepareStatement("select * from functional_grp_1 where test='Carbonyl compound liquid'");

                                        ResultSet rs = pstmt.executeQuery();
                                        out.println("<emp>");
                                        out.println("<Result>carbonyl</Result>");
                                        while (rs.next()) 
                                        {
                                            out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                                            out.println("<Rational>" + rs.getString(3) + "</Rational>");
                                            out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                                            out.println("<Observation>" + rs.getString(5) + "</Observation>");
                                            out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                                            out.println("<State>https://www.youtube-nocookie.com/embed/M7tsJ8-JdH8</State>");
                                        }
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
    }
    else if(sn.equals("Click for Schiff's Test"))
    {
        System.out.println("innnnn");
        try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='"+mobile1+"'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Differentiation Schiff solid'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/M7tsJ8-JdH8</State>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Differentiation Schiff liquid'");
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
                        out.println("<State>https://www.youtube-nocookie.com/embed/Q2S7CDuBTOc</State>");
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
    else if(sn.equals("Click for Tollens Test"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='"+mobile1+"'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Differentiation Tollen solid'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/Q2S7CDuBTOc</State>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Differentiation Tollen liquid'");
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
                        out.println("<State>https://www.youtube-nocookie.com/embed/z2-qyHNSzAk</State>");
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
    else if(sn.equals("Click for Fehling Test"))
    {
       try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='"+mobile1+"'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Differentiation Fehling solid'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/z2-qyHNSzAk</State>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Differentiation Fehling liquid'");
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
                        out.println("<State>https://www.youtube-nocookie.com/embed/WVGChZZfvbQ</State>");
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
    else if(sn.equals("Test For Carboxylic Acid"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='"+mobile1+"'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Carboxylic acid solid'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/WVGChZZfvbQ</State>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Carboxylic acid liquid'");
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
                        out.println("<State>https://www.youtube-nocookie.com/embed/Y4fodpIwal8</State>");
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
    else if(sn.equals("Test for Ester Group"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='"+mobile1+"'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Ester solid'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/Y4fodpIwal8</State>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Ester liquid'");
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
                        out.println("<State>https://www.youtube-nocookie.com/embed/ru2Mu4Yw_RE</State>");
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
    else if(sn.equals("Test For Alcohol Group"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='"+mobile1+"'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Alcohol solid'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/ru2Mu4Yw_RE</State>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Alcohol liquid'");
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
                        out.println("<State>https://www.youtube-nocookie.com/embed/FsC9gGQ37-4</State>");
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
    else if((sn.equals("Present"))||(sn.equals("Absent")))
    {
        try 
        {
            Connection con = db.dbConnect.dbConnection();

//            PreparedStatement pstmt=con.prepareStatement("select * from mobile_number");
//            ResultSet rs=pstmt.executeQuery();
//            if( rs.next())
//            {
//                String name=rs.getString(1);
//                String mobile1=rs.getString(2);
            
                PreparedStatement pst = con.prepareStatement("Select * from result_one_copy where mobile=?");
                pst .setString(1,mobile1);
                ResultSet rst = pst.executeQuery();
                while (rst.next()) 
                {
                    String result1 = rst.getString(1);

                    System.err.println("Solid/Liquid:- " + result1);
                    PreparedStatement pst1 = con.prepareStatement("Select * from result_two_copy where mobile=?");
                    pst1.setString(1,mobile1);
                    ResultSet rst1 = pst1.executeQuery();
                    while (rst1.next()) 
                    {
                        String result2 = rst1.getString(1);

                        System.err.println("Ali/Aro:- " + result2);

                        PreparedStatement pst2 = con.prepareStatement("Select * from result_three_copy where mobile=?");
                        pst2.setString(1,mobile1);
                        ResultSet rst2 = pst2.executeQuery();
                        while (rst2.next()) 
                        {
                            String nitro = rst2.getString(1);
                            String sulphur = rst2.getString(2);
                            String halogen = rst2.getString(3);
                            System.err.println("Nitro/Sulp/Halogen" + nitro + sulphur + halogen);

                            PreparedStatement pst3 = con.prepareStatement("Select * from result_four_copy where mobile=?");
                            pst3.setString(1,mobile1);
                            ResultSet rst3 = pst3.executeQuery();
                            while (rst3.next()) 
                            {
                                String water = rst3.getString(1);
                                String ether = rst3.getString(2);
                                String naoh = rst3.getString(3);
                                String hcl = rst3.getString(4);
                                String h2so4 = rst3.getString(5);
                                System.err.println("Water " + water + " Eher " + ether + " NAOH " + naoh + " HCL " + hcl + " H2SO4 " + h2so4);
                  
                                if(water.equals("Positive") && ether.equals("Positive") && nitro.equals("Negative"))
                                {
                                    if(sn.equals("Present"))
                                    {
                                        out.println("<emp>");
                                        out.println("<Instruction>Test for Classfication</Instruction>");
                                        out.println("<State>https://www.youtube-nocookie.com/embed/FsC9gGQ37-4</State>");
                                        out.println("<Inference>The alcohol should be subjected to differentiation test for confirming whether primary or secondary nature of alcohol.</Inference>");
                                        out.println("</emp>");
                                    }
                                    else if(sn.equals("Absent"))
                                    {
                                        out.println("<emp>");
                                        out.println("<Instruction>Proceed</Instruction>");
                                        out.println("<State>https://www.youtube-nocookie.com/embed/cajSxnjQC00</State>");
                                        out.println("<Inference>The test compound is not an alcohol.</Inference>");
                                        out.println("</emp>");
                                    }
                                }
                                else if(water.equals("Positive") && ether.equals("Positive") && nitro.equals("Positive"))
                                { 
                                    if(sn.equals("Present"))
                                    {
                                        out.println("<emp>");
                                        out.println("<Instruction>Test for Classfication</Instruction>");
                                        out.println("<State>https://www.youtube-nocookie.com/embed/T94PHkuydcw</State>");
                                        out.println("<Inference>The alcohol should be subjected to differentiation test for confirming whether primary or secondary nature of alcohol.</Inference>");
                                        out.println("</emp>");
                                    }
                                    else if(sn.equals("Absent"))
                                    {
                                        out.println("<emp>");
                                        out.println("<Instruction>Test For Amine Group</Instruction>");
                                        out.println("<State>https://www.youtube-nocookie.com/embed/T94PHkuydcw</State>");
                                        out.println("<Inference>The test compound is not an alcohol.</Inference>");
                                        out.println("</emp>");
                                    }     
                                }   
                            }
                        }
                    }
                }
            //}
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    else if(sn.equals("Test for Classfication"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='"+mobile1+"'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Alcohol differentiation solid'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/T94PHkuydcw</State>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Alcohol differentiation liquid'");
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
                        out.println("<State>https://www.youtube-nocookie.com/embed/jPdG0GP2sjo</State>");
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
    else if(sn.equals("Test For Amine Group"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='"+mobile1+"'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Test for amine solid'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/jPdG0GP2sjo</State>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='Test for amine liquid'");
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
                        out.println("<State>https://www.youtube-nocookie.com/embed/tionpZAVPd4</State>");
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
    else if(sn.equals("Click for Rimini's Test"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='"+mobile1+"'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='rimini test solid'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/tionpZAVPd4</State>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='rimini test liquid'");
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
                        out.println("<State>https://www.youtube-nocookie.com/embed/hgi2MYAFgE8</State>");
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
    else if(sn.equals("Click for Simon's Test"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pst=con.prepareStatement("Select * from result_one_copy where mobile='"+mobile1+"'");
            ResultSet rst=pst.executeQuery();
            while (rst.next()) 
            {
                String ans=  rst.getString(1);
                System.out.println("ans : "+ans);
                if(ans.equals("Solid"))
                {
                    System.out.println(" in solid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='simon test solid'");
                    ResultSet rs = pstmt.executeQuery();
                    out.println("<emp>");
                    while (rs.next()) 
                    {
                        out.println("<Instruction>" + rs.getString(2) + "</Instruction>");
                        out.println("<Rational>" + rs.getString(3) + "</Rational>");
                        out.println("<Procedure>" + rs.getString(4) + "</Procedure>");
                        out.println("<Observation>" + rs.getString(5) + "</Observation>");
                        out.println("<Reagent>" + rs.getString(6) + "</Reagent>");
                        out.println("<State>https://www.youtube-nocookie.com/embed/tionpZAVPd4</State>");
                    }
                    out.println("</emp>");
                }
                else if(ans.equals("Liquid"))
                {
                    System.out.println(" in Liquid");
                    PreparedStatement pstmt = con.prepareStatement("select * from functional_grp_1 where test='simon test liquid'");
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
                        out.println("<State>https://www.youtube-nocookie.com/embed/hgi2MYAFgE8</State>");
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