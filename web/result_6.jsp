<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String result = request.getParameter("Result");
    String mp_from = request.getParameter("MeltingFrom");
    String mp_to = request.getParameter("MeltingTo");
    int mp_too = Integer.parseInt(mp_to);
    int mp_fromm = Integer.parseInt(mp_from); 
    String mobile1 = (String)session.getAttribute("Userid").toString();
        
    try 
    {
        
        if (mp_from.equals("38") && mp_to.equals("39")) 
        {
                //result2.setText("It seems that the investigation has\n gone wrong somewhere. Repeat the \nidentification from start.");
            response.sendRedirect("404.jsp");
        } 
        else 
        {
            Connection con = db.dbConnect.dbConnection();
//            PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) 
//            {
//                String name = rs.getString(1);
//                String mobile1 = rs.getString(2);

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
                                PreparedStatement pst5 = con.prepareStatement("Select * from result_five_1_copy where mobile=?");
                                pst5.setString(1, mobile1);
                                ResultSet rst5 = pst5.executeQuery();
                                while (rst5.next()) 
                                {
                                    String compound_name = rst5.getString(15);

                                    try 
                                    {
//                                        PreparedStatement pstmt1 = con.prepareStatement("select * from mobile_number");
//                                        ResultSet rsr = pstmt1.executeQuery();
//                                        if (rsr.next()) 
//                                        {
//                                            String name1 = rsr.getString(1);
//                                            String mobile11 = rsr.getString(2);
                                            PreparedStatement pstn1 = con.prepareStatement("select mobile from result_six_copy where mobile=?");
                                            pstn1.setString(1, mobile1);
                                            ResultSet rs1 = pstn1.executeQuery();
                                            
                                            if (!rs1.next()) 
                                            {
                                                PreparedStatement ps = con.prepareStatement("insert into result_six_copy values(?,?,?,?,?,?,?,?,?)");
                                                ps.setString(1, compound_name);
                                                ps.setString(2, mp_from);
                                                ps.setString(3, mp_to);
                                                ps.setString(4, result1);
                                                ps.setString(5, result2);
                                                ps.setString(6, nitro);
                                                ps.setString(7, sulphur);
                                                ps.setString(8, halogen);
                                                ps.setString(9, mobile1);
                                                ps.executeUpdate();
                                                response.sendRedirect("sp_7.jsp");
                                                ps.close();
                                            } 
                                            else 
                                            {
                                                PreparedStatement ps = con.prepareStatement("update result_six_copy set  compound_name=?, mp_from=?, mp_to=?, result_one=?, result_two=?, nitro=?, sulphur=?, halogen=? where mobile=?");
                                                ps.setString(1, compound_name);
                                                ps.setString(2, mp_from);
                                                ps.setString(3, mp_to);
                                                ps.setString(4, result1);
                                                ps.setString(5, result2);
                                                ps.setString(6, nitro);
                                                ps.setString(7, sulphur);
                                                ps.setString(8, halogen);
                                                ps.setString(9, mobile1);
                                                ps.executeUpdate();
                                                response.sendRedirect("sp_7.jsp");
                                            }
                                        //}
                                    } 
                                    catch (Exception e1) 
                                    {
                                        e1.printStackTrace();
                                    }
                                }
                            }
                        }
                    }
                }
            //}
        }
    } 
    catch (Exception e) 
    {
        System.out.println(e);
    }

%>