<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Edit Profile | VORTEX</title>

<link rel="stylesheet" href="css/editprofile.css">
<link rel="stylesheet" href="css/global.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link rel="stylesheet"
href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap">

</head>

<body>

<button class="mobile-toggle"
onclick="document.querySelector('.sidebar').classList.toggle('open')">
☰
</button>

<!-- ================= SIDEBAR ================= -->

<div class="sidebar">

    <div class="logo-box">

        <div class="logo">
           VORTEX
        </div>

       

        <p>Job Seeker Portal</p>

    </div>

    <div class="menu">

        <a href="user-dashboard.jsp">

            <i class="fa-solid fa-chart-line"></i>

            Dashboard

        </a>

        <a href="viewjob">

            <i class="fa-solid fa-briefcase"></i>

            Browse Jobs

        </a>

        <a href="myapplications">

            <i class="fa-solid fa-file-lines"></i>

            Applications

        </a>

        <a href="profile.jsp" class="active">

            <i class="fa-solid fa-user"></i>

            Profile

        </a>

        <a href="logout">

            <i class="fa-solid fa-right-from-bracket"></i>

            Logout

        </a>

    </div>

</div>

<!-- ================= MAIN CONTENT ================= -->

<div class="main">

    <!-- Header -->

    <div class="header-card">

        <div>

            <h1>Edit Profile</h1>

            <p>
                Update your account details and keep your
                profile information up to date.
            </p>

        </div>

        <a href="profile.jsp" class="back-btn">

            <i class="fa-solid fa-arrow-left"></i>

            Back To Profile

        </a>

    </div>

    <!-- Stats -->

    <div class="stats">

        <div class="stat-card">

            <h2>100%</h2>

            <p>Account Active</p>

        </div>

        <div class="stat-card">

            <h2>${user.role}</h2>

            <p>Current Role</p>

        </div>

        <div class="stat-card">

            <h2>${user.id}</h2>

            <p>User ID</p>

        </div>

    </div>

    <!-- Content Area -->

    <div style="
    display:grid;
    grid-template-columns:320px 1fr;
    gap:25px;
    " class="profile-layout">

        <!-- Profile Card -->

        <div class="profile-card">

            <div class="profile-image">

                ${user.name.substring(0,1)}

            </div>

            <br>

            <h2>${user.name}</h2>

            <p>${user.role}</p>

            <br>

            <span style="color:#64748b;">

                Keep your information updated
                to improve your professional profile.

            </span>

        </div>

        <!-- Form Card -->

        <div class="form-card">

            <h2>

                <i class="fa-solid fa-user-pen"></i>

                Edit Information

            </h2>

            <br>

            <!-- KEEP ACTION SAME -->

            <form action="edituserprofile" method="post">

                <div class="input-group">

                    <label>User ID</label>

                    <input
                    type="number"
                    name="id"
                    value="${user.id}"
                    readonly>

                </div>

                <div class="input-group">

                    <label>Full Name</label>

                    <input
                    type="text"
                    name="name"
                    value="${user.name}"
                    required>

                </div>

                <div class="input-group">

                    <label>Email Address</label>

                    <input
                    type="email"
                    name="email"
                    value="${user.email}"
                    required>

                </div>

                <div class="input-group">

                    <label>Password</label>

                    <input
                    type="password"
                    name="password"
                    value="${user.password}"
                    required>

                </div>

                <div class="input-group">

                    <label>Role</label>

                    <input
                    type="text"
                    name="role"
                    value="${user.role}"
                    readonly>

                </div>

                <br>

                <button
                type="submit"
                class="update-btn">

                    <i class="fa-solid fa-floppy-disk"></i>

                    Update Profile

                </button>

            </form>

        </div>

    </div>

</div>

<style>

@media(max-width:900px){

    .profile-layout{
        grid-template-columns:1fr !important;
    }

}

</style>

</body>
</html>