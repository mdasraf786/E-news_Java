<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>E-news</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
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
    .profile-menu {
        position: relative;
        display: flex;
        align-items: center;
        gap: 15px;
    }
    .profile-menu .sub-menu {
        display: none;
        position: absolute;
        top: 100%;
        right: 0;
        background: #fff;
        list-style: none;
        padding: 10px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }
    .profile-menu:hover .sub-menu {
        display: block;
    }
    .profile-menu .sub-menu li {
        padding: 5px 10px;
    }
    .profile-icon {
        font-size: 15px;
    }
     .news-actions {
    display: flex;
    gap: 10px;
    margin-top: 10px;
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
    width: 5px;
    height: 25px; /* Increased for better visibility */
    background-color: rgba(0, 0, 0, 0.5);
}y: inline-block; /* Ensures it behaves as a visible block */
}

.top-header-area {
     margin-left:100px;
}



.site-logo img {
    height: 80px; /* Adjust the logo size */
  /* Add spacing if needed */
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
		
		<%@ include file="header.jsp" %>
		
		<!-- search area -->
		<div class="search-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<span class="close-btn"><i class="fas fa-window-close"></i></span>
						<div class="search-bar">
							<div class="search-bar-tablecell">
								<h3>Search For:</h3>
								<input type="text" placeholder="Keywords">
								<button type="submit">Search <i class="fas fa-search"></i></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end search area -->

	<!-- hero area -->
		<div class="hero-area hero-bg">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 offset-lg-2 text-center">
						<div class="hero-text">
							<div class="hero-text-tablecell">
								<p class="subtitle">Breaking News</p>
	<h1>Latest Updates and Headlines</h1>
								<div class="hero-btns">
									<a href="news.html" class="boxed-btn">News Collection</a>
									<a href="contact.jsp" class="bordered-btn">Contact Us</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end hero area -->
	
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
					<div class="list-box d-flex justify-content-start align-items-center">
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
	
	
		
	
	<!-- news banner section -->
	<section class="news-banner pt-100 pb-50">
	    <div class="container">
	        <div class="row clearfix align-items-center">
	            <!--Image Column-->
	            <div class="image-column col-lg-6 d-flex align-items-stretch">
	                <div class="image w-100">
	                    <div class="breaking-news-box">
	                        <div class="inner-news">
	                            <span class="headline">
	                                <strong>Breaking:</strong> Major Event Unfolding
	                            </span>
	                        </div>
	                    </div>
	                    <img src="assets/img/media/n3.jpg" alt="Breaking News" class="img-fluid h-100 w-100 object-fit-cover">
	                </div>
	            </div>
	            <!--Content Column-->
	            <div class="content-column col-lg-6 d-flex align-items-stretch">
	                <div class="content-box d-flex flex-column justify-content-center w-100">
	                    <h3><span class="orange-text">Highlight</span> of the Day</h3>
	                    <h4>Top Story: Global Headlines</h4>
	                    <div class="text">
	                        Stay informed with in-depth reporting on the latest developments happening around the world. From politics to technology, we've got you covered with verified news stories.
	                    </div>
	                    <!--Countdown Timer-->
	                    <div class="time-counter mt-4">
	                        <div class="time-countdown clearfix" data-countdown="2025/12/31">
	                            <div class="counter-column">
	                                <div class="inner"><span class="count">00</span>Days</div>
	                            </div>
	                            <div class="counter-column">
	                                <div class="inner"><span class="count">00</span>Hours</div>
	                            </div>
	                            <div class="counter-column">
	                                <div class="inner"><span class="count">00</span>Mins</div>
	                            </div>
	                            <div class="counter-column">
	                                <div class="inner"><span class="count">00</span>Secs</div>
	                            </div>
	                        </div>
	                    </div>
	                    <a href="news.html" class="news-btn mt-4 align-self-start"><i class="fas fa-book-open"></i> Read More</a>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	<!-- end news banner section -->
	
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
					<div class="list-box d-flex justify-content-start align-items-center">
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
	
	<!-- latest news -->
	<div class="latest-news pt-150 pb-50">
	    <div class="container">
	
	        <div class="row">
	            <div class="col-lg-8 offset-lg-2 text-center">
	                <div class="section-title">    
	                    <h3><span class="orange-text">Our</span> News</h3>
	                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, fuga quas itaque eveniet beatae optio.</p>
	                </div>
	                  
	            </div>
	        </div>
	
	        <div class="row">
	            <div class="col-lg-4 col-md-6">
	                <div class="single-latest-news">
	                    <!-- Replace the background div with an img tag -->
	                    <a href="single-news.jsp">
	                        <img src="assets/img/latest-news/ns1.jpg" alt="News Image 1" class="news-image">
	                    </a>
	                    <div class="news-text-box">
	                        <h3><a href="single-news.jsp">You will vainly look for fruit on it in autumn.</a></h3>
	                        <p class="blog-meta">
	                            <span class="author"><i class="fas fa-user"></i> Admin</span>
	                            <span class="date"><i class="fas fa-calendar"></i> 27 December, 2019</span>
	                        </p>
	                        <p class="excerpt">Vivamus lacus enim, pulvinar vel nulla sed, scelerisque rhoncus nisi. Praesent vitae mattis nunc, egestas viverra eros.</p>
	                      <div class="separator-line"></div> <!-- Horizontal separator -->
<div class="news-actions">
    <a href="#" class="action-btn"><i class="fas fa-thumbs-up"></i> Like</a>
    <div class="vertical-separator"></div> 
    <a href="single-news.jsp" class="action-btn"><i class="fas fa-comment"></i> Comment</a>
    <div class="vertical-separator"></div> 
    <a href="#" class="action-btn"><i class="fas fa-share"></i> Share</a>
    <div class="vertical-separator"></div> 
    <a href="single-news.jsp" class="action-btn"><i class="fas fa-book-open"></i> Read</a>
</div>
	                    </div>
	                  
	                </div>
	            </div>
	            <div class="col-lg-4 col-md-6">
	                <div class="single-latest-news">
	                    <a href="single-news.jsp">
	                        <img src="assets/img/latest-news/ns2.jpg" alt="News Image 2" class="news-image">
	                    </a>
	                    <div class="news-text-box">
	                        <h3><a href="single-news.jsp">A man's worth has its season, like tomato.</a></h3>
	                        <p class="blog-meta">
	                            <span class="author"><i class="fas fa-user"></i> Admin</span>
	                            <span class="date"><i class="fas fa-calendar"></i> 27 December, 2019</span>
	                        </p>
	                        <p class="excerpt">Vivamus lacus enim, pulvinar vel nulla sed, scelerisque rhoncus nisi. Praesent vitae mattis nunc, egestas viverra eros.</p>
    <div class="separator-line"></div> <!-- Horizontal separator -->
<div class="news-actions">
    <a href="#" class="action-btn"><i class="fas fa-thumbs-up"></i> Like</a>
    <div class="vertical-separator"></div> 
    <a href="single-news.jsp" class="action-btn"><i class="fas fa-comment"></i> Comment</a>
    <div class="vertical-separator"></div> 
    <a href="#" class="action-btn"><i class="fas fa-share"></i> Share</a>
    <div class="vertical-separator"></div> 
    <a href="single-news.jsp" class="action-btn"><i class="fas fa-book-open"></i> Read</a>
</div>	                    </div>
	                </div>
	            </div>
	            <div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0">
	                <div class="single-latest-news">
	                    <a href="single-news.jsp">
	                        <img src="assets/img/latest-news/ns3.jpg" alt="News Image 3" class="news-image">
	                    </a>
	                    <div class="news-text-box">
	                        <h3><a href="single-news.jsp">Good thoughts bear good fresh juicy fruit.</a></h3>
	                        <p class="blog-meta">
	                            <span class="author"><i class="fas fa-user"></i> Admin</span>
	                            <span class="date"><i class="fas fa-calendar"></i> 27 December, 2019</span>
	                        </p>
	                        <p class="excerpt">Vivamus lacus enim, pulvinar vel nulla sed, scelerisque rhoncus nisi. Praesent vitae mattis nunc, egestas viverra eros.</p>
    <div class="separator-line"></div> <!-- Horizontal separator -->
<div class="news-actions">
    <a href="#" class="action-btn"><i class="fas fa-thumbs-up"></i> Like</a>
    <div class="vertical-separator"></div> 
    <a href="single-news.jsp" class="action-btn"><i class="fas fa-comment"></i> Comment</a>
    <div class="vertical-separator"></div> 
    <a href="#" class="action-btn"><i class="fas fa-share"></i> Share</a>
    <div class="vertical-separator"></div> 
    <a href="single-news.jsp" class="action-btn"><i class="fas fa-book-open"></i> Read</a>
</div>	                    </div>
	                </div>
	            </div>
	        </div>
	        <div class="row">
	            <div class="col-lg-12 text-center">
	                <a href="news.jsp" class="boxed-btn">More News</a>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- end latest news -->
	
		
	
	<!-- news banner section -->
	<section class="news-banner pt-100 pb-50">
	    <div class="container">
	        <div class="row clearfix align-items-center">
	            <!--Image Column-->
	            <div class="image-column col-lg-6 d-flex align-items-stretch">
	                <div class="image w-100">
	                    <div class="breaking-news-box">
	                        <div class="inner-news">
	                            <span class="headline">
	                                <strong>Breaking:</strong> Major Event Unfolding
	                            </span>
	                        </div>
	                    </div>
	                    <img src="assets/img/media/n3.jpg" alt="Breaking News" class="img-fluid h-100 w-100 object-fit-cover">
	                </div>
	            </div>
	            <!--Content Column-->
	            <div class="content-column col-lg-6 d-flex align-items-stretch">
	                <div class="content-box d-flex flex-column justify-content-center w-100">
	                    <h3><span class="orange-text">Highlight</span> of the Day</h3>
	                    <h4>Top Story: Global Headlines</h4>
	                    <div class="text">
	                        Stay informed with in-depth reporting on the latest developments happening around the world. From politics to technology, we've got you covered with verified news stories.
	                    </div>
	                    <!--Countdown Timer-->
	                    <div class="time-counter mt-4">
	                        <div class="time-countdown clearfix" data-countdown="2025/12/31">
	                            <div class="counter-column">
	                                <div class="inner"><span class="count">00</span>Days</div>
	                            </div>
	                            <div class="counter-column">
	                                <div class="inner"><span class="count">00</span>Hours</div>
	                            </div>
	                            <div class="counter-column">
	                                <div class="inner"><span class="count">00</span>Mins</div>
	                            </div>
	                            <div class="counter-column">
	                                <div class="inner"><span class="count">00</span>Secs</div>
	                            </div>
	                        </div>
	                    </div>
	                    <a href="news.jsp" class="news-btn mt-4 align-self-start"><i class="fas fa-book-open"></i> Read More</a>
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
	                    <a href="https://youtube.com/@abcnews?si=oN10zWbbEgAHD3O7" class="video-play-btn popup-youtube">
	                        <i class="fas fa-play"></i>
	                    </a>
	                </div>
	            </div>
	            <!-- Text Content Section -->
	            <div class="col-lg-6 col-md-12">
	                <div class="featured-text">
	                    <p class="top-sub">Since 1999</p>
	                    <h2>Your Trusted <span class="orange-text">News Source</span></h2>
	                    <p>Stay informed with reliable, unbiased reporting. From breaking news to in-depth analysis, we cover stories that matter most to you. Explore global and local events with context and clarity.</p>
	                    <p>Our mission is to deliver news that informs, educates, and empowers the community. Join millions who trust us for daily updates, insights, and storytelling.</p>
	                    <a href="about.jsp" class="boxed-btn mt-4">Learn More</a>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- end featured video section -->
	
		<!-- testimonial-section -->
	<div class="testimonail-section mt-150 mb-150">
	    <div class="container">
	        <!-- Heading -->
	        <div class="row">
	            <div class="col-lg-12 text-center">
	                <h2 class="section-title">User <span class="orange-text">Reviews</span> Around the World</h2>
	                <p class="section-subtitle">Hear what our customers have to say about their experiences.</p>
	            </div>
	        </div>
	        <!-- Testimonial Sliders -->
	        <div class="row mt-4">
	            <div class="col-lg-10 offset-lg-1 text-center">
	                <div class="testimonial-sliders">
	                    <div class="single-testimonial-slider">
	                        <div class="client-avater">
	                            <img src="assets/img/team/team-2.jpg" alt="">
	                        </div>
	                        <div class="client-meta">
	                            <h3>Saira Hakim <span>Student</span></h3>
	                            <p class="testimonial-body orange-text">
	                                " Sed ut perspiciatis unde omnis iste natus error veritatis et quasi architecto beatae vitae dicta eaque ipsa quae ab illo inventore Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium "
	                            </p>
	                            <div class="last-icon">
	                                <i class="fas fa-quote-right"></i>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="single-testimonial-slider">
	                        <div class="client-avater">
	                            <img src="assets/img/team/team-1.jpg" alt="">
	                        </div>
	                        <div class="client-meta">
	                            <h3>David Niph <span>Engineer</span></h3>
	                            <p class="testimonial-body orange-text">
	                                " Sed ut perspiciatis unde omnis iste natus error veritatis et quasi architecto beatae vitae dicta eaque ipsa quae ab illo inventore Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium "
	                            </p>
	                            <div class="last-icon">
	                                <i class="fas fa-quote-right"></i>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="single-testimonial-slider">
	                        <div class="client-avater">
	                            <img src="assets/img/team/team-3.jpg" alt="">
	                        </div>
	                        <div class="client-meta">
	                            <h3>Jacob Sikim <span>Doctor</span></h3>
	                            <p class="testimonial-body orange-text">
	                                " Sed ut perspiciatis unde omnis iste natus error veritatis et quasi architecto beatae vitae dicta eaque ipsa quae ab illo inventore Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium "
	                            </p>
	                            <div class="last-icon">
	                                <i class="fas fa-quote-right"></i>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	<!-- end testimonial-section -->
	
	 <section class="review-section py-5" style="background-color: #f8f9fa;">
	    <div class="container">
	        <h2 class="text-center text-dark mb-4">Share Your <span class="orange-text">Review</span></h2>
	        <div class="row justify-content-center">
	            <div class="col-md-8">
	                <form action="review.php" method="post" enctype="multipart/form-data" class="bg-white p-4 rounded shadow-sm">
	                    <div class="form-group mb-4">
	                        <label for="review" class="font-weight-bold text-dark">Your Review</label>
	                        <textarea name="review" class="form-control border-light" style="padding: 25px;" placeholder="Write your review here..." rows="5" maxlength="500" id="review"></textarea>
	                        <span id="review-error" class="error text-danger"></span>
	                    </div>
	                    
	                    <div class="row">
	                        <div class="col-md-4 mb-3">
	                            <div class="form-group">
	                                <label for="cname" class="font-weight-bold text-dark">Your Name</label>
	                                <input type="text" class="form-control border-light" style="padding: 20px;" placeholder="Enter your name" name="name" id="cname">
	                                <span id="cname-error" class="error text-danger"></span>
	                            </div>
	                        </div>
	                        <div class="col-md-4 mb-3">
	                            <div class="form-group">
	                                <label for="proffession" class="font-weight-bold text-dark">Your Profession</label>
	                                <input type="text" class="form-control border-light" style="padding: 20px;" placeholder="Enter your profession" name="proffession" id="proffession">
	                                <span id="proffession-error" class="error text-danger"></span>
	                            </div>
	                        </div>
	                        <div class="col-md-4 mb-3">
	                            <div class="form-group">
	                                <label for="image" class="font-weight-bold text-dark">Upload Your Picture</label>
	                                <input type="file" name="pic" class="form-control border-light text-center" id="image">
	                                <span id="image-error" class="error text-danger"></span>
	                            </div>
	                        </div>
	                    </div>
	
	                    <div class="text-center">
							<p><input type="submit" value="Submit"></p>
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
	<p>We aim to provide high-quality services with integrity and dedication, ensuring satisfaction for all our clients and partners.</p>
	
	
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
								<button type="submit"><i class="fas fa-paper-plane"></i></button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end footer -->
		

		
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