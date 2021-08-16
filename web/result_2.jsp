<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String state=request.getParameter("state");
    String mobile1=(String)session.getAttribute("Userid").toString();
    
System.out.println(state );

    try
    {
        Connection conn = db.dbConnect.dbConnection();
//        PreparedStatement pstmt=conn.prepareStatement("select * from mobile_number");
//        ResultSet rs=pstmt.executeQuery();
//        if( rs.next())
//        {
//            String name=rs.getString(1);
//            String mobile1=rs.getString(2);
                
            PreparedStatement pstn1=conn.prepareStatement("select mobile from result_two_copy where mobile=?");
            pstn1.setString(1,mobile1);
            ResultSet rs1=pstn1.executeQuery();
            
            if(!rs1.next())
            {
                PreparedStatement ps=conn.prepareStatement("insert into result_two_copy values(?,?)");
                ps.setString(1, state);
                ps.setString(2, mobile1);
         
                ps.executeUpdate();
                %>

                    <script>
                        window.location = "sp_3.jsp";

                    </script>

                <%
                ps.close();
                
            }
            else
            {
                PreparedStatement ps  = conn.prepareStatement("update result_two_copy set  state=? where mobile=?");
                ps.setString(1, state);
                ps.setString(2, mobile1);
       
                ps .executeUpdate();
                %>

                    <script>
                        window.location = "sp_3.jsp";

                    </script>

                <%

            } 
        //}
        conn.close();   
    }   
    catch(Exception e)
    {
        System.out.println(e);
    }
%>