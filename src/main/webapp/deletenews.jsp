<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
// Check if the admin session exists
if (session.getAttribute("admin") == null) {
    response.sendRedirect("login.jsp?message=Please login as admin to access this page.");
    return;
}

// Get the news ID from the request parameter
String id = request.getParameter("id");
if (id == null || id.isEmpty()) {
    response.sendRedirect("addednews.jsp?message=Invalid news ID.");
    return;
}

// Database connection
String url = "jdbc:mysql://localhost:3306/enews";
String user = "root";
String password = "";
Connection con = null;
PreparedStatement pstmt = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(url, user, password);

    // Delete news
    String query = "DELETE FROM news WHERE id = ?";
    pstmt = con.prepareStatement(query);
    pstmt.setInt(1, Integer.parseInt(id));
    pstmt.executeUpdate();

    response.sendRedirect("addednews.jsp?message=News deleted successfully.");
} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("addednews.jsp?message=Error deleting news.");
} finally {
    if (pstmt != null) pstmt.close();
    if (con != null) con.close();
}
%>