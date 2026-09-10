<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Edit Recruiter Profile |VORTEX</title>

<link rel="stylesheet" href="css/global.css">
<link rel="stylesheet" href="css/editrecruiterprofile.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap"
rel="stylesheet">

</head>

<body>

<button class="mobile-toggle"
onclick="document.querySelector('.sidebar').classList.toggle('open')">
☰
</button>

<%
if(session.getAttribute("user")==null)
response.sendRedirect("login.jsp");
%>

<!-- ================= SIDEBAR ================= -->

<div class="sidebar">

    <div class="logo-section">

        <div class="logo-circle">
           VORTEX
        </div>

       

        <p>Recruiter Portal</p>

    </div>

    <div class="menu">

        <a href="recruiter-dashboard.jsp">

            <i class="fa-solid fa-chart-line"></i>

            Dashboard

        </a>

        <a href="post-job.jsp">

            <i class="fa-solid fa-plus"></i>

            Post Job

        </a>

        <a href="recruiterprofile?id=${user.id}"
        class="active">

            <i class="fa-solid fa-user"></i>

            Profile

        </a>

        <a href="postedjobs">

            <i class="fa-solid fa-briefcase"></i>

            Posted Jobs

        </a>

        <a href="shortlistedcandidates">

            <i class="fa-solid fa-star"></i>

            Shortlisted

        </a>

        <a href="rejectedcandidates">

            <i class="fa-solid fa-circle-xmark"></i>

            Rejected

        </a>

        <a href="logout">

            <i class="fa-solid fa-right-from-bracket"></i>

            Logout

        </a>

    </div>

</div>

<!-- ================= MAIN CONTENT ================= -->

<div class="main">

    <!-- HEADER -->

    <div class="header-card">

        <div>

            <h1>Edit Recruiter Profile</h1>

            <p>
                Update your recruiter account information
                and keep your profile current.
            </p>

        </div>

        <a href="recruiterprofile?id=${user.id}"
        class="back-btn">

            <i class="fa-solid fa-arrow-left"></i>

            Back To Profile

        </a>

    </div>

    <!-- PROFILE SUMMARY -->

    <div class="profile-header">

        <div class="profile-image">

            ${user.name.substring(0,1)}

        </div>

        <div>

            <h1>${user.name}</h1>

            <h3 style="margin-top:8px;">
                ${user.role}
            </h3>

            <p style="margin-top:10px;">
                ${user.email}
            </p>

        </div>

    </div>

    <!-- FORM CARD -->

    <div class="form-card">

        <h2>

            <i class="fa-solid fa-user-pen"></i>

            Update Information

        </h2>

        <br>

        <!-- KEEP ORIGINAL ACTION -->

        <form action="updaterecruiterprofile"
        method="post">

            <div class="input-group">

                <label>Recruiter ID</label>

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

            <button
            type="submit"
            class="update-btn">

                <i class="fa-solid fa-floppy-disk"></i>

                Save Changes

            </button>

        </form>

    </div>

    <!-- INFORMATION CARD -->

    <div class="section-card">

        <h2>

            <i class="fa-solid fa-circle-info"></i>

            Profile Information

        </h2>

        <br>

        <p style="
        color:#64748b;
        line-height:1.8;
        ">

            Make sure your recruiter profile information
            is accurate. Candidates and administrators
            may use this information to identify your account.

        </p>

    </div>

</div>

</body>
</html>