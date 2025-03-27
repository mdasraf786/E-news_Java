<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("Password"); // Ensure it matches the form input name

    // Check for admin credentials
    if ("asraflosted@gmail.com".equals(email) && "Najmin@@@786".equals(password)) {
        // Create session for admin
        session.setAttribute("admin", email); // Set the admin session attribute
        session.setAttribute("role", "admin"); // Optional: Add a role attribute to identify admin
        response.sendRedirect("adminindex.jsp"); // Redirect to admin dashboard
        return; // Stop further execution
    }

    // Database Connection
    String url = "jdbc:mysql://localhost:3306/enews";
    String dbUser = "root"; 
    String dbPassword = ""; 

    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(url, dbUser, dbPassword);

    String query = "SELECT * FROM registrationform WHERE email = ? AND password = ?";
    PreparedStatement ps = con.prepareStatement(query);
    ps.setString(1, email);
    ps.setString(2, password);

    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        // Create session and store user details
        session.setAttribute("user", email);
       
        session.setAttribute("profile_image", rs.getString("image")); // Store user image
        session.setAttribute("userEmail", rs.getString("email")); // Store user email
        session.setAttribute("fname", rs.getString("fname")); // Store user first name
        session.setAttribute("mname", rs.getString("mname")); // Store user middle name
        session.setAttribute("lname", rs.getString("lname")); // Store user last name
        session.setAttribute("dob", rs.getString("dob")); // Store user date of birth
        session.setAttribute("address", rs.getString("address")); // Store user address
        session.setAttribute("gender", rs.getString("gender")); // Store user gender
        session.setAttribute("contact", rs.getString("contact")); // Store user contact
        session.setAttribute("password", rs.getString("password")); // Store user password
        session.setAttribute("name", rs.getString("fname")); // Store user name
        session.setAttribute("user_id", rs.getString("id")); // Store user ID (primary key)
        
        response.sendRedirect("index_2.jsp"); // Redirect to home page
    } else {
        response.sendRedirect("login.jsp?message=Invalid email or password!");
    }

    rs.close();
    ps.close();
    con.close();
%>