<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%

    String result = request.getParameter("Result");
    String mp_from = request.getParameter("mfrom");
    String mp_to = request.getParameter("mto");
    String mobile1 = (String)session.getAttribute("Userid").toString();
        System.out.println("result :"+result+"mp_from : "+mp_from+"mp_to :"+mp_to);
    try 
    {
        
        if (result.equals("")) 
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

                PreparedStatement pstn1=con.prepareStatement("select mobile from result_seven_copy where mobile=?");
                pstn1.setString(1,mobile1);
                ResultSet rs1=pstn1.executeQuery();
            
                if(!rs1.next())
                {
                    PreparedStatement ps = con.prepareStatement("insert into result_seven_copy values(?,?,?,?)");
                    ps.setString(1, mp_from);
                    ps.setString(2, mp_to);
                    ps.setString(3, result);
                    ps.setString(4, mobile1);
                    ps.executeUpdate();

                    ps.close();
                    response.sendRedirect("sp_8.jsp");
                }
                else
                {
                    PreparedStatement pstn7 = con.prepareStatement("update result_seven_copy set  mp_from=?, mp_to=?,compound_name=? where mobile=?");
                    pstn7.setString(1, mp_from);
                    pstn7.setString(2, mp_to);
                    pstn7.setString(3, result);
                    pstn7.setString(4, mobile1);
                    pstn7.executeUpdate();
                 
                   response.sendRedirect("sp_8.jsp"); 
                }
            //}
        }
    } 
    catch (Exception e) 
    {
        System.out.println(e);
    }

%>