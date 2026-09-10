<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Applicants Dashboard</title>

<link rel="stylesheet" href="css/view-applicants.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link rel="stylesheet"
href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap">

<link rel="stylesheet" href="css/global.css">
</head>

<body>

<button class="mobile-toggle"
onclick="document.querySelector('.sidebar').classList.toggle('open')"
aria-label="Menu">☰</button>

<!-- Sidebar -->
<div class="sidebar">

    <div class="logo-box">

        <div class="logo">
            OJ
        </div>

        <h2>OJPMS</h2>

        <p>Recruiter Portal</p>

    </div>

    <div class="menu">

        <a href="recruiter-dashboard.jsp">
            Dashboard
        </a>

        <a href="postedjobs" class="active">
            My Jobs
        </a>

        <a href="logout">
            Logout
        </a>

    </div>

</div>

<!-- Main -->
<div class="main">

    <div class="topbar">

        <div>

            <h1>
                <i class="fa-solid fa-user-group"></i>
                Applicants Dashboard
            </h1>

            <p class="job-name">
                ${job.title}
            </p>

        </div>

        <a href="postedjobs" class="back-btn">

            <i class="fa-solid fa-arrow-left"></i>

            Back

        </a>

    </div>

    <!-- Applicant Count -->
    <div class="count-card">

        <h2>${applicants.size()}</h2>

        <p>Total Applications</p>

    </div>

    <!-- Applicant Cards -->
    <div class="applicants-container">

        <c:forEach var="user" items="${applicants}">

            <div class="applicant-card">

                <div class="card-header">

                    <div class="profile-circle">
                        <i class="fa-solid fa-user"></i>
                    </div>

                    <div>

                        <h2>${user.name}</h2>

                        <span class="status">
                            Applied
                        </span>

                    </div>

                </div>

                <div class="card-body">

                    <p>
                        <i class="fa-solid fa-envelope"></i>
                        ${user.email}
                    </p>

                    <p>
                        <i class="fa-solid fa-phone"></i>
                        ${user.role}
                    </p>

                    <p>
                        <strong>User ID :</strong>
                        ${user.id}
                    </p>

                    <p>
                        <strong>Job ID :</strong>
                        ${jobId}
                    </p>

                </div>

                <div class="card-actions">

                    <a href="recruiterprofile?id=${user.id}"
                       class="profile-btn">
                        View Profile
                    </a>

                    <a href="shortlistcandidate?userId=${user.id}&jobId=${jobId}"
                       class="shortlist-btn">

                        <i class="fa-solid fa-check"></i>

                        Shortlist

                    </a>

                    <a href="rejectcandidate?userId=${user.id}&jobId=${jobId}"
                       class="reject-btn">

                        <i class="fa-solid fa-xmark"></i>

                        Reject

                    </a>

                </div>

            </div>

        </c:forEach>

    </div>

</div>

</body>
</html>