<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Post Job | VORTEX</title>

<link rel="stylesheet" href="css/post-job.css">
<link rel="stylesheet" href="css/global.css">

<link rel="stylesheet"
href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

</head>

<body>

<button class="mobile-toggle"
onclick="document.querySelector('.sidebar').classList.toggle('open')"
aria-label="Menu">
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
		

		<p>Recruiter Portal</p>

	</div>

	<div class="menu">

		<a href="recruiter-dashboard.jsp">

			<i class="fa-solid fa-chart-line"></i>

			Dashboard

		</a>

		<a href="post-job.jsp" class="active">

			<i class="fa-solid fa-plus"></i>

			Post Job

		</a>

		<a href="posted-jobs-by-recruiter.jsp">

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

<!-- ================= MAIN ================= -->

<div class="main">

	<!-- HEADER -->

	<div class="page-header">

		<div>

			<h1>
				Create New Job Posting
			</h1>

			<p>
				Reach thousands of qualified candidates and
				find the perfect match for your organization.
			</p>

		</div>

		<a href="recruiter-dashboard.jsp"
		class="back-btn">

			<i class="fa-solid fa-arrow-left"></i>

			Dashboard

		</a>

	</div>

	<!-- HERO CARD -->

	<div class="hero-card">

		<div class="hero-content">

			<span class="badge">
				Recruitment Management Platform
			</span>

			<h2>
				Publish Jobs Faster &
				Hire Better Talent
			</h2>

			<p>
				Create professional job listings,
				attract skilled applicants,
				and manage hiring efficiently.
			</p>

		</div>

	</div>

	<!-- STATS -->

	<div class="stats-grid">

		<div class="stat-card">

			<div class="stat-icon">
				<i class="fa-solid fa-users"></i>
			</div>

			<h2>500+</h2>

			<p>Active Candidates</p>

		</div>

		<div class="stat-card">

			<div class="stat-icon">
				<i class="fa-solid fa-briefcase"></i>
			</div>

			<h2>120+</h2>

			<p>Jobs Posted</p>

		</div>

		<div class="stat-card">

			<div class="stat-icon">
				<i class="fa-solid fa-award"></i>
			</div>

			<h2>95%</h2>

			<p>Hiring Success</p>

		</div>

	</div>

	<!-- FORM SECTION -->

	<div class="job-layout">

		<!-- LEFT PANEL -->

		<div class="info-card">

			<div class="info-icon">

				<i class="fa-solid fa-user-tie"></i>

			</div>

			<h2>Hire Smarter</h2>

			<p>

				Create attractive job postings and connect
				with top talent from across the country.

			</p>

			<ul>

				<li>
					<i class="fa-solid fa-check"></i>
					Reach More Candidates
				</li>

				<li>
					<i class="fa-solid fa-check"></i>
					Faster Hiring Process
				</li>

				<li>
					<i class="fa-solid fa-check"></i>
					Better Applicant Management
				</li>

			</ul>

		</div>

		<!-- FORM CARD -->

		<div class="form-card">

			<div class="card-header">

				<h2>

					<i class="fa-solid fa-file-circle-plus"></i>

					Job Details

				</h2>

				<p>
					Fill in the information below.
				</p>

			</div>

			<!-- FUNCTIONALITY UNCHANGED -->

			<form action="postjob" method="post">

				<div class="input-group">

					<label>Job Title</label>

					<input
					type="text"
					name="title"
					required>

				</div>

				<div class="input-group">

					<label>Location</label>

					<input
					type="text"
					name="location"
					required>

				</div>

				<div class="input-group">

					<label>Salary</label>

					<input
					type="number"
					name="salary"
					required>

				</div>

				<div class="input-group">

					<label>Last Date To Apply</label>

					<input
					type="date"
					name="lastDate"
					required>

				</div>

				<div class="input-group">

					<label>Description</label>

					<textarea
					name="description"
					rows="6"
					required></textarea>

				</div>

				<button
				type="submit"
				class="post-btn">

					<i class="fa-solid fa-paper-plane"></i>

					POST JOB

				</button>

			</form>

		</div>

	</div>

</div>

</body>
</html>