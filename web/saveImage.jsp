<%@ page import="java.sql.*" %>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.io.output.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
   Connection conn=null;
   Class.forName("com.mysql.jdbc.Driver").newInstance();
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "myroot");

   PreparedStatement psImageInsertDatabase=null;

   byte[] b=null;
   try{
      String sqlImageInsertDatabase="insert into data (PHOTO) values(?) where uid=?";
      psImageInsertDatabase=conn.prepareStatement(sqlImageInsertDatabase);

      DiskFileItemFactory factory = new DiskFileItemFactory();

      ServletFileUpload sfu = new ServletFileUpload(factory);
      List items = sfu.parseRequest(request);

      Iterator iter = items.iterator();

      while (iter.hasNext()) {
         FileItem item = (FileItem) iter.next();
         if (!item.isFormField()) {
              b = item.get();
          }
      }
      int uid=(int)session.getAttribute("uid");
      psImageInsertDatabase.setBytes(1,b);
      psImageInsertDatabase.setInt(2,uid);
      psImageInsertDatabase.execute();
      response.sendRedirect("index.html");
   }
   catch(Exception e)
   {
     e.printStackTrace();
     
   }
   

%>