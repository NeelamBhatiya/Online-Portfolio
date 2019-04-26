<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<% 
//    int uid=(int)session.getAttribute("uid");

int uid=(int)session.getAttribute("uid");
String connectionURL = "jdbc:mysql://localhost:3306/test";

ResultSet rs = null;

PreparedStatement ps = null;
Connection connection=null ;
InputStream sImage;
try {

Class.forName("com.mysql.jdbc.Driver").newInstance();

 connection = DriverManager.getConnection(connectionURL, "root", "myroot");
/* prepareStatement() is used for create statement object that is 
used for sending sql statements to the specified database. */
ps = connection.prepareStatement("SELECT photo FROM images WHERE uid = ?");
ps.setInt(1, uid); 
rs = ps.executeQuery();
while(rs.next()) {
byte[] bytearray = new byte[1048576];
int size=0;
sImage = rs.getBinaryStream(1);
//response.reset();
response.setContentType("image/jpeg");
while((size=sImage.read(bytearray))!= -1 ){
OutputStream o =response.getOutputStream();
o.write(bytearray,0,size);
//= response.getOutputStream();
//o.write(imgData);
o.flush();
o.close();
}
}
}
catch(Exception ex){
out.println("error :"+ex);
}
finally {
// close all the connections.
rs.close();
ps.close();
connection.close();
}
%>