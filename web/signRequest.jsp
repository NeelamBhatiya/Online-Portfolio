<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%int uid=0;
String emailId=request.getParameter("email"); 
String password=request.getParameter("pass");

Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","myroot"); 
PreparedStatement st= con.prepareStatement("select * from user where email=? and pass=?"); 
st.setString(1,emailId);
st.setString(2,password);
ResultSet rs = st.executeQuery();
if(!rs.next())
{
   response.sendRedirect("incorrect.html"); 
   
}
  else
{ uid=rs.getInt(1);
session.setAttribute("uid", uid);
    response.sendRedirect("home_home.jsp");}

%>



