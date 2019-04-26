<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%int uid=0;
int pid=Integer.parseInt(request.getParameter("pid")); 
String eno=request.getParameter("eno");

Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","myroot"); 
PreparedStatement st= con.prepareStatement("select * from data where uid=? and eno=?"); 
st.setInt(1,pid);
st.setString(2,eno);
ResultSet rs = st.executeQuery();
if(!rs.next())
{
   response.sendRedirect("incorrect2.html"); 
   
}
  else
{ uid=rs.getInt(1);
session.setAttribute("uid", uid);
    response.sendRedirect("viewP.jsp");}

%>



