package com.enews.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/UpdateNewsServlet")
public class UpdateNewsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("admin") == null) {
            response.sendRedirect("login.jsp?message=Please login as admin to access this page.");
            return;
        }

        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String name = request.getParameter("name");
        String content = request.getParameter("content");
        String category = request.getParameter("category");
        String date = request.getParameter("date");
        String likeCount = request.getParameter("like_count");
        String image = request.getParameter("image");

        String url = "jdbc:mysql://localhost:3306/enews";
        String user = "root";
        String password = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, password);

            String query = "UPDATE news SET Title = ?, name = ?, content = ?, category = ?, date = ?, like_count = ?, videos = ? WHERE id = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, title);
            pstmt.setString(2, name);
            pstmt.setString(3, content);
            pstmt.setString(4, category);
            pstmt.setString(5, date);
            pstmt.setInt(6, Integer.parseInt(likeCount));
            pstmt.setString(7, image);
            pstmt.setInt(8, Integer.parseInt(id));
            pstmt.executeUpdate();

            response.sendRedirect("addednews.jsp?message=News updated successfully.");

            pstmt.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("addednews.jsp?message=Error updating news.");
        }
    }
}