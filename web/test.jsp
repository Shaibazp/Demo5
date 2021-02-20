<%-- 
    Document   : test
    Created on : 14 Feb, 2021, 7:10:29 PM
    Author     : Prasad
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
           <%
            
      try{
          
          
             String split[];
             String lines[];// = string.split("\\r?\\n");
            Connection con=db.dbConnect.dbConnection();
            PreparedStatement pstmt=con.prepareStatement("select * from chem_reation_1 where cases='Solid'");
           
            ResultSet rs=pstmt.executeQuery();
            while(rs.next()){
              
              String principle=     rs.getString(3);
               String instruction=      rs.getString(4); 
                   String video=  rs.getString(5); 
                  String procedure_solid=   rs.getString(6);
                     String procedure_liquid=  rs.getString(7);
                      String inference= rs.getString(8);
                      String reagents= rs.getString(9);
                         String reaction_video= rs.getString(10);
                
                        System.out.println(instruction);
      
              %>  
              
                      <textarea id="w3review1" name="instuction" <%=principle%>   style="width: 100%; margin-top: -5px;" > </textarea>               
                    
                         
                                    <% 
                ////JOptionPane.showMessageDialog(null, "Login Successfully!!!!");
               // new Dashboard().setVisible(true);                 
                //setVisible(false);
            }
             con.close(); 
        }catch(Exception e){
           
            System.out.println(e);
        }

            %>
    </body>
</html>
