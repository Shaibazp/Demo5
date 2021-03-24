<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String state=request.getParameter("state");
    String colour=request.getParameter("color");
    String odour=request.getParameter("odour");
    String mp_from=request.getParameter("MeltingFrom");

    String mp_to=request.getParameter("MeltingTo");

    String boiling_temp=request.getParameter("Boiling");

    String mobile="8975774258";
    
System.out.println(state +"=="+colour+"=="+odour+"=="+mp_from+"=="+mp_to+"=="+boiling_temp);

    try
    {
        Connection conn = db.dbConnect.dbConnection();
        PreparedStatement pstmt = conn.prepareStatement("insert into result_one_copy(state,colour,odour,mp_from,mp_to,boiling_temp,mobile) values(?,?,?,?,?,?,?)");
        pstmt.setString(1, state);
        pstmt.setString(2, colour);
        pstmt.setString(3, odour);
        pstmt.setString(4, mp_from);
        pstmt.setString(5, mp_to);
        pstmt.setString(6, boiling_temp);
        pstmt.setString(7, mobile);
        
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