
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
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: translateX(26px);
  -ms-transform: translateX(26px);
  transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
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
<!--   <section id="pageintro" style="color: white"> -->
    <div class="container"style="background-color: white;color:black; height:90%;">

    	<div class="sidebar">
  <a  href="home_home.jsp">Home</a>
  <a href="home_edit.jsp">Edit Portfolio</a>
  <a class="active" href="home_publish.jsp">Publish Setting</a>
  
</div>

<div class="content">
    <h4><font color="blue">User Name</font> : <%=session.getAttribute("uid")%></h4>
    <br>
    <h4>
        <font color="password">Password</font>: your Enrollment No.</h4>
    <hr>
    
    <form action="changepass.jsp">
        <br>
      <h3>Change Account Password</h3><br>
      <h6>Enter New Password</h6>
      <input type="text" name="pass"><br>
      <input type="submit" onclick=confirm() class="btn btn-success" value="Change Now">

    </form>
      </div>
    <hr>
    <hr>
    <script>
        function confirm()
        {
            alert('Password Changed Succesfully');
            
        }
        </script>
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