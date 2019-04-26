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
	.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: absolute;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #4CAF50;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
</head>
<body >
<div style="background-image:url('back.jpg'); background-repeat: no-repeat;background-size: cover;"> 
    <!--navbar-->
    <div class="wrapper row1">
      <header id="header" class="hoc clear"> 

        <div id="logo" class="flex float-left">
          <h1><a href="index.html">Portfolio</a></h1>
        </div>
        <nav id="mainav" class="float-right">

              <ul>


            <li><a href="index.html">Logout</a></li>
          </ul>
        </nav>

      </header>
    </div>
  <!--body-->
    <div class="container"style="background-color: white;color:black; height:90%;overflow:auto;">
        <!--Sidebar-->
        <div class="sidebar">
        <a  href="home_home.jsp">Home</a>
        <a class="active" href="home_edit.jsp">Edit Portfolio</a>
        <a href="home_publish.jsp">Publish Setting</a>
        </div>
        <!--Main Container-->
        <div class="content">

    <!--              <form action="saveData.jsp" enctype="multipart/form-data" >-->



        <hr>
        <!--Tabs-->
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Personal Details</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="photo-tab" data-toggle="tab" href="#photo" role="tab" aria-controls="photo" aria-selected="false">Photo</a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link " id="projects-tab" data-toggle="tab" href="#projects" role="tab" aria-controls="projects" aria-selected="false" >Projects</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " id="experience-tab" data-toggle="tab" href="#experience" role="tab" aria-controls="experience" aria-selected="false">Experience</a>
          </li>
          
         
      </ul>
        <!--Tab Content-->
      <div class="tab-content" id="myTabContent">
           <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="nav-peronal-tab">
    <form action="saveData.jsp" onsubmit="return Validate()" >
  <h2>Edit Portfolio</h2>
  

 
  <hr>
  <h4 style="text-decoration: underline">Personal Details</h4><br>

  <div class="form-group" >
   Name
   <input type="text" name="name" value="<%=name%>"class="form-control" id="name" required >
   
  </div>
  <div class="form-group">
    Date Of Birth
    <input type="text"  name="dob"value="<%=dob%>"class="form-control" id="dob" placeholder="DD/MM/YYYY" required>
  </div>
        <div class="form-group">
       Year Of Admission
       <input type="text"  name="yoa" value="<%=yoa%>"  placeholder="YYYY"class="form-control" id="yoa" required>
  </div>
        <div class="form-group">
   Primary Email
         <input type="text"  name="pemail" value="<%=pemail%>"  class="form-control" id="pemail" placeholder="abc@gmail.com" required>
  </div>
        <div class="form-group">
 Institute
    <input type="text" value="<%=inst%>" name="inst"class="form-control" id="inst" required>
  </div>
        <div class="form-group">
Department
    <input type="text"  name="dept" value="<%=dept%>"class="form-control" id="dept"required >
  </div>
      <div class="form-group">
Enrollment No.
<input type="text"  name="eno" value="<%=eno%>"class="form-control" id="eno" placeholder="0801CS161000" required>
  </div>
      <div class="form-group">
  Gender

  <input type="text" name="gender" value="<%=gender%>" class="form-control" placeholder="Male/Female/Other" id="gender" required>
  </div>
  <div class="form-group">
