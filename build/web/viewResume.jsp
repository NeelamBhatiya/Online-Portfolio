<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
int uid=(int)session.getAttribute("uid");
String name="";
String dob="";
String yoa="";
String pemail="";
String inst="";
String dept="";
String eno="";
String gender="";
String mobno=""; 
String photo="";
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
PreparedStatement st= con.prepareStatement("select * from data where uid=?"); 
st.setInt(1,uid);

ResultSet rs = st.executeQuery();
if(rs.next())
{
name=rs.getString(2);
dob=rs.getString(3);
yoa=rs.getString(4);
pemail=rs.getString(5);
inst=rs.getString(6);
dept=rs.getString(7);
eno=rs.getString(8);
gender=rs.getString(9);
mobno=rs.getString(10);

beuname=rs.getString(11);
suname=rs.getString(17);
huname=rs.getString(23);
hucity=rs.getString(24);
becity=rs.getString(12);
sucity=rs.getString(18);
beinst=rs.getString(13);
sinst=rs.getString(19);
hinst=rs.getString(25);
hinstcity=rs.getString(26);
sinstcity=rs.getString(20);
beinstcity=rs.getString(14);
beyear=rs.getString(15);
hyear=rs.getString(27);
syear=rs.getString(21);
becgpa=rs.getString(16);
scgpa=rs.getString(22);
hcgpa=rs.getString(28);


   
%><%}%>
<html>
<head>
<title>Portfolio</title>
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
	
div.content {
  margin-left: 50px;
  margin-right: 50px;
  padding: 1px 5px;
text-align: left;
}
.header{
    font-size:20px;
    text-decoration:underline;
    
}
</style>
</head>
<body >
<div style="background-image:url('back.jpg'); background-repeat: no-repeat;background-size: cover;"> 
 
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
     
      <div id="logo" class="flex float-left">
        <h1><a href="index.html">Portfolio</a></h1>
      </div>
      <nav id="mainav" class="float-right">
    
            <ul>
             
          
          <li><a href="home_home.jsp">Go Back</a></li>
        </ul>
      </nav>
    
    </header>
  </div>
<!--   <section id="pageintro" style="color: white"> -->
    <div class="container"style="background-color: white;color:black; height:90%;">

    	
 
<div class="content">
  <span style="text-align: center;font-family: serif;font-style:italic;"><h2>Resume</h2></span>
  
  <hr>
  <br>
 
  <table style="border:0px blue dashed">
    <tr ><td rowspan="6"><img src="logo.png"></td></tr>
    <tr><td><%=name%></td><td>Enrollment No. : <%=eno%></td></tr>
    <tr><td>UG III Year</td><td>Department: <%=dept%></td></tr>
    <tr><td><%=inst%></td><td>Gender : <%=gender%></td></tr>
    <tr><td>DOB: <%=dob%></td><td>Specialization: None</td></tr>
    <tr><td>Email Id: <%=pemail%></td><td>Mobile : <%=mobno%></td></tr>
</table>
<hr color="black">
<br>
<div class="header"><strong>EDUCATION</strong></div><br>
 <table style="border:0px blue dashed">
    
  <tr><th>Degree</th><th>University</th><th>Institute</th><th>Year Of Passing</th><th>CGPA/%</th></tr>
 <tr><td>Graduation</td><td><%=beuname%>,<%=becity%></td><td><%=beinst%>,<%=beinstcity%></td><td><%=beyear%></td><td><%=becgpa%></td></tr>
 <tr><td>12<sup>th</td><td><%=suname%>,<%=sucity%></td><td><%=sinst%>,<%=sinstcity%></td><td><%=syear%></td><td><%=scgpa%></td></tr>
 <tr><td>10<sup>th</td><td><%=huname%>,<%=hucity%></td><td><%=hinst%>,<%=hinstcity%></td><td><%=hyear%></td><td><%=hcgpa%></td></tr>
   
</table>
 
 <div class="header"><strong>Projects</strong></div><br>
 <%
     PreparedStatement st2=con.prepareStatement("select * from project where uid=?"); 
     st2.setInt(1, uid);
     ResultSet rs2=st2.executeQuery();
     while(rs2.next())
     {%>
         
     
 <table>
     <tr>
         <td align="left"><strong><%=rs2.getString(2)%></strong></td><td align="right"><%=rs2.getString(6)%> TO <%=rs2.getString(7)%></td>
     </tr>
     <tr>
         <td align="left"><%=rs2.getString(3)%></td><td align="right"><%=rs2.getString(4)%></td>
     </tr>
     <tr>
         <td colspan="2"><%=rs2.getString(5)%></td>
     </tr>
      <tr>
         <td colspan="2"><%=rs2.getString(8)%></td>
     </tr>
 </table>
 <% }
     %>
     
    
     <div class="header"><strong>Experience</strong></div><br>
      <%
     PreparedStatement st3=con.prepareStatement("select * from experience where uid=?"); 
     st3.setInt(1, uid);
     ResultSet rs3=st3.executeQuery();
     while(rs3.next())
     {%>
     <table>
         <tr>
             <td><strong><%=rs3.getString(3)%></strong> </td>                 
 
         </tr>
         <tr>
             <td><i><%=rs3.getString(4)%></i> </td>                 
 
         </tr>
          <tr>
             <td><%=rs3.getString(5)%></td>                 
 
         </tr>
     </table>
             <% }
     %>
</div>
 
</div>
  <!-- </section> -->
</div>


<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>