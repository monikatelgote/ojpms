<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Reset Password | VORTEX</title>

<link rel="stylesheet" href="css/reset.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap"
rel="stylesheet">

</head>

<body>

<!-- ================= NAVBAR ================= -->

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

<!-- ================= MAIN SECTION ================= -->

<section class="main-container">

    <!-- LEFT SIDE -->

    <div class="left-section">

        <span class="badge">
            Account Recovery
        </span>

        <h1>
            Reset Your
            <span>Password</span>
        </h1>

        <p>
            Secure your account by creating a new password.
            Enter your registered email address and choose
            a strong password to regain access.
        </p>

        <div class="security-box">

            <i class="fa-solid fa-shield-halved"></i>

            <div>
                <h3>Secure Password Reset</h3>
                <p>
                    Your information is protected with
                    secure authentication.
                </p>
            </div>

        </div>

    </div>

    <!-- RESET CARD -->

    <div class="reset-card">

        <div class="card-header">

            <div class="reset-icon">
                <i class="fa-solid fa-key"></i>
            </div>

            <h2>Reset Password</h2>

            <p>
                Enter your details below
            </p>

        </div>

        <!-- KEEP ACTION SAME -->

        <form action="reset">

            <div class="input-group">

                <label>Email Address</label>

                <input
                    type="email"
                    name="email"
                    placeholder="Enter Registered Email"
                    required>

            </div>

            <div class="input-group">

                <label>New Password</label>

                <input
                    type="password"
                    name="password"
                    placeholder="Enter New Password"
                    required>

            </div>

            <button type="submit" class="reset-btn">

                <i class="fa-solid fa-rotate"></i>

                Reset Password

            </button>

        </form>

        <a href="login.jsp" class="back-login">

            <i class="fa-solid fa-arrow-left"></i>

            Back To Login

        </a>

        <p class="message">
            ${msg2}
        </p>

    </div>

</section>

</body>
</html>