<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>Schedule Interview | VORTEX</title>

<link rel="stylesheet"
href="css/schedule-interview.css">

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

                <i class="fa-solid fa-calendar-days"></i>

                Schedule Interview

            </h1>

            <p>

                Schedule and notify shortlisted
                candidates about interview details.

            </p>

        </div>

        <a href="shortlistedcandidates"
        class="back-btn">

            <i class="fa-solid fa-arrow-left"></i>

            Back

        </a>

    </div>

    <!-- SUMMARY CARDS -->

    <div class="stats-grid">

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-user"></i>

            </div>

            <h2>${userId}</h2>

            <p>Candidate ID</p>

        </div>

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-briefcase"></i>

            </div>

            <h2>${jobId}</h2>

            <p>Job ID</p>

        </div>

    </div>

    <!-- INTERVIEW FORM SECTION -->

    <div class="interview-layout">

        <!-- LEFT INFO PANEL -->

        <div class="info-card">

            <div class="info-icon">

                <i class="fa-solid fa-user-check"></i>

            </div>

            <h2>Interview Planning</h2>

            <p>

                Select a suitable interview date,
                time and mode. The candidate will
                receive interview information through
                the system.

            </p>

            <div class="info-points">

                <p>

                    <i class="fa-solid fa-check"></i>

                    Candidate Already Shortlisted

                </p>

                <p>

                    <i class="fa-solid fa-check"></i>

                    Email Notification Supported

                </p>

                <p>

                    <i class="fa-solid fa-check"></i>

                    Track Recruitment Progress

                </p>

            </div>

        </div>

        <!-- FORM CARD -->

        <div class="form-card">

            <div class="card-header">

                <h2>

                    <i class="fa-solid fa-calendar-plus"></i>

                    Interview Details

                </h2>

                <p>
                    Fill interview schedule information.
                </p>

            </div>

            <!-- ORIGINAL FUNCTIONALITY PRESERVED -->

            <form action="scheduleinterview"
            method="post">

                <input
                type="hidden"
                name="userId"
                value="${userId}">

                <input
                type="hidden"
                name="jobId"
                value="${jobId}">

                <div class="input-group">

                    <label>

                        Interview Date

                    </label>

                    <input
                    type="date"
                    name="date"
                    required>

                </div>

                <div class="input-group">

                    <label>

                        Interview Time

                    </label>

                    <input
                    type="time"
                    name="time"
                    required>

                </div>

                <div class="input-group">

                    <label>

                        Interview Mode

                    </label>

                    <select
                    name="mode">

                        <option value="Online">

                            Online

                        </option>

                        <option value="Offline">

                            Offline

                        </option>

                    </select>

                </div>

                <button
                type="submit"
                class="schedule-btn">

                    <i class="fa-solid fa-paper-plane"></i>

                    Schedule & Send Mail

                </button>

            </form>

        </div>

    </div>

</div>

</body>
</html>