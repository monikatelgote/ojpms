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

<title>Edit Job | RMP</title>

<link rel="stylesheet"
href="css/edit-job.css">

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

        <a href="recruiter-profile.jsp">

            <i class="fa-solid fa-user"></i>

            Profile

        </a>

        <a href="postedjobs"
        class="active">

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

<!-- ================= MAIN CONTENT ================= -->

<div class="main">

    <!-- PAGE HEADER -->

    <div class="page-header">

        <div>

            <h1>

                <i class="fa-solid fa-pen-to-square"></i>

                Edit Job

            </h1>

            <p>

                Update your job information and
                keep it accurate for applicants.

            </p>

        </div>

        <a href="postedjobs"
        class="back-btn">

            <i class="fa-solid fa-arrow-left"></i>

            Back

        </a>

    </div>

    <!-- OVERVIEW CARDS -->

    <div class="stats-grid">

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-hashtag"></i>

            </div>

            <h2>${job.id}</h2>

            <p>Job ID</p>

        </div>

        <div class="stat-card">

            <div class="stat-icon">

                <i class="fa-solid fa-briefcase"></i>

            </div>

            <h2>${job.title}</h2>

            <p>Current Position</p>

        </div>

    </div>

    <!-- EDIT SECTION -->

    <div class="edit-layout">

        <!-- LEFT PANEL -->

        <div class="profile-card">

            <div class="profile-circle">

                <i class="fa-solid fa-briefcase"></i>

            </div>

            <h2>${job.title}</h2>

            <h4>JOB DETAILS</h4>

            <p>

                Update your posted job information
                and keep it visible to the best
                candidates.

            </p>

            <div class="job-info">

                <p>

                    <i class="fa-solid fa-location-dot"></i>

                    ${job.location}

                </p>

                <p>

                    <i class="fa-solid fa-indian-rupee-sign"></i>

                    ${job.salary}

                </p>

            </div>

        </div>

        <!-- FORM CARD -->

        <div class="form-card">

            <div class="card-header">

                <h2>

                    <i class="fa-solid fa-file-pen"></i>

                    Update Job Information

                </h2>

                <p>

                    Modify the fields below and save
                    your changes.

                </p>

            </div>

            <!-- ORIGINAL FUNCTIONALITY PRESERVED -->

            <form action="editjobs"
            method="post">

                <input
                type="hidden"
                name="id"
                value="${job.id}">

                <div class="input-group">

                    <label>

                        Job Title

                    </label>

                    <input
                    type="text"
                    name="title"
                    value="${job.title}"
                    required>

                </div>

                <div class="input-group">

                    <label>

                        Location

                    </label>

                    <input
                    type="text"
                    name="location"
                    value="${job.location}"
                    required>

                </div>

                <div class="input-group">

                    <label>

                        Salary

                    </label>

                    <input
                    type="text"
                    name="salary"
                    value="${job.salary}"
                    required>

                </div>

                <div class="input-group">

                    <label>

                        Description

                    </label>

                    <textarea
                    name="description"
                    required>${job.description}</textarea>

                </div>

                <button
                type="submit"
                class="update-btn">

                    <i class="fa-solid fa-floppy-disk"></i>

                    Update Job

                </button>

            </form>

        </div>

    </div>

</div>

</body>
</html>