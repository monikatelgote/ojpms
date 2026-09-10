<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Recruiter Profile | VORTEX</title>

<link rel="stylesheet" href="css/global.css">
<link rel="stylesheet" href="css/recruiter-profile.css">

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
            V
        </div>

        <h2>VORTEX</h2>

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

<!-- ================= MAIN ================= -->

<div class="main">

    <!-- TOPBAR -->

    <div class="topbar">

        <div>

            <h1>Recruiter Profile</h1>

            <p class="job-name">
                Manage your recruiter account information
            </p>

        </div>

        <div>

            <a href="recruiter-dashboard.jsp"
            class="back-btn">

                <i class="fa-solid fa-arrow-left"></i>

                Dashboard

            </a>

        </div>

    </div>

    <!-- COVER -->

    <div class="cover-banner"></div>

    <!-- PROFILE HEADER -->

    <div class="profile-header">

        <div class="profile-image">

            ${user.name.substring(0,1)}

        </div>

        <div>

            <h1>${user.name}</h1>

            <h3 style="margin-top:8px;">
                ${user.role}
            </h3>

            <p style="margin-top:12px;color:#64748b;">

                <i class="fa-solid fa-envelope"></i>

                ${user.email}

            </p>

            <br>

            <form action="editrecruiterprofile">

                <input
                type="hidden"
                name="id"
                value="${user.id}">

                <button
                type="submit"
                class="update-btn">

                    <i class="fa-solid fa-pen"></i>

                    Edit Profile

                </button>

            </form>

        </div>

    </div>

    <!-- SUCCESS MESSAGE -->

    <c:if test="${not empty msg}">

        <div class="section-card">

            <p style="
            color:#16a34a;
            font-weight:700;
            text-align:center;
            ">

                ${msg}

            </p>

        </div>

    </c:if>

    <!-- PROFILE STATS -->

    <div class="stats">

        <div class="stat-card">

            <h2>12</h2>

            <p>Jobs Posted</p>

        </div>

        <div class="stat-card">

            <h2>128</h2>

            <p>Total Applications</p>

        </div>

        <div class="stat-card">

            <h2>24</h2>

            <p>Shortlisted</p>

        </div>

        <div class="stat-card">

            <h2>08</h2>

            <p>Interviews</p>

        </div>

    </div>

    <!-- ACCOUNT INFORMATION -->

    <div class="section-card">

        <h2>

            <i class="fa-solid fa-user"></i>

            Account Information

        </h2>

        <br>

        <table>

            <tr>

                <th>User ID</th>

                <td>${user.id}</td>

            </tr>

            <tr>

                <th>Full Name</th>

                <td>${user.name}</td>

            </tr>

            <tr>

                <th>Email Address</th>

                <td>${user.email}</td>

            </tr>

            <tr>

                <th>Role</th>

                <td>${user.role}</td>

            </tr>

        </table>

    </div>

    <!-- RECRUITER OVERVIEW -->

    <div class="section-card">

        <h2>

            <i class="fa-solid fa-building"></i>

            Recruiter Overview

        </h2>

        <br>

        <p style="
        line-height:1.9;
        color:#475569;
        ">

            Manage job openings, review candidate applications,
            shortlist suitable applicants and schedule interviews
            through the Recruitment Management Platform.

        </p>

    </div>

    <!-- QUICK ACTIONS -->

    <div class="section-card">

        <h2>

            <i class="fa-solid fa-bolt"></i>

            Quick Actions

        </h2>

        <br>

        <div style="
        display:flex;
        flex-wrap:wrap;
        gap:15px;
        ">

            <a href="post-job.jsp"
            class="post-btn">

                Post Job

            </a>

            <a href="postedjobs"
            class="profile-btn">

                Manage Jobs

            </a>

            <a href="shortlistedcandidates"
            class="shortlist-btn">

                Shortlisted

            </a>

            <a href="rejectedcandidates"
            class="delete-btn">

                Rejected

            </a>

        </div>

    </div>

</div>

</body>
</html>