<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
 
<%
 
        response.setContentType("text/xml");
        String sn=request.getParameter("ok");
        System.out.println("abc="+sn);
        
         Connection con=db.dbConnect.dbConnection();
         
         PreparedStatement pstmt=con.prepareStatement("select * from chem_reation_1 where cases='Solid'");
           
            ResultSet rs=pstmt.executeQuery();
            if(rs.next()){
              
              String principle=     rs.getString(3);
               String instruction=      rs.getString(4); 
                   String video=  rs.getString(5); 
                  String procedure_solid=   rs.getString(6);
                     String procedure_liquid=  rs.getString(7);
                      String inference= rs.getString(8);
                      String reagents= rs.getString(9);
                         String reaction_video= rs.getString(10);
                
                        System.out.println(instruction);
      
          

        out.println("<emp>");
        out.println("<empno>"+rs.getString(4)+"</empno>");
        out.println("<empname>"+rs.getString(8)+"</empname>");
        out.println("<empplace>"+rs.getString(3)+"</empplace>");
        out.println("</emp>");
      
        }
      
        rs.close();
        pstmt.close();
        con.close();

%>