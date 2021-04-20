<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String result=request.getParameter("Result");
    System.out.println("Result : "+result);
    String amine_ali=request.getParameter("Amineali");
    String amine_aro=request.getParameter("Aminearo");
    String rimini=request.getParameter("Rimini");
    String simon=request.getParameter("Simons");
    String Coupling=request.getParameter("Coupling");
    String carbylamine=request.getParameter("Carbylmine");
    String liberman=request.getParameter("Liebermann");
    String nitro=request.getParameter("Nitro");
    String amide=request.getParameter("Amide");
    String mobile11 ="8975774258";


    if (amine_ali.equals("Primary")&& rimini.equals("Positive")) 
    {System.out.println("Primary ==========   Positive");
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name1 = rs.getString(1);
//                String mobile11 = rs.getString(2);

                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile11);
                ResultSet rs1 = pstn1.executeQuery();

                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_ali);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_ali);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    else if (amine_ali.equals("Primary")&& rimini.equals("Negative")) // || 
    {
                System.out.println("It seems that the investigation has\n gone wrong somewhere. Repeat the \nidentification from start.");
                response.sendRedirect("404.jsp");
    }
    else if (amine_ali.equals("Secondary")&& simon.equals("Positive")) 
    {System.out.println("Secondary ==========   Positive");
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name1 = rs.getString(1);
//                String mobile11 = rs.getString(2);

                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile11);
                ResultSet rs1 = pstn1.executeQuery();

                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_ali);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_ali);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    
    else if (amine_ali.equals("Secondary") && simon.equals("Negative")) 
    {
                System.out.println("It seems that the investigation has\n gone wrong somewhere. Repeat the \nidentification from start.");
                response.sendRedirect("404.jsp");
    }
    else if (amine_ali.equals("Tertiary")) 
    {System.out.println("Tertiary ==========   Tertiary");
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name1 = rs.getString(1);
//                String mobile11 = rs.getString(2);

                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile11);
                ResultSet rs1 = pstn1.executeQuery();

                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_ali);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_ali);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    
    else if (amine_aro.equals("Primary")&& Coupling.equals("Negative")) // && carbylamine.equals("Positive")
    {System.out.println("amide ==========   amine_aro");
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name1 = rs.getString(1);
//                String mobile11 = rs.getString(2);
                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile11);
                ResultSet rs1 = pstn1.executeQuery();
                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_aro);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_aro);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    else if (amine_aro.equals("Primary")&& Coupling.equals("Positive")&& carbylamine.equals("Positive")) // && carbylamine.equals("Positive")
    {System.out.println("amide ==========   amine_aro");
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name1 = rs.getString(1);
//                String mobile11 = rs.getString(2);
                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile11);
                ResultSet rs1 = pstn1.executeQuery();
                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_aro);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_aro);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    else if (amine_aro.equals("Primary")&& Coupling.equals("Positive") && carbylamine.equals("Negative")) 
    {
        response.sendRedirect("404.jsp");
    }
    else if (amine_aro.equals("Secondary")&& liberman.equals("Positive"))
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name1 = rs.getString(1);
//                String mobile11 = rs.getString(2);
                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile11);
                ResultSet rs1 = pstn1.executeQuery();
                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_aro);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_aro);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    else if (amine_aro.equals("Secondary")&& liberman.equals("Negative")) 
    {
                System.out.println("It seems that the investigation has\n gone wrong somewhere. Repeat the \nidentification from start.");
                response.sendRedirect("404.jsp");
    } 
    else if (amine_aro.equals("Tertiary") ||amine_aro.equals("Aryl-Alkyl") )
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name1 = rs.getString(1);
//                String mobile11 = rs.getString(2);
                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile11);
                ResultSet rs1 = pstn1.executeQuery();
                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_aro);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "Present");
                    ps.setString(10, amine_aro);
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
    else if (nitro.equals("Present")) 
    {System.out.println("amide ==========   nitro");
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name1 = rs.getString(1);
//                String mobile11 = rs.getString(2);

                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile11);
                ResultSet rs1 = pstn1.executeQuery();
                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "Present");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "Present");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    } 
    else if (nitro.equals("Absent") && amide.equals("Absent")) 
    {System.out.println("amide ==========   nitro");
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name1 = rs.getString(1);
//                String mobile11 = rs.getString(2);

                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile11);
                ResultSet rs1 = pstn1.executeQuery();
                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("404.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("404.jsp");
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    } 
    else if (amide.equals("Present")) 
    {
        System.out.println("amide ==========   Present");
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name1 = rs.getString(1);
//                String mobile11 = rs.getString(2);

                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile11);
                ResultSet rs1 = pstn1.executeQuery();

                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "Present");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "NA");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "Present");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
    }
//    else if (amide.equals("Absent")) 
//    {
//        System.out.println("The compound requires another test.\n Please refer relevant literature.");
//        response.sendRedirect("404.jsp");
//    }
    
    
//    else if (carbylamine.equals("Negative")) 
//    {
//                System.out.println("It seems that the investigation has\n gone wrong somewhere. Repeat the \nidentification from start.");
//                response.sendRedirect("404.jsp");
//    } 
//    else if (amide.equals("Absent")) 
//    {
//        System.out.println("The compound requires another test.\n Please refer relevant literature.");
//        response.sendRedirect("404.jsp");
//    } 
    
%>