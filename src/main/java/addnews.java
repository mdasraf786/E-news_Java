import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/addnews")
@MultipartConfig(maxFileSize = 1024 * 1024 * 50) // 50MB limit for file uploads
public class addnews extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public addnews() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        // Check if the user is logged in
        if (session.getAttribute("user") != null) {
        	 // Retrieve form data
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            String author = request.getParameter("author");
            String category = request.getParameter("category");
            String otherCategory = request.getParameter("other_category");

            // Validate if required fields are filled
            if (title == null || title.trim().isEmpty() ||
                content == null || content.trim().isEmpty() ||
                author == null || author.trim().isEmpty() ||
                category == null || category.trim().isEmpty()) {
                // Redirect back to the form with an error message
                response.sendRedirect("addnews.jsp?message=Please fill out all required fields.");
                return;
            }
        	 // If "Other" category is selected, use the custom category input
            if ("Other".equals(category) && otherCategory != null && !otherCategory.trim().isEmpty()) {
                category = otherCategory;
            }

            // Get the current date
            String currentDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());

            // Handling file upload
            Part filePart = request.getPart("image");
            String imageFileName = filePart.getSubmittedFileName();

            // Validate if an image file is uploaded
            if (imageFileName == null || imageFileName.trim().isEmpty()) {
                response.sendRedirect("addnews.jsp?message=Please upload an image.");
                return;
            }

            String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";

            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String imagePath = uploadPath + File.separator + imageFileName;
            filePart.write(imagePath);

            // Database connection details
            String url = "jdbc:mysql://localhost:3306/enews";
            String user = "root";
            String pass = "";

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(url, user, pass);

                // Insert query
                String sql = "INSERT INTO news (Title, content, name, videos, category, date) VALUES (?, ?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, title);
                stmt.setString(2, content);
                stmt.setString(3, author);
                stmt.setString(4, "uploads/" + imageFileName);
                stmt.setString(5, category);
                stmt.setString(6, currentDate);

                int rowsInserted = stmt.executeUpdate();
                conn.close();

                // Redirect based on result
                if (rowsInserted > 0) {
                    response.sendRedirect("news.jsp?message=News Is Added! You can Check now.");
                } else {
                    response.sendRedirect("news.jsp?message=Uploading News failed. Please try again.");
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("news.jsp?message=Error: " + e.getMessage());
            }

           
        }

       else {
    	   
        	        }
       
    }
}