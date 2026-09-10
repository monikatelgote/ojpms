<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Browse Jobs | VORTEX</title>

<link rel="stylesheet" href="css/viewjob.css">
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
            V
        </div>
	<h2>VORTEX</h2>
        <p>Job Seeker Portal</p>

    </div>

    <div class="menu">

        <a href="user-dashboard.jsp">

            <i class="fa-solid fa-chart-line"></i>

            Dashboard

        </a>

        <a href="viewjob" class="active">

            <i class="fa-solid fa-briefcase"></i>

            Browse Jobs

        </a>

        <a href="myapplications">

            <i class="fa-solid fa-file-lines"></i>

            Applications

        </a>

        <a href="profile.jsp">

            <i class="fa-solid fa-user"></i>

            Profile

        </a>

        <a href="logout">

            <i class="fa-solid fa-right-from-bracket"></i>

            Logout

        </a>

    </div>

</div>

<!-- ================= MAIN ================= -->

<div class="main">

    <!-- Topbar -->

    <div class="topbar">

        <div>

            <h1>Browse Jobs</h1>

            <p class="job-name">
                Find opportunities that match your skills and career goals
            </p>

        </div>

        <div>

            <a href="user-dashboard.jsp" class="back-btn">

                <i class="fa-solid fa-arrow-left"></i>

                Dashboard

            </a>

            <a href="logout" class="logout-btn">

                <i class="fa-solid fa-right-from-bracket"></i>

                Logout

            </a>

        </div>

    </div>

    <!-- Search Section -->

    <div class="section-card">

        <h2>

            <i class="fa-solid fa-magnifying-glass"></i>

            Search Jobs

        </h2>

        <br>

        <!-- KEEP FORM SAME -->

        <form action="" class="search-box">

            <input
            type="text"
            name="search"
            placeholder="Search jobs here...">

            <input
            type="submit"
            value="Search"
            class="apply-btn">

            <a href="viewjob" class="refresh-btn">

                <i class="fa-solid fa-rotate"></i>

                Refresh

            </a>

        </form>

    </div>

    <!-- Empty Result -->

    <c:if test="${empty jobs}">

        <div class="section-card">

            <h2 style="
            color:#ef4444;
            text-align:center;
            ">

                <i class="fa-solid fa-circle-exclamation"></i>

                No Jobs Found

            </h2>

        </div>

    </c:if>

    <!-- Job Listings -->

    <c:forEach var="job" items="${jobs}">

        <div class="job-card">

            <div style="
            display:flex;
            justify-content:space-between;
            align-items:flex-start;
            flex-wrap:wrap;
            gap:20px;
            ">

                <!-- Job Details -->

                <div style="flex:1;">

                    <h2 style="
                    color:#2563eb;
                    margin-bottom:15px;
                    ">

                        ${job.title}

                    </h2>

                    <p>

                        <strong>Description :</strong>

                        ${job.description}

                    </p>

                    <br>

                    <p>

                        <strong>
                            <i class="fa-solid fa-location-dot"></i>
                            Location :
                        </strong>

                        ${job.location}

                    </p>

                    <br>

                    <p>

                        <strong>
                            <i class="fa-solid fa-indian-rupee-sign"></i>
                            Salary :
                        </strong>

                        ₹${job.salary}

                    </p>

                    <br>

                    <p>

                        <strong>
                            <i class="fa-solid fa-calendar-days"></i>
                            Last Date :
                        </strong>

                        ${job.lastDate}

                    </p>

                </div>

                <!-- Apply Section -->

                <div style="
                min-width:220px;
                text-align:center;
                ">

                    <c:set var="today"
                    value="<%= java.time.LocalDate.now() %>" />

                    <c:choose>

                        <c:when test="${today.toString().compareTo(job.lastDate) <= 0}">

                            <!-- KEEP APPLY FORM SAME -->

                            <form action="applyjob" method="post">

                                <input
                                type="hidden"
                                name="jobId"
                                value="${job.id}">

                                <button
                                type="submit"
                                class="apply-btn">

                                    <i class="fa-solid fa-paper-plane"></i>

                                    Apply Now

                                </button>

                            </form>

                        </c:when>

                        <c:otherwise>

                            <div style="
                            padding:14px;
                            border-radius:12px;
                            background:#fef2f2;
                            color:#dc2626;
                            font-weight:700;
                            ">

                                Application Closed

                            </div>

                        </c:otherwise>

                    </c:choose>

                    <c:if test="${errorJobId == job.id}">

                        <p style="
                        color:#dc2626;
                        margin-top:12px;
                        font-weight:600;
                        ">

                            ${error}

                        </p>

                    </c:if>

                </div>

            </div>

        </div>

    </c:forEach>

</div>

</body>
</html>