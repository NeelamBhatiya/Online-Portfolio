
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
  <a class="active" href="home_home.jsp">Home</a>
  <a href="home_edit.jsp">Edit Portfolio</a>
  <a href="home_publish.jsp">Publish Setting</a>
 
</div>

<div class="content">
  <h2>Portfolio Id : <%=session.getAttribute("uid")%> </h2>
  
  <hr>
  <br>
  <a href="viewP.jsp" class="btn btn-lg btn-danger">View Portfolio</a>
  <a href="viewResume.jsp" class="btn btn-lg btn-primary">View Resume</a>
 

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