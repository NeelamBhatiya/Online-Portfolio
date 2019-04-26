<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.sql.*" %>

<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>

<%
int uid=(int)session.getAttribute("uid");
String name=request.getParameter("name"); 
//String name="aditya";
String dob=request.getParameter("dob");
String yoa=request.getParameter("yoa"); 
String pemail=request.getParameter("pemail");
String inst=request.getParameter("inst"); 
String dept=request.getParameter("dept");
String eno=request.getParameter("eno"); 
String gender=request.getParameter("gender");
String mobno=request.getParameter("mobno"); 

String beuname="";
String suname="";
String huname="";
String hucity="";
String becity=""; 
String sucity="";
String beinst="";
String sinst="";
String hinst="";
String hinstcity="";
String sinstcity="";
String beinstcity="";
String beyear="";
String hyear="";
String syear="";
String becgpa="";
String scgpa="";
String hcgpa="";


Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","myroot"); 
PreparedStatement st;
st= con.prepareStatement("select * from data where uid=?");
st.setInt(1,uid);
ResultSet rs=st.executeQuery();
if(rs.next())
{st=con.prepareStatement("UPDATE data set NAME =?, DOB=?, YOA=?, PEMAIL=?, INST=?, DEPT=?, ENO=?, GENDER=?, MOBNO=? where uid=?");
st.setInt(10,uid);
st.setString(1,name);
st.setString(2,dob);
st.setString(3,yoa);
st.setString(4,pemail);
st.setString(5,inst);
st.setString(6,dept);
st.setString(7,eno);
st.setString(8,gender);
st.setString(9,mobno); 

st.executeUpdate();
response.sendRedirect("home_edit.jsp");
}

    else{st=con.prepareStatement("insert into data values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    st.setInt(1,uid);
st.setString(2,name);
st.setString(3,dob);
st.setString(4,yoa);
st.setString(5,pemail);
st.setString(6,inst);
st.setString(7,dept);
st.setString(8,eno);
st.setString(9,gender);
st.setString(10,mobno); 

st.setString(12,beuname);
st.setString(18,suname);
st.setString(24,huname);
st.setString(25,hucity);
st.setString(13,becity);
st.setString(19,sucity);
st.setString(14,beinst);
st.setString(20,sinst);
st.setString(26,hinst);
st.setString(27,hinstcity);
st.setString(21,sinstcity);
st.setString(15,beinstcity);
st.setString(16,beyear);
st.setString(28,hyear);
st.setString(22,syear);
st.setString(17,becgpa);
st.setString(23,scgpa);
st.setString(29,hcgpa);
st.execute();
response.sendRedirect("home_edit.jsp");}
    
%>



