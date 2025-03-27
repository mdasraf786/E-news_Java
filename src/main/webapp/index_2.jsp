<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet, java.util.ArrayList, java.util.List" %>
	
		<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement" %>
		<%@ page import="java.sql.*, java.io.*, jakarta.servlet.http.*, jakarta.servlet.*" %>
		<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

<!-- title -->
<title>E-news</title>

<!-- favicon -->
<link rel="shortcut icon" type="image/png" href="assets/img/A3.png">
<!-- google font -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap"
	rel="stylesheet">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- fontawesome -->
<link rel="stylesheet" href="assets/css/all.min.css">
<!-- bootstrap -->
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<!-- owl carousel -->
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<!-- magnific popup -->
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<!-- animate css -->
<link rel="stylesheet" href="assets/css/animate.css">
<!-- mean menu css -->
<link rel="stylesheet" href="assets/css/meanmenu.min.css">
<!-- main style -->
<link rel="stylesheet" href="assets/css/main.css">
<!-- responsive -->
<link rel="stylesheet" href="assets/css/responsive.css">

<style>


.alert {
    margin: 20px auto;
    max-width: 600px;
    text-align: center;
}
    .liked i {
    color: orange;
}
 /* Custom styles for the alert box */
        .alert {
            margin: 20px auto;
            max-width: 600px;
            text-align: center;
        }
/* Logo Styling */
.site-logo a h5 {
	margin-top: 15px;
}

/* Orange Color for "E" */
.text-orange {
	color: #ff6600; /* Orange color */
	font-weight: bold; /* Makes the text bold */
}

/* Profile Menu */
.profile-menu {
	position: relative;
	display: inline-block;
}

/* Dropdown Menu */
.profile-menu .sub-menu {
	display: none;
	position: absolute;
	top: 100%;
	right: 0;
	background: #fff !important; /* Ensure white background */
	list-style: none;
	padding: 10px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
	min-width: 150px;
	z-index: 1000;
}

/* Show dropdown on hover */
.profile-menu:hover .sub-menu {
	display: block;
}

/* Dropdown items */
.profile-menu .sub-menu li {
	padding: 5px 10px;
}

/* Dropdown links */
.profile-menu .sub-menu li a {
	text-decoration: none;
	color: #000 !important; /* Ensure black text */
	display: block;
	font-weight: 600;
}

/* Hover effect */
.profile-menu .sub-menu li a:hover {
	color: #ff6600;
}

/* Mobile Styles */
@media ( max-width : 991px) {
	.profile-menu .sub-menu {
		position: absolute !important; /* Keep dropdown positioning */
		background: #fff !important; /* Ensure white background */
		width: auto;
		right: 0;
	}
	.profile-menu .sub-menu li a {
		color: #000 !important; /* Ensure black text */
	}
}

.action-btn {
	text-decoration: none;
	color: #333;
	font-weight: bold;
	padding: 4px 10px;
	border-radius: 5px;
	transition: 0.3s;
}

.action-btn:hover {
	background: #f0f0f0;
}

.read-more-btn {
	margin-left: auto;
}

.separator-line {
	width: 100%;
	height: 1px;
	background-color: rgba(0, 0, 0, 0.2);
	margin-bottom: 10px;
}

.news-actions {
	display: flex;
	align-items: center;
	gap: 10px; /* Ensures proper spacing */
}

.vertical-separator {
	width: 1px;
	height: 25px; /* Increased for better visibility */
	background-color: rgba(0, 0, 0, 0.5);
}
y


:

 

inline-block


; /* Ensures it behaves as a visible block */
}
</style>

