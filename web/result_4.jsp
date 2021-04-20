<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String water=request.getParameter("Water");
    String ether=request.getParameter("Diethyl");
    String naoh=request.getParameter("AqNaOH");
    String hcl=request.getParameter("AqHCL");
    String h2so4=request.getParameter("H2So4");
    String mobile1="8975774258";
    
    System.out.println("water : "+water+ "ether : "+ether+"naoh : "+naoh+"hcl : "+hcl+"h2so4 : "+h2so4);
    
    if(water.equals("Yes"))
    {
        if (ether.equals("Yes")) 
        {
            try
            {
                Connection conn = db.dbConnect.dbConnection();
//                PreparedStatement pstmt = conn.prepareStatement("select * from mobile_number");
//                ResultSet rs = pstmt.executeQuery();
//                if (rs.next()) 
//                {
//                    String name = rs.getString(1);
//                    String mobile1 = rs.getString(2);
                    PreparedStatement pstn1 = conn.prepareStatement("select mobile from result_four_copy where mobile=?");
                    pstn1.setString(1, mobile1);
                    ResultSet rs1 = pstn1.executeQuery();
         
                    if (!rs1.next()) 
                    {
                        PreparedStatement ps = conn.prepareStatement("insert into result_four_copy values(?,?,?,?,?,?)");
                        ps.setString(1, "Positive");
                        ps.setString(2, "Positive");
                        ps.setString(3, "Absent");
                        ps.setString(4, "Absent");
                        ps.setString(5, "Absent");
                        ps.setString(6, mobile1);
                        ps.executeUpdate();
                        ps.close();
                    }
                    else 
                    {
                        PreparedStatement ps = conn.prepareStatement("update result_four_copy set  water=?, ether=?, naoh=?, hcl=?, h2so4=? where mobile=?");
                        ps.setString(1, "Positive");
                        ps.setString(2, "Positive");
                        ps.setString(3, "Absent");
                        ps.setString(4, "Absent");
                        ps.setString(5, "Absent");
                        ps.setString(6, mobile1);
                
                        ps.executeUpdate();
                    }
                    
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
                                System.err.println("Nitro/Sulp/Halogen1" + nitro + sulphur + halogen);
                                PreparedStatement pst3 = conn.prepareStatement("Select * from result_four_copy where mobile=?");
                                pst3.setString(1, mobile1);
                                ResultSet rst3 = pst3.executeQuery();
                                while (rst3.next()) 
                                {
                                    String water1 = rst3.getString(1);
                                    String ether1 = rst3.getString(2);
                                    String naoh1 = rst3.getString(3);
                                    String hcl1 = rst3.getString(4);
                                    String h2so41 = rst3.getString(5);
                                    System.err.println("Water " + water + " Eher " + ether + " NAOH " + naoh + " HCL " + hcl + " H2SO4 " + h2so4);
                                    if (water1.equals("Positive") && ether1.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_1.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (naoh1.equals("Negative") && nitro.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_4.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (water1.equals("Positive") && ether1.equals("Negative")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_2.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (water1.equals("Negative") && naoh1.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_4.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (naoh1.equals("Negative") && h2so41.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_5.jsp";
                                            </script>

                                        <%
                                    }
                                }
                            }
                        }
                    }
        
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }    
        }
        else if (ether.equals("No"))
        {
            try 
            {
                Connection con = db.dbConnect.dbConnection();
//                PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//                ResultSet rs = pstmt.executeQuery();
//                if (rs.next()) 
//                {
//                    String name = rs.getString(1);
//                    String mobile1 = rs.getString(2);
                    PreparedStatement pstn1 = con.prepareStatement("select mobile from result_four_copy where mobile=?");
                    pstn1.setString(1, mobile1);
                    ResultSet rs1 = pstn1.executeQuery();
                    if (!rs1.next()) 
                    {
                        PreparedStatement ps = con.prepareStatement("insert into result_four_copy values(?,?,?,?,?,?)");
                    
                        ps.setString(1, "Positive");
                        ps.setString(2, "Negative");
                        ps.setString(3, "Absent");
                        ps.setString(4, "Absent");
                        ps.setString(5, "Absent");
                        ps.setString(6, mobile1);
                        ps.executeUpdate();
                        ps.close();
                    } 
                    else 
                    {
                        PreparedStatement ps = con.prepareStatement("update result_four_copy set  water=?, ether=?, naoh=?, hcl=?, h2so4=? where mobile=?");
                        ps.setString(1, "Positive");
                        ps.setString(2, "Negative");
                        ps.setString(3, "Absent");
                        ps.setString(4, "Absent");
                        ps.setString(5, "Absent");
                        ps.setString(6, mobile1);
                        ps.executeUpdate();
                    }
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
                                    String water1 = rst3.getString(1);
                                    String ether1 = rst3.getString(2);
                                    String naoh1 = rst3.getString(3);
                                    String hcl1 = rst3.getString(4);
                                    String h2so41 = rst3.getString(5);
                                    System.err.println("Water " + water + " Eher " + ether + " NAOH " + naoh + " HCL " + hcl + " H2SO4 " + h2so4);
                                    if (water1.equals("Positive") && ether1.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_1.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (naoh1.equals("Negative") && nitro.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_4.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (water1.equals("Positive") && ether1.equals("Negative")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_2.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (water1.equals("Negative") && naoh1.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_3.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (naoh1.equals("Negative") && h2so41.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_5.jsp";
                                            </script>

                                        <%
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
        }
    }
    else if(water.equals("No"))
    {
        System.err.println("Im in 2");
        if (naoh.equals("Yes")) 
        {
            System.err.println("Im in 3");
            try 
            {
                Connection con = db.dbConnect.dbConnection();
//                PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//                ResultSet rs = pstmt.executeQuery();
//                if (rs.next()) 
//                {
//                    String name = rs.getString(1);
//                    String mobile1 = rs.getString(2);
                    PreparedStatement pstn1 = con.prepareStatement("select mobile from result_four_copy where mobile=?");
                    pstn1.setString(1, mobile1);
                    ResultSet rs1 = pstn1.executeQuery();
                    if (!rs1.next()) 
                    {
                        PreparedStatement ps = con.prepareStatement("insert into result_four_copy values(?,?,?,?,?,?)");
                        ps.setString(1, "Negative");
                        ps.setString(2, "Absent");
                        ps.setString(3, "Positive");
                        ps.setString(4, "Absent");
                        ps.setString(5, "Absent");
                        ps.setString(6, mobile1);
                        
                        ps.executeUpdate();
                        ps.close();
                    } 
                    else 
                    {
                        PreparedStatement ps = con.prepareStatement("update result_four_copy set  water=?, ether=?, naoh=?, hcl=?, h2so4=? where mobile=?");
                        ps.setString(1, "Negative");
                        ps.setString(2, "Absent");
                        ps.setString(3, "Positive");
                        ps.setString(4, "Absent");
                        ps.setString(5, "Absent");
                        ps.setString(6, mobile1);
                        ps.executeUpdate();
                    }
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
                                    String water1 = rst3.getString(1);
                                    String ether1 = rst3.getString(2);
                                    String naoh1 = rst3.getString(3);
                                    String hcl1 = rst3.getString(4);
                                    String h2so41 = rst3.getString(5);
                                    System.err.println("Water " + water + " Eher " + ether + " NAOH " + naoh + " HCL " + hcl + " H2SO4 " + h2so4);
                                    if (water1.equals("Positive") && ether1.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_1.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (naoh1.equals("Negative") && nitro.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_4.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (water1.equals("Positive") && ether1.equals("Negative")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_2.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (water1.equals("Negative") && naoh1.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_3.jsp";
                                            </script>

                                        <%
                                    } 
                                    else if (naoh1.equals("Negative") && h2so41.equals("Positive")) 
                                    {
                                        %>
                                            <script>
                                                window.location = "sp_5_5.jsp";
                                            </script>

                                        <%
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
        }
        else if (naoh.equals("No"))
        {
            System.err.println("Im in NAOH");
            if(hcl.equals("Yes") || hcl.equals("No"))
            {
            if (hcl.equals("Yes")) 
            {
                System.err.println("Im in YES HCL");
                try 
                {
                    Connection con = db.dbConnect.dbConnection();
//                    PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//                    ResultSet rs = pstmt.executeQuery();
//                    if (rs.next()) 
//                    {
//                        String name = rs.getString(1);
//                        String mobile1 = rs.getString(2);
                        PreparedStatement pstn1 = con.prepareStatement("select mobile from result_four_copy where mobile=?");
                        pstn1.setString(1, mobile1);
                        ResultSet rs1 = pstn1.executeQuery();
                        if (!rs1.next()) 
                        {
                            PreparedStatement ps = con.prepareStatement("insert into result_four_copy values(?,?,?,?,?,?)");
                            ps.setString(1, "Negative");
                            ps.setString(2, "Absent");
                            ps.setString(3, "Negative");
                            ps.setString(4, "Positive");
                            ps.setString(5, "Absent");
                            ps.setString(6, mobile1);
                            ps.executeUpdate();
                            ps.close();
                        } 
                        else 
                        {
                            PreparedStatement ps = con.prepareStatement("update result_four_copy set  water=?, ether=?, naoh=?, hcl=?, h2so4=? where mobile=?");
                            ps.setString(1, "Negative");
                            ps.setString(2, "Absent");
                            ps.setString(3, "Negative");
                            ps.setString(4, "Positive");
                            ps.setString(5, "Absent");
                            ps.setString(6, mobile1);
                            ps.executeUpdate();
                        }
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
                                        String water1 = rst3.getString(1);
                                        String ether1 = rst3.getString(2);
                                        String naoh1 = rst3.getString(3);
                                        String hcl1 = rst3.getString(4);
                                        String h2so41 = rst3.getString(5);
                                        System.err.println("Water " + water + " Eher " + ether + " NAOH " + naoh + " HCL " + hcl + " H2SO4 " + h2so4);
                                        if (water1.equals("Positive") && ether1.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_1.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (naoh1.equals("Negative") && nitro.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_4.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (water1.equals("Positive") && ether1.equals("Negative")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_2.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (water1.equals("Negative") && naoh1.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_3.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (naoh1.equals("Negative") && h2so41.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_5.jsp";
                                                </script>

                                            <%
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
            }
            else if (hcl.equals("No")) 
            {
                System.err.println("Im in no hcl");
                try 
                {
                    Connection con = db.dbConnect.dbConnection();
//                    PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//                    ResultSet rs = pstmt.executeQuery();
//                    if (rs.next()) 
//                    {
//                        String name = rs.getString(1);
//                        String mobile1 = rs.getString(2);
                        PreparedStatement pstn1 = con.prepareStatement("select mobile from result_four_copy where mobile=?");
                        pstn1.setString(1, mobile1);
                        ResultSet rs1 = pstn1.executeQuery();
                        if (!rs1.next()) 
                        {
                            PreparedStatement ps = con.prepareStatement("insert into result_four_copy values(?,?,?,?,?,?)");
                            ps.setString(1, "Negative");
                            ps.setString(2, "Absent");
                            ps.setString(3, "Negative");
                            ps.setString(4, "Negative");
                            ps.setString(5, "Absent");
                            ps.setString(6, mobile1);
                            ps.executeUpdate();
                            ps.close();
                        } 
                        else 
                        {
                            PreparedStatement ps = con.prepareStatement("update result_four_copy set  water=?, ether=?, naoh=?, hcl=?, h2so4=? where mobile=?");
                            ps.setString(1, "Negative");
                            ps.setString(2, "Absent");
                            ps.setString(3, "Negative");
                            ps.setString(4, "Negative");
                            ps.setString(5, "Absent");
                            ps.setString(6, mobile1);
                            ps.executeUpdate();
                        }
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
                                        String water1 = rst3.getString(1);
                                        String ether1 = rst3.getString(2);
                                        String naoh1 = rst3.getString(3);
                                        String hcl1 = rst3.getString(4);
                                        String h2so41 = rst3.getString(5);
                                        System.err.println("Water " + water + " Eher " + ether + " NAOH " + naoh + " HCL " + hcl + " H2SO4 " + h2so4);
                                        if (water1.equals("Positive") && ether1.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_1.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (naoh1.equals("Negative") && nitro.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_4.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (water1.equals("Positive") && ether1.equals("Negative")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_2.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (water1.equals("Negative") && naoh1.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_3.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (naoh1.equals("Negative") && h2so41.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_5.jsp";
                                                </script>

                                            <%
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
            }
            }
            else if(h2so4.equals("Yes") || h2so4.equals("No"))
            {
            if (h2so4.equals("Yes")) 
            {
                System.err.println("Im in h2so4");
                try 
                {
                    Connection con = db.dbConnect.dbConnection();
//                    PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//                    ResultSet rs = pstmt.executeQuery();
//                    if (rs.next()) 
//                    {
//                        String name = rs.getString(1);
//                        String mobile1 = rs.getString(2);
                        PreparedStatement pstn1 = con.prepareStatement("select mobile from result_four_copy where mobile=?");
                        pstn1.setString(1, mobile1);
                        ResultSet rs1 = pstn1.executeQuery();
                        if (!rs1.next()) 
                        {
                            PreparedStatement ps = con.prepareStatement("insert into result_four_copy values(?,?,?,?,?,?)");
                            ps.setString(1, "Negative");
                            ps.setString(2, "Absent");
                            ps.setString(3, "Negative");
                            ps.setString(4, "Absent");
                            ps.setString(5, "Positive");
                            ps.setString(6, mobile1);
                            ps.executeUpdate();
                            ps.close();
                        } 
                        else 
                        {
                            PreparedStatement ps = con.prepareStatement("update result_four_copy set  water=?, ether=?, naoh=?, hcl=?, h2so4=? where mobile=?");
                            ps.setString(1, "Negative");
                            ps.setString(2, "Absent");
                            ps.setString(3, "Negative");
                            ps.setString(4, "Absent");
                            ps.setString(5, "Positive");
                            ps.setString(6, mobile1);
                            ps.executeUpdate();
                        }
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
                                        String water1 = rst3.getString(1);
                                        String ether1 = rst3.getString(2);
                                        String naoh1 = rst3.getString(3);
                                        String hcl1 = rst3.getString(4);
                                        String h2so41 = rst3.getString(5);
                                        System.err.println("Water " + water + " Eher " + ether + " NAOH " + naoh + " HCL " + hcl + " H2SO4 " + h2so4);
                                        if (water1.equals("Positive") && ether1.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_1.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (naoh1.equals("Negative") && nitro.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_4.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (water1.equals("Positive") && ether1.equals("Negative")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_2.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (water1.equals("Negative") && naoh1.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_3.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (naoh1.equals("Negative") && h2so41.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_5.jsp";
                                                </script>

                                            <%
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
            }
            else if (h2so4.equals("No"))
            {
                System.err.println("Im in no h2so4");
                try 
                {
                    Connection con = db.dbConnect.dbConnection();
//                    PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//                    ResultSet rs = pstmt.executeQuery();
//                    if (rs.next()) 
//                    {
//                        String name = rs.getString(1);
//                        String mobile1 = rs.getString(2);
                        System.err.println("Im in 1");
                        PreparedStatement pstn1 = con.prepareStatement("select mobile from result_four_copy where mobile=?");
                        pstn1.setString(1, mobile1);
                        ResultSet rs1 = pstn1.executeQuery();
                        if (!rs1.next()) 
                        {
                            System.err.println("Im in 2");
                            PreparedStatement ps = con.prepareStatement("insert into result_four_copy values(?,?,?,?,?,?)");
                            ps.setString(1, "Negative");
                            ps.setString(2, "Absent");
                            ps.setString(3, "Negative");
                            ps.setString(4, "Absent");
                            ps.setString(5, "Negative");
                            ps.setString(6, mobile1);
                            ps.executeUpdate();
                            ps.close();
                        } 
                        else 
                        {
                            System.err.println("Im in 3");
                            PreparedStatement ps = con.prepareStatement("update result_four_copy set  water=?, ether=?, naoh=?, hcl=?, h2so4=? where mobile=?");
                            ps.setString(1, "Negative");
                            ps.setString(2, "Absent");
                            ps.setString(3, "Negative");
                            ps.setString(4, "Absent");
                            ps.setString(5, "Negative");
                            ps.setString(6, mobile1);
                            ps.executeUpdate();
                        }
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
                                        String water1 = rst3.getString(1);
                                        String ether1 = rst3.getString(2);
                                        String naoh1 = rst3.getString(3);
                                        String hcl1 = rst3.getString(4);
                                        String h2so41 = rst3.getString(5);
                                        System.err.println("Water " + water1 + " Eher " + ether1 + " NAOH " + naoh1 + " HCL " + hcl1 + " H2SO4 " + h2so41);
                                        if (water1.equals("Positive") && ether1.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_1.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (naoh1.equals("Negative") && nitro.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_4.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (water1.equals("Positive") && ether1.equals("Negative")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_2.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (water1.equals("Negative") && naoh1.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_3.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (naoh1.equals("Negative") && h2so41.equals("Positive")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_5.jsp";
                                                </script>

                                            <%
                                        } 
                                        else if (water1.equals("Negative") && naoh1.equals("Negative") && h2so41.equals("Negative")) 
                                        {
                                            %>
                                                <script>
                                                    window.location = "sp_5_5.jsp";
                                                </script>

                                            <%
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
            }
            }
        }
    }
                  
%>