Mobile
    <input type="text"  name="mobno" value="<%=mobno%>"class="form-control" id="mob" required>
  </div>
    
         
  <h4 style="text-decoration: underline">Education</h4>
      <br>
  <font color="blue"><h5>Under Graduate Details </h5></font>
  <br>
  <br>
  <div class="form-group">
  University Name
   <input type="text" name="beuname" value="<%=beuname%>" class="form-control" id="beuname" required>
  </div>
      <div class="form-group">
  University City
   <input type="text" name="beucity" value="<%=becity%>" class="form-control" id="beucity" required>
  </div>
      <div class="form-group">
  Institute <input type="text"  name="beinst" value="<%=beinst%>"class="form-control" id="beinst" required>
  </div>
      <div class="form-group">
  Institute City <input type="text"  name="beinstcity" value="<%=beinstcity%>"class="form-control" id="beinstcity" required >
  </div>
      <div class="form-group">
  Year Of Passing
   <input type="text"  name="beyear" value="<%=beyear%>"class="form-control" id="beyear" required >
  </div> <div class="form-group">
  CGPA/Percentage
  <input type="text" name="becgpa" value="<%=becgpa%>" class="form-control" id="becgpa" required>
  </div> 
      
   
  <br>
  <font color="blue"><h5>12th</h5></font>
  <br>
  <br>
  <div class="form-group">
  University Name
   <input type="text"  name="suname" value="<%=suname%>" class="form-control" id="suname" required>
  </div>
      <div class="form-group">
  University City
   <input type="text" name="sucity" value="<%=sucity%>"class="form-control" id="sucity" required>
  </div>
      <div class="form-group">
  Institute <input type="text" name="sinst" value="<%=sinst%>"class="form-control" id="sinst" required>
  </div>
      <div class="form-group">
  Institute City <input type="text" name="sinstcity" value="<%=sinstcity%>"class="form-control" id="sinstcity" required>
  </div>
      <div class="form-group">
  Year Of Passing
   <input type="text"  name="syear" class="form-control"value="<%=syear%>" id="syear" required>
  </div> <div class="form-group">
  CGPA/Percentage
  <input type="text" name="scgpa" value="<%=scgpa%>" class="form-control" id="scgpa" placeholder="0.00" required>
         
  </div>
  
  
  <br>
  <font color="blue"><h5>10th</h5></font>
  <br>
  <br>
  <div class="form-group">
  University Name
   <input type="text"  name="huname" value="<%=huname%>" class="form-control" id="huname" required>
  </div>
      <div class="form-group">
  University City
   <input type="text"  name="hucity" value="<%=hucity%>" class="form-control" id="hucity" required>
  </div>
      <div class="form-group">
  Institute <input type="text"  name="hinst" value="<%=hinst%>" class="form-control" id="hinst" required>
  </div>
      <div class="form-group">
  Institute City <input type="text" name="hinstcity" value="<%=hinstcity%>" class="form-control" id="hinstcity" required>
  </div>
      <div class="form-group">
  Year Of Passing
   <input type="text" name="hyear" value="<%=hyear%>"class="form-control" id="hyear" required>
  </div> <div class="form-group">
  CGPA/Percentage
  <input type="text" name="hcgpa" value="<%=hcgpa%>"class="form-control" id="hcgpa" required>
  </div>
  
  <br>
  <span id="error" style="color: red;"></span><br>
  
    <button class="btn btn-primary float-center" type="submit">Save </button>
    
    <br>
    <hr>

   </form>

       </div>
       
        <!--Photo-->
          <div class="tab-pane fade" id="photo" role="tabpanel" aria-labelledby="nav-profile-tab">
              <form method="post" action="uploadServlet" enctype="multipart/form-data" >
           
                <input type="hidden" name="uid" value="<%=uid%>"/>
                <br><br>
               Your Photo: <input type="file" name="photo" size="50"/ >
               
               <div style="height: 300px;width: 200px">
                       <img src=retrieveImg.jsp height="300px" width="200px">
               </div>
               
            <br><br>
                   <input class="btn btn-primary" type="submit" value="Update">
                   
        </form>
          </div>
        
        
        <!--Projects-->
        <div class="tab-pane fade" id="projects" role="tabpanel" aria-labelledby="projects-tab">
            <a href="viewProjects.jsp" type="button" class="btn btn-danger"> Load My Projects</a>
            <form method="post" action="projectLoader"><div class="form-group">
        <input type="hidden" name="uid" value="<%=uid%>"/>
                 Project Name
         <input type="text" name="pname" class="form-control" id="exampleInputPassword1" required>
        </div>
            <div class="form-group">
      Mentor
         <input type="text" name="mentor" class="form-control" id="exampleInputPassword1" >
        </div>
            <div class="form-group">
        Department <input type="text"  name="dept"  class="form-control" id="exampleInputPassword1" >
        </div>
            <div class="form-group">
        Description<input type="text" name="des" class="form-control"   placeholder="(max 250)" id="exampleInputPassword1" required>
        </div>
            <div class="form-group">
       From Date
         <input type="month" name="from" class="form-control" id="exampleInputPassword1" required>
        </div> <div class="form-group">
       To Date
        <input type="month" name="to" class="form-control" id="exampleInputPassword1" >
        </div>
              <div class="form-group">
      Project Link
         <input type="text" name="link" class="form-control" placeholder="https://myprojects.com/" id="exampleInputPassword1" required>
        </div>

                 <input type="submit" id=btnadd class="btn btn-primary">
         </form>
                 
        </div>
        <!--Experience-->
        <div class="tab-pane fade " id="experience" role="tabpanel" aria-labelledby="experience-tab">  
       
             <a href="viewExperience.jsp" type="button" class="btn btn-danger"> Load My Experience</a>
            <form method="post" action="experienceLoader" enctype="multipart/form-data">
                <div class="form-group">
        <input type="hidden" name="uid" value="<%=uid%>"/>
         <!--<input type="hidden" name="eid" value=""%>"/>-->
        
                  Company Name
         <input type="text" name="cname" class="form-control" id="exampleInputPassword1" required>
        </div>
            <div class="form-group">
     Technology Worked On:
         <input type="text" name="mentor" class="form-control" placeholder="e.g. Java,C,C++" id="exampleInputPassword1" required>
        </div>
            
            <div class="form-group">
        Description<input type="text" name="des" class="form-control" placeholder="(max 250)" id="exampleInputPassword1" required>
        </div>
            <div class="form-group">
       From Date
         <input type="date" name="from" class="form-control" id="exampleInputPassword1" required>
        </div> <div class="form-group">
       To Date
        <input type="date" name="to" class="form-control" id="exampleInputPassword1" >
        </div>
              <div class="form-group">
       Certificate
         <input type="file" name="certificate "class="form-control" id="exampleInputPassword1" >

                 <input type="submit" id=btnadd class="btn btn-primary">
         </form>
                 
        </div>
       
       
      
        </div>  
      </div>

    </div>
    <!-- </section> -->
