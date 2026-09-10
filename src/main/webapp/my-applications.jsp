<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>

<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Applications | VORTEX</title>

<link rel="stylesheet" href="css/my-applications.css">
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

<%
if(session.getAttribute("user")==null)
response.sendRedirect("login.jsp");
%>

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

        <a href="viewjob">

            <i class="fa-solid fa-briefcase"></i>

            Browse Jobs

        </a>

        <a href="myapplications" class="active">

            <i class="fa-solid fa-file-lines"></i>

            My Applications

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

    <!-- TOPBAR -->

    <div class="topbar">

        <div>

            <h1>

                <i class="fa-solid fa-file-signature"></i>

                My Applications

            </h1>

            <p class="job-name">
                Track all jobs you have applied for
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

    <!-- ================= SUMMARY CARDS ================= -->

    <div class="cards">

        <div class="card">

            <h2>${totalApplications}</h2>

            <p>Total Applications</p>

        </div>

        <div class="card">

            <h2>${totalApplications}</h2>

            <p>Applied Jobs</p>

        </div>

        <div class="card">

            <h2>Active</h2>

            <p>Application Status</p>

        </div>

    </div>

    <!-- ================= APPLICATION LIST ================= -->

    <div class="section-card">

        <h2>

            <i class="fa-solid fa-briefcase"></i>

            Applied Jobs

        </h2>

        <br>

        <c:if test="${empty applications}">

            <div style="
            text-align:center;
            padding:40px;
            ">

                <i class="fa-solid fa-folder-open"
                style="
                font-size:60px;
                color:#94a3b8;
                "></i>

                <h3 style="
                margin-top:20px;
                color:#64748b;
                ">
                    No Applications Found
                </h3>

                <p style="
                margin-top:10px;
                color:#94a3b8;
                ">
                    Start applying to jobs to see them here.
                </p>

                <br>

                <a href="viewjob" class="apply-btn">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    Browse Jobs

                </a>

            </div>

        </c:if>

        <!-- Applications -->

        <c:forEach items="${applications}" var="app">

            <div class="job-card"
            style="margin-bottom:20px;">

                <div style="
                display:flex;
                justify-content:space-between;
                align-items:flex-start;
                flex-wrap:wrap;
                gap:20px;
                ">

                    <!-- Left -->

                    <div style="flex:1;">

                        <h2 style="
                        color:#2563eb;
                        margin-bottom:15px;
                        ">

                            ${app.job.title}

                        </h2>

                        <p>

                            <strong>
                                Job ID :
                            </strong>

                            ${app.job.id}

                        </p>

                        <br>

                        <p>

                            <strong>
                                Location :
                            </strong>

                            ${app.job.location}

                        </p>

                        <br>

                        <p>

                            <strong>
                                Salary :
                            </strong>

                            ₹${app.job.salary}

                        </p>

                        <br>

                        <p>

                            <strong>
                                Description :
                            </strong>

                            ${app.job.description}

                        </p>

                    </div>

                    <!-- Right -->

                    <div style="
                    min-width:180px;
                    text-align:center;
                    ">

                        <span style="
                        display:inline-block;
                        padding:10px 18px;
                        border-radius:25px;
                        background:#ecfdf5;
                        color:#16a34a;
                        font-weight:700;
                        ">

                            Applied

                        </span>

                        <br><br>

                        <i class="fa-solid fa-circle-check"
                        style="
                        font-size:45px;
                        color:#16a34a;
                        "></i>

                    </div>

                </div>

            </div>

        </c:forEach>

    </div>

</div>

</body>
</html>