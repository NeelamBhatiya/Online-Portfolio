<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<%
int uid=(int)session.getAttribute("uid");
String name=request.getParameter("pass"); 
//String name="aditya";


Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","myroot"); 

  PreparedStatement st=con.prepareStatement("UPDATE user set pass=? where uid=?");

st.setString(1,name);
st.setInt(2,uid);
st.executeUpdate();
response.sendRedirect("home_publish.jsp");
    
%>



