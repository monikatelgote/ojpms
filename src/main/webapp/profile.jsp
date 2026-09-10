<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>My Profile | VORTEX</title>

<link rel="stylesheet" href="css/profile.css">
<link rel="stylesheet" href="css/global.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap">

</head>

<body>

	<button class="mobile-toggle"
		onclick="document.querySelector('.sidebar').classList.toggle('open')">
		☰</button>

	<%
	if (session.getAttribute("user") == null)
		response.sendRedirect("login.jsp");
	%>

	<!-- ================= SIDEBAR ================= -->

	<div class="sidebar">

		<div class="logo-box">

			<div class="logo">V</div>
			<h2>VORTEX</h2>


			<p>Job Seeker Portal</p>

		</div>

		<div class="menu">

			<a href="user-dashboard.jsp"> <i class="fa-solid fa-chart-line"></i>

				Dashboard

			</a> <a href="viewjob"> <i class="fa-solid fa-briefcase"></i> Browse
				Jobs

			</a> <a href="myapplications"> <i class="fa-solid fa-file-lines"></i>

				Applications

			</a> <a href="#"> <i class="fa-solid fa-bookmark"></i> Saved Jobs

			</a> <a href="profile.jsp" class="active"> <i
				class="fa-solid fa-user"></i> Profile

			</a> <a href="logout"> <i class="fa-solid fa-right-from-bracket"></i>

				Logout

			</a>

		</div>

	</div>

	<!-- ================= MAIN ================= -->

	<div class="main">

		<!-- TOPBAR -->

		<div class="topbar">

			<div>

				<h1>My Profile</h1>

				<p class="job-name">Manage your account information and career
					profile</p>

			</div>

			<div>

				<a href="user-dashboard.jsp" class="back-btn"> <i
					class="fa-solid fa-arrow-left"></i> Dashboard

				</a> <a href="logout" class="logout-btn"> <i
					class="fa-solid fa-right-from-bracket"></i> Logout

				</a>

			</div>

		</div>

		<!-- COVER BANNER -->

		<div class="cover-banner"></div>

		<!-- PROFILE HEADER -->

		<div class="profile-header">

			<div class="profile-image">${user.name.substring(0,1)}</div>

			<div class="profile-info">

				<h1>${user.name}</h1>

				<h3>${user.role}</h3>

				<p>
					<i class="fa-solid fa-location-dot"></i> Pune, Maharashtra, India
				</p>

				<p>
					<i class="fa-solid fa-envelope"></i> ${user.email}
				</p>

				<br>

				<div class="profile-actions">

					<form action="editprofile">

						<input type="hidden" name="userId" value="${user.id}">

						<button type="submit" class="apply-btn">

							<i class="fa-solid fa-pen"></i> Edit Profile

						</button>

					</form>

				</div>

				<br>

				<p class="success" style="color: #16a34a; font-weight: 700;">
					${msg}</p>

			</div>

		</div>

		<!-- STATS -->

		<div class="stats">

			<div class="stat-card">

				<h2>12</h2>

				<p>Applications</p>

			</div>

			<div class="stat-card">

				<h2>05</h2>

				<p>Saved Jobs</p>

			</div>

			<div class="stat-card">

				<h2>02</h2>

				<p>Interviews</p>

			</div>

			<div class="stat-card">

				<h2>03</h2>

				<p>Offers</p>

			</div>

		</div>

		<!-- ACCOUNT INFO -->

		<div class="section-card">

			<h2>

				<i class="fa-solid fa-user"></i> Account Information

			</h2>

			<br>

			<p>
				<strong>User ID :</strong> ${user.id}
			</p>

			<br>

			<p>
				<strong>Name :</strong> ${user.name}
			</p>

			<br>

			<p>
				<strong>Email :</strong> ${user.email}
			</p>

			<br>

			<p>
				<strong>Role :</strong> ${user.role}
			</p>

		</div>

		<!-- ABOUT -->

		<div class="section-card">

			<h2>

				<i class="fa-solid fa-address-card"></i> About Me

			</h2>

			<br>

			<p>Passionate software professional interested in application
				development, testing, cloud computing, and modern web technologies.
				Dedicated to continuous learning and career growth.</p>

		</div>

		<!-- SKILLS -->

		<div class="section-card">

			<h2>

				<i class="fa-solid fa-code"></i> Skills

			</h2>

			<br>

			<div class="skills"
				style="display: flex; flex-wrap: wrap; gap: 12px;">

				<span class="status">Java</span> <span class="status">SQL</span> <span
					class="status">Hibernate</span> <span class="status">JSP</span> <span
					class="status">Servlet</span> <span class="status">HTML</span> <span
					class="status">CSS</span> <span class="status">JavaScript</span> <span
					class="status">Manual Testing</span> <span class="status">API
					Testing</span>

			</div>

		</div>

		<!-- PROFILE COMPLETION -->

		<div class="section-card">

			<h2>

				<i class="fa-solid fa-chart-pie"></i> Profile Completion

			</h2>

			<br>

			<div
				style="background: #e2e8f0; border-radius: 15px; overflow: hidden;">

				<div
					style="width: 80%; padding: 12px; text-align: center; color: white; font-weight: 700; background: linear-gradient(135deg, #2563eb, #7c3aed);">
					80%</div>

			</div>

			<br>

			<p>Complete your profile to increase recruiter visibility.</p>

		</div>

		<!-- CAREER GOALS -->

		<div class="section-card">

			<h2>

				<i class="fa-solid fa-bullseye"></i> Career Goals

			</h2>

			<br>

			<ul style="padding-left: 20px; line-height: 2;">

				<li>Get shortlisted by top recruiters.</li>

				<li>Improve technical and communication skills.</li>

				<li>Secure a software development role.</li>

				<li>Build a strong professional portfolio.</li>

				<li>Advance career through continuous learning.</li>

			</ul>

		</div>

	</div>

</body>
</html>