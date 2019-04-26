<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
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

String beuname=request.getParameter("beuname"); 
String suname=request.getParameter("suname");
String huname=request.getParameter("huname"); 
String hucity=request.getParameter("hucity"); 
String becity=request.getParameter("beucity"); 
String sucity=request.getParameter("sucity"); 
String beinst=request.getParameter("beinst");
String sinst=request.getParameter("sinst");
String hinst=request.getParameter("hinst");
String hinstcity=request.getParameter("hinstcity");
String sinstcity=request.getParameter("sinstcity");
String beinstcity=request.getParameter("beinstcity");
String beyear=request.getParameter("beyear");
String hyear=request.getParameter("hyear");
String syear=request.getParameter("syear");
String becgpa=request.getParameter("becgpa");
String scgpa=request.getParameter("scgpa");
String hcgpa=request.getParameter("hcgpa");


Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","myroot"); 
PreparedStatement st;
st= con.prepareStatement("select * from data where uid=?");
st.setInt(1,uid);
ResultSet rs=st.executeQuery();
if(rs.next())
{st=con.prepareStatement("UPDATE data set NAME =?, DOB=?, YOA=?, PEMAIL=?, INST=?, DEPT=?, ENO=?, GENDER=?, MOBNO=?,  beuname=?, beucity=?, beinst=?, beinstcity=?, beyear=?, becgpa=?, suname=?, sucity=?, sinst=?, sinstcity=?, syear=?, scgpa=?, huname=?, hucity=?, hinst=?, hinstcity=?, hyear=?, hcgpa=? where uid=?");
 st.setInt(28,uid);
st.setString(1,name);
st.setString(2,dob);
st.setString(3,yoa);
st.setString(4,pemail);
st.setString(5,inst);
st.setString(6,dept);
st.setString(7,eno);
st.setString(8,gender);
st.setString(9,mobno); 

st.setString(10,beuname);
st.setString(16,suname);
st.setString(22,huname);
st.setString(23,hucity);
st.setString(11,becity);
st.setString(17,sucity);
st.setString(12,beinst);
st.setString(18,sinst);
st.setString(24,hinst);
st.setString(25,hinstcity);
st.setString(19,sinstcity);
st.setString(13,beinstcity);
st.setString(14,beyear);
st.setString(26,hyear);
st.setString(20,syear);
st.setString(15,becgpa);
st.setString(21,scgpa);
st.setString(27,hcgpa);
st.executeUpdate();
response.sendRedirect("home_edit.jsp");
}

    else{st=con.prepareStatement("insert into data values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
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

st.setString(11,beuname);
st.setString(17,suname);
st.setString(23,huname);
st.setString(24,hucity);
st.setString(12,becity);
st.setString(18,sucity);
st.setString(13,beinst);
st.setString(19,sinst);
st.setString(25,hinst);
st.setString(26,hinstcity);
st.setString(20,sinstcity);
st.setString(14,beinstcity);
st.setString(15,beyear);
st.setString(27,hyear);
st.setString(21,syear);
st.setString(16,becgpa);
st.setString(22,scgpa);
st.setString(28,hcgpa);
st.execute();
response.sendRedirect("home_edit.jsp");}
    
%>



