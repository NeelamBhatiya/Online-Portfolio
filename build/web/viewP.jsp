<!DOCTYPE html>
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
	<title>My Portfolio</title>
<link rel="stylesheet" type="text/css" href="css/superslides.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<div id="slides">
		<div class="overlay"></div>
  		<div class="slides-container">
    		<img src="img/2.jpg" alt="">
    		<img src="img/1.jpg" alt="">
                <img src="img/3.jpg" alt="">
 		 </div>

 		<div class="titleMsg">
 			<div class="heading">
                            <br><br>
 			<p class="main"><%=name%></p>
                        <p class="sub"><a href="viewResume.jsp" class="btn btn-outline-warning">Resume</a></p>
 			</div>
 		</div>


  	 	<nav class="slides-navigation">
  	 		 <a href="#" class="next"></a>
  	 		 <a href="#" class="prev"></a>
  		</nav>
	</div>  
	<div id="about" class="section">
		<div class="container">
			<div class="row">
			<div class="col-md-5">
				<img src="retrieveImg.jsp" style="width: 350px;height: 350px;"></img>
				
			</div>
			<div class="col-md-7">
				<h4>Hey, I am <%=name%></h4>
				<p>
                                <uL>
                                    <li> I am a student of <%=inst%> College.</li>
                                    <li> Currently pursing Engineering from <%=dept%>.</li>
                                    <li> Born on  <%=dob%>.</li>
                                    <li> Mail me on <%=pemail%>.</li>
                                    <li> Contact No. <%=mobno%>.</li>
                                </uL>
                                   
                                    
                                </p>
			</div>
		</div>
		</div>

		
	</div>
	<div id="skills" class="skillSection section">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
                                    <h2>Experience</h2></div>
                            <p><ol>
						  <%
     PreparedStatement st3=con.prepareStatement("select * from experience where uid=?"); 
     st3.setInt(1, uid);
     ResultSet rs3=st3.executeQuery();
     while(rs3.next())
     {%>
                                        <li><table>
         <tr>
             <td><strong><%=rs3.getString(3)%></strong> </td>                 
 
         </tr>
         <tr>
             <td><i>Technology Used :<%=rs3.getString(4)%></i> </td>                 
 
         </tr>
          <tr>
             <td><%=rs3.getString(5)%></td>                 
 
         </tr>
                                            </table></li><hr width="100%">
             <% }
     %>
                        </ol>			</p>
				<!--</div>-->
				
				
				</div>
			
			</div>

		</div>
	</div>
	<div id="stats" class="statsSection section">
		<div class="container">
			<div class="row">
				<!--<div class="col-md-3 col-sm-6">-->
                                <div class="col-md-12 text-center">
                                    <h2>Projects I've Worked On:</h2>
                                </div>
                                    <ol>	
 <%
     PreparedStatement st2=con.prepareStatement("select * from project where uid=?"); 
     st2.setInt(1, uid);
     ResultSet rs2=st2.executeQuery();
     while(rs2.next())
     {%>
         
     <li>
 <table width="100%">
     <tr>
         <td align="left"><strong><%=rs2.getString(2)%></strong>(<%=rs2.getString(6)%> TO <%=rs2.getString(7)%>)
     </tr>
     
     <tr>
         <td colspan="2"><%=rs2.getString(5)%></td>
     </tr>
      <tr>
         <td colspan="2">Link: <%=rs2.getString(8)%></td>
     </tr>
 </table>
     </li>
 <% }
     %>
                                    </ol>
					
				<!--</div>-->
			</div>
		</div>
	</div>


<!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>-->
<script src="js/jquery.easypiechart.min.js"></script>
<script src="js/jquery.superslides.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/typed.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>


<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 <script src="js/script.js"></script>



</body>
</html>