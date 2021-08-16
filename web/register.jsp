<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%
    String FirstName = request.getParameter("FirstName");
    String LastName = request.getParameter("LastName");
    String City = request.getParameter("City");
    String MobileNumber = request.getParameter("MobileNumber");
    String EmailID = request.getParameter("EmailID");
    String CollegeName = request.getParameter("CollegeName");
    String Password = request.getParameter("Password");
    String ConfirmPassword = request.getParameter("ConfirmPassword");
    DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
    Date date = new Date();
    String formattedDate = df.format(date);

    if (Password.equals(ConfirmPassword)) 
    {
        try
        {
            Connection con=db.dbConnect.dbConnection();
            Statement st=null;  
            PreparedStatement pstmt=null;
            PreparedStatement pstn1=con.prepareStatement("select * from register where MobileNumber=?");
            pstn1.setString(1,request.getParameter("MobileNumber"));
            ResultSet rs=pstn1.executeQuery();
            if(!rs.next())
            {
                pstmt = con.prepareStatement("insert into register(FirstName, LastName, City, MobileNumber, EmailID, CollegeName, Password, registrationdate, PaymentStatus, PaymentDate, loginStatus) value(?,?,?,?,?,?,?,?,?,?,?)");  
                pstmt.setString(1, FirstName);
                pstmt.setString(2, LastName);
                pstmt.setString(3, City);
                pstmt.setString(4, MobileNumber);
                pstmt.setString(5, EmailID);
                pstmt.setString(6, CollegeName);
                pstmt.setString(7, Password);
                pstmt.setString(8, formattedDate);
                pstmt.setString(9, "0");
                pstmt.setString(10, "00-00-0000");
                pstmt.setString(11, "0");
                pstmt.executeUpdate();
                %>
                    <script>
                        alert("Register Successfull");
                        window.location="Home.jsp";
                    </script>
                <%
            }
            else
            {  
                %>
                    <script>
                        alert("User already exist");
                        window.location="Home.jsp";
                    </script>
                <%
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
            %>
                <script>
                    alert("Please Enter Detail Again..............");
                    window.location = "Home.jsp";
                </script>
            <%
        }
    } 
    else 
    {
        %>
            <script>
                alert("Please Enter Same Password");
                window.location = "Home.jsp";
            </script>
        <%
    }
%>