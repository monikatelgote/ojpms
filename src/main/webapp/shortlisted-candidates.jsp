<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>

<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>Shortlisted Candidates |VORTEX</title>

<link rel="stylesheet"
href="css/shortlisted-candidates.css">

<link rel="stylesheet"
href="css/global.css">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link rel="stylesheet"
href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap">

</head>

<body>

<button class="mobile-toggle"
onclick="document.querySelector('.sidebar').classList.toggle('open')"
aria-label="Menu">
☰
</button>

<!-- ================= SIDEBAR ================= -->

<div class="sidebar">

    <div class="logo-box">

        <div class="logo">
            VORTEX
        </div>

        <p>Recruiter Portal</p>

    </div>

    <div class="menu">

        <a href="recruiter-dashboard.jsp">

            <i class="fa-solid fa-chart-line"></i>

            Dashboard

        </a>

        <a href="postedjobs">

            <i class="fa-solid fa-briefcase"></i>

            My Jobs

        </a>

        <a href="shortlistedcandidates"
        class="active">

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

    <!-- PAGE HEADER -->

    <div class="page-header">

        <div>

            <h1>

                <i class="fa-solid fa-star"></i>

                Shortlisted Candidates

            </h1>

            <p>
                Manage and schedule interviews
                for shortlisted applicants.
            </p>

        </div>

        <a href="recruiter-dashboard.jsp"
        class="back-btn">

            <i class="fa-solid fa-arrow-left"></i>

            Dashboard

        </a>

    </div>

    <!-- STATS -->

    <div class="stats-grid">

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-user-check"></i>

            </div>

            <h2>${shortlisted.size()}</h2>

            <p>Shortlisted Candidates</p>

        </div>

    </div>

    <!-- CANDIDATES -->

    <div class="candidate-container">

        <c:forEach var="app"
        items="${shortlisted}">

            <div class="candidate-card">

                <!-- CARD HEADER -->

                <div class="card-header">

                    <div class="avatar">

                        <i class="fa-solid fa-user"></i>

                    </div>

                    <div>

                        <h2>
                            ${app.user.name}
                        </h2>

                        <span class="status">

                            SHORTLISTED

                        </span>

                    </div>

                </div>

                <!-- CARD BODY -->

                <div class="card-body">

                    <p>

                        <i class="fa-solid fa-envelope"></i>

                        ${app.user.email}

                    </p>

                    <p>

                        <i class="fa-solid fa-briefcase"></i>

                        ${app.job.title}

                    </p>

                    <p>

                        <i class="fa-solid fa-location-dot"></i>

                        ${app.job.location}

                    </p>

                </div>

                <!-- ACTIONS -->

                <div class="card-actions">

                    <!-- ORIGINAL URL PRESERVED -->

                    <a href="recruiterprofile?id=${user.id}"
                    class="profile-btn">

                        <i class="fa-solid fa-user"></i>

                        View Profile

                    </a>

                    <!-- ORIGINAL URL PRESERVED -->

                    <a href="scheduleinterviewpage?userId=${app.user.id}&jobId=${app.job.id}"
                    class="interview-btn">

                        <i class="fa-solid fa-calendar-days"></i>

                        Schedule Interview

                    </a>

                </div>

            </div>

        </c:forEach>

        <!-- EMPTY STATE -->

        <c:if test="${shortlisted.size()==0}">

            <div class="empty-card">

                <i class="fa-solid fa-user-slash"></i>

                <h2>
                    No Shortlisted Candidates
                </h2>

                <p>

                    Candidates shortlisted from job
                    applications will appear here.

                </p>

                <a href="postedjobs"
                class="back-btn">

                    <i class="fa-solid fa-briefcase"></i>

                    View Jobs

                </a>

            </div>

        </c:if>

    </div>

</div>

</body>
</html>