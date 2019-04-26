<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String emailId=request.getParameter("email"); 
String password=request.getParameter("pass");
int uid=0;
Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","myroot"); 
PreparedStatement st= con.prepareStatement("insert into user(email,pass) values(?,?)"); 

st.setString(1,emailId);
st.setString(2,password);
st.execute();
st= con.prepareStatement("select * from user where email=?");
st.setString(1,emailId);
ResultSet rs=st.executeQuery();
if(rs.next())
{
    uid=rs.getInt(1);
}
%>

<%
 session.setAttribute("uid", uid);
 response.sendRedirect("home_home.jsp");
%>



