<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String Nitrogen=request.getParameter("Nitrogen");
    String Sulphur=request.getParameter("Sulphur");
    String Halogen=request.getParameter("Halogen");
    String Classification=request.getParameter("Classification");
    String mobile1=(String)session.getAttribute("Userid").toString();

    if(Halogen.equals("Positive"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();

//            PreparedStatement pstmt=con.prepareStatement("select * from mobile_number");
//            ResultSet rs=pstmt.executeQuery();
//            if( rs.next())
//            {
//                String name=rs.getString(1);
//                String mobile1=rs.getString(2);
                
                PreparedStatement pstn1=con.prepareStatement("select mobile from result_three_copy where mobile=?");
                pstn1.setString(1,mobile1);
                ResultSet rs1=pstn1.executeQuery();
            
                if(!rs1.next())
                {
                    PreparedStatement ps=con.prepareStatement("insert into result_three_copy values(?,?,?,?,?)");
                    ps.setString(1, Nitrogen);
                    ps.setString(2, Sulphur);
                    ps.setString(3, Halogen);
                    ps.setString(4, Classification);
                    ps.setString(5, mobile1);
                    ps.executeUpdate();
                    
                    %>
                        <script>
                            window.location = "sp_4.jsp";
                        </script>
                    <% 
                    ps.close();
                }
                else
                {
                    PreparedStatement ps  = con.prepareStatement("update result_three_copy set  nitrogen=?, sulphur=?, halogen=?, clasify=? where mobile=?");
                    ps.setString(1, Nitrogen);
                    ps.setString(2, Sulphur);
                    ps.setString(3, Halogen);
                    ps.setString(4, Classification);
                    ps.setString(5, mobile1);
                        
                    %>
                        <script>
                            window.location = "sp_4.jsp";
                        </script>
                    <% 
                    ps .executeUpdate();
                }
            //}
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    } 
    else if(Halogen.equals("Negative"))
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            
//            PreparedStatement pstmt=con.prepareStatement("select * from mobile_number");
//            ResultSet rs=pstmt.executeQuery();
//            if( rs.next())
//            {
//                String name=rs.getString(1);
//                String mobile1=rs.getString(2);
                
                PreparedStatement pstn1=con.prepareStatement("select mobile from result_three_copy where mobile=?");
                pstn1.setString(1,mobile1);
                ResultSet rs1=pstn1.executeQuery();
            
                if(!rs1.next())
                {
                    PreparedStatement ps=con.prepareStatement("insert into result_three_copy values(?,?,?,?,?)");
                    ps.setString(1, Nitrogen);
                    ps.setString(2, Sulphur);
                    ps.setString(3, Halogen);
                    ps.setString(4, "Absent");
                    ps.setString(5, mobile1);
                    ps.executeUpdate();
                        
                    %>
                        <script>
                            window.location = "sp_4.jsp";
                        </script>
                    <% 
                    ps.close();
                }
                else
                {
                    PreparedStatement ps  = con.prepareStatement("update result_three_copy set  nitrogen=?, sulphur=?, halogen=?, clasify=? where mobile=?");
                    ps.setString(1, Nitrogen);
                    ps.setString(2, Sulphur);
                    ps.setString(3, Halogen);
                    ps.setString(4, "Absent");
                    ps.setString(5, mobile1);
       
                    %>
                        <script>
                            window.location = "sp_4.jsp";
                        </script>
                    <% 
                    ps .executeUpdate();
                }
            //}
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }      
%>