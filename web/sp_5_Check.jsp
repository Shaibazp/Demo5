<%@page import="java.sql.*"%>

<%
    String mobile1 = (String)session.getAttribute("Userid").toString();
    
    try 
    {
        Connection con = db.dbConnect.dbConnection();
//        PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//        ResultSet rs = pstmt.executeQuery();
//        if (rs.next()) 
//        {
//            String name = rs.getString(1);
//            String mobile1 = rs.getString(2);

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
                        while (rst3.next()) {
                            String water1 = rst3.getString(1);
                            String ether1 = rst3.getString(2);
                            String naoh1 = rst3.getString(3);
                            String hcl1 = rst3.getString(4);
                            String h2so41 = rst3.getString(5);
                            // System.err.println("Water " + water + " Eher " + ether + " NAOH " + naoh + " HCL " + hcl + " H2SO4 " + h2so4);

                            if (water1.equals("Positive") && ether1.equals("Positive")) 
                            {
                                response.sendRedirect("sp_5_1.jsp");
                            } 
                            else if (naoh1.equals("Negative") && nitro.equals("Positive")) 
                            {
                                response.sendRedirect("sp_5_4.jsp");
                            } 
                            else if (water1.equals("Positive") && ether1.equals("Negative")) 
                            {
                                response.sendRedirect("sp_5_2.jsp");
                            } 
                            else if (water1.equals("Negative") && naoh1.equals("Positive")) 
                            {
                                response.sendRedirect("sp_5_3.jsp");
                            } 
                            else if (naoh1.equals("Negative") && h2so41.equals("Positive")) 
                            {
                                response.sendRedirect("sp_5_5.jsp");
                            }

                        }
                    }
                }
            }
        //}
    } 
    catch (Exception e) 
    {
        e.printStackTrace();
    }


%>