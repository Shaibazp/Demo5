<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String state=request.getParameter("state");
    String mobile="8975774258";
    
System.out.println(state );

    try
    {
        Connection conn = db.dbConnect.dbConnection();
        PreparedStatement pstmt = conn.prepareStatement("insert into result_two_copy(state,mobile) values(?,?)");
        pstmt.setString(1, state);
        pstmt.setString(2, mobile);
        
        int s = pstmt.executeUpdate();
        if (s > 0) 
        {
                    System.out.println("Uploaded successfully !");
                    %>

<script>
    window.location = "sp_2.jsp";

</script>

<% 
        }
        
    }   
    catch(Exception e)
    {
        System.out.println(e);
    }
%>