</div>



  
     
 
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <div class="clear"></div>
  </main>
</div>
<!--footer-->
<div style="background-color: #4e7f19;line-height:100px;text-align: center;">  
   
      <p>Developed by Aditya & Neelam</p>    
  
</div>
<script>
function Validate()
	{
		
		var span= document.getElementById("error");
		var yoa = document.getElementById("yoa");
                var pemail = document.getElementById("pemail");
                var gender= document.getElementById("gender");
		var mob= document.getElementById("mob");
                var scgpa= document.getElementById("scgpa");
                var hcgpa= document.getElementById("hcgpa");
                var becgpa= document.getElementById("becgpa");
                 // if(becgpa.value>10 )
               // { span.innerHTML = "**Enter Correct CGPA";
               //       becgpa.focus(); return false;  }
              //  if(scgpa.value>10)
              //  { span.innerHTML = "**Enter Correct CGPA";
               //       scgpa.focus();
                   //  return false; 
               // } if(hcgpa.value >10){
             //     span.innerHTML = "**Enter Correct CGPA";
             //          hcgpa.focus();
              //       return false; 
              //  }
              //
		if(isNaN(mob.value)) { 
                     span.innerHTML = "**Enter Correct No.(min. length 10)";
                    mob.focus(); 
                    return false; 
                }             
                 if(yoa.value.length<4)
                 { span.innerHTML = "**Year of Addmission Can't be Empty";
                yoa.focus();  return false; 
                 }
                 if(pemail.value==="")
                 { span.innerHTML = "**Year of Addmission Can't be Empty";
                pemail.focus();  return false; 
                 }
                 if((pemail.value.indexOf("@", 0) < 0) ||   (pemail.value.indexOf(".", 0) < 0) )             
                     {   span.innerHTML = "Please enter a valid e-mail address.";pemail.focus(); 
                    return false; 
                    } 
                   
       return true;}

    </script>
 

<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>