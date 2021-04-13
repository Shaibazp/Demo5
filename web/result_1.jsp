<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String state=request.getParameter("state");
    String colour=request.getParameter("color");
    String odour=request.getParameter("odour");
    String mp_from=request.getParameter("MeltingFrom");
    String mp_to=request.getParameter("MeltingTo");
    String boiling_temp=request.getParameter("Boiling");
    String mobile1="8975774258";
    
    System.out.println(state +"=="+colour+"=="+odour+"=="+mp_from+"=="+mp_to+"=="+boiling_temp);

    try
    {
        Connection conn = db.dbConnect.dbConnection();
//        PreparedStatement pstmt=conn.prepareStatement("select * from mobile_number");
//        ResultSet rs=pstmt.executeQuery();
//        if( rs.next())
//        {
//            String name=rs.getString(1);
//            String mobile1=rs.getString(2);
                
            PreparedStatement pstn1=conn.prepareStatement("select mobile from result_one_copy where mobile=?");
            pstn1.setString(1,mobile1);
            ResultSet rs1=pstn1.executeQuery();
            
            if(!rs1.next())
            {
          
                PreparedStatement ps=conn.prepareStatement("insert into result_one_copy values(?,?,?,?,?,?,?)");   
                ps.setString(1, state);
                ps.setString(2, colour);
                ps.setString(3, odour);
                ps.setString(4, mp_from);
                ps.setString(5, mp_to);
                ps.setString(6, boiling_temp);
                ps.setString(7, mobile1);
                ps.executeUpdate();
                
                %>
                    <script>
                        window.location = "sp_2.jsp";

                    </script>

                <%
                ps.close();

            }
            else
            {
                PreparedStatement ps  = conn.prepareStatement("update result_one_copy set  state=?, colour=?, odour=?, mp_from=?, mp_to=?, boiling_temp=? where mobile=?");
                ps.setString(1, state);
                ps.setString(2, colour);
                ps.setString(3, odour);
                ps.setString(4, mp_from);
                ps.setString(5, mp_to);
                ps.setString(6, boiling_temp);
                ps.setString(7, mobile1);
       
                ps .executeUpdate();
                %>
                    <script>
                        window.location = "sp_2.jsp";

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