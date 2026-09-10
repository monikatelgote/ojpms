<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Recruiter Dashboard | VORTEX</title>

<link rel="stylesheet" href="css/recruiter.css">
<link rel="stylesheet" href="css/global.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link rel="stylesheet"
href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap">
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

        <a href="recruiter-dashboard.jsp" class="active">
            <i class="fa-solid fa-chart-line"></i>
            Dashboard
        </a>

        <a href="post-job.jsp">
            <i class="fa-solid fa-plus"></i>
            Post Job
        </a>

        <a href="recruiterprofile?id=${user.id}">
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

        <a href="home.jsp">
            <i class="fa-solid fa-house"></i>
            Home
        </a>

        <a href="logout">
            <i class="fa-solid fa-right-from-bracket"></i>
            Logout
        </a>

    </div>

</div>

<!-- ================= MAIN CONTENT ================= -->

<div class="main">

    <!-- Topbar -->

    <div class="topbar">

        <div>
            <h1>
                <i class="fa-solid fa-briefcase"></i>
                Recruiter Dashboard
            </h1>
        </div>

        <a href="logout" class="logout-btn">
            <i class="fa-solid fa-right-from-bracket"></i>
            Logout
        </a>

    </div>

    <!-- Welcome Banner -->

    <div class="welcome-card">

        <h1>
            Welcome Back,
            <span>${user.name}</span>
        </h1>

        <p>
            Manage job postings, review candidates and streamline your
            hiring process from one place.
        </p>

        <a href="post-job.jsp" class="post-btn">
            <i class="fa-solid fa-plus"></i>
            Post New Job
        </a>

    </div>

    <!-- Dashboard Stats -->

    <div class="cards">

        <div class="card">
            <h2>12</h2>
            <p>Active Jobs</p>
        </div>

        <div class="card">
            <h2>128</h2>
            <p>Total Applications</p>
        </div>

        <div class="card">
            <h2>24</h2>
            <p>Shortlisted</p>
        </div>

        <div class="card">
            <h2>8</h2>
            <p>Interviews Scheduled</p>
        </div>

    </div>

    <!-- Quick Actions -->

    <div class="section-card">

        <div class="page-header">

            <div>
                <h1>Quick Actions</h1>
                <p>
                    Frequently used recruiter operations.
                </p>
            </div>

        </div>

        <div class="cards">

            <a href="post-job.jsp" class="post-btn">
                <i class="fa-solid fa-plus"></i>
                Post Job
            </a>

            <a href="postedjobs" class="applicants-btn">
                <i class="fa-solid fa-briefcase"></i>
                Manage Jobs
            </a>

            <a href="shortlistedcandidates" class="shortlist-btn">
                <i class="fa-solid fa-star"></i>
                Shortlisted
            </a>

            <a href="rejectedcandidates" class="delete-btn">
                <i class="fa-solid fa-circle-xmark"></i>
                Rejected
            </a>

        </div>

    </div>

    <!-- Recent Jobs Table -->

    <div class="table-section">

        <div class="page-header">

            <div>
                <h1>Recent Job Postings</h1>
                <p>
                    Overview of your latest active opportunities.
                </p>
            </div>

        </div>

        <table>

            <tr>
                <th>Job Title</th>
                <th>Applications</th>
                <th>Status</th>
            </tr>

            <tr>
                <td>Java Developer</td>
                <td>25</td>
                <td>
                    <span class="status">
                        Active
                    </span>
                </td>
            </tr>

            <tr>
                <td>Frontend Developer</td>
                <td>18</td>
                <td>
                    <span class="status">
                        Active
                    </span>
                </td>
            </tr>

            <tr>
                <td>UI/UX Designer</td>
                <td>10</td>
                <td>
                    <span class="status">
                        Active
                    </span>
                </td>
            </tr>

        </table>

    </div>

    <!-- Hiring Insights -->

    <div class="section-card">

        <h2 style="margin-bottom:15px;">
            Hiring Insights
        </h2>

        <p style="line-height:1.8;color:var(--text-secondary);">
            Your recruiter account is active and ready to connect with
            qualified candidates. Keep job descriptions updated,
            review applications regularly and schedule interviews
            quickly to improve hiring success.
        </p>

    </div>

</div>

</body>
</html>