<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%


    String result=request.getParameter("Result");
    System.out.println("Result : "+result);
    String carboxylic=request.getParameter("Carboxylic");
    System.out.println(" aaaa : "+carboxylic);
    String Phenol=request.getParameter("Phenol");
    String mobile11 ="8975774258";
    
    
    if (carboxylic.equals("Absent")) 
    {
        System.out.println(" in Absent");
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
                    ps.setString(7, "Absent");
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
                    ps.setString(7, "Absent");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    response.sendRedirect("sp_6.jsp");
                    ps.executeUpdate();
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();

        }
    } 
    else if (carboxylic.equals("Absent") && Phenol.equals("Present")) 
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
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "Absent");
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
                    ps.setString(7, "Absent");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "Present");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    response.sendRedirect("sp_6.jsp");
                    ps.executeUpdate();

                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();

        }
    }
    
    else if (carboxylic.equals("Present")) 
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
                    System.out.println("imin prsssocid");
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "Present");
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
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    System.out.println("im bgb i n procsssid");
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");

                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "NA");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "Present");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile11);
                    response.sendRedirect("sp_6.jsp");
                    ps.executeUpdate();
                }
            //}
        } 
        catch (Exception e) 
        {
            e.printStackTrace();

        }
    }
    else if (Phenol.equals("Absent")) 
    {
        response.sendRedirect("404.jsp");
    }
    
%>