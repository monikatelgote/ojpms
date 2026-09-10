<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Create Account | VORTEX</title>

<link rel="stylesheet" href="css/register.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap"
rel="stylesheet">

</head>

<body>

<nav class="navbar">

    <div class="logo-section">

        <div class="logo">
            <i class="fa-solid fa-briefcase"></i>
        </div>

        <div>
            <h2>VORTEX</h2>
           
        </div>

    </div>

    <div class="nav-actions">

        <a href="home.jsp" class="nav-btn">
            Home
        </a>

        <a href="login.jsp" class="login-link">
            Login
        </a>

    </div>

</nav>

<section class="main-container">

    <!-- LEFT SECTION -->

    <div class="left-section">

        <span class="badge">
            Join India's Smart Job Portal
        </span>

        <h1>
            Build Your
            <span>Career Journey</span>
            With RMP
        </h1>

        <p>
            Connect with recruiters, apply for jobs,
            manage applications and grow your career
            through one powerful recruitment platform.
        </p>

        <div class="feature-list">

            <div class="feature-item">
                <i class="fa-solid fa-circle-check"></i>
                Apply For Verified Jobs
            </div>

            <div class="feature-item">
                <i class="fa-solid fa-circle-check"></i>
                Recruit Top Talent
            </div>

            <div class="feature-item">
                <i class="fa-solid fa-circle-check"></i>
                Track Applications
            </div>

            <div class="feature-item">
                <i class="fa-solid fa-circle-check"></i>
                Schedule Interviews
            </div>

        </div>

    </div>

    <!-- REGISTER CARD -->

    <div class="register-card">

        <div class="card-header">

            <div class="register-icon">
                <i class="fa-solid fa-user-plus"></i>
            </div>

            <h2>Create Account</h2>

            <p>
                Register to continue
            </p>

        </div>

        <!-- KEEP ACTION SAME -->

        <form action="register" method="post">

            <div class="input-group">

                <label>Full Name</label>

                <input
                    type="text"
                    name="name"
                    placeholder="Enter Full Name"
                    required>

            </div>

            <div class="input-group">

                <label>Email Address</label>

                <input
                    type="email"
                    name="email"
                    placeholder="Enter Email Address"
                    required>

            </div>

            <div class="input-group">

                <label>Password</label>

                <input
                    type="password"
                    name="password"
                    placeholder="Create Password"
                    required>

            </div>

            <div class="input-group">

                <label>Select Role</label>

                <select name="role" required>

                    <option value="">
                        Select Role
                    </option>

                    <option value="JOB_SEEKER">
                        Job Seeker
                    </option>

                    <option value="RECRUITER">
                        Recruiter
                    </option>

                </select>

            </div>

            <button type="submit" class="register-btn">

                <i class="fa-solid fa-user-plus"></i>

                Create Account

            </button>

        </form>

        <div class="login-text">

            Already have an account?

            <a href="login.jsp">
                Login Here
            </a>

        </div>

    </div>

</section>

</body>
</html>