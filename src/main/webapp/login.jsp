<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Login | VORTEX</title>

<link rel="stylesheet" href="css/login.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap"
rel="stylesheet">

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="navbar">

    <div class="logo">

        <i class="fa-solid fa-briefcase"></i>

        <span>VORTEX</span>

    </div>

    <div class="nav-links">

        <a href="home.jsp">
            Home
        </a>

        <a href="register.jsp" class="register-btn">
            Register
        </a>

    </div>

</nav>

<!-- ================= MAIN LOGIN SECTION ================= -->

<section class="login-section">

    <!-- LEFT PANEL -->

    <div class="left-section">

        <span class="badge">
            Welcome Back
        </span>

        <h1>
            Login To Your
            <span>Career Portal</span>
        </h1>

        <p>
            Access thousands of opportunities, track applications,
            connect with recruiters and take the next step in your career journey.
        </p>

        <div class="feature-list">

            <div class="feature-item">

                <i class="fa-solid fa-circle-check"></i>

                Apply For Verified Jobs

            </div>

            <div class="feature-item">

                <i class="fa-solid fa-circle-check"></i>

                Track Application Status

            </div>

            <div class="feature-item">

                <i class="fa-solid fa-circle-check"></i>

                Connect With Recruiters

            </div>

            <div class="feature-item">

                <i class="fa-solid fa-circle-check"></i>

                Schedule Interviews

            </div>

        </div>

    </div>

    <!-- LOGIN CARD -->

    <div class="login-card">

        <div class="card-header">

            <div class="login-icon">
                <i class="fa-solid fa-user-lock"></i>
            </div>

            <h2>Login Account</h2>

            <p>
                Enter your credentials to continue
            </p>

        </div>

        <!-- DO NOT CHANGE ACTION -->

        <form action="login" method="post">

            <div class="input-group">

                <label>
                    Email Address
                </label>

                <div class="input-box">

                    <i class="fa-solid fa-envelope"></i>

                    <input
                        type="email"
                        name="email"
                        placeholder="Enter Email Address"
                        required>

                </div>

            </div>

            <div class="input-group">

                <label>
                    Password
                </label>

                <div class="input-box">

                    <i class="fa-solid fa-lock"></i>

                    <input
                        type="password"
                        name="password"
                        placeholder="Enter Password"
                        required>

                </div>

            </div>

            <button type="submit" class="login-btn">

                <i class="fa-solid fa-right-to-bracket"></i>

                Login

            </button>

        </form>

        <a href="reset.jsp" class="forgot">

            Forgot Password ?

        </a>

        <p class="error">
            ${error}
        </p>

        <p class="success">
            ${msg1}
        </p>

        <div class="register-text">

            Don't have an account?

            <a href="register.jsp">

                Create Account

            </a>

        </div>

    </div>

</section>

</body>
</html>