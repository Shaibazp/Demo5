<%@ page import="java.io.*,java.sql.*" %>
<%@ page contentType="text/html,xml" pageEncoding="UTF-8"%>


<%
    response.setContentType("text/xml");
    //String sn = request.getParameter("ok");//"start";//
    //System.out.println("abc=" + sn);
    //String mobile1="8975774258";
    
    try 
    {
        Connection con = db.dbConnect.dbConnection();
        PreparedStatement pstmt = con.prepareStatement("select * from mobile_number");
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) 
        {
            String name = rs.getString(1);
            String mobile1 = rs.getString(2);

            System.out.println("im in 1");

            PreparedStatement pst2 = con.prepareStatement("Select * from result_one_copy where mobile=?");
            pst2.setString(1, mobile1);
            ResultSet rst2 = pst2.executeQuery();
            out.println("<emp>");
            while (rst2.next()) 
            {
                System.out.println("im in 2");
                String state = rst2.getString(1);
                System.err.println(state);
                String deri_from = rst2.getString(4);//value get database
                String deri_to = rst2.getString(5);//value get database
                String boiling_temp = rst2.getString(6);//value get database
                System.out.println(deri_from+"=="+deri_to+"==="+boiling_temp);
                if (state.equals("Liquid")) 
                {
                    out.println("<boilingtemp>boilingrrrtemp</boilingtemp>");
                    out.println("<boilingtempv>"+boiling_temp+"</boilingtempv>");
                } 
                else 
                {
                    
                    out.println("<meltingfrom>boiling_temp</meltingfrom>");
                    out.println("<meltingto>boiling_temp</meltingto>");
                }

                int phy_from1 = Integer.parseInt(deri_from);
                int phy_to1 = Integer.parseInt(deri_to);
                int boiling = Integer.parseInt(boiling_temp);

                PreparedStatement pst3 = con.prepareStatement("Select * from result_six_copy where mobile=?");
                pst3.setString(1, mobile1);
                ResultSet rst3 = pst3.executeQuery();
                
                while (rst3.next()) 
                {
                    System.out.println("im in 6");
                    String compound_name = rst3.getString(1);
                    String mp_from = rst3.getString(2);
                    String mp_to = rst3.getString(3);
                    String result1 = rst3.getString(4);
                    String result2 = rst3.getString(5);
                    String nitro = rst3.getString(6);
                    String sulphur = rst3.getString(7);
                    String halogen = rst3.getString(8);
                    out.println("<mpfrom>"+mp_from+"</mpfrom>");
                    out.println("<mpto>"+mp_to+"</mpto>");
                    System.out.println(compound_name + "\n Deri from:" + mp_from + " \t deri to:" + mp_to + "\n phy_from:" + deri_from + " \t phy_to:" + deri_to + "\n  " + result1 + " \n " + result2 + "\n  " + "Nitro" + nitro + "\n  " + "Sulphur" + sulphur + "\n  " + "Halogen" + halogen);
//                    this.mp_from.setText(mp_from);
//                    this.mp_to.setText(mp_to);

                    int deri_from2 = Integer.parseInt(mp_from);
                    int deri_to2 = Integer.parseInt(mp_to);

                    if (result1.equals("Liquid") && result2.equals("Aliphatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 70 && deri_from2 <= 97 && deri_to2 >= 70 && deri_to2 <= 97 && boiling >= 108 && boiling <= 128) 
                    {
                        
                        System.out.println("in if =============");
                        out.println("<img1>Acetic_Acid.png</img1>");
                        out.println("<img2>acetamide.png</img2>");
                        
                        out.println("<instruction>This colourless aliphatic liquid having pungent odour which does not contain nitrogen, sulphur, or any halogen atoms,  and boiled at 118 °C, is soluble in water and diethyl ether. The compound decomposed sodium bicarbonate to release carbon dioxide gas. This proves it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 81-82 °C. This melting point coincides with the Literature melting point of acetamide.</instruction>");
                        out.println("<result>The test compound under investigation is acetic acid.</result>");
                        out.println("<procedure>Compound Name\tMelting Point\t\tBoiling Point\n\nAcrylic acid\t\t\t\t12-13\t\t\t\t140\nPropionic acid\t\t\t\t\t\t\t\t141</procedure>");
                        
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aliphatic") && compound_name.equals("Carboxylic Present") && halogen.equals("Positive") && deri_from2 >= 126 && deri_from2 <= 152 && deri_to2 >= 126 && deri_to2 <= 152 && phy_from1 >= 46 && phy_from1 <= 68 && phy_to1 >= 46 && phy_to1 <= 68) {
                            out.println("<img1>trichloroacetic_acid.png</img1>");
                            out.println("<img2>trichloroacetamide.png</img2>");
                            out.println("<instruction>This sparkling white coloured aliphatic odourless solid which is hygroscopic and deliquescent, does not contain nitrogen and sulphur, but contains chlorine, as confirmed by formation of curdy white precipitate in the test carried to detect presence of halogens. It melted at 57-58 °C, is soluble in water and diethyl ether. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 140-41 °C. This melting point coincides with the Literature melting point of trichloroacetamide.</instruction>");
                            out.println("<result>The test compound under investigation is trichloroacetic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\no-Chlorobenzoic acid \t\t 139-141\no-Chlorophenoxyacetic acid \t\t 144-146\np-Chlorophenoxyacetic acid \t\t 155-57\nm-Chlorobenzoic acid \t\t 155-58</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aliphatic") && compound_name.equals("Carboxylic Present") && halogen.equals("Positive") && deri_from2 >= 108 && deri_from2 <= 130 && deri_to2 >= 108 && deri_to2 <= 130 && phy_from1 >= 56 && phy_from1 <= 70 && phy_to1 >= 56 && phy_to1 <= 70) {
                            out.println("<img1>Chlorocetic_acid.png</img1>");
                            out.println("<img2>Derivative_of_Chloracetic_acid.png</img2>");
                            out.println("<instruction>This white translucent aliphatic odourless solid which does not contain nitrogen, sulphur, but contains chlorine, as tested by formation of curdy white precipitate in the test carried to detect presence of halogens. It melted at 62-63 °C, is soluble in water and diethyl ether. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at  118-20 °C. This melting point coincides with the Literature melting point of chloroacetamide.</instruction>");
                            out.println("<result>The test compound under investigation is chloroacetic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n</procedure>");
                    }
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && halogen.equals("Positive") && deri_from2 >= 167 && deri_from2 <= 190 && deri_to2 >= 167 && deri_to2 <= 190 && phy_from1 >= 232 && phy_from1 <= 252 && phy_to1 >= 232 && phy_to1 <= 252) {
                            out.println("<img1>p_chlorobenzoic_acid.png</img1>");
                            out.println("<img2>p_chlorobenzamide.png</img2>");
                            out.println("<instruction>This white coloured odourless aromatic solid, does not contain nitrogen, sulphur, but contains chlorine as confirmed by formation of curdy white precipitate in the test carried to detect presence of halogens. It melted at  241 – 43 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 177 - 79 °C. This melting point coincides with the Literature melting point of p-chlorobenzamide.</instruction>");
                            out.println("<result>The test compound under investigation is p-chlorobenzoic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && halogen.equals("Positive") && deri_from2 >= 130 && deri_from2 <= 150 && deri_to2 >= 130 && deri_to2 <= 150 && phy_from1 >= 130 && phy_from1 <= 150 && phy_to1 >= 130 && phy_to1 <= 150) {
                            out.println("<img1>o_Chrorobenzoic_acid.png</img1>");
                            out.println("<img2>o_chlorobenzamide_1.png</img2>");
                            out.println("<instruction>This white coloured odourless aromatic solid, does not contain nitrogen and sulphur, but contains chlorine as confirmed by formation of curdy white precipitate in the test carried to detect presence of halogens. It melted at  140-41 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 140-41 °C. This melting point coincides with the Literature melting point of o-chlorobenzamide.</instruction>");
                            out.println("<result>The test compound under investigation is o-chlorobenzoic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && nitro.equals("Positive") && deri_from2 >= 162 && deri_from2 <= 186 && deri_to2 >= 162 && deri_to2 <= 186 && phy_from1 >= 137 && phy_from1 <= 158 && phy_to1 >= 137 && phy_to1 <= 158) {
                            out.println("<img1>o_Nitrobenzoic_acid.png</img1>");
                            out.println("<img2>o_Nitrobenzoic_acid.png</img2>");
                            out.println("<instruction>This yellow coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melted at 146-47 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 172-75 °C. This melting point coincides with the Literature melting point of o-nitrobenzamide.</instruction>");
                            out.println("<result>The test compound under investigation is o-nitrobenzoic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\no-Nitrophenylacetic acid \t\t 139-140\n2,4-Dinitrobenzoic acid \t\t 182-184\nHippuric acid \t\t 185-187\n3,5-Dinitrobenzoic acid \t\t 204-207</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && nitro.equals("Positive") && deri_from2 >= 188 && deri_from2 <= 210 && deri_to2 >= 188 && deri_to2 <= 210 && phy_from1 >= 222 && phy_from1 <= 248 && phy_to1 >= 222 && phy_to1 <= 248) {
                            out.println("<img1>p_Nitrobenzoic_acid.png</img1>");
                            out.println("<img2>p_Nitrobenzamide.png</img2>");
                            out.println("<instruction>This yellow coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melted at  237-39 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 198-201 °C. This melting point coincides with the Literature melting point of p-nitrobenzamide.</instruction>");
                            out.println("<result>The test compound under investigation is p-nitrobenzoic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\np-Nitrophenylacetic acid \t\t 150-152\n4-Nitrophthalic acid \t\t 162-165\no-Nitrocinnsmic acid \t\t 238-240</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && nitro.equals("Positive") && deri_from2 >= 97 && deri_from2 <= 118 && deri_to2 >= 97 && deri_to2 <= 118 && phy_from1 >= 133 && phy_from1 <= 154 && phy_to1 >= 133 && phy_to1 <= 154) {
                            out.println("<img1>anthranilic_acid.png</img1>");
                            out.println("<img2>o_Aminobenzamide.png</img2>");
                            out.println("<instruction>This buff coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melted at 145-46 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form and amide, a solid product was formed which melted at 139-40 °C. This melting point coincides with the Literature melting point of anthranilamide.</instruction>");
                            out.println("<result>The test compound under investigation is anthranilic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nm-Aminobenzoic acid \t\t 171-174\np-Aminobenzoic acid \t\t 85-188</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && nitro.equals("Positive") && deri_from2 >= 88 && deri_from2 <= 122 && deri_to2 >= 88 && deri_to2 <= 122 && phy_from1 >= 162 && phy_from1 <= 178 && phy_to1 >= 164 && phy_to1 <= 178) {
                            out.println("<img1>m_Aminobenzoic_Acid.png</img1>");
                            out.println("<img2>m_aminobenzamide.png</img2>");
                            out.println("<instruction>This yellow coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melted at  172-74 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 110-11 °C. This melting point coincides with the Literature melting point of m-aminobenzamide.</instruction>");
                            out.println("<result>The test compound under investigation is m-aminobenzoic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nAnthranilic acid \t\t 144-146\np-Aminobenzoic acid \t\t 186-188</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && nitro.equals("Positive") && deri_from2 >= 172 && deri_from2 <= 194 && deri_to2 >= 172 && deri_to2 <= 194 && phy_from1 >= 172 && phy_from1 <= 196 && phy_to1 >= 172 && phy_to1 <= 196) {
                            out.println("<img1>Hippuric_acid.png</img1>");
                            out.println("<img2>N_2_Amino_2_oxoethyl_benzamide.png</img2>");
                            out.println("<instruction>This white coloured aromatic odourless solid, contain nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melted at  187-88 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 181-83 °C. This melting point coincides with the Literature melting point of N-(2-amino-2-oxoethyl)benzamide.</instruction>");
                            out.println("<result>The test compound under investigation is hippuric acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nN-Acetylanthranilic acid \t\t 183-185</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && nitro.equals("Positive") && deri_from2 >= 100 && deri_from2 <= 120 && deri_to2 >= 100 && deri_to2 <= 120 && phy_from1 >= 180 && phy_from1 <= 196 && phy_to1 >= 180 && phy_to1 <= 196) {
                            out.println("<img1>p_Aminobenzoic_acid.png</img1>");
                            out.println("<img2>4_Aminobenzamide.png</img2>");
                            out.println("<instruction>This yellow coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melted at  187-88 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 112-14 °C. This melting point coincides with the Literature melting point of p-aminobenzamide.</instruction>");
                            out.println("<result>The test compound under investigation is p-aminobenzoic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nAnthranilic acid \t\t 144-146\nm-Aminobenzoic acid \t\t172-174</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && nitro.equals("Positive") && deri_from2 >= 115 && deri_from2 <= 138 && deri_to2 >= 115 && deri_to2 <= 138 && phy_from1 >= 222 && phy_from1 <= 244 && phy_to1 >= 222 && phy_to1 <= 244) {
                            out.println("<img1>Nicotinic_acid.png</img1>");
                            out.println("<img2>nicotinamide.png</img2>");
                            out.println("<instruction>This white coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melted at  233-35 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 127-28 °C. This melting point coincides with the Literature melting point of nicotinamide.</instruction>");
                            out.println("<result>The test compound under investigation is nicotinic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n2-Amino-3-phenylpropionic acid \t\t 270-272</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aliphatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 204 && deri_from2 <= 225 && deri_to2 >= 204 && deri_to2 <= 225 && phy_from1 >= 89 && phy_from1 <= 110 && phy_to1 >= 89 && phy_to1 <= 110) {

                            out.println("<img1>Citric_acid.png</img1>");
                            out.println("<img2>Citramide.png</img2>");
                            out.println("<instruction>This white coloured aliphatic odourless solid which does not contain nitrogen, sulphur, or any halogen atoms,  and melted at 99-100 °C, is soluble in water but is insoluble in diethyl ether. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 212-15 °C. This melting point coincides with the Literature melting point of amide derivative of citric acid.</instruction>");
                            out.println("<result>The test compound under investigation is citric acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nSuberic acid \t\t 140-142\nAdipic acid \t\t 150-152</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aliphatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 214 && deri_from2 <= 235 && deri_to2 >= 214 && deri_to2 <= 235 && phy_from1 >= 194 && phy_from1 <= 215 && phy_to1 >= 194 && phy_to1 <= 215) {
                            out.println("<img1>Tartaric_acid.png</img1>");
                            out.println("<img2>Derivative_of_tartaric_acid.png</img2>");
                            out.println("<instruction>This white coloured aliphatic solid having lemon-like odour, which does not contain nitrogen, sulphur, or any halogen atoms,  and melts at 204-06 °C, is soluble in water but is insoluble in diethyl ether. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 194-96 °C. This melting point coincides with the Literature melting point of the amide derivative of tataric acid.</instruction>");
                            out.println("<result>The test compound under investigation is tartaric acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nCitric acid \t\t 99-100\nSuberic acid \t\t 140-142\nAdipic acid \t\t150-152</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aliphatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 248 && deri_from2 <= 270 && deri_to2 >= 248 && deri_to2 <= 270 && phy_from1 >= 175 && phy_from1 <= 198 && phy_to1 >= 175 && phy_to1 <= 198) {
                            out.println("<img1>succinic_Acid.png</img1>");
                            out.println("<img2>Succinamide.png</img2>");
                            out.println("<instruction>This white coloured aliphatic odourless solid which does not contain nitrogen, sulphur, or any halogen atoms,  and melted at 184-85 °C, is soluble in water but is insoluble in diethyl ether. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at  258-60 °C. This melting point coincides with the Literature melting point of succinamide.</instruction>");
                            out.println("<result>The test compound under investigation is succinic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nAconitic acid \t\t 192-194</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aliphatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 208 && deri_from2 <= 230 && deri_to2 >= 208 && deri_to2 <= 230 && phy_from1 >= 141 && phy_from1 <= 160 && phy_to1 >= 141 && phy_to1 <= 160) {
                            out.println("<img1>Adipic_Acid.png</img1>");
                            out.println("<img2>6_amino_6_oxohexamide.png</img2>");
                            out.println("<instruction>This sparkling white coloured aliphatic odourless solid which does not contain nitrogen, sulphur,  and halogen atoms, melted at 150-52 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 218-19 °C. This melting point coincides with the Literature melting point of the amide derivative of adipic acid.</instruction>");
                            out.println("<result>The test compound under investigation is adipic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 145 && deri_from2 <= 167 && deri_to2 >= 145 && deri_to2 <= 167 && phy_from1 >= 64 && phy_from1 <= 85 && phy_to1 >= 64 && phy_to1 <= 85) {
                            out.println("<img1>phenylacetic_acid.png</img1>");
                            out.println("<img2>phenylacetamide_01.png</img2>");
                            out.println("<instruction>This brownish yellow (sparkling white if purified) aromatic solid having disagreeable odour, which does not contain nitrogen, sulphur and chlorine, and melted at 75-76 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 155-57 °C. This melting point coincides with the Literature melting point of phenylacetamide.</instruction>");
                            out.println("<result>The test compound under investigation is phenylacetic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\no-Toluic acid \t\t 105-106\no-Benzoylbenzoic acid \t 126-128\nCinnamic acid \t\t 130-133\nDiphenylacetic acid \t 146-148\nBenzilic acid \t\t 148-150\np-hydroxybenzoic acid \t 210-213\nm-Hydroxybenzoic acid \t 198-200\np-Methoxybenzoic acid \t 182-184</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 117 && deri_from2 <= 140 && deri_to2 >= 117 && deri_to2 <= 140 && phy_from1 >= 111 && phy_from1 <= 130 && phy_to1 >= 111 && phy_to1 <= 130) {
                            out.println("<img1>benzoic_acid.png</img1>");
                            out.println("<img2>banzamide.png</img2>");
                            out.println("<instruction>This sparkling white coloured odourless aromatic solid which does not contain nitrogen, sulphur,  and halogen atoms, and melted at 119-21 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 126-29 °C. This melting point coincides with the Literature melting point of benzamide.</instruction>");
                            out.println("<result>The test compound under investigation is benzoic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nMandelic acid \t\t 118-120\nSalicylic acid \t\t 156-158</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 126 && deri_from2 <= 150 && deri_to2 >= 126 && deri_to2 <= 150 && phy_from1 >= 145 && phy_from1 <= 170 && phy_to1 >= 145 && phy_to1 <= 170) {
                            out.println("<img1>salicylic_acid.png</img1>");
                            out.println("<img2>salicylamide.png</img2>");
                            out.println("<instruction>This sparkling white coloured aromatic odourless solid which does not contain nitrogen, sulphur,  and halogen atoms, and melted at 157-58 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 137-39 °C. This melting point coincides with the Literature melting point of salicylamide.</instruction>");
                            out.println("<result>The test compound under investigation is salicylic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nMandelic acid \t\t 118-120</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 208 && deri_from2 <= 230 && deri_to2 >= 208 && deri_to2 <= 230 && phy_from1 >= 198 && phy_from1 <= 220 && phy_to1 >= 198 && phy_to1 <= 220) {
                            out.println("<img1>phthalic_acid.png</img1>");
                            out.println("<img2>phthalamide.png</img2>");
                            out.println("<instruction>This sparkling white coloured aromatic odourless solid which does not contain nitrogen, sulphur,  and halogen atoms, melted at 204-06 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 216-19 °C. This melting point coincides with the Literature melting point of phthalamide.</instruction>");
                            out.println("<result>The test compound under investigation is phthalic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n3,4-Dihydroxybenzoic acid \t\t 196-198\n1-Hydroxy-2-naphthoic acid \t\t 224-226\n3-Hydroxy-2-naphthoic acid \t\t 220-223</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 136 && deri_from2 <= 157 && deri_to2 >= 136 && deri_to2 <= 157 && phy_from1 >= 121 && phy_from1 <= 145 && phy_to1 >= 121 && phy_to1 <= 145) {
                            out.println("<img1>Cinnamic_acid.png</img1>");
                            out.println("<img2>cinnamide.png</img2>");
                            out.println("<instruction>This white coloured aromatic solid, having a pleasant spicy odour, does not contain nitrogen, sulphur and chlorine, and melted at  131-33 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 151-53 °C. This melting point coincides with the Literature melting point of cinnamamide.</instruction>");
                            out.println("<result> The test compound under investigation is cinnamic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\no-Toluic acid \t\t 103-105\nMandelic acid \t\t 118-120\nSalicylic acid  \t\t 156-158</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Carboxylic Present") && deri_from2 >= 143 && deri_from2 <= 165 && deri_to2 >= 143 && deri_to2 <= 165 && phy_from1 >= 137 && phy_from1 <= 160 && phy_to1 >= 137 && phy_to1 <= 160) {
                            out.println("<img1>Benzilic_Acid.png</img1>");
                            out.println("<img2>Derivative_of_benzilic_acid.png</img2>");
                            out.println("<instruction>This white coloured odourless aromatic solid, does not contain nitrogen, sulphur and chlorine, and melted at  148-50 °C, is insoluble in water but is found to dissolve in aqueous 5 % sodium hydroxide. The compound decomposed sodium bicarbonate to release carbon dioxide gas. Hence, it contains a carboxyl group. When reacted to form an amide, a solid product was formed which melted at 153-55 °C. This melting point coincides with the Literature melting point of 2-hydroxyl-2, 2-diphenylacetamide.</instruction>");
                            out.println("<result>The test compound under investigation is benzilic acid.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nCinnamic acid \t\t 130-33\np-Toluic acid \t\t 175-78</procedure>");
                    } //Amide Compound
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Amide Present") && nitro.equals("Positive") && halogen.equals("Positive") && deri_from2 >= 130 && deri_from2 <= 150 && deri_to2 >= 130 && deri_to2 <= 150 && phy_from1 >= 130 && phy_from1 <= 150 && phy_to1 >= 130 && phy_to1 <= 150) {
                            out.println("<img1>o_Chlorobenzamide.png</img1>");
                            out.println("<img2>o_Chrorobenzoic_acid.png</img2>");
                            out.println("<instruction>This white coloured aromatic odourless solid, contains nitrogen and chlorine, as confirmed in Detection of Elements, does not contain sulphur, and melts at  139 - 41 °C, is insoluble in water, aqueous sodium hydroxide, and aqueous hydrochloric acid. The compound underwent hydrolysis when boiled in aqueous sodium hydroxide to release ammonia gas. Hence, it is an aromatic amide. Its solid derivative melted at 137- 41 °C, which coincides with the Literature melting point of o-chlorobenzoic acid.</instruction>");
                            out.println("<result>The test compound under investigation is o-chlorobenzamide.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\no-Chlorophenoxyacetic acid \t\t 144-146\np-Chlorophenoxyacetic acid \t\t 155-57\nm-Chlorobenzoic acid \t\t 155-58</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Amide Present") && nitro.equals("Positive") && halogen.equals("Positive") && deri_from2 >= 230 && deri_from2 <= 250 && deri_to2 >= 230 && deri_to2 <= 250 && phy_from1 >= 170 && phy_from1 <= 190 && phy_to1 >= 170 && phy_to1 <= 190) {
                            out.println("<img1>p-Chrorobenzamide.png</img1>");
                            out.println("<img2>p-chlorobenzoic_acid.png</img2>");
                            out.println("<instruction>This white coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melts at  177 – 79 °C, is insoluble in water, aqueous sodium hydroxide, and aqueous hydrochloric acid. The compound underwent hydrolysis when boiled in aqueous sodium hydroxide to release ammonia gas. Hence, it is an aromatic amide. Its solid derivative melted at 241 - 43 °C, which coincides with the Literature melting point of p-chlorobenzoic acid.</instruction>");
                            out.println("<result>The test compound under investigation is p-chlorobenzamide.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n3,4-Dichlorobenzoic acid \t 206-208</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Amide Present") && nitro.equals("Positive") && halogen.equals("Positive") && deri_from2 >= 146 && deri_from2 <= 170 && deri_to2 >= 146 && deri_to2 <= 170 && phy_from1 >= 122 && phy_from1 <= 144 && phy_to1 >= 122 && phy_to1 <= 144) {
                            out.println("<img1>m-chlorobenzamide.png</img1>");
                            out.println("<img2>m_Chlorobenzoic_acid.png</img2>");
                            out.println("<instruction>This white coloured aromatic odourless solid, contains nitrogen and chlorine, as confirmed in Detection of Elements, does not contain sulphur, and melts at  132 - 34 °C, is insoluble in water, aqueous sodium hydroxide, and aqueous hydrochloric acid. The compound underwent hydrolysis when boiled in aqueous sodium hydroxide to release ammonia gas. Hence, it is an aromatic amide. Its solid derivative melted at 157 – 58 °C, which coincides with the Literature melting point of m-chlorobenzoic acid.</instruction>");
                            out.println("<result>The test compound under investigation is m-chlorobenzamide.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n2-Chlorophenoxyacetamide \t\t 148-150\n4-Chlorophenoxyacetamide \t\t 131-133\n2,4-Dichlorobenzamide \t\t 192-194\n3,4-Dichlorobenzamide \t\t 167-169</procedure>");
                    }                                       
                    else if (result1.equals("Solid") && result2.equals("Aliphatic") && compound_name.equals("Amide Present") && nitro.equals("Positive") && deri_from2 >= 173 && deri_from2 <= 195 && deri_to2 >= 173 && deri_to2 <= 195 && phy_from1 >= 248 && phy_from1 <= 270 && phy_to1 >= 248 && phy_to1 <= 270) {
                            out.println("<img1>Succinamide.png</img1>");
                            out.println("<img2>succinic_Acid.png</img2>");
                            out.println("<instruction>This white coloured aliphatic odourless solid, contains nitrogen, as indicated in Detection of Elements, does not contain sulphur and chlorine, and melted at  258-260 °C,with blackening, and is insoluble in water and insoluble in diethyl ether too. The compound underwent hydrolysis when boiled in aqueous sodium hydroxide to release ammonia gas. Hence, it is an aliphatic amide. Its solid derivative melted at   184-85 °C  which coincides with the Literature melting point of succinic acid.</instruction>");
                            out.println("<result>Hence, the test compound under investigation is succinamide.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Amide Present") && nitro.equals("Positive") && deri_from2 >= 172 && deri_from2 <= 196 && deri_to2 >= 172 && deri_to2 <= 196 && phy_from1 >= 206 && phy_from1 <= 230 && phy_to1 >= 206 && phy_to1 <= 230) {
                            out.println("<img1>phthalamide.png</img1>");
                            out.println("<img2>phthalic_acid.png</img2>");
                            out.println("<instruction>This white coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melted at 233 - 35 °C, is insoluble in water, aqueous sodium hydroxide, and aqueous hydrochloric acid. The compound underwent hydrolysis when boiled in aqueous sodium hydroxide to release ammonia gas. Hence, it is an aromatic amide. Its solid derivative melted at 206 – 08 °C, with blackening, which coincides with the Literature melting point of phthalic acid.</instruction>");
                            out.println("<result>Hence, the test compound under investigation is phthalimide.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n2,4-Dihydroxybenzamide \t\t 221-223\n4-Hydroxybenzamide \t\t 160-162\n4-Hydroxy-3-methoxybenzamide \t\t 52 - 54\nm-Hydroxybenzamide \t\t 165-167</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Amide Present") && nitro.equals("Positive") && deri_from2 >= 120 && deri_from2 <= 145 && deri_to2 >= 120 && deri_to2 <= 145 && phy_from1 >= 136 && phy_from1 <= 158 && phy_to1 >= 136 && phy_to1 <= 158) {
                            out.println("<img1>cinnamamide_acid.png</img1>");
                            out.println("<img2>Cinnamic_acid.png</img2>");
                            out.println("<instruction>This white coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melts at  146 - 48 °C, is insoluble in water, aqueous sodium hydroxide, and aqueous hydrochloric acid. The compound underwent hydrolysis when boiled in aqueous sodium hydroxide to release ammonia gas. Hence, it is an aromatic amide. Its solid derivative melted at 131 - 33 °C, which coincides with the Literature melting point of cinnamic acid.</instruction>");
                            out.println("<result>The test compound under investigation is Cinnamamide.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n2-Hydroxy-2-phenylacetamide \t\t 133-134\nbenzyl 3-amino-3-oxopropanoate \t\t 223-225\nBenzamide \t\t 127-129\nN-benzoylbenzamide \t\t 164-166\n1-Naphthylamide \t\t 179-181\n2-Acetylsalicylamide \t\t 136-138\n3-Ethoxybenzamide \t\t 138-139</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Amide Present") && nitro.equals("Positive") && deri_from2 >= 64 && deri_from2 <= 85 && deri_to2 >= 64 && deri_to2 <= 85 && phy_from1 >= 145 && phy_from1 <= 168 && phy_to1 >= 145 && phy_to1 <= 168) {
                            out.println("<img1>phenylacetamide.png</img1>");
                            out.println("<img2>phenylacetic_acid.png</img2>");
                            out.println("<instruction>This white coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melts at  155 - 57 °C, is insoluble in water, aqueous sodium hydroxide, and aqueous hydrochloric acid. The compound underwent hydrolysis when boiled in aqueous sodium hydroxide to release ammonia gas. Hence, it is an aromatic amide. Its solid derivative melted at 75 - 76 °C, which coincides with the Literature melting point of phenylacetic acid.</instruction>");
                            out.println("<result>The test compound under investigation is phenylacetamide.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Amide Present") && nitro.equals("Positive") && deri_from2 >= 110 && deri_from2 <= 135 && deri_to2 >= 110 && deri_to2 <= 135 && phy_from1 >= 118 && phy_from1 <= 140 && phy_to1 >= 118 && phy_to1 <= 140) {
                            out.println("<img1>Benzamide_acid.png</img1>");
                            out.println("<img2>benzoic_acid.png</img2>");
                            out.println("<instruction>This white coloured aromatic odourless solid, contains nitrogen, as confirmed in Detection of Elements, does not contain sulphur and chlorine, and melts at  127 - 29 °C, is insoluble in water, aqueous sodium hydroxide, and aqueous hydrochloric acid. The compound underwent hydrolysis when boiled in aqueous sodium hydroxide to release ammonia gas. Hence, it is an aromatic amide. Its solid derivative melted at 119 -21 °C, which coincides with the Literature melting point of benzoic acid.</instruction>");
                            out.println("<result>Hence, the test compound under investigation is benzamide.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n2-Hydroxy-2-phenylacetamide \t\t 133-134</procedure>");
                    } //Ketone Compound
                    else if (result1.equals("Liquid") && result2.equals("Aliphatic") && compound_name.equals("Ketone Present") && halogen.equals("Positive") && deri_from2 >= 115 && deri_from2 <= 135 && deri_to2 >= 115 && deri_to2 <= 135 && boiling >= 103 && boiling <= 130) {
                            out.println("<img1>chroroacetone.png</img1>");
                            out.println("<img2>chloracetone_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless liquid with a pleasant odour, is aliphatic and does not contain nitrogen, sulphur, but contains chlorine, as confirmed in the Element Detection Test. It boils at 119 °C, and is soluble in water as well as in diethyl ether. The compound underwent a nucleophilic attack to form a hydrazone when reacted with the reagent. Its yellow-red solid crystalline derivative melted at 123 - 25 °C, which coincides with the Literature melting point of hydrazone of chloroacetone.</instruction>");
                            out.println("<result>The test compound under investigation is chloroacetone.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n1,3-Dichloroacetone \t\t\t\t 173</procedure>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Ketone Present") && halogen.equals("Positive") && deri_from2 >= 220 && deri_from2 <= 240 && deri_to2 >= 220 && deri_to2 <= 240 && boiling >= 224 && boiling <= 248) {
                            out.println("<img1>p_chroroacetophenone.png</img1>");
                            out.println("<img2>p_Chloroacetophenone_2_4_Dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless liquid with a pleasant odour, is aromatic and does not contain nitrogen, sulphur, but contains chlorine atom, as confirmed in the Element Detection Test. It boils at 236 °C, and is insoluble in water, aqueous 5 % sodium hydroxide  and aqueous 5 % hydrochloric acid. The compound underwent a nucleophilic attack to form a hydrazone when reacted with the reagent. Its yellow-red solid crystalline derivative melted at 229 - 931 °C, which coincides with the Literature melting point of hydrazone of p-chloroacetophenone.</instruction>");
                            out.println("<result>Hence, the test compound under investigation is p-chloroacetophenone.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n</procedure>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aliphatic") && compound_name.equals("Ketone Present") && deri_from2 >= 116 && deri_from2 <= 135 && deri_to2 >= 116 && deri_to2 <= 135 && boiling >= 45 && boiling <= 65) {
                            out.println("<img1>acetone.png</img1>");
                            out.println("<img2>acetone_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless liquid with a pleasant odour, is aliphatic and does not contain nitrogen, sulphur, nor any of the halogens. It boils at 56 °C, and is soluble in water as well as in diethyl ether. The compound underwent a nucleophilic attack to form a hydrazone when reacted with the reagent. Its yellow-red solid crystalline derivative melted at 126 - 28 °C, which coincides with the Literature melting point of hydrazone of acetone.</instruction>");
                            out.println("<result>Hence, the test compound under investigation is acetone.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nEthyl methyl ketone \t 80\nIsopropyl methyl ketone \t 94\nt-Butyl methyl Ketone \t 106\nHydroxyacetone \t 146\n4-Methylcyclohexanone \t 170)</procedure>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aliphatic") && compound_name.equals("Ketone Present") && deri_from2 >= 150 && deri_from2 <= 172 && deri_to2 >= 150 && deri_to2 <= 172 && boiling >= 146 && boiling <= 166) {
                            out.println("<img1>Cyclohexanone.png</img1>");
                            out.println("<img2>cyclohexanone2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless liquid with a pleasant odour, is aliphatic and does not contain nitrogen, sulphur, nor any of the halogens. It boils at 56 °C, and is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid.  The compound underwent a nucleophilic attack to form a hydrazone when reacted with the reagent. Its yellow-red solid crystalline derivative melted at 160 - 162 °C, which coincides with the Literature melting point of hydrazone of cyclohexanone.</instruction>");
                            out.println("<result>The test compound under investigation is cyclohexanone.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nPentanone \t\t\t\t 102\n3-Methylhexanone \t\t\t\t170</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aliphatic") && compound_name.equals("Ketone Present") && deri_from2 >= 164 && deri_from2 <= 188 && deri_to2 >= 164 && deri_to2 <= 188 && phy_from1 >= 166 && phy_from1 <= 188 && phy_to1 >= 166 && phy_to1 <= 188) {
                            out.println("<img1>Camphor.png</img1>");
                            out.println("<img2>Camphor_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This white coloured solid with a faintly pleasant odour, is aliphatic and does not contain nitrogen, sulphur, nor any of the halogens. It melts at 177 - 79 °C, and is insoluble in water, aqueous 5 % sodium hydroxide and aqueous 5 % hydrochloric acid. The compound underwent a nucleophilic attack to form a hydrazone when reacted with the reagent. Its yellow-red solid crystalline derivative melted at 175-77 °C, which coincides with the Literature melting point of hydrazone of camphor.</instruction>");
                            out.println("<result>Hence, the test compound under investigation is camphor.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n</procedure>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Ketone Present") && deri_from2 >= 236 && deri_from2 <= 260 && deri_to2 >= 236 && deri_to2 <= 260 && boiling >= 192 && boiling <= 212) {
                            out.println("<img1>acetophenone.png</img1>");
                            out.println("<img2>Acetophenone_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless liquid with a pleasant odour, is aromatic and does not contain nitrogen, sulphur, and any of the halogens. It boils at 202 °C, and is insoluble in water, aqueous 5 % sodium hydroxide and aqueous 5 % hydrochloric acid. The compound underwent a nucleophilic attack to form a hydrazone when reacted with the reagent. Its yellow-red solid crystalline derivative melted at 235 - 37 °C, which coincides with the Literature melting point of hydrazone of acetophenone.</instruction>");
                            out.println("<result>The test compound under investigation is acetophenone.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Ketone Present") && deri_from2 >= 226 && deri_from2 <= 248 && deri_to2 >= 226 && deri_to2 <= 248 && phy_from1 >= 40 && phy_from1 <= 60 && phy_to1 >= 40 && phy_to1 <= 60) {
                            out.println("<img1>benzophenone.png</img1>");
                            out.println("<img2>Benzophenone_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This white coloured solid with a faintly pleasant odour, is aromatic and does not contain nitrogen, sulphur, nor any of the halogens. It melts at 49 °C, and is insoluble in water, aqueous 5 % sodium hydroxide and aqueous 5 % hydrochloric acid. The compound underwent a nucleophilic attack to form a hydrazone when reacted with the reagent. Its yellow-red solid crystalline derivative melted at 236 - 38 °C, which coincides with the Literature melting point of hydrazone of benzophenone.</instruction>");
                            out.println("<result>The test compound under investigation is benzophenone.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nBenzalacetone \t\t 40-42</procedure>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Ketone Present") && deri_from2 >= 232 && deri_from2 <= 254 && deri_to2 >= 232 && deri_to2 <= 254 && phy_from1 >= 126 && phy_from1 <= 150 && phy_to1 >= 126 && phy_to1 <= 150) {
                            out.println("<img1>benzoin.png</img1>");
                            out.println("<img2>Benzoin_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless solid with a faintly pleasant odour, is aromatic and does not contain nitrogen, sulphur, nor any of the halogens.\n It melts at 135 – 37 °C, and is insoluble in water, aqueous 5 % sodium hydroxide and aqueous 5 % hydrochloric acid. The compound underwent a nucleophilic attack to form a hydrazone when reacted with the reagent. Its yellow-red solid crystalline derivative melted at 243 - 45 °C, which coincides with the Literature melting point of hydrazone of benzoin.</instruction>");
                            out.println("<result>The test compound under investigation is benzoin.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nBenzophenone \t\t 47-49</procedure>");

                    } //Aldehyde Compound
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Aldehyde Present") && halogen.equals("Positive") && deri_from2 >= 196 && deri_from2 <= 218 && deri_to2 >= 196 && deri_to2 <= 218 && boiling >= 202 && boiling <= 214) {
                            out.println("<img1>o-chlorobenzaldehydde.png</img1>");
                            out.println("<img2>o_Chlorobenzaldehyde_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless odourless aromatic liquid, does not contain nitrogen, sulphur atoms but contains chlorine, as tested by formation of curdy white precipitate during detection of Elements, and boils at 213 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid, whereas, is soluble in conc. sulphuric acid. The compound underwent nucleophilic attack by 2, 4-dinitrophenylhydrazine when reacted with the reagent to give a red coloured crystalline derivative which melted at 207 – 09 °C. This melting point coincides with the Literature melting point of the hydrazone for o-chlorobenzaldehyde.</instruction>");
                            out.println("<result>The test compound under investigation is o-chlorobenzaldehyde.</result>");

                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Aldehyde Present") && halogen.equals("Positive") && deri_from2 >= 252 && deri_from2 <= 276 && deri_to2 >= 252 && deri_to2 <= 276 && boiling >= 204 && boiling <= 224) {
                            out.println("<img1>p-chlorobenzaldehyde.png</img1>");
                            out.println("<img2>p_Chlorobenzaldehyde_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless odourless aromatic solid, does not contain nitrogen, sulphur atoms but contains chlorine, as tested by formation of curdy white precipitate during detection of Elements, and boils at 45 – 7 °C,is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid, whereas, is soluble in conc. sulphuric acid. The compound underwent nucleophilic attack by 2, 4-dinitrophenylhydrazine when reacted with the reagent to give a red coloured crystalline derivative which melted at 263 – 65 °C. This melting point coincides with the Literature melting point of the hydrazone for p-chlorobenzaldehyde.</instruction>");
                            out.println("<result>The test compound under investigation is p-chlorobenzaldehyde.</result>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Aldehyde Present") && deri_from2 >= 226 && deri_from2 <= 248 && deri_to2 >= 226 && deri_to2 <= 248 && boiling >= 168 && boiling <= 188) {
                            out.println("<img1>benzaldehyde.png</img1>");
                            out.println("<img2>Benzaldehyde_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This brown coloured aromatic liquid with suffocating odour, does not contain nitrogen, sulphur and chlorine atoms, and boils at 179 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid, whereas, is soluble in conc. sulphuric acid. The compound underwent nucleophilic attack by 2, 4-dinitrophenylhydrazine when reacted with the reagent to give a yellow-red coloured crystalline derivative which melted at  235-37 °C. This melting point coincides with the Literature melting point of the hydrazone for benzaldehyde.</instruction>");
                            out.println("<result>The test compound under investigation is benzaldehyde.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\n4-Tolualdehyde \t\t 204\n4-Isopropylbenzaldehyde \t\t 235</procedure>");

                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Aldehyde Present") && deri_from2 >= 232 && deri_from2 <= 255 && deri_to2 >= 232 && deri_to2 <= 255 && boiling >= 247 && boiling <= 248) {
                            out.println("<img1>4_Anisaldehyde.png</img1>");
                            out.println("<img2>p_anisaldehyde_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless odourless aromatic liquid, does not contain nitrogen, sulphur and chlorine atoms, and melts at 248 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid, whereas, is soluble in conc. sulphuric acid. The compound underwent nucleophilic attack by 2, 4-dinitrophenylhydrazine when reacted with the reagent to give a red coloured crystalline derivative which melted at 239 - 41 °C. This melting point coincides with the Literature melting point of the hydrazone for anisaldehyde.</instruction>");
                            out.println("<result>The test compound under investigation is anisaldehyde.</result>");

                            out.println("<procedure>Compound Name \t Boiling Point \n\nCinnamaldehyde\t 252</procedure>");

                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Aldehyde Present") && deri_from2 >= 242 && deri_from2 <= 264 && deri_to2 >= 242 && deri_to2 <= 264 && boiling >= 242 && boiling <= 262) {
                            out.println("<img1>Cinnamaldehyde.png</img1>");
                            out.println("<img2>Cinnamaldehyde_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless odourless aromatic liquid, does not contain nitrogen, sulphur and chlorine atoms, and melts at 252 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid, whereas, is soluble in conc. sulphuric acid. The compound underwent nucleophilic attack by 2, 4-dinitrophenylhydrazine when reacted with the reagent to give a red coloured crystalline derivative which melted at 253 - 55 °C. This melting point coincides with the Literature melting point of the hydrazone for cinnamaldehyde.</instruction>");
                            out.println("<result>The test compound under investigation is cinnamaldehyde.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\nAnisaldehyde\t 248</procedure>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aliphatic") && compound_name.equals("Aldehyde Present") && deri_from2 >= 98 && deri_from2 <= 120 && deri_to2 >= 98 && deri_to2 <= 120 && boiling >= 220 && boiling <= 240) {
                            out.println("<img1>citral.png</img1>");
                            out.println("<img2>Citral_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless aliphatic liquid having faint lemon-peel like odour does not contain nitrogen, sulphur and chlorine atoms, and boils at 229 °C with blacking due to decomposition, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid, whereas, is soluble in conc. sulphuric acid. The compound underwent nucleophilic attack by 2, 4-dinitrophenylhydrazine when reacted with the reagent to give a yellow-red coloured crystalline derivative which melted at 109 - 10 °C. This melting point coincides with the Literature melting point of the hydrazone for citral.</instruction>");
                            out.println("<result>The test compound under investigation is citral.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\nButyraldehyde \t\t 75</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aliphatic") && compound_name.equals("Aldehyde Present") && deri_from2 >= 156 && deri_from2 <= 180 && deri_to2 >= 156 && deri_to2 <= 180 && phy_from1 >= 130 && phy_from1 <= 152 && phy_to1 >= 130 && phy_to1 <= 152) {
                            out.println("<img1>Glyceraldehyde.png</img1>");
                            out.println("<img2>Glyceraldehyde_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless odourless aliphatic solid, does not contain nitrogen, sulphur and chlorine atoms, and boils at 140 - 42 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid, whereas, is soluble in conc. sulphuric acid. The compound underwent nucleophilic attack by 2, 4-dinitrophenylhydrazine when reacted with the reagent to give a yellow-red coloured crystalline derivative which melted at  169 -70 °C. This melting point coincides with the Literature melting point of the hydrazone for glyceraldehyde.</instruction>");
                            out.println("<result>The test compound under investigation is glyceraldehyde.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\n</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Aldehyde Present") && deri_from2 >= 106 && deri_from2 <= 132 && deri_to2 >= 106 && deri_to2 <= 132 && phy_from1 >= 25 && phy_from1 <= 44 && phy_to1 >= 25 && phy_to1 <= 44) {
                            out.println("<img1>phenylacetaldehyde.png</img1>");
                            out.println("<img2>Phenylacetaldehyde_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless odourless aromatic liquid, does not contain nitrogen, sulphur and chlorine atoms, and melts at 102 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid, whereas, is soluble in conc. sulphuric acid. The compound underwent nucleophilic attack by 2, 4-dinitrophenylhydrazine when reacted with the reagent to give a red coloured crystalline derivative which melted at 119 - 21 °C. This melting point coincides with the Literature melting point of the hydrazone for phenylacetaldehyde.</instruction>");
                            out.println("<result>The test compound under investigation is phenylacetaldehyde.</result>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aliphatic") && compound_name.equals("Aldehyde Present") && deri_from2 >= 176 && deri_from2 <= 210 && deri_to2 >= 176 && deri_to2 <= 210 && boiling >= 92 && boiling <= 112) {
                            out.println("<img1>crotonaldehyde.png</img1>");
                            out.println("<img2>Crotonaldehyde_2_4_dinitrophenylhydrazone.png</img2>");
                            out.println("<instruction>This colourless odourless aliphatic  liquid, does not contain nitrogen, sulphur and chlorine atoms, and boils at 102 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid, whereas, is soluble in conc. sulphuric acid. The compound underwent nucleophilic attack by 2, 4-dinitrophenylhydrazine when reacted with the reagent to give a yellow-red coloured crystalline derivative which melted at 188 - 90 °C. This melting point coincides with the Literature melting point of the hydrazone for crotonaldehyde.</instruction>");
                            out.println("<result>The test compound under investigation is crotonaldehyde.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\n</procedure>");

                    } //PhenolCompound
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && nitro.equals("Positive") && deri_from2 >= 45 && deri_from2 <= 70 && deri_to2 >= 45 && deri_to2 <= 70 && phy_from1 >= 32 && phy_from1 <= 56 && phy_to1 >= 32 && phy_to1 <= 56) {
                            out.println("<img1>o-Nitrophenol.png</img1>");
                            out.println("<img2>o_Nitrophenyl_benzoate.png</img2>");
                            out.println("<instruction>This dull yellow coloured aromatic solid with a slight pungent odour, contains nitrogen, but does not contain sulphur nor any of the halogen atoms. It melted at 43 – 5 °C, is insoluble in water, but dissolves in aqueous 5 % sodium hydroxide. The compound reacted with saturated aqueous solution of sodium bicarbonate but imparted a yellow colour to the solution.  A deep purple – blue colouration was imparted to a methanolic solution of the compound when a drop of neutral 1 % ferric chloride reagent was added. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 57 – 9 °C. This melting point coincides with the literature melting point of 2-nitrophenyl benzoate.</instruction>");
                            out.println("<result>The test compound under investigation is o-nitrophenol.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n1-Naphthol \t\t 92-94</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && nitro.equals("Positive") && deri_from2 >= 85 && deri_from2 <= 105 && deri_to2 >= 85 && deri_to2 <= 105 && phy_from1 >= 84 && phy_from1 <= 109 && phy_to1 >= 84 && phy_to1 <= 108) {
                            out.println("<img1>m-Nitrophenol.png</img1>");
                            out.println("<img2>3_Nitrophenyl_benzoate.png</img2>");
                            out.println("<instruction>This dull yellow coloured aromatic solid with a slight pungent odour, contains nitrogen as indicated in the Element Detection Test, but does not contain sulphur nor any of the halogen atoms. It melted 43 – 5 °C, is soluble in water and also in diethyl ether. It dissolves in aqueous 5 % sodium hydroxide. The compound did not react with saturated aqueous solution of sodium bicarbonate but imparted a yellow colour to the solution.  A deep purple – blue colouration was imparted to a methanolic solution of the compound when a drop of neutral 1 % ferric chloride reagent was added. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 57 – 9 °C. This melting point coincides with the literature melting point of 2-nitrophenyl benzoate.</instruction>");
                            out.println("<result>The test compound under investigation is m-nitrophenol.</result>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 25 && deri_from2 <= 48 && deri_to2 >= 25 && deri_to2 <= 48 && phy_from1 >= 95 && phy_from1 <= 118 && phy_to1 >= 95 && phy_to1 <= 118) {
                            out.println("<img1>m-hydroxybenzaldehyde.png</img1>");
                            out.println("<img2>Benzoyl_m_formylbenzoate.png</img2>");
                            out.println("<instruction>This faint yellow coloured aromatic solid with pungent odour, does not contain nitrogen, sulphur nor any of the halogen atoms. It melted at 106 - 08 °C, is insoluble in water, but dissolves in aqueous 5 % sodium hydroxide. The compound reacts with neutral 1 % ferric chloride reagent to develop a purple – blue colouration. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 35 – 8 °C. This melting point coincides with the literature melting point of 3-formylphenyl benzoate.</instruction>");
                            out.println("<result>The test compound under investigation is m-hydroxybenzaldehyde.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \t Boiling Point \n\n2,4-Dimethylphenol \t\t 26-28 \t 211\n3-Hydroxy-4-isopropyltoluene \t\t 51-52</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 55 && deri_from2 <= 78 && deri_to2 >= 55 && deri_to2 <= 78 && phy_from1 >= 30 && phy_from1 <= 50 && phy_to1 >= 30 && phy_to1 <= 50) {
                            out.println("<img1>Carbolic_Acid.png</img1>");
                            out.println("<img2>Phenyl_benzoate.png</img2>");
                            out.println("<instruction>This colourless aromatic liquid with a slight pungent odour, does not contain nitrogen, sulphur nor any of the halogen atoms. It melted at  41 - 2 °C, is soluble in water and also in diethyl ether. A deep purple – blue colouration was imparted to a aqueous solution of the compound when a drop of neutral 1 % ferric chloride reagent was added. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 66 - 9 °C. This melting point coincides with the literature melting point of phenyl benzoate.</instruction>");
                            out.println("<result>The test compound under investigation is carbolic acid.</result>");

                            out.println("<procedure>Compound Name \t Melting Point \t Boiling Point \n\np-cresol \t\t 34-36 \t 212\nm-Cresol \t\t 10-12 \t 202\n2-Methoxyphenol \t\t 204\n3-Ethylphenol \t\t\t 217\n4-Ethylphenol \t\t 45-47\n3,4-Dimethylphenol \t 60-62</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 65 && deri_from2 <= 81 && deri_to2 >= 65 && deri_to2 <= 81 && phy_from1 >= 66 && phy_from1 <= 90 && phy_to1 >= 66 && phy_to1 <= 90) {
                            out.println("<img1>Vanillin.png</img1>");
                            out.println("<img2>4_Formyl_2_methoxyphenyl_benzoate.png</img2>");
                            out.println("<instruction>This colourless aromatic solid with an essence like odour, does not contain nitrogen, sulphur nor any of the halogen atoms. It melted at 79 -81 °C, is insoluble in water, but dissolves in aqueous 5 % sodium hydroxide. A deep purple – blue colouration was imparted to a methanolic solution of the compound when a drop of neutral 1 % ferric chloride reagent was added. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 76 - 8 °C. This melting point coincides with the literature melting point of benzoate of vanillin.</instruction>");
                            out.println("<result>The test compound under investigation is vanillin.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \t Boiling Point \n\np-cresol \t\t 34-36 \t 212\nPhenyl salicylate \t\t 42-43</procedure>");

                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 41 && deri_from2 <= 65 && deri_to2 >= 41 && deri_to2 <= 65 && boiling >= 192 && boiling <= 212) {
                            out.println("<img1>m-cresol.png</img1>");
                            out.println("<img2>3_Methylphenyl_benzoate.png</img2>");
                            out.println("<instruction>This faint brown aromatic liquid with a pungent odour like disinfectants, does not contain nitrogen, sulphur nor any of the halogen atoms. It boiled at 202 °C, is soluble in water and also in diethyl ether. The compound reacts with neutral 1 % ferric chloride reagent to develop a violet colouration. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 48 – 53 °C. This melting point coincides with the literature melting point of  3-methylphenyl benzoate.</instruction>");
                            out.println("<result>The test compound under investigation is m-cresol.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\n3-Ethylphenol \t\t 217\n2-Methoxyphenol \t 204</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 66 && deri_from2 <= 90 && deri_to2 >= 66 && deri_to2 <= 90 && phy_from1 >= 30 && phy_from1 <= 54 && phy_to1 >= 30 && phy_to1 <= 54) {
                            out.println("<img1>Phenyl_salicylate.png</img1>");
                            out.println("<img2>phenyl_2_benzoate.png</img2>");
                            out.println("<instruction>This colourless aromatic solid with a pleasant odour, does not contain nitrogen, sulphur nor any of the halogen atoms. It melted at 77 -81 °C, is insoluble in water, but dissolves in aqueous 5 % sodium hydroxide. A deep purple – blue colouration was imparted to a methanolic solution of the compound when a drop of neutral 1 % ferric chloride reagent was added. \n When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 77 - 81 °C. This melting point coincides with the literature melting point of benzoate of phenyl salicylate.</instruction>");
                            out.println("<result>The test compound under investigation is phenyl salicylate.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\np-hydroxybenzaldehydel \t\t 113-115</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 78 && deri_from2 <= 100 && deri_to2 >= 78 && deri_to2 <= 100 && phy_from1 >= 103 && phy_from1 <= 116 && phy_to1 >= 103 && phy_to1 <= 116) {
                            out.println("<img1>p-Hydroxybenzaldehyde.png</img1>");
                            out.println("<img2>4_Formylphenyl benzoate.png</img2>");
                            out.println("<instruction>This faint brown coloured aromatic solid with a pungent odour, does not contain nitrogen, sulphur nor any of the halogen atoms. It melted at 114 -16 °C, is insoluble in water, but dissolves in aqueous 5 % sodium hydroxide. A deep purple – blue colouration was imparted to a methanolic solution of the compound when a drop of neutral 1 % ferric chloride reagent was added. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 87 – 90 °C. This melting point coincides with the literature melting point of 4-formylphenyl benzoate.</instruction>");
                            out.println("<result>The test compound under investigation is p-hydroxybenzaldehyde.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nPhenyl salicylate \t\t 42-43</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 72 && deri_from2 <= 95 && deri_to2 >= 72 && deri_to2 <= 95 && phy_from1 >= 92 && phy_from1 <= 115 && phy_to1 >= 92 && phy_to1 <= 115) {
                            out.println("<img1>catechol.png</img1>");
                            out.println("<img2>2_Hydroxyphenyl_benzoate.png</img2>");
                            out.println("<instruction>This faint brown coloured aromatic solid with a slight pungent odour, does not contain nitrogen, sulphur nor any of the halogen atoms. It melted at 104 - 05 °C, is soluble in water as well as in diethyl ether. A deep bottle green colouration was imparted to a methanolic solution of the compound when a drop of neutral 1 % ferric chloride reagent was added.\n When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 82 – 4 °C. This melting point coincides with the literature melting point of 2-hydroxyphenyl benzoate.</instruction>");
                            out.println("<result>The test compound under investigation is catechol.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\nvanillin \t 76-81\n4-Hydroxybenzaldehyde \t\t 114-116\nEthyl p-hydroxybenzaldehyde \t\t 114-116</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 104 && deri_from2 <= 130 && deri_to2 >= 104 && deri_to2 <= 130 && phy_from1 >= 97 && phy_from1 <= 120 && phy_to1 >= 97 && phy_to1 <= 120) {
                            out.println("<img1>resorcinol.png</img1>");
                            out.println("<img2>m_Hydroxyphenyl_benzoate.png</img2>");
                            out.println("<instruction>This faint brown coloured aromatic solid with a slight pungent odour, does not contain nitrogen, sulphur nor any of the halogen atoms.  It melted at 108 - 10 °C, is soluble in water and also in diethyl ether. A deep violet colouration was imparted to a methanolic solution of the compound when a drop of neutral 1 % ferric chloride reagent was added. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 114 – 17 °C. This melting point coincides with the literature melting point of 4-hydroxyphenyl benzoate.</instruction>");
                            out.println("<result>The test compound under investigation is resorcinol.</result>");

                            out.println("<procedure>Compound Name \t Melting Point \n\n</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 125 && deri_from2 <= 145 && deri_to2 >= 125 && deri_to2 <= 145 && phy_from1 >= 120 && phy_from1 <= 140 && phy_to1 >= 120 && phy_to1 <= 140) {
                            out.println("<img1>Methyl_p_Hydroxybenzoate.png</img1>");
                            out.println("<img2>Methyl_4_benzoylbenzoate.png</img2>");
                            out.println("<instruction>This dark brown coloured aromatic solid with a strong pungent odour, does not contain nitrogen, sulphur nor any of the halogen atoms. It melted at 127 – 30 °C.  A deep violet colouration was imparted to a methanolic solution of the compound when a drop of neutral 1 % ferric chloride reagent was added. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative that melted at 116 – 18 °C, which matched with the literature melting point of benzoate of methyl p-hydroxybenzoate.</instruction>");
                            out.println("<result>The test compound under investigation is methyl p-Hydroxybenzoate.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \t Boiling Point \n\n4-Butylphenol \t\t 20-22 \t 248\nSalicylic acid \t\t 130-132</procedure>");

                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 76 && deri_from2 <= 100 && deri_to2 >= 76 && deri_to2 <= 100 && boiling >= 213 && boiling <= 233) {
                            out.println("<img1>Methyl_salicylate.png</img1>");
                            out.println("<img2>Methyl_2_phenyoxy_benzoate.png</img2>");
                            out.println("<instruction>This faint brown coloured aromatic liquid with a pungent ointment like odour, does not contain nitrogen, sulphur nor any of the halogen atoms. It boiled at 223  °C, is insoluble in water, but dissolves in aqueous 5 % sodium hydroxide. A deep purple – blue colouration was imparted to a methanolic solution of the compound when a drop of neutral 1 % ferric chloride reagent was added. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 90 – 2 °C. This melting point coincides with the literature melting point of benzoate of methyl salicylate.</instruction>");
                            out.println("<result>The test compound under investigation is methyl salicylate.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\nEthyl salicylate \t 231</procedure>");

                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 56 && deri_from2 <= 80 && deri_to2 >= 56 && deri_to2 <= 80 && boiling >= 244 && boiling <= 265) {
                            out.println("<img1>eugenol.png</img1>");
                            out.println("<img2>2_Methoxy.png</img2>");
                            out.println("<instruction>This yellow coloured aromatic liquid with pungent spicy odour, does not contain nitrogen, sulphur nor any of the halogen atoms. It boiled at 254 °C, is insoluble in water, but dissolves in aqueous 5 % sodium hydroxide. The compound reacts with neutral 1 % ferric chloride reagent to develop a purple – blue colouration. When reacted with benzoyl chloride in alkaline conditions, it gave a derivative which melted at 68 –70 °C. This melting point coincides with the literature melting point of benzoate of eugenol.</instruction>");
                            out.println("<result>The test compound under investigation is eugenol.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\nEthyl salicylate \t\t 231</procedure>");

                    } //Primary Amine Compound
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Primary Amine Present") && nitro.equals("Positive") && halogen.equals("Positive") && deri_from2 >= 86 && deri_from2 <= 110 && deri_to2 >= 86 && deri_to2 <= 110 && boiling >= 198 && boiling <= 220) {
                            out.println("<img1>o-chloroaniline.png</img1>");
                            out.println("<img2>N_2_Chlorophenyl_benzamide.png</img2>");
                            out.println("<instruction>This dark brown coloured aromatic liquid with a strong fishy odour, contains nitrogen and chlorine atoms but does not contain sulphur as confirmed in the detection of elements. It boiled at 209 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid. When a diazotized solution of the test compound was treated with alkaline solution of 2-naphthol, a red azo dye was formed. The test compound also formed a very intolerably bad smell when tested for the formation of an isocyanide. The test compound gave a derivative that melted at 96 - 98 °C.  This melting point matches with the literature melting point of benzamide of o-chloroaniline.</instruction>");
                            out.println("<result>The test compound under investigation is o-chloroaninline.</result>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Primary Amine Present") && nitro.equals("Positive") && deri_from2 >= 180 && deri_from2 <= 204 && deri_to2 >= 180 && deri_to2 <= 204 && phy_from1 >= 56 && phy_from1 <= 82 && phy_to1 >= 56 && phy_to1 <= 82) {
                            out.println("<img1>p-chloroaniline.png</img1>");
                            out.println("<img2>N_4_Chlorophenyl_benzamide.png</img2>");
                            out.println("<instruction>This dark brown coloured aromatic solid with a strong fishy odour, contains nitrogen and chlorine atoms and does not contain sulphur as confirmed in the detection of elements. It melted at 70 - 71 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid.  When a diazotized solution of the test compound was treated with alkaline solution of 2-naphthol, a red azo dye was formed. The test compound also formed a very intolerably bad smell when tested for the formation of an isocyanide. The test compound gave a derivative that melted at 191 - 93 °C.  This melting point matches with the literature melting point of benzamide of p-chloroaniline.</instruction>");
                            out.println("<result>The test compound under investigation is p-chloroaniline.</result>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Primary Amine Present") && nitro.equals("Positive") && deri_from2 >= 186 && deri_from2 <= 210 && deri_to2 >= 186 && deri_to2 <= 210 && phy_from1 >= 134 && phy_from1 <= 158 && phy_to1 >= 134 && phy_to1 <= 158) {
                            out.println("<img1>p-Nitroaniline.png</img1>");
                            out.println("<img2>N_4_Nitrophenyl_benzamide.png</img2>");
                            out.println("<instruction>This bright yellow coloured aromatic solid with a faint disagreeable odour, contains nitrogen, does not contain sulphur nor any of the halogens as confirmed in the detection of elements. It melted at 146 – 48 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid. When a diazotized solution of the test compound was treated with alkaline solution of 2-naphthol, a red azo dye was formed. The test compound also formed a very intolerably bad smell when tested for the formation of an isocyanide. The test compound gave a derivative that melted at 197 - 99 °C. This melting point matches with the literature melting point of benzamide of p-nitroaniline.</instruction>");
                            out.println("<result>The test compound under investigation is p-nitroaniline.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\np-Nitrophenylhydrazine \t\t 154-156\n4-Aminopyridine \t\t 156-158\n2,4-Dinitrophenylhydrazine \t\t 196-198</procedure>");

                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Primary Amine Present") && nitro.equals("Positive") && deri_from2 >= 150 && deri_from2 <= 175 && deri_to2 >= 150 && deri_to2 <= 175 && boiling >= 172 && boiling <= 195) {
                            out.println("<img1>aniline.png</img1>");
                            out.println("<img2>Benzanilide.png</img2>");
                            out.println("<instruction>This dark brown coloured aromatic liquid with a strong fishy odour, contains nitrogen as confirmed in the detection of elements, does not contain sulphur nor any of the halogen atoms. It boiled at 185 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid. When a diazotized solution of the test compound was treated with alkaline solution of 2-naphthol, a red azo dye was formed. The test compound also formed a very intolerably bad smell when tested for the formation of an isocyanide. The test compound gave a derivative that melted at 161 - 63 °C. This melting point matches with the literature melting point of benzanilide.</instruction>");
                            out.println("<result>The test compound under investigation is aniline.</result>");

                            out.println("<procedure>Compound Name \t Boiling Point \n\n2,6-Dimethylaniline \t\t 215\nPhenylhydrazine \t\t 242\np-Pethidine \t\t 254</procedure>");

                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Primary Amine Present") && nitro.equals("Positive") && deri_from2 >= 130 && deri_from2 <= 155 && deri_to2 >= 130 && deri_to2 <= 155 && boiling >= 190 && boiling <= 220) {
                            out.println("<img1>o-toluidine.png</img1>");
                            out.println("<img2>N_2_Methylphenyl_benzamide.png</img2>");
                            out.println("<instruction>This dark brown coloured aromatic liquid with a strong fishy odour, contains nitrogen as confirmed in the detection of elements, does not contain sulphur nor any of the halogen atoms. It boiled at 200 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid.  When a diazotized solution of the test compound was treated with alkaline solution of 2-naphthol, a red azo dye was formed. The test compound also formed a very intolerably bad smell when tested for the formation of an isocyanide. The test compound gave a derivative that melted at 142 - 43 °C. This melting point matches with the literature melting point of benzamide of o-toluidine.</instruction>");
                            out.println("<result>The test compound under investigation is o-toluidine.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\n4-Ethylaniline \t\t 215\n2-Ethylaniline \t\t 216</procedure>");

                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Primary Amine Present") && nitro.equals("Positive") && deri_from2 >= 42 && deri_from2 <= 67 && deri_to2 >= 42 && deri_to2 <= 67 && boiling >= 215 && boiling <= 236) {
                            out.println("<img1>2_Anisidine.png</img1>");
                            out.println("<img2>N_2_Methyoxyphenyl_benzamide.png</img2>");
                            out.println("<instruction>This dark brown coloured aromatic liquid with a strong fishy odour, contains nitrogen as confirmed in the detection of elements, does not contain sulphur nor any of the halogen atoms. It boiled at 225 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid.  When a diazotized solution of the test compound was treated with alkaline solution of 2-naphthol, a red azo dye was formed. The test compound also formed a very intolerably bad smell when tested for the formation of an isocyanide. The test compound gave a derivative that melted at 58 - 60 °C. This melting point matches with the Literature melting point of benzamide of o-anisidine.</instruction>");
                            out.println("<result>The test compound under investigation is o-anisidine.</result>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Primary Amine Present") && nitro.equals("Positive") && deri_from2 >= 142 && deri_from2 <= 165 && deri_to2 >= 142 && deri_to2 <= 165 && phy_from1 >= 42 && phy_from1 <= 65 && phy_to1 >= 42 && phy_to1 <= 65) {
                            out.println("<img1>p-anisidine.png</img1>");
                            out.println("<img2>N_4_Methoxyphenyl_benzamide.png</img2>");
                            out.println("<instruction>This dark brown coloured aromatic solid  with slightly agreeable odour, contains nitrogen as confirmed in the detection of elements, does not contain sulphur nor any of the halogen atoms. It melted at 53-56 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid.  When a diazotized solution of the test compound was treated with alkaline solution of 2-naphthol, a red azo dye was formed. The test compound also formed a very intolerably bad smell when tested for the formation of an isocyanide. The test compound gave a derivative that melted at 152 - 54 °C. This melting point matches with the literature melting point of benzamide of p-anisidine.</instruction>");
                            out.println("<result>The test compound under investigation is p-anisidine.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \t Boiling Point \n\np-toluidine \t\t 42-45\n1-Naphthylamine \t 47-50\n2,5-Dimethylaniline \t 13-15 \t 214\n2, 6-Dimethylaniline \t 10-11 \t 215\nEthyl 4-aimnobenzoate \t 90-92\n2-Naphthylamine \t112-113\n4-Amino-3-nitrotoluene \t 114-117</procedure>");

                    } //Secondary Amine Compound
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Secondary Amine Present") && nitro.equals("Positive") && deri_from2 >= 166 && deri_from2 <= 190 && deri_to2 >= 166 && deri_to2 <= 190 && phy_from1 >= 42 && phy_from1 <= 65 && phy_to1 >= 42 && phy_to1 <= 65) {
                            out.println("<img1>diphenylamine.png</img1>");
                            out.println("<img2>N_N_Diphenylbenzamide.png</img2>");
                            out.println("<instruction>This pink – brown coloured aromatic solid with a strong fishy odour, contains nitrogen as confirmed in the detection of elements. It melted at 52 - 54 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid. On diazotization, the test compound formed a yellow-orange oil, which when subjected to Liebermann nitroso test formed a red coloured indophenol. The test compound gave a derivative that melted at 178 - 80 °C.  This melting point matches with the literature melting point of N-diphenylbenzamide. Hence, the test compound is diphenylamine.</instruction>");
                            out.println("<result>The test compound under investigation is diphenylamine.</result>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Secondary Amine Present") && nitro.equals("Positive") && deri_from2 >= 85 && deri_from2 <= 105 && deri_to2 >= 85 && deri_to2 <= 105 && phy_from1 >= 234 && phy_from1 <= 255 && phy_to1 >= 234 && phy_to1 <= 255) {
                            out.println("<img1>carbazole.png</img1>");
                            out.println("<img2>9H_Carbazol.png</img2>");
                            out.println("<instruction>This dark brown coloured aromatic solid with a strong fishy odour, contains nitrogen and does not contain sulphur nor any of the halogens as confirmed in the detection of elements. It melted at 244 - 46 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid.  On diazotization, the test compound formed a yellow-orange oil, which when subjected to Liebermann nitroso test formed a red coloured indophenol. The test compound gave a derivative that melted at 96 - 98 °C.  This melting point matches with the literature melting point of carbazolyl-9-phenyl methanone.</instruction>");
                            out.println("<result>The test compound under investigation is carbazole.</result>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Secondary Amine Present") && nitro.equals("Positive") && deri_from2 >= 56 && deri_from2 <= 78 && deri_to2 >= 56 && deri_to2 <= 78 && phy_from1 >= 40 && phy_from1 <= 60 && phy_to1 >= 40 && phy_to1 <= 60) {
                            out.println("<img1>indole.png</img1>");
                            out.println("<img2>1H_Indol.png</img2>");
                            out.println("<instruction>This dark brown coloured aromatic solid with a pungent odour, contains nitrogen and does not contain sulphur nor any of the halogens as confirmed in the detection of elements. It melted at 51 - 2 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid.   On diazotization, the test compound formed a yellow-orange oil, which when subjected to Liebermann nitroso test formed a red coloured indophenol. The test compound gave a derivative that melted at 66 - 8 °C. This melting point matches with the literature melting point of indol-1-ylbenzamide.</instruction>");
                            out.println("<result>The test compound under investigation is indole.</result>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Aryl_Alkylamine Present") && nitro.equals("Positive") && deri_from2 >= 92 && deri_from2 <= 115 && deri_to2 >= 92 && deri_to2 <= 115 && boiling >= 175 && boiling <= 195) {
                            out.println("<img1>benzylamine.png</img1>");
                            out.println("<img2>N_benzylbenzamide.png</img2>");
                            out.println("<instruction>This transient brown coloured aromatic liquid with disagreeable fishy odour, contains nitrogen and does not contain sulphur or any of the halogens as confirmed in the detection of elements. It boiled at 185 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid. On diazotization, the test compound formed a clear solution with continuous evolution of gas, as indicated by bubbling of the liquid. The test compound gave a derivative with benzoyl chloride in alkaline conditions, that melted at 103 - 05 °C. This melting point matches with the literature melting point of N-benzylbenzamide.</instruction>");
                            out.println("<result>The test compound under investigation is benzylamine.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\n2-Phenylethylamine \t\t 198\no-Phenetidine \t\t 229\nMethyl anthranilate \t\t 255\nEthyl anthranilate \t\t 264</procedure>");

                    } //ternary Amine Compound
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Tertiary Amine Present") && nitro.equals("Positive") && deri_from2 >= 106 && deri_from2 <= 128 && deri_to2 >= 106 && deri_to2 <= 128 && boiling >= 105 && boiling <= 125) {
                            out.println("<img1>pyridine.png</img1>");
                            out.println("<img2>Pyridine_methiodide.png</img2>");
                            out.println("<instruction>This sparkling yellow coloured aromatic liquid with extremely disagreeable fishy odour, contains nitrogen and does not contain sulphur or any of the halogens as confirmed in the detection of elements. It boiled at 115 °C, is insoluble in water, aqueous 5 % sodium hydroxide, but is soluble in aqueous 5 % hydrochloric acid. On reaction with methyl iodide, it formed a methiodide that melted at 116-18 °C. This melting point matches with the literature melting point of methiodide of pyridine.</instruction>");
                            out.println("<result>The test compound under investigation is pyridine.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\n2,4-Lutidine \t\t 159</procedure>");

                    } //Aromatics Hydrocarbans
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Aryl_Alky Hydro Present") && deri_from2 >= 56 && deri_from2 <= 80 && deri_to2 >= 56 && deri_to2 <= 80 && boiling >= 100 && boiling <= 120) {
                            out.println("<img1>toluene.png</img1>");
                            out.println("<img2>4_Nitrotoluene.png</img2>");
                            out.println("<instruction>This colourless aromatic liquid with petroleum odour, does not contain nitrogen, sulphur nor any of the halogens as confirmed in the detection of elements. It boiled at 110 °C, is insoluble in water, aqueous 5 % sodium hydroxide, aqueous 5 % hydrochloric acid, but is soluble in concentrated sulphuric acid. This compound was easily sulphonated, in an electrophilic aromatic substitution reaction, indicating presence of an aromatic ring in the structure. Inability to dissolve in any of the solvents indicates it is a neutral compound. Upon nitration, it formed a yellow coloured solid nitro derivative which melted at 66-67 °C. The melting point matched with the literature melting point of p-nitrotoluene.</instruction>");
                            out.println("<result>The test compound under investigation is toluene.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\nm-Xylene \t\t 139\no-Xylene \t\t 144</procedure>");

                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Aryl_Alky Hydro Present") && deri_from2 >= 55 && deri_from2 <= 80 && deri_to2 >= 55 && deri_to2 <= 80 && boiling >= 134 && boiling <= 154) {
                            out.println("<img1>o-xylene.png</img1>");
                            out.println("<img2>1_2_Dimethyl_4_nitrotoluene.png</img2>");
                            out.println("<instruction>This colourless aromatic liquid with petroleum odour, does not contain nitrogen, sulphur nor any of the halogens as confirmed in the detection of elements. It boiled at 144 °C, is insoluble in water, aqueous 5 % sodium hydroxide, aqueous 5 % hydrochloric acid, but is soluble in concentrated sulphuric acid. This compound was easily sulphonated, in an electrophilic aromatic substitution reaction, indicating presence of an aromatic ring in the structure. Inability to dissolve in any of the solvents indicate it is a neutral compound. Upon nitration, it formed a yellow coloured solid nitro derivative which melted at 66-67 °C. The melting point matched with the literature melting point of nitro derivative of o-xylene.</instruction>");
                            out.println("<result>The test compound under investigation is o-xylene.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\nToluene \t\t 111</procedure>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Aryl_Alky Hydro Present") && deri_from2 >= 170 && deri_from2 <= 190 && deri_to2 >= 170 && deri_to2 <= 190 && boiling >= 130 && boiling <= 150) {
                            out.println("<img1>m_xylene.png</img1>");
                            out.println("<img2>2_3_Dimethyl_1_nitrobenzene.png</img2>");
                            out.println("<instruction>This colourless aromatic liquid with petroleum odour, does not contain nitrogen, sulphur nor any of the halogens as confirmed in the detection of elements. It boiled at 138 °C, is insoluble in water, aqueous 5 % sodium hydroxide, aqueous 5 % hydrochloric acid, but is soluble in concentrated sulphuric acid. This compound was easily sulphonated, in an electrophilic aromatic substitution reaction, indicating presence of an aromatic ring in the structure. Inability to dissolve in any of the solvents indicates it is a neutral compound. Upon nitration, it formed a yellow coloured solid nitro derivative which melted at 180-82 °C. The melting point matched with the literature melting point of nitro derivative of m-xylene.</instruction>");
                            out.println("<result>The test compound under investigation is m-xylene.</result>");
                            out.println("<procedure>Compound Name \t Boiling Point \n\nToluene \t\t 111\no-Xylene \t\t 144</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Hydrocarbons Present") && deri_from2 >= 50 && deri_from2 <= 70 && deri_to2 >= 50 && deri_to2 <= 70 && phy_from1 >= 66 && phy_from1 <= 90 && phy_to1 >= 66 && phy_to1 <= 90) {
                            out.println("<img1>Naphthalene.png</img1>");
                            out.println("<img2>1_Nitronaphthalene.png</img2>");
                            out.println("<instruction>This colourless aromatic solid with pleasant petroleum odour, does not contain nitrogen, sulphur nor any of the halogens as confirmed in the detection of elements. It melted at 78 - 80 °C, is insoluble in water, aqueous 5 % sodium hydroxide,aqueous 5 % hydrochloric acid, but is soluble in concentrated sulphuric acid. This compound was easily sulphonated, in an electrophilic aromatic substitution reaction, indicating presence of an aromatic ring in the structure. Inability to dissolve in any of the solvents indicates it is a neutral compound. Upon nitration, it formed a yellow coloured solid nitro derivative which melted at 60 -61 °C; the melting point of 1-nitronaphthalene.</instruction>");
                            out.println("<result>The test compound under investigation is naphthalene.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\n2-Methylnaphthalene \t\t 32-34</procedure>");

                    } //Nitro Compound
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Nitro Present") && nitro.equals("Positive") && deri_from2 >= 32 && deri_from2 <= 56 && deri_to2 >= 32 && deri_to2 <= 56 && phy_from1 >= 40 && phy_from1 <= 60 && phy_to1 >= 40 && phy_to1 <= 60) {
                            out.println("<img1>p_nitrotoulene.png</img1>");
                            out.println("<img2>p-Aminotoluene.png</img2>");
                            out.println("<instruction>This white sparkling crystalline solid compound is aromatic, odourless, contains nitrogen, and does not contain sulphur or any of the halogens as confirmed in the detection of elements. It melted at 52 – 54 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid. Inability to dissolve in any of the solvents indicates it is a neutral compound. When reduced partially by ammonium chloride and zinc in acidic environment, it was converted into a hydroxylamine which reduced the Tollen’s reagent to deposit the silver mirror. It confirms that the compound contains an aromatic nitro group. This compound converted into p-toluidine when reduced in presence of sodium bisulphite, as was apparent from its melting point, 43 - 5 °C.</instruction>");
                            out.println("<result>The test compound under investigation is p-nitrotoluene.</result>");
                            out.println("<procedure>Compound Name \t Melting Point \n\np-Nitroaniline \t\t 144-146</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Nitro Present") && nitro.equals("Positive") && deri_from2 >= 102 && deri_from2 <= 124 && deri_to2 >= 102 && deri_to2 <= 124 && phy_from1 >= 76 && phy_from1 <= 100 && phy_to1 >= 76 && phy_to1 <= 100) {
                            out.println("<img1>m-dinitrobenzene.png</img1>");
                            out.println("<img2>m-Nitroaniline.png</img2>");
                            out.println("<instruction>This bright yellow crystalline compound is aromatic, odourless, contains nitrogen, and does not contain sulphur or any of the halogens as confirmed in the detection of elements. It melted at  88 - 90 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid. Inability to dissolve in any of the solvents indicates it is a neutral compound. When reduced partially by ammonium chloride and zinc in acidic environment, it was converted into a  hydroxylamine which reduced the Tollen’s reagent to deposit the silver mirror. It confirms that the compound contains an aromatic nitro group. This compound converted into m-phenelenediamine when reduced in presence of granulated zinc, as was apparent from the melting point of the collected derivative,  112 - 14 ° C.</instruction>");
                            out.println("<result>The test compound under investigation is m-dinitrobenzene.</result>");
                            out.println("<procedure>Alternative Compound:\nCompound Name \t Boiling Point \n\n2-Nitronaphthalene \t\t 77-79\np-Nitroacetophenone \t\t 79-81\no-Nitroaniline \t\t 69-71\n1, 5-Dinitronaphthalene \t\t 217</procedure>");

                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Nitro Present") && nitro.equals("Positive") && deri_from2 >= 60 && deri_from2 <= 80 && deri_to2 >= 60 && deri_to2 <= 80 && phy_from1 >= 104 && phy_from1 <= 128 && phy_to1 >= 104 && phy_to1 <= 128) {
                            out.println("<img1>o-Dinitrobenzene.png</img1>");
                            out.println("<img2>2_Nitroaniline.png</img2>");
                            out.println("<instruction>This bright yellow crystalline compound is aromatic, odourless, contains nitrogen, and does not contain sulphur or any of the halogens as confirmed in the detection of elements. It melted at  116 – 18 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid. Inability to dissolve in any of the solvents indicates it is a neutral compound. When reduced partially by ammonium chloride and zinc in acidic environment, it was converted into a  hydroxylamine which reduced the Tollen’s reagent to deposit the silver mirror. It confirms that the compound contains an aromatic nitro group. This compound converted into o-nitroaniline when reduced, as was apparent from its melting point, 69  - 71 °C.</instruction>");
                            out.println("<result>The test compound under investigation is o-dinitrobenzene.</result>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Nitro Present") && nitro.equals("Positive") && deri_from2 >= 135 && deri_from2 <= 158 && deri_to2 >= 135 && deri_to2 <= 158 && phy_from1 >= 160 && phy_from1 <= 184 && phy_to1 >= 160 && phy_to1 <= 184) {
                            out.println("<img1>4_Dinitrobenzene.png</img1>");
                            out.println("<img2>p-Nitroaniline01.png</img2>");
                            out.println("<instruction>This bright yellow crystalline compound is aromatic, odourless, contains nitrogen, and does not contain sulphur or any of the halogens as confirmed in the detection of elements. It melted at 171 – 73 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid. Inability to dissolve in any of the solvents indicates it is a neutral compound. When reduced partially by ammonium chloride and zinc in acidic environment, it was converted into a  hydroxylamine which reduced the Tollen’s reagent to deposit the silver mirror. It confirms that the compound contains an aromatic nitro group. This compound converted into p-nitroaniline, a derivative of a dinitro compound, as was apparent from its melting point, 146 -48 °C.</instruction>");
                            out.println("<result>The test compound under investigation is p-dinitrobenzene.</result>");
                    }
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Nitro Present") && nitro.equals("Positive") && deri_from2 >= 172 && deri_from2 <= 194 && deri_to2 >= 172 && deri_to2 <= 194 && boiling >= 210 && boiling <= 232) {
                            out.println("<img1>Nitrobenzene.png</img1>");
                            out.println("<img2>aniline.png</img2>");
                            out.println("<instruction>This bright yellow coloured aromatic liquid with petroleum-like odour, contains nitrogen, does not contain sulphur or any of the halogens as confirmed in the detection of elements. It boiled at 221 °C, is insoluble in water, aqueous 5 % sodium hydroxide, and aqueous 5 % hydrochloric acid. Inability to dissolve in any of the solvents indicates it is a neutral compound. When reduced partially by ammonium chloride and zinc in acidic environment, it was converted into a  hydroxylamine which reduced the Tollen’s reagent to deposit the silver mirror. It confirms that the compound contains an aromatic nitro group, which when reduced produces a liquid derivstive boiling at 183 °C, which matched with literature boliling point of aniline.</instruction>");
                            out.println("<result>The test compound under investigation is nitrobenzene.</result>");
                    } // Phenol Compound
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && sulphur.equals("Positive") && deri_from2 >= 110 && deri_from2 <= 132 && deri_to2 >= 110 && deri_to2 <= 132 && boiling >= 156 && boiling <= 176) {
                            out.println("<img1>thiophenol.png</img1>");
                            out.println("<img2>S_Phenyl_2_acetyl_nitrobenzothionate.png</img2>");
                            out.println("<instruction>This foul smelling brown coloured liquid is aromatic, does not contain nitrogen or any of the halogens, but contains sulphur, as confirmed in the detection of elements. It boiled at  169 °C, is insoluble in water, but dissolves in aqueous 5 % sodium hydroxide. The inability to decompose sodium hydrogen carbonate and evolve carbon dioxide indicates that the compound is a sulphur containing phenol, i. e. a thiol. The derivative of the compound melted at 128-30 °C.</instruction>");
                            out.println("<result>The test compound under investigation is thiophenol.</result>");
                    } 
                    else if (result1.equals("Solid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && sulphur.equals("Positive") && deri_from2 >= 90 && deri_from2 <= 110 && deri_to2 >= 90 && deri_to2 <= 110 && phy_from1 >= 32 && phy_from1 <= 55 && phy_to1 >= 32 && phy_to1 <= 55) {
                            out.println("<img1>p_Thiocresol.png</img1>");
                            out.println("<img2>S_4_Tolyl_2_acetylnitrobenzothionate.png</img2>");
                            out.println("<instruction>This foul smelling brown coloured solid is aromatic, does not contain nitrogen or any of the halogens, but contains sulphur, as confirmed in the detection of elements. It melted at 41 - 4  °C, is insoluble in water, but dissolves in aqueous 5 % sodium hydroxide. The inability to decompose sodium hydrogen carbonate and evolve carbon dioxide indicates that the compound is a sulphur containing phenol, i. e. a thiol. The nitrophthalate derivative of the compound melted at 101- 03 °C.</instruction>");
                            out.println("<result>The test compound under investigation is p-thiocresol.</result>");
                    } //Ester Compound
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Ester Present") && deri_from2 >= 110 && deri_from2 <= 132 && deri_to2 >= 110 && deri_to2 <= 132 && boiling >= 202 && boiling <= 222) {
                            out.println("<img1>ethyl_benzoate.png</img1>");
                            out.println("<img2>benzoic_acid.png</img2>");
                            out.println("<instruction>This pleasant smelling colourless liquid aromatic, does not contain nitrogen, sulphur nor contains any of the halogens as confirmed in the detection of elements. It boiled at 212 °C, is insoluble in water, aqueous 5 % sodium hydroxide,  aqueous 5 % hydrochloric acid, but dissolves in concentrated sulphuric acid. The inability to dissolve in acidic or basic solvents indicates it is a neutral compound. Treatment of the test compound with hydroxylamine in an alkaline atmosphere converted it into a hydroxamic acid, which was proved by development of burgundy colour when reaction mixture was treated with neutral aqueous 1% ferric chloride reagent. Hydrolytic derivative of the test compound decomposed sodium hydrogen carbonate, and melted at 119 - 21 °C, which matches with the literature melting point of benzoic acid. This proves that the test compound has an ester function, and is ethyl benzoate which boils at 212 °C.</instruction>");
                            out.println("<result>The test compound under investigation is ethyl benzoate.</result>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Ester Present") && deri_from2 >= 120 && deri_from2 <= 140 && deri_to2 >= 120 && deri_to2 <= 140 && boiling >= 262 && boiling <= 282) {
                            out.println("<img1>ethyl_cinnamate.png</img1>");
                            out.println("<img2>Cinnamic_acid.png</img2>");
                            out.println("<instruction>This pleasant smelling colourless aromatic liquid does not contain nitrogen, sulphur nor contains any of the halogens as confirmed in the detection of elements. It boiled at 273 °C, is insoluble in water, aqueous 5 % sodium hydroxide, aqueous 5 % hydrochloric acid, but dissolves in concentrated sulphuric acid. The inability to dissolve in acidic or basic solvents indicates it is a neutral compound. Treatment of the test compound with hydroxylamine in an alkaline atmosphere converted it into a hydroxamic acid, which was proved by development of burgundy colour when reaction mixture was treated with neutral aqueous 1% ferric chloride reagent. Hydrolytic derivative of the test compound decomposed sodium hydrogen carbonate, and melted at 131 - 33 °C, which matches with the literature melting point of cinnamic acid. This proves that the test compound has an ester function, and boils at 273 °C.</instruction>");
                            out.println("<result>The test compound under investigation is ethyl cinnamate.</result>");
                    } 
                    else if (result1.equals("Liquid") && result2.equals("Aromatic") && compound_name.equals("Phenol Present") && deri_from2 >= 66 && deri_from2 <= 90 && deri_to2 >= 66 && deri_to2 <= 90 && boiling >= 224 && boiling <= 244) {
                            out.println("<img1>ethyl_salicylate.png</img1>");
                            out.println("<img2>Ethyl_2_benzoyloxy_benzoate.png</img2>");
                            out.println("<instruction>This odourless white coloured aromatic liquid does not contain nitrogen, sulphur nor contains any of the halogens as confirmed in the detection of elements. It boiled at 66 – 8 °C, is insoluble in water, aqueous 5 % sodium hydroxide, aqueous 5 % hydrochloric acid, but dissolves in concentrated sulphuric acid. The inability to dissolve in acidic or basic solvents indicates it is a neutral compound. Treatment of the test compound with hydroxylamine in an alkaline atmosphere converted it into a hydroxamic acid, which was proved by development of burgundy colour when reaction mixture was treated with neutral aqueous 1% ferric chloride reagent. Benzoyl derivative melted at 78 - 80 °C, which matches with the melting point of ethyl 2-benzoyloxybenzoate. This proves that the test compound has a phenolic and an ester function, and melts at 78 - 80 °C.</instruction>");
                            out.println("<result>The test compound under investigation is Ethyl salicylate.</result>");
                    } 
                    else 
                    {
                        out.println("<instruction>error</instruction>");
                        System.out.println("=========== im in else");
                        out.println("<procedure>The investigation may have gone wrong somewhere. \nDo restart from the begining, or follow below given suggestions. \n\ni) Do consider the names of alternate compounds.\nii) Determine the physical constants, of the test \ncompound and its derivative, and restart the \nexercise.\niii) Refer literature for further suggestions.</procedure>");
                    }
                }
            }
            out.println("</emp>");
        }
    }
    catch (Exception e) 
    {
            System.out.println(e);
    }
%>