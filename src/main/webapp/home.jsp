<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>VORTEX</title>

<link rel="stylesheet" href="css/home.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap"
rel="stylesheet">

</head>

<body>

<!-- ================= NAVBAR ================= -->

<header class="navbar">

    <div class="logo">
        <i class="fa-solid fa-briefcase"></i>
        <span>VORTEX</span>
    </div>

    <nav class="nav-links">

        <a href="home.jsp">Home</a>

        <a href="#" onclick="loginRequired()">
            Jobs
        </a>

        <a href="#" onclick="loginRequired()">
            Companies
        </a>

        <a href="#" onclick="loginRequired()">
            Recruiters
        </a>

        <a href="#about">
            About
        </a>

        <a href="#contact">
            Contact
        </a>

    </nav>

    <div class="nav-buttons">

        <a href="login.jsp" class="login-btn">
            Login
        </a>

        <a href="register.jsp" class="register-btn">
            Register
        </a>

    </div>

</header>

<!-- ================= HERO ================= -->

<section class="hero">

    <div class="hero-content">

        <span class="hero-badge">
            🚀 India's Next Generation Hiring Platform
        </span>

        <h1>
            Find Your Dream Job
            <span>Build Your Future</span>
            Get Hired Faster
        </h1>

        <p>
            Connect with leading recruiters, explore thousands of opportunities,
            and accelerate your career growth through India's modern recruitment platform.
        </p>

        <div class="hero-buttons">

            <a href="register.jsp" class="primary-btn">
                <i class="fa-solid fa-user-plus"></i>
                Get Started
            </a>

            <a href="#" onclick="loginRequired()" class="secondary-btn">
                <i class="fa-solid fa-briefcase"></i>
                Browse Jobs
            </a>

        </div>

        <div class="hero-stats">

            <div class="stat-item">
                <h3>10K+</h3>
                <p>Job Seekers</p>
            </div>

            <div class="stat-item">
                <h3>500+</h3>
                <p>Recruiters</p>
            </div>

            <div class="stat-item">
                <h3>2000+</h3>
                <p>Jobs Posted</p>
            </div>

        </div>

    </div>

    <div class="hero-right">

        <div class="job-preview-card">
            <div class="job-header">
                <h3>Java Full Stack Developer</h3>
                <span>₹12 LPA</span>
            </div>

            <p>Infosys Technologies</p>

            <div class="job-tags">
                <span>Pune</span>
                <span>Full Time</span>
            </div>
        </div>

        <div class="job-preview-card">
            <div class="job-header">
                <h3>Software Tester</h3>
                <span>₹8 LPA</span>
            </div>

            <p>TCS</p>

            <div class="job-tags">
                <span>Mumbai</span>
                <span>Hybrid</span>
            </div>
        </div>

        <div class="job-preview-card">
            <div class="job-header">
                <h3>Frontend Developer</h3>
                <span>₹10 LPA</span>
            </div>

            <p>Wipro</p>

            <div class="job-tags">
                <span>Bangalore</span>
                <span>Remote</span>
            </div>
        </div>

    </div>

</section>

<!-- ================= TRUSTED COMPANIES ================= -->

<section class="companies">

    <h2>Trusted By Industry Leaders</h2>

    <div class="company-grid">

        <div class="company-card">Google</div>

        <div class="company-card">Microsoft</div>

        <div class="company-card">Amazon</div>

        <div class="company-card">Infosys</div>

        <div class="company-card">TCS</div>

        <div class="company-card">Wipro</div>

        <div class="company-card">Capgemini</div>

        <div class="company-card">Accenture</div>

    </div>

</section>

<!-- ================= FEATURED JOBS ================= -->

<section class="featured-jobs">

    <div class="section-title">

        <h2>Featured Opportunities</h2>

        <p>
            Discover the latest opportunities from top recruiters.
        </p>

    </div>

    <div class="job-grid">

        <div class="job-card">

            <h3>Java Developer</h3>

            <p>
                Strong Java, Hibernate, Spring and SQL skills required.
            </p>

            <div class="job-details">

                <span>Pune</span>

                <span>Full Time</span>

            </div>

            <button onclick="loginRequired()">
                Apply Now
            </button>

        </div>

        <div class="job-card">

            <h3>QA Engineer</h3>

            <p>
                Manual Testing, API Testing and Automation opportunities.
            </p>

            <div class="job-details">

                <span>Mumbai</span>

                <span>Hybrid</span>

            </div>

            <button onclick="loginRequired()">
                Apply Now
            </button>

        </div>

        <div class="job-card">

            <h3>Frontend Developer</h3>

            <p>
                HTML, CSS, JavaScript and modern frontend frameworks.
            </p>

            <div class="job-details">

                <span>Bangalore</span>

                <span>Remote</span>

            </div>

            <button onclick="loginRequired()">
                Apply Now
            </button>

        </div>

    </div>

</section>

<!-- ================= FEATURES ================= -->

<section class="features" id="about">

    <div class="section-title">

        <h2>Why Choose RMP ?</h2>

        <p>
            Everything required to launch your career.
        </p>

    </div>

    <div class="feature-grid">

        <div class="feature-card">

            <i class="fa-solid fa-shield-halved"></i>

            <h3>Verified Recruiters</h3>

            <p>
                Connect only with trusted and verified companies.
            </p>

        </div>

        <div class="feature-card">

            <i class="fa-solid fa-paper-plane"></i>

            <h3>Quick Applications</h3>

            <p>
                Apply for jobs in just a few clicks.
            </p>

        </div>

        <div class="feature-card">

            <i class="fa-solid fa-file-lines"></i>

            <h3>Profile Management</h3>

            <p>
                Maintain your professional profile with ease.
            </p>

        </div>

        <div class="feature-card">

            <i class="fa-solid fa-chart-line"></i>

            <h3>Career Growth</h3>

            <p>
                Discover opportunities aligned with your skills.
            </p>

        </div>

    </div>

</section>

<!-- ================= ACHIEVEMENTS ================= -->

<section class="achievement-section">

    <div class="achievement-card">

        <h2>10,000+</h2>

        <p>Registered Candidates</p>

    </div>

    <div class="achievement-card">

        <h2>500+</h2>

        <p>Recruiters</p>

    </div>

    <div class="achievement-card">

        <h2>2,000+</h2>

        <p>Jobs Posted</p>

    </div>

    <div class="achievement-card">

        <h2>1,200+</h2>

        <p>Successful Placements</p>

    </div>

</section>

<!-- ================= CTA ================= -->

<section class="cta-section">

    <h2>Ready To Start Your Career Journey?</h2>

    <p>
        Join thousands of candidates already building successful careers.
    </p>

    <a href="register.jsp" class="cta-btn">
        Create Free Account
    </a>

</section>

<!-- ================= FOOTER ================= -->

<footer class="footer" id="contact">

    <div class="footer-content">

        <div class="footer-column">

            <h3>RMP</h3>

            <p>
                Recruitment Management Platform connecting candidates and recruiters.
            </p>

        </div>

        <div class="footer-column">

            <h3>Quick Links</h3>

            <a href="home.jsp">Home</a>

            <a href="login.jsp">Login</a>

            <a href="register.jsp">Register</a>

        </div>

        <div class="footer-column">

            <h3>Contact</h3>

            <p>Pune, Maharashtra</p>

            <p>support@rmp.com</p>

        </div>

    </div>

    <div class="footer-bottom">
        © 2026 RMP. All Rights Reserved.
    </div>

</footer>

<script>

function loginRequired()
{
    alert("Please Login First");
    window.location.href="login.jsp";
}

</script>

</body>
</html>