  
<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%
    response.setContentType("text/xml");
    String sn = request.getParameter("ok");
    System.out.println("abc=" + sn);
    Connection conn = db.dbConnect.dbConnection();
    PreparedStatement ps = conn.prepareStatement("select * from chem_reation_1 where cases=? ");
    ps.setString(1, sn);
    ResultSet rs = ps.executeQuery();
    //System.out.println("abc1=" + sn);
    out.println("<emp>");
    if (sn.equals("Solid") || sn.equals("Liquid")|| sn.equals("Colour Test")|| sn.equals("Odour Test")|| sn.equals("Melting Point")) 
    {
        
        if (rs.next()) {
            out.println("<Instruction>" + rs.getString(4) + "</Instruction>");
            out.println("<Rational>" + rs.getString(3) + "</Rational>");
            out.println("<Procedure>" + rs.getString(6) + "</Procedure>");
            out.println("<Observation>" + rs.getString(8) + "</Observation>");
            out.println("<Reagent>" + rs.getString(9) + "</Reagent>");
            if (sn.equals("Solid")) {
                out.println("<Inference>" + "The compound exists in solid state indicating strong intermolecular forces amongst them. It further indicates either presence of carboxyl group/hydroxyl group/amino/nitro group in the molecule for hydrogen bond to exist between them, or planer aromatic rings for week Van der Waals forces to exist between them indicating that the sample is a polynuclear aromatic hydrocarbon. Determine the melting point of the compound." + "</Inference>");
            } else if (sn.equals("Liquid")) {
                out.println("<Inference>" + "The compound exists in liquid state indicating few strong intermolecular forces amongst them. It further indicates either absence of carboxyl group/or hydroxyl group/amino/nitro group in the molecule for no hydrogen bond to exist between them, or absence of planer aromatic rings for no week Vander Waals forces to exist between them indicating that the sample is not a polynuclear aromatic hydrocarbon. Determine the boiling point of the compound." + "</Inference>");
            }
            rs.close();
            ps.close();
            conn.close();
        }
    } 
    else if (sn.equals("Solid") || sn.equals("Liquid")|| sn.equals("Colour Test")|| sn.equals("Odour Test")|| sn.equals("Boiling Point")) 
                {
                    
                        if (rs.next()) 
                        {
                            out.println("<Instruction>" + rs.getString(4) + "</Instruction>");
                            out.println("<Rational>" + rs.getString(3) + "</Rational>");
                            out.println("<Procedure>" + rs.getString(7) + "</Procedure>");
                            out.println("<Observation>" + rs.getString(8) + "</Observation>");
                            out.println("<Reagent>" + rs.getString(9) + "</Reagent>");
                            if (sn.equals("Solid")) 
                            {
                                out.println("<Inference>" + "The compound exists in solid state indicating strong intermolecular forces amongst them. It further indicates either presence of carboxyl group/hydroxyl group/amino/nitro group in the molecule for hydrogen bond to exist between them, or planer aromatic rings for week Van der Waals forces to exist between them indicating that the sample is a polynuclear aromatic hydrocarbon. Determine the melting point of the compound." + "</Inference>");
                            } 
                            else if (sn.equals("Liquid")) 
                            {
                                out.println("<Inference>" + "The compound exists in liquid state indicating few strong intermolecular forces amongst them. It further indicates either absence of carboxyl group/or hydroxyl group/amino/nitro group in the molecule for no hydrogen bond to exist between them, or absence of planer aromatic rings for no week Vander Waals forces to exist between them indicating that the sample is not a polynuclear aromatic hydrocarbon. Determine the boiling point of the compound." + "</Inference>");
                            }
                            rs.close();
                            ps.close();
                            conn.close();
                        }
                    
                    
                }
    else 
    {
        if (sn.equals("Black") || sn.equals("yellow") || sn.equals("Brown") ||  sn.equals("dbrown") || sn.equals("dyellow") || sn.equals("red") || sn.equals("obrown") ) {
            out.println("<Inference>" + "The compound could contain a nitrogen containing functional groups like polyamine, nitro, or an amine function." + "</Inference>");
        }  else if (sn.equals("Colourless") || sn.equals("White")) {
            out.println("<Inference>" + "The compound may lack colour imparting functional groups like amines, nitro groups, and thiols." + "</Inference>");
        }  else if (sn.equals("pink") || sn.equals("Magenta")) {
            out.println("<Inference>" + "The compound could contain a functional group like a phenol." + "</Inference>");
        }    else if (sn.equals("pyellow")) {
            out.println("<Inference>" + "The compound could contain a nitrogen containing functional group like an amine, or an aminophenol or a nitro function." + "</Inference>");
        } else if (sn.equals("Acrid")) {
            out.println("<Inference>" + "The compound may contain an acidic function." + "</Inference>");
        }else if (sn.equals("Aggreable")) {
            out.println("<Inference>" + "The compound may contain an ester function." + "</Inference>");
        }else if (sn.equals("Aromatic")) {
            out.println("<Inference>" + "The compound may be an aromatic hydrocarbon." + "</Inference>");
        }else if (sn.equals("Almond") || sn.equals("Cinnamon") || sn.equals("lemonlike") || sn.equals("SweetAggreable") || sn.equals("VanillaFlavour")) {
            out.println("<Inference>" + "The compound may contain an aldehyde function." + "</Inference>");
        } else if (sn.equals("Honeylike")) {
            out.println("<Inference>" + "The compound may contain either an aldehyde function, or an ester, or both." + "</Inference>");
        }else if (sn.equals("Irritating")) {
            out.println("<Inference>" + "The compound may contain a phenolic function." + "</Inference>");
        } else if (sn.equals("Odourless")) {
            out.println("<Inference>" + "The compound may not contain amine or an carbonyl function." + "</Inference>");
        }else if (sn.equals("Ointmentlike")) {
            out.println("<Inference>" + "The compound may be an aromatic hydrocarbon." + "</Inference>");
        }else if (sn.equals("Phenolic")) {
            out.println("<Inference>" + "The compound may contain a phenol." + "</Inference>");
        }else if (sn.equals("Pungent")) {
            out.println("<Inference>" + "The compound may contain an acid or a phenolic functional group." + "</Inference>");
        }else if (sn.equals("SpicySweet")) {
            out.println("<Inference>" + "The compound may contain either an aldehyde function, or a phenolic, or both." + "</Inference>");
        } else if (sn.equals("SweetAggreable")) {
            out.println("<Inference>" + "The compound may contain a carbonyl function. " + "</Inference>");
        } else if (sn.equals("Vinegarlike")) {
            out.println("<Inference>" + "The compound may contain an acid." + "</Inference>");
        }
        
    }
    out.println("</emp>");
%>