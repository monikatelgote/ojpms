<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>User Dashboard | VORTEX</title>

<link rel="stylesheet" href="css/user-dashboard.css">
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

        <a href="user-dashboard.jsp" class="active">

            <i class="fa-solid fa-chart-line"></i>

            Dashboard

        </a>

        <a href="viewjob">

            <i class="fa-solid fa-briefcase"></i>

            Browse Jobs

        </a>

        <a href="myapplications">

            <i class="fa-solid fa-file-lines"></i>

            My Applications

        </a>

        <a href="#">

            <i class="fa-solid fa-bookmark"></i>

            Saved Jobs

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

            <h1>
                Candidate Dashboard
            </h1>

            <p class="job-name">
                Track applications and discover new opportunities
            </p>

        </div>

        <div>

      
	 <button onclick="logout()" class="login-btn">
              Home
                <i class="fa-solid fa-house"></i>

                </button>

          

            <a href="logout" class="logout-btn">

                <i class="fa-solid fa-right-from-bracket"></i>

                Logout

            </a>

        </div>

    </div>

    <!-- Welcome Banner -->

    <div class="welcome-card">

        <div>

            <h1>

                Welcome Back,

                <span>${user.name}</span>

            </h1>

            <p>

                Continue your job search journey and explore
                exciting career opportunities tailored for you.

            </p>

            <br>

            <a href="viewjob" class="post-btn">

                <i class="fa-solid fa-magnifying-glass"></i>

                Browse Jobs

            </a>

        </div>

    </div>

    <!-- Statistics -->

    <div class="cards">

        <div class="card">

            <h2>12</h2>

            <p>Total Applications</p>

        </div>

        <div class="card">

            <h2>05</h2>

            <p>Saved Jobs</p>

        </div>

        <div class="card">

            <h2>02</h2>

            <p>Interview Calls</p>

        </div>

        <div class="card">

            <h2>03</h2>

            <p>Job Offers</p>

        </div>

    </div>

    <!-- Career Progress -->

    <div class="section-card">

        <h2>
            <i class="fa-solid fa-chart-simple"></i>
            Career Progress
        </h2>

        <br>

        <p>
            Complete your profile, apply for relevant jobs,
            and increase your chances of getting shortlisted
            by recruiters.
        </p>

        <br>

        <div class="progress">

            <div class="progress-fill"
            style="
            width:80%;
            background:linear-gradient(135deg,#2563eb,#7c3aed);
            color:white;
            padding:12px;
            border-radius:12px;
            text-align:center;
            font-weight:700;
            ">
                80% Profile Completion
            </div>

        </div>

    </div>

    <!-- Quick Actions -->

    <div class="section-card">

        <h2>
            <i class="fa-solid fa-bolt"></i>
            Quick Actions
        </h2>

        <br>

        <div class="cards">

            <div class="card">

                <i class="fa-solid fa-briefcase"
                style="font-size:40px;color:#2563eb;"></i>

                <br><br>

                <h3>Browse Jobs</h3>

                <br>

                <a href="viewjob" class="apply-btn">
                    Explore
                </a>

            </div>

            <div class="card">

                <i class="fa-solid fa-file-lines"
                style="font-size:40px;color:#10b981;"></i>

                <br><br>

                <h3>Applications</h3>

                <br>

                <a href="myapplications" class="shortlist-btn">
                    View
                </a>

            </div>

            <div class="card">

                <i class="fa-solid fa-user"
                style="font-size:40px;color:#7c3aed;"></i>

                <br><br>

                <h3>My Profile</h3>

                <br>

                <a href="profile.jsp" class="profile-btn">
                    Open
                </a>

            </div>

        </div>

    </div>

    <!-- Featured Tips -->

    <div class="section-card">

        <h2>
            <i class="fa-solid fa-lightbulb"></i>
            Career Tips
        </h2>

        <br>

        <ul style="padding-left:20px;line-height:2;">

            <li>
                Keep your profile updated with latest skills.
            </li>

            <li>
                Apply to jobs matching your expertise.
            </li>

            <li>
                Check your applications regularly.
            </li>

            <li>
                Prepare for interviews in advance.
            </li>

            <li>
                Build a strong professional resume.
            </li>

        </ul>

    </div>

</div>
<script type="text/javascript">
function logout()
{
    alert("Do you Want to Logout");
    window.location.href="home.jsp";
}


</script>
</body>
</html>