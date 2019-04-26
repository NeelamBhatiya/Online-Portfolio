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

beuname=rs.getString(12);
suname=rs.getString(13);
huname=rs.getString(14);
hucity=rs.getString(15);
becity=rs.getString(16);
sucity=rs.getString(17);
beinst=rs.getString(18);
sinst=rs.getString(19);
hinst=rs.getString(20);
hinstcity=rs.getString(21);
sinstcity=rs.getString(22);
beinstcity=rs.getString(23);
beyear=rs.getString(24);
hyear=rs.getString(25);
syear=rs.getString(26);
becgpa=rs.getString(27);
scgpa=rs.getString(28);
hcgpa=rs.getString(29);


   
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
  <span style="text-align: center;"><h2>Portfolio</h2></span>
  
  <hr>
  <br>
  <h1><%=name%></h1>
  <u>CONTACT</u>
  <h2><%=eno%></h2>
  <h3> <%=mobno%></h3>
  <h3> <%=pemail%></h3>
  <h3> <%=mobno%></h3>
 
<hr color="black">
<br>
 <table style="border:0px blue dashed">
    
 DEVELOPMENT UNDER PROCESS..............
</table>
</div>
 
</div>
  <!-- </section> -->
</div>



  
     
 
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <div class="clear"></div>
  </main>
</div>

<div style="background-color: #4e7f19;line-height:100px;text-align: center;">  
   
      <p>Developed by Aditya & Neelam</p>    
  
</div>
 

<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>