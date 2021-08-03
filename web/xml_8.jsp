<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html,xml" pageEncoding="UTF-8"%>

<%
    response.setContentType("text/xml");
    String mobile1 = "8975774258";
    
    try 
    {
        Connection con = db.dbConnect.dbConnection();

//        PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
//        ResultSet rs = pstmt.executeQuery();
//        if (rs.next()) 
//        {
//            String name = rs.getString(1);
//            String mobile1 = rs.getString(2);

            PreparedStatement pst = con.prepareStatement("Select * from result_one_copy where mobile=?");
            pst.setString(1, mobile1);
            ResultSet rst = pst.executeQuery();
            while (rst.next()) 
            {
                String state = rst.getString(1);
                String phy_from = rst.getString(4);
                String phy_to = rst.getString(5);
                String boiling = rst.getString(6);
                System.err.println("Solid/Liquid:- " + state);
                PreparedStatement pst1 = con.prepareStatement("Select * from result_two_copy where mobile=?");
                pst1.setString(1, mobile1);
                ResultSet rst1 = pst1.executeQuery();
                while (rst1.next()) 
                {
                    String aro_ali = rst1.getString(1);
                    System.err.println("Ali/Aro:- " + aro_ali);

                    PreparedStatement pst2 = con.prepareStatement("Select * from result_three_copy where mobile=?");
                    pst2.setString(1, mobile1);
                    ResultSet rst2 = pst2.executeQuery();
                    while (rst2.next()) 
                    {
                        String nitro = rst2.getString(1);
                        String sulphur = rst2.getString(2);
                        String halogen = rst2.getString(3);
                        System.err.println("Nitro/Sulp/Halogen" + nitro + sulphur + halogen);

                        PreparedStatement pst3 = con.prepareStatement("Select * from result_four_copy where mobile=?");
                        pst3.setString(1, mobile1);
                        ResultSet rst3 = pst3.executeQuery();
                        while (rst3.next()) 
                        {
                            String water = rst3.getString(1);
                            String ether = rst3.getString(2);
                            String naoh = rst3.getString(3);
                            String hcl = rst3.getString(4);
                            String h2so4 = rst3.getString(5);
                            System.err.println("Water " + water + " Eher " + ether + " NAOH " + naoh + " HCL " + hcl + " H2SO4 " + h2so4);

                            PreparedStatement pst4 = con.prepareStatement("Select * from result_five_1_copy where mobile=?");
                            pst4.setString(1, mobile1);
                            ResultSet rst4 = pst4.executeQuery();
                            while (rst4.next()) 
                            {
                                System.out.println("inside");
                                String result = rst4.getString(15);
                                System.out.println(result);

                                PreparedStatement pst5 = con.prepareStatement("Select * from result_seven_copy where mobile=?");
                                pst5.setString(1, mobile1);
                                ResultSet rst5 = pst5.executeQuery();
                                while (rst5.next()) 
                                {
                                    String mp_from = rst5.getString(1);
                                    String mp_to = rst5.getString(2);
                                    System.out.println("From : "+mp_from+" mp_to "+mp_to);

                                    if (state.equals("Solid")) 
                                    {
                                        if (nitro.equals("Positive") && halogen.equals("Positive")) 
                                        {
                                            if (water.equals("Positive")) 
                                            {
                                                out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }

                                        } 
                                        else if (halogen.equals("Positive") && sulphur.equals("Positive")) 
                                        {
                                            if (water.equals("Positive")) 
                                            {
                                                out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }

                                        } 
                                        else if (nitro.equals("Positive") && sulphur.equals("Positive")) 
                                        {
                                            if (water.equals("Positive")) 
                                            {
                                                out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }

                                                } else if (nitro.equals("Positive")) {

                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }

                                                } else if (sulphur.equals("Positive")) {
                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }

                                                } else if (halogen.equals("Positive")) {
                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }
                                                } else if (nitro.equals("Negative") || sulphur.equals("Negative") || halogen.equals("Negative")) {
                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>Water Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>Ether Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>NAOH Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>HCL Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>H2SO4 Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }
                                                } else {
                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>Water Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>Ether Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>NAOH Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>HCL Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>H2SO4 Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                        out.println("<element>Nill</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }
                                                    out.println("<emp>");
                                                    out.println("<state>"+state+"</state>");
                                                    out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                    out.println("<boiling>"+phy_from + " °C" + " to " + phy_to + " °C</boiling>");
                                                    out.println("<element>Nill</element>");
                                                    out.println("<functional>Nill</functional>");
                                                    out.println("<result>"+result+"</result>");
                                                    out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                    out.println("</emp>");
                                                }
//
                                    } 
                                    else if (state.equals("Liquid")) 
                                    {
//                                        out.println("<state>"+state+"</state>");
                                        if (halogen.equals("Positive") && nitro.equals("Positive")) 
                                        {
                                            if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } 
                                                    else if (hcl.equals("Positive")) 
                                                    {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen &amp; Nitrogen Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } 
                                                    else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Nitrogen Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }

                                                } else if (halogen.equals("Positive") && sulphur.equals("Positive")) {

                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }

                                                } else if (nitro.equals("Positive") && sulphur.equals("Positive")) {

                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen & Sulphur Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }

                                                } else if (nitro.equals("Positive")) {

                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Nitrogen Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }

                                                } else if (sulphur.equals("Positive")) {

                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Sulphur Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }
                                                } else if (halogen.equals("Positive")) {
                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Water</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Ether</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Aq. NaOH (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Aq. HCl (5 %)</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Conc. H2SO4</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>Halogen Presnt</element>");
                                                        out.println("<functional>Nill</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }
                                                } else if (nitro.equals("Negative") || sulphur.equals("Negative") || halogen.equals("Negative")) {
                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>Water Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>Ether Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>NAOH Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>HCL Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>H2SO4 Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    }
                                                } else {

                                                    if (water.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>Water Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (ether.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>Ether Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (naoh.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>NAOH Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (hcl.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>HCL Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                                    } else if (h2so4.equals("Positive")) {
                                                        out.println("<emp>");
                                                        out.println("<state>"+state+"</state>");
                                                        out.println("<AliAro>"+aro_ali+"</AliAro>");
                                                        out.println("<boiling>"+boiling + " °C</boiling>");
                                                        out.println("<element>C,H and /or O Present</element>");
                                                        out.println("<functional>H2SO4 Soluble</functional>");
                                                        out.println("<result>"+result+"</result>");
                                                        out.println("<mpoint>"+mp_from + " °C" + " to " + mp_to + " °C</mpoint>");
                                                        out.println("</emp>");
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        //}
    } 
    catch (Exception e) 
    {
        e.printStackTrace();
    }
%>