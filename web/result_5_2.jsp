<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String result=request.getParameter("Result");
    System.out.println("Result : "+result);
    String Carboxylic=request.getParameter("Carboxylic");
    String alcohol=request.getParameter("Polyhydric");
    String carbonyl=request.getParameter("Carbonyl");
    String schiff=request.getParameter("Schiff");
    String tollens=request.getParameter("Tollens");
    String felhings=request.getParameter("Felhing");
    String amide=request.getParameter("Amide");
    String mobile1="8975774258";
    if (Carboxylic.equals("Present")) 
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name = rs.getString(1);
//                String mobile1 = rs.getString(2);

                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile1);
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
                    ps.setString(7, "Present");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile1);
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
                    ps.setString(7, "Present");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "NA");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile1);
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
    else if (Carboxylic.equals("Absent") && alcohol.equals("Present")) 
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();
            System.out.println("im in in41");
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name = rs.getString(1);
//                String mobile1 = rs.getString(2);

                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile1);
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
                    ps.setString(11, "Present");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile1);
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
                    ps.setString(11, "Present");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile1);
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
    else if (Carboxylic.equals("Absent") && alcohol.equals("Absent") && carbonyl.equals("Present") && felhings.equals(felhings)) 
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name = rs.getString(1);
//                String mobile1 = rs.getString(2);

                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile1);
                ResultSet rs1 = pstn1.executeQuery();

                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "Present");
                    ps.setString(4, schiff);
                    ps.setString(5, tollens);
                    ps.setString(6, felhings);
                    ps.setString(7, "Absent");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "Absent");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile1);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "Present");
                    ps.setString(4, schiff);
                    ps.setString(5, tollens);
                    ps.setString(6, felhings);
                    ps.setString(7, "Absent");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "Absent");
                    ps.setString(12, "NA");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile1);
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
    else if (Carboxylic.equals("Absent") && alcohol.equals("Absent") && carbonyl.equals("Absent") && amide.equals("Present")) 
    {
        try 
        {
            Connection con=db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name = rs.getString(1);
//                String mobile1 = rs.getString(2);
                PreparedStatement pstn1 = con.prepareStatement("select mobile from result_five_1_copy where mobile=?");
                pstn1.setString(1, mobile1);
                ResultSet rs1 = pstn1.executeQuery();

                if (!rs1.next()) 
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_five_1_copy values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "Absent");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "Absent");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "Absent");
                    ps.setString(12, "Present");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile1);
                    ps.executeUpdate();
                    response.sendRedirect("sp_6.jsp");
                    ps.close();
                } 
                else 
                {
                    PreparedStatement ps = con.prepareStatement("update result_five_1_copy set  alcohol_test=?, alcohol_classi=?, carbonyl_test=?, sciffs_test=?, tollens_test=?, fehling_test=?, carboxyloic_test=?, ester_test=?, amine_test=?, amine_classi=?, poly_alcohol=?, amide=?, nitro=?, phenol=?, result=? where mobile=?");
                    ps.setString(1, "NA");
                    ps.setString(2, "NA");
                    ps.setString(3, "Absent");
                    ps.setString(4, "NA");
                    ps.setString(5, "NA");
                    ps.setString(6, "NA");
                    ps.setString(7, "Absent");
                    ps.setString(8, "NA");
                    ps.setString(9, "NA");
                    ps.setString(10, "NA");
                    ps.setString(11, "Absent");
                    ps.setString(12, "Present");
                    ps.setString(13, "NA");
                    ps.setString(14, "NA");
                    ps.setString(15, result);
                    ps.setString(16, mobile1);
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
    else if (amide.equals("Absent")) 
    {
        response.sendRedirect("404.jsp");
    }

%>