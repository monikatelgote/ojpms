<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Posted Jobs | VORTEX</title>

<link rel="stylesheet" href="css/posted-job-by-recruiter.css">
<link rel="stylesheet" href="css/global.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link rel="stylesheet"
href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap">

</head>

<body>

<button class="mobile-toggle"
onclick="document.querySelector('.sidebar').classList.toggle('open')"
aria-label="Menu">
☰ </button>

<!-- Sidebar -->

<div class="sidebar">

<div class="logo-box">

    <div class="logo">
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

    <a href="recruiter-profile.jsp">

        <i class="fa-solid fa-user"></i>

        Profile

    </a>

    <a href="postedjobs" class="active">

        <i class="fa-solid fa-briefcase"></i>

        My Jobs

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

<!-- Main -->

<div class="main">

<!-- Header -->

<div class="page-header">

    <div>

        <h1>

            <i class="fa-solid fa-briefcase"></i>

            My Posted Jobs

        </h1>

        <p>
            Manage, update and monitor all job openings posted by your organization.
        </p>

    </div>

    <a href="recruiter-dashboard.jsp"
    class="back-btn">

        <i class="fa-solid fa-arrow-left"></i>

        Dashboard

    </a>

</div>

<!-- Stats -->

<div class="stats-grid">

    <div class="stat-card">

        <div class="stat-icon">

            <i class="fa-solid fa-briefcase"></i>

        </div>

        <h2>${jobs.size()}</h2>

        <p>Total Jobs Posted</p>

    </div>

</div>

<!-- Job Cards -->

<div class="jobs-container">

    <c:forEach var="job" items="${jobs}">

        <div class="job-card">

            <div class="job-header">

                <div>

                    <h2>${job.title}</h2>

                    <span class="job-status">
                        Active
                    </span>

                </div>

            </div>

            <div class="job-body">

                <p>

                    <strong>
                        <i class="fa-solid fa-hashtag"></i>
                        Job ID :
                    </strong>

                    ${job.id}

                </p>

                <p>

                    <strong>
                        <i class="fa-solid fa-location-dot"></i>
                        Location :
                    </strong>

                    ${job.location}

                </p>

                <p>

                    <strong>
                        <i class="fa-solid fa-indian-rupee-sign"></i>
                        Salary :
                    </strong>

                    ₹${job.salary}

                </p>

                <p>

                    <strong>
                        <i class="fa-solid fa-file-lines"></i>
                        Description :
                    </strong>

                    ${job.description}

                </p>

            </div>

            <div class="job-actions">

                <a href="fetchjob?id=${job.id}"
                class="edit-btn">

                    <i class="fa-solid fa-pen"></i>

                    Edit

                </a>

                <a href="deletejob?id=${job.id}"
                class="delete-btn"
                onclick="return confirm('Are you sure you want to delete this job?')">

                    <i class="fa-solid fa-trash"></i>

                    Delete

                </a>

                <a href="viewapplicants?jobId=${job.id}"
                class="applicants-btn">

                    <i class="fa-solid fa-users"></i>

                    View Applicants

                </a>

            </div>

        </div>

    </c:forEach>

</div>

</div>

</body>
</html>
