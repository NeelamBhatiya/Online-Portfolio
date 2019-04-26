
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/projectLoader")
//@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServlet1 extends HttpServlet {
     
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/test";
    private String dbUser = "root";
    private String dbPass = "myroot";
     
    @Override
        protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
      
        
         int uid=Integer.valueOf(request.getParameter("uid"));
         String pname=request.getParameter("pname");
         String mentor=request.getParameter("mentor");
         String dept=request.getParameter("dept");
         String des=request.getParameter("des");
         String from=request.getParameter("from");
         String to=request.getParameter("to");
         String link=request.getParameter("link");
        
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "INSERT INTO project values (?, ?, ?, ?, ?, ?, ?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, uid);
            
           
                // fetches input stream of the upload file for the blob column
                statement.setString(2, pname);
                statement.setString(3, mentor);
                statement.setString(4, dept);
                statement.setString(5, des);
                statement.setString(6, from);
                statement.setString(7, to);
                statement.setString(8, link);
            
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
    }
}