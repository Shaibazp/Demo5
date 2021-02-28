<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%

    response.setContentType("text/xml");
    String sn = request.getParameter("ok");
    System.out.println("abc=" + sn);
    Connection conn = db.dbConnect.dbConnection();
    PreparedStatement ps = conn.prepareStatement("select * from chem_reation_1 where cases=? ");
    ps.setString(1, sn);
    System.out.println("abc1=" + sn);
    out.println("<emp>");
            ResultSet rs = ps.executeQuery();
        if (rs.next()) {

            out.println("<Instruction>" + rs.getString(4) + "</Instruction>");
            out.println("<Rational>" + rs.getString(3) + "</Rational>");
            out.println("<Procedure>" + rs.getString(6) + "</Procedure>");
            out.println("<Observation>" + rs.getString(8) + "</Observation>");
            out.println("<Reagent>" + rs.getString(9) + "</Reagent>");

            if (sn.equals("Aliphatic")) {
                out.println("<Inference>" + "The compound can be tested for presence of any functional group, but not for phenols." + "</Inference>");
            } else if (sn.equals("Aromatic")) {
                out.println("<Inference>" + "The compound can be tested for presence of any functional group, but not for saturated and unsaturated hydrocarbons." + "</Inference>");
            }

            rs.close();
            ps.close();
            conn.close();
        
    }  
    out.println("</emp>");


%>