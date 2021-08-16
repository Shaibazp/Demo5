<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.ParseException"%>

<%
    String username = request.getParameter("Email");
    String password = request.getParameter("Password");
    session.setAttribute("Userid", username);
    try
    {
        Connection conn = db.dbConnect.dbConnection();
        PreparedStatement pstmt = conn.prepareStatement("select * from register where MobileNumber=? and Password=?");
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) 
        {
            PreparedStatement pstmt1 = conn.prepareStatement("select * from register where loginStatus=? and MobileNumber=?");
            pstmt1.setString(1, "0");
            pstmt1.setString(2, username);
            ResultSet rst1=pstmt1.executeQuery();
            if(rst1.next())
            {
                String rdate=rst1.getString(9);
                Date date = new Date();
                SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                String strDate = formatter.format(date);
                System.out.println(strDate);
                SimpleDateFormat myFormat = new SimpleDateFormat("dd-MM-yyyy");
                Date date1 = myFormat.parse(rdate);
                Date date2 = myFormat.parse(strDate);
                long diff = date2.getTime() - date1.getTime();
                System.out.println("Days: " + TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS));
                int day = (int) TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
                String paymentstatus=rst1.getString(10);
                int pstatus= Integer.parseInt(paymentstatus);
                
                if(pstatus == 1)
                {
                    %>
                        <script>
                            alert("Login Successfull");
                            window.location="sp.jsp";
                        </script>
                    <%
                }
                else if(day > 15 )
                {
                    PreparedStatement ps = conn.prepareStatement("update register set  loginStatus=? where MobileNumber=?");
                    ps.setString(1, "1");
                    ps.setString(2, username);
                    ps.executeUpdate();
                    ps.close();
                    response.sendRedirect("payment.jsp");
                }
                else if(day <= 15 )
                {
                    //int a = 15 - day;
                    %>
                        <script>
                            alert("Please Pay Fees before Otherwise demo version expire");
                            //alert("Login Successfull");
                            window.location="sp.jsp";
                        </script>
                    <%
                }
            }
            else
            {
                response.sendRedirect("payment.jsp");
            }
           
//            String name = rs.getString(2);
//            String mobile = rs.getString(5);
//            System.out.println(name + mobile);
//            PreparedStatement pst1 = conn.prepareStatement("delete from mobile_number");
//            pst1.executeUpdate();
//            PreparedStatement ps = conn.prepareStatement("insert into mobile_number values(?,?)");
//            ps.setString(1, name);
//            ps.setString(2, mobile);
//            ps.executeUpdate();
//            ps.close();


        
//            PreparedStatement pstn11 = conn.prepareStatement("select * from session_mngt where mobile=?");
//            pstn11.setString(1, mobile);
//            ResultSet rs11 = pstn11.executeQuery();
//
//            if (rs11.next()) 
//            {
//                String name1 = rs11.getString(1);
//                String mob = rs11.getString(2);
//                String page = rs11.getString(3);
//
//                System.out.println("name" + name1 + "mob" + mob + "Page No." + page);
//
//                if (page.equals("1")) 
//                {
//                    new Dashboard1().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("2")) 
//                {
//                    new Dashboard2().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("3")) 
//                {
//                    new Dashboard3().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("4")) 
//                {
//                    new Dashboard4().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("5_1")) 
//                {
//                    new Dashboard5_1().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("5_2")) 
//                {
//                    new Dashboard5_2().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("5_3")) 
//                {
//                    new Dashboard5_3().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("5_4")) 
//                {
//                    new Dashboard5_4().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("5_5")) 
//                {
//                    new Dashboard5_5().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("6")) 
//                {
//                    new Dashboard6().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("7")) 
//                {
//                    new Dashboard7().setVisible(true);
//                    setVisible(false);
//                } 
//                else if (page.equals("8")) 
//                {
//                    new Dashboard8_1().setVisible(true);
//                    setVisible(false);
//                } 
//                else 
//                {
//                    new Dashboard1().setVisible(true);
//                    setVisible(false);
//                }
//            } 
//            else 
//            {
//                new Dashboard1().setVisible(true);
//                setVisible(false);
//            }
        } 
        else 
        {
            %>
                <script>
                    alert("Please Enter Valid Detailed");
                    window.location="Home.jsp";
                </script>
            <%
            //JOptionPane.showMessageDialog(null, "Error", "Invalid User name or Password", JOptionPane.ERROR);
        }
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
%>