</head>
<body>

	<!--PreLoader-->
	<div class="loader">
		<div class="loader-inner">
			<div class="circle"></div>
		</div>
	</div>
	<!--PreLoader Ends-->

	<!-- header -->
	<div class="top-header-area" id="sticker">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo">
							<a href="index.jsp">
								<h5 class="text-light">
									<span class="text-orange">E</span>-News
								</h5>
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li class="current-list-item"><a href="index_2.jsp">Home</a></li>
								<li><a href="about.jsp">About</a></li>

							<li class="profile-menu">
    <div class="header-icons">
        <a class="shopping-cart" href="news.jsp">News</a>
        <ul class="sub-menu">
            <%
                // Database connection details
                String urll = "jdbc:mysql://localhost:3306/enews";
                String userr = "root";
                String passwordd = "";

                // Query to fetch unique categories
                String query = "SELECT DISTINCT category FROM news";

                try {
                    // Load the JDBC driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Establish the database connection
                    Connection conn = DriverManager.getConnection(urll, userr, passwordd);

                    // Create a statement
                    Statement stmt = conn.createStatement();

                    // Execute the query
                    ResultSet rs = stmt.executeQuery(query);

                    // Loop through the result set and generate <li> elements
                    while (rs.next()) {
                        String category = rs.getString("category");
            %>
                        <li><a href="news.jsp?category=<%= category %>"><%= category %></a></li>
            <%
                    }

                    // Close the database resources
                    rs.close();
                    stmt.close();
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
           
        </ul>
    </div>
</li>
								<li><a href="contact.jsp">Contact</a></li>

								<li class="profile-menu">
    <div class="header-icons">
        <%
        String userEmail = (String) session.getAttribute("user");
        String profileImage = (String) session.getAttribute("profile_image");

        if (userEmail != null && profileImage != null && !profileImage.isEmpty()) { 
        %>
            <a class="shopping-cart" href="#">
                <img src="<%= profileImage %>" alt="Profile" style="width: 40px; height: 40px; border-radius: 50%;">
            </a>
        <% } else { %>
            <a class="shopping-cart" href="#"><i class="fas fa-user"></i></a>
        <% } %>

        <ul class="sub-menu">
            <% if (userEmail == null) { %>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="registrationform.jsp">Register</a></li>
            <% } else { %>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            <% } %>
            <li><a href="adminindex.jsp">Admin</a></li>
        </ul>
    </div>
</li>

							</ul>
						</nav>
						<a class="mobile-show search-bar-icon" href="#"><i
							class="fas fa-profile"></i></a>
						<div class="mobile-menu"></div>
						<!-- menu end -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end header -->


 <%
    String messagee = request.getParameter("messagee");
    if (messagee != null) { 
    %>
        <div id="alertBox" class="alert alert-warning alert-dismissible fade show text-center" role="alert" 
             style="background-color: orange; color: white; font-weight: bold;">
            <strong><%= messagee %></strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    <% } %>

	<div class="homepage-slider">
    <!-- First slide with Video Background -->
    <div class="single-homepage-slider video-slide">
        <video autoplay muted loop class="background-video">
            <source src="assets/img/v1.mp4" type="video/mp4">
           Your browser does not support the video tag.
        </video>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-7 offset-lg-1 offset-xl-0">
                    <div class="hero-text">
                        <div class="hero-text-tablecell">
                            <p class="subtitle">Top Stories</p>
                            <h1>Stay Updated with the Latest News</h1>
                            <div class="hero-btns">
                                <a href="shop.html" class="boxed-btn">Live Updates</a>
                                <a href="contact.jsp" class="bordered-btn">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Second slide with Image Background -->
    <div class="single-homepage-slider" style="background-image: url('assets/img/c1.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 offset-lg-2 text-center">
                    <div class="hero-text">
                        <div class="hero-text-tablecell">
                            <p class="subtitle">Breaking News</p>
                            <h1>Latest Updates and Headlines</h1>
                            <div class="hero-btns">
                                <a href="news.jsp" class="boxed-btn">News Collection</a>
                                <a href="contact.jsp" class="bordered-btn">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Third slide with Image Background -->
    <div class="single-homepage-slider" style="background-image: url('assets/img/c2.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1 text-right">
                    <div class="hero-text">
                        <div class="hero-text-tablecell">
                            <p class="subtitle">You Can Share</p>
                            <h1>Interesting News Around You</h1>
                            <div class="hero-btns">
                                <a href="shop.html" class="boxed-btn">Write News</a>
                                <a href="contact.jsp" class="bordered-btn">Contact Us</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

	<!-- features list section -->
	<div class="list-section pt-80 pb-80">
		<div class="container">

			<div class="row">
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<div class="list-box d-flex align-items-center">
						<div class="list-icon">
							<i class="fas fa-newspaper"></i>
						</div>
						<div class="content">
							<h3>Latest News</h3>
							<p>Stay updated with real-time headlines.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<div class="list-box d-flex align-items-center">
						<div class="list-icon">
							<i class="fas fa-clock"></i>
						</div>
						<div class="content">
							<h3>24/7 Coverage</h3>
							<p>News anytime, anywhere.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div
						class="list-box d-flex justify-content-start align-items-center">
						<div class="list-icon">
							<i class="fas fa-share-alt"></i>
						</div>
						<div class="content">
							<h3>Share Stories</h3>
							<p>Easily share news with your network.</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- end features list section -->

	<%
	 // Database connection details
    String urlll = "jdbc:mysql://localhost:3306/enews";
    String userrr = "root";
    String passworddd = "";

    // Retrieve user ID from session
    String userId = (String) session.getAttribute("user_id");

    // Retrieve category filter from request
    String categoryFilter = request.getParameter("category");

    // Base query to fetch news items with like and comment counts
    String queryy = "SELECT news.*, " +
                    "  (SELECT COUNT(*) FROM likes WHERE news_id = news.id) AS like_count, " +
                    "  (SELECT COUNT(*) FROM comments WHERE news_id = news.id) AS comment_count, " +
                    "  EXISTS (SELECT 1 FROM likes WHERE user_id = ? AND news_id = news.id) AS liked " +
                    "FROM news";

    if (categoryFilter != null && !categoryFilter.isEmpty()) {
        queryy += " WHERE category = ?";
    }

    queryy += " ORDER BY date DESC"; // Order by latest news

    try {
        // Load JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish connection
        Connection conn = DriverManager.getConnection(urlll, userrr, passworddd);

        // Prepare statement
        PreparedStatement stmt = conn.prepareStatement(queryy);

        // Set parameters
        stmt.setString(1, userId);
        if (categoryFilter != null && !categoryFilter.isEmpty()) {
            stmt.setString(2, categoryFilter);
        }

        // Execute query
        ResultSet rs = stmt.executeQuery();
%>

<!-- Latest News Section -->
<div class="latest-news pt-150 pb-50">
    <div class="container">
        <div class="input-group mb-5">
            <input type="text" class="form-control" placeholder="Search by text (or select a date below)">
            <span class="mx-2">OR</span>
            <input type="date" class="form-control">
            <button class="btn btn-outline-secondary" type="button">Search</button>
        </div>

        <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
                <div class="section-title">
                    <h3><span class="orange-text">Our</span> News</h3>
                    <p>Stay updated with the latest news and updates.</p>
                </div>
            </div>
        </div>

        <div class="row">
            <%
                while (rs.next()) {
                    String title = rs.getString("Title");
                    String content = rs.getString("content");
                    String author = rs.getString("name");
                    String image = rs.getString("videos");
                    String category = rs.getString("category");
                    String date = rs.getString("date");
                    int likeCount = rs.getInt("like_count");
                    boolean liked = rs.getInt("liked") > 0;
                    int comment_count = rs.getInt("comment_count");
            %>
            <div class="col-lg-4 col-md-6">
                <div class="single-latest-news">
                    <a href="single-news.jsp?id=<%= rs.getInt("id") %>">
                        <img src="<%= image %>" alt="<%= title %>" class="news-image">
                    </a>
                    <div class="news-text-box">
                        <h3><a href="single-news.jsp?id=<%= rs.getInt("id") %>"><%= title %></a></h3>
                        <p class="blog-meta">
                            <span class="author"><i class="fas fa-user"></i> <%= author %></span>
                            <span class="date"><i class="fas fa-calendar"></i> <%= date %></span>
                        </p>
                        <p class="excerpt"><%= content.length() > 100 ? content.substring(0, 100) + "..." : content %></p>
                        <div class="separator-line"></div>
                        <div class="news-actions">
                            <a href="#" class="action-btn like-btn" data-newsid="<%= rs.getInt("id") %>">
                                <i class="fas fa-thumbs-up" style="color: <%= liked ? "orange" : "gray" %>"></i>
                                <span class="like-count"><%= likeCount %></span>
                            </a>
                            <div class="vertical-separator"></div>
 <!-- Comment Button -->
                <a href="single-news.jsp?id=<%= rs.getInt("id") %>" class="action-btn">
                    <i class="fas fa-comment"></i> <span class="comment-count"><%= comment_count %></span>
                </a>                            <div class="vertical-separator"></div>
                            <a href="#" class="action-btn"><i class="fas fa-share"></i> Share</a>
                            <div class="vertical-separator"></div>
                            <a href="single-news.jsp?id=<%= rs.getInt("id") %>" class="action-btn"><i class="fas fa-book-open"></i> Read</a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
                rs.close();
                stmt.close();
                conn.close();
            %>
        </div>
        <div class="row">
            <div class="col-lg-12 text-center">
                <a href="news.jsp" class="boxed-btn">More News</a>
            </div>
        </div>
        <br><br>
    </div>
</div>

<%
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p class='text-danger'>Error fetching news items. Please try again later.</p>");
    }
%>



	<!-- news banner section -->
	<section class="news-banner pt-100 pb-50">
		<div class="container">
			<div class="row clearfix align-items-center">
				<!--Image Column-->
				<div class="image-column col-lg-6 d-flex align-items-stretch">
					<div class="image w-100">
						<div class="breaking-news-box">
							<div class="inner-news">
								<span class="headline"> <strong>Breaking:</strong> Major
									Event Unfolding
								</span>
							</div>
						</div>
						<img src="assets/img/media/n3.jpg" alt="Breaking News"
							class="img-fluid h-100 w-100 object-fit-cover">
					</div>
				</div>
				<!--Content Column-->
				<div class="content-column col-lg-6 d-flex align-items-stretch">
					<div
						class="content-box d-flex flex-column justify-content-center w-100">
						<h3>
							<span class="orange-text">Highlight</span> of the Day
						</h3>
						<h4>Top Story: Global Headlines</h4>
						<div class="text">Stay informed with in-depth reporting on
							the latest developments happening around the world. From politics
							to technology, we've got you covered with verified news stories.
						</div>
						<!--Countdown Timer-->
						<div class="time-counter mt-4">
    <div id="calendar-time" class="time-countdown clearfix">
        <div class="counter-column">
            <div class="inner">
                <span id="year" class="count">0000</span> Year
            </div>
        </div>
        <div class="counter-column">
            <div class="inner">
                <span id="month" class="count">00</span> Month
            </div>
        </div>
        <div class="counter-column">
            <div class="inner">
                <span id="day" class="count">00</span> Day
            </div>
        </div>
        <div class="counter-column">
            <div class="inner">
                <span id="hours" class="count">00</span> Hours
            </div>
        </div>
        <div class="counter-column">
            <div class="inner">
                <span id="minutes" class="count">00</span> Mins
            </div>
        </div>
        <div class="counter-column">
            <div class="inner">
                <span id="seconds" class="count">00</span> Secs
            </div>
        </div>
    </div>
</div>
						<a href="news.jsp" class="news-btn mt-4 align-self-start"><i
							class="fas fa-book-open"></i> Read More</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end news banner section -->

	<!-- featured video section -->
	<div class="featured-section mb-150">
		<div class="container">
			<div class="row">
				<!-- Video Section -->
				<div class="col-lg-6 col-md-12">
					<div class="video-bg">
						<a href="https://youtube.com/@abcnews?si=oN10zWbbEgAHD3O7"
							class="video-play-btn popup-youtube"> <i class="fas fa-play"></i>
						</a>
					</div>
				</div>
				<!-- Text Content Section -->
				<div class="col-lg-6 col-md-12">
					<div class="featured-text">
						<p class="top-sub">Since 1999</p>
						<h2>
							Your Trusted <span class="orange-text">News Source</span>
						</h2>
						<p>Stay informed with reliable, unbiased reporting. From
							breaking news to in-depth analysis, we cover stories that matter
							most to you. Explore global and local events with context and
							clarity.</p>
						<p>Our mission is to deliver news that informs, educates, and
							empowers the community. Join millions who trust us for daily
							updates, insights, and storytelling.</p>
						<a href="about.jsp" class="boxed-btn mt-4">Learn More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end featured video section -->

	
			 <!-- Testimonial Section -->
    <div class="testimonail-section mt-150 mb-150">
        <div class="container">
            <!-- Heading -->
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-title">
                        User <span class="orange-text">Reviews</span> Around the World
                    </h2>
                    <p class="section-subtitle">Hear what our customers have to say about their experiences.</p>
                </div>
            </div>
            <!-- Testimonial Sliders -->
            <div class="row mt-4">
                <div class="col-lg-10 offset-lg-1 text-center">
                    <div class="testimonial-sliders">
                        <%
                        // Database connection details
                        String url = "jdbc:mysql://localhost:3306/enews";
                        String user = "root";
                        String pass = "";

                       

                        try {
                            // Load the MySQL JDBC driver
                            Class.forName("com.mysql.cj.jdbc.Driver");

                            // Connect to the database
                            Connection conn = DriverManager.getConnection(url, user, pass);

                            // Fetch all reviews from the database
                            String sql = "SELECT name, profession, review, pic FROM review";
                            PreparedStatement stmt = conn.prepareStatement(sql);
                            ResultSet rs = stmt.executeQuery();

                            // Loop through the result set and add reviews to the list
                            while (rs.next()) {
                            
                            	String name = rs.getString("name");
                                String profession = rs.getString("profession");
                                String review = rs.getString("review");
                                String image = rs.getString("pic"); // Assuming 'videos' column stores image paths
                              
                           
                      
                        %>
                                <div class="single-testimonial-slider">
                                    <div class="client-avater">
                                        <img src="<%= image %>" alt="" class="news-image">
                                    </div>
                                    <div class="client-meta">
                                        <h3>
                                            <%=profession %> <span><%= profession %></span>
                                        </h3>
                                        <p class="testimonial-body orange-text">"<%= review%>"</p>
                                        <div class="last-icon">
                                            <i class="fas fa-quote-right"></i>
                                        </div>
                                    </div>
                                </div>
                        <%
                            }

                            // Close the database connection
                            conn.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }

                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Testimonial Section -->

	 <%
    String message = request.getParameter("message");
    if (message != null) { 
    %>
        <div id="alertBox" class="alert alert-warning alert-dismissible fade show text-center" role="alert" 
             style="background-color: orange; color: white; font-weight: bold;">
            <strong><%= message %></strong>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    <% } %>

<section class="review-section py-5" style="background-color: #f8f9fa;">
    <div class="container">
        <h2 class="text-center text-dark mb-4">
            Share Your <span class="orange-text">Review</span>
        </h2>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form action="review" method="post" enctype="multipart/form-data" class="bg-white p-4 rounded shadow-sm" onsubmit="return validateForm()">
        <!-- Review Textarea -->
        <div class="form-group mb-4">
            <label for="review" class="font-weight-bold text-dark">Your Review</label>
            <textarea name="review" class="form-control border-light" style="padding: 25px;" placeholder="Write your review here..." rows="5" maxlength="500" id="review" required></textarea>
        </div>

        <!-- Name, Profession, and Image Upload -->
        <div class="row">
            <!-- Name -->
            <div class="col-md-4 mb-3">
                <div class="form-group">
                    <label for="cname" class="font-weight-bold text-dark">Your Name</label>
                    <input type="text" class="form-control border-light" style="padding: 20px;" placeholder="Enter your name" name="name" id="cname" required>
                </div>
            </div>

            <!-- Profession -->
            <div class="col-md-4 mb-3">
                <div class="form-group">
                    <label for="profession" class="font-weight-bold text-dark">Your Profession</label>
                    <input type="text" class="form-control border-light" style="padding: 20px;" placeholder="Enter your profession" name="profession" id="profession" required>
                </div>
            </div>

            <!-- Image Upload -->
            <div class="col-md-4 mb-3">
                <div class="form-group">
                    <label for="image" class="font-weight-bold text-dark">Upload Your Picture</label>
                    <input type="file" name="pic" class="form-control border-light text-center" id="image" required>
                </div>
            </div>
        </div>

        <!-- Submit Button -->
        <div class="text-center">
            <button type="submit" class="btn btn-orange px-4 py-2 rounded">Submit Review</button>
        </div>
    </form>

            </div>
        </div>
    </div>
</section>







	<!-- media partners carousel -->
	<div class="media-partners-carousel">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="logo-carousel-inner">
						<div class="single-logo-item">
							<img src="assets/img/media/news8.png" alt="Media Partner 1">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/media/news2.png" alt="Media Partner 2">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/media/news3.png" alt="Media Partner 3">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/media/news6.png" alt="Media Partner 4">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/media/news7.png" alt="Media Partner 5">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end media partners carousel -->


	<!-- footer -->
	<div class="footer-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer-box about-widget">
						<h2 class="widget-title">About Us</h2>
						<p>We aim to provide high-quality services with integrity and
							dedication, ensuring satisfaction for all our clients and
							partners.</p>


					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box get-in-touch">
						<h2 class="widget-title">Get in Touch</h2>
						<ul>
							<li>36020, Katurbadam, Rajkot, Gujarat.</li>
							<li>support@enews.com</li>
							<li>+00 111 222 3333</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box pages">
						<h2 class="widget-title">Pages</h2>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="about.jsp">About</a></li>
							<li><a href="news.jsp">News</a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="footer-box subscribe">
						<h2 class="widget-title">Subscribe</h2>
						<p>Subscribe to our mailing list to get the latest updates.</p>
						<form action="index.html">
							<input type="email" placeholder="Email">
							<button type="submit">
								<i class="fas fa-paper-plane"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end footer -->

<script>

document.querySelectorAll(".like-btn").forEach(button => {
    button.addEventListener("click", function(event) {
        event.preventDefault();
        let newsId = this.getAttribute("data-newsid");
        let likeIcon = this.querySelector("i");
        let likeCount = this.querySelector(".like-count");

        fetch("like_news.jsp?id=" + newsId)
            .then(response => response.json())
            .then(data => {
                if (data.redirect) {
                    window.location.href = "login.jsp"; // Redirect if not logged in
                } else {
                    likeCount.textContent = data.likes;
                    likeIcon.style.color = data.liked ? "orange" : "gray";
                }
            })
            .catch(error => console.error("Error:", error));
    });
});

function isUserLoggedIn() {
    // Replace this with your actual logic to check if the user is logged in
    // For example, you can check if a session or token exists in localStorage
    const userLoggedIn = localStorage.getItem("userLoggedIn"); // Example
    return userLoggedIn === "true"; // Adjust based on your logic
}

// Function to redirect to the login page
function redirectToLogin() {
    window.location.href = "login.jsp?message=Please login to submit a review or upload a picture.";
}

// Function to validate the form and check login status
function validateForm() {
    if (!isUserLoggedIn()) {
        redirectToLogin();
        return false; // Prevent form submission
    }
    return true; // Allow form submission
}

// Add event listener to the file input
document.getElementById("image").addEventListener("change", function () {
    if (!isUserLoggedIn()) {
        redirectToLogin();
        this.value = ""; // Clear the file input
    }
});

// Add event listener to the form submission
document.querySelector("form").addEventListener("submit", function (event) {
    if (!isUserLoggedIn()) {
        event.preventDefault(); // Prevent form submission
        redirectToLogin();
    }
});
    function updateTime() {
        const now = new Date();
        document.getElementById("year").innerText = now.getFullYear();
        document.getElementById("month").innerText = ("0" + (now.getMonth() + 1)).slice(-2); // Months start from 0
        document.getElementById("day").innerText = ("0" + now.getDate()).slice(-2);
        document.getElementById("hours").innerText = ("0" + now.getHours()).slice(-2);
        document.getElementById("minutes").innerText = ("0" + now.getMinutes()).slice(-2);
        document.getElementById("seconds").innerText = ("0" + now.getSeconds()).slice(-2);
    }

    setInterval(updateTime, 1000); // Update every second
    updateTime(); // Initial call
</script>
	<!-- jquery -->
	<script src="assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="assets/js/main.js"></script>

</body>
</html>