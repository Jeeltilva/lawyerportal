<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Dashboard</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="adminResources/css/app.min.css"">
<!-- Template CSS -->
<link rel="stylesheet" href="adminResources/css/style.css">
<link rel="stylesheet" href="adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='adminResources/image/favicon.ico' />
</head>

<body>
<%-- <%
String caseid=request.getParameter("id1");
session.setAttribute("caseid", caseid);
%> --%>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">

<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>

			<!-- Main Content -->
			<div class="main-content">
			<section class="section">
          <div class="section-body">
			<div class="col-6 col-md-6 col-lg-6">
                <div class="card">
                  <form action="edit.jsp">
                    <!-- <div class="card-header">
                      <h4>Default Validation</h4>
                    </div> -->
                    <div class="card-body">
                      <!-- <div class="form-group">
                        <label>Next Hearing</label>
                        <input type="date" class="form-control" name="date" required="">
                      </div> -->
                      <div class="form-group">
                        <label>Case No</label>
                        <input type="text" class="form-control" name="caseno" required="">
                      </div>
                      <!-- <div class="form-group">
                        <label>Subject</label>
                        <input type="email" class="form-control">
                      </div> -->
                      <!-- <div class="form-group mb-0">
                        <label>Note</label>
                        <textarea class="form-control" name="note" ></textarea>
                      </div> -->
                    </div>
                    <div class="card-footer text-right">
                      <button class="btn btn-primary">Submit</button>
                    </div>
                  </form>
                </div>
                </div>
                </div>
                </section>
                </div>
                
			<jsp:include page="footer.jsp"></jsp:include>


		</div>
	</div>
	<!-- General JS Scripts -->
	<script src="adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<script src="adminResources/js/apexcharts.min.js"></script>
	<!-- Page Specific JS File -->
	<script src="adminResources/js/index.js"></script>
	<!-- Template JS File -->
	<script src="adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="adminResources/js/custom.js"></script>
</body>

</html>