package com.enews.servlets;

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

@WebServlet("/UpdateUserNewsServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
                 maxFileSize = 1024 * 1024 * 50,      // 10MB
                 maxRequestSize = 1024 * 1024 * 100)   // 50MB
public class UpdateUserNewsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        // Declare fileName here so it's accessible throughout the method
        String fileName = null;
        
        // Try to get ID from both parameters and session
        String newsId = request.getParameter("id");
        if (newsId == null || newsId.trim().isEmpty()) {
            newsId = session.getAttribute("edit_news_id") != null ? 
                    session.getAttribute("edit_news_id").toString() : null;
        }

        if (newsId == null || newsId.trim().isEmpty()) {
            response.sendRedirect("useraddednews.jsp?message=No news selected for editing.");
            return;
        }

        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String date = request.getParameter("date");
        String like_count = request.getParameter("like_count");
        Part filePart = request.getPart("image");

        String url = "jdbc:mysql://localhost:3306/enews";
        String user = "root";
        String password = "";

        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            Class.forName("com.mysql.cj.jdbc.Driver");

            StringBuilder sql = new StringBuilder("UPDATE news SET ");
            boolean isUpdated = false;

            if (title != null && !title.trim().isEmpty()) {
                sql.append("Title = ?, ");
                isUpdated = true;
            }
            if (content != null && !content.trim().isEmpty()) {
                sql.append("content = ?, ");
                isUpdated = true;
            }
            if (name != null && !name.trim().isEmpty()) {
                sql.append("name = ?, ");
                isUpdated = true;
            }
            if (category != null && !category.trim().isEmpty()) {
                sql.append("category = ?, ");
                isUpdated = true;
            }
            if (date != null && !date.trim().isEmpty()) {
                sql.append("date = ?, ");
                isUpdated = true;
            }
            if (like_count != null && !like_count.trim().isEmpty()) {
                sql.append("like_count = ?, ");
                isUpdated = true;
            }
            if (filePart != null && filePart.getSize() > 0) {
                String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
                File uploadDir = new File(uploadPath);
                if (!uploadDir.exists()) uploadDir.mkdir();

                fileName = System.currentTimeMillis() + "_" + filePart.getSubmittedFileName();
                filePart.write(uploadPath + File.separator + fileName);
                sql.append("videos = ?, ");
                isUpdated = true;
            }

            if (!isUpdated) {
                response.sendRedirect("useraddednews.jsp?message=No changes detected.");
                return;
            }

            sql.delete(sql.length() - 2, sql.length()); // Remove the trailing comma
            sql.append(" WHERE id = ?");

            PreparedStatement stmt = conn.prepareStatement(sql.toString());
            int index = 1;
            if (title != null && !title.trim().isEmpty()) stmt.setString(index++, title);
            if (content != null && !content.trim().isEmpty()) stmt.setString(index++, content);
            if (name != null && !name.trim().isEmpty()) stmt.setString(index++, name);
            if (category != null && !category.trim().isEmpty()) stmt.setString(index++, category);
            if (date != null && !date.trim().isEmpty()) stmt.setString(index++, date);
            if (like_count != null && !like_count.trim().isEmpty()) stmt.setString(index++, like_count);
            if (filePart != null && filePart.getSize() > 0) stmt.setString(index++, "uploads/" + fileName);
            stmt.setInt(index, Integer.parseInt(newsId));

            int rowsUpdated = stmt.executeUpdate();
            if (rowsUpdated > 0) {
                response.sendRedirect("useraddednews.jsp?message=News updated successfully!");
            } else {
                response.sendRedirect("useraddednews.jsp?message=Failed to update news.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("useraddednews.jsp?message=Error: " + e.getMessage());
        }
    }
}