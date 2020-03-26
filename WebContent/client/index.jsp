<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
<%
	String id=(String)session.getAttribute("cid");
%>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">

<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>

			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					
					
					<div class="row ">
					
					
					
					
						<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Number Of Cases</h5>
													<% 
														int i=0;
														Class.forName("com.mysql.jdbc.Driver");
														Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
														Statement s=c.createStatement();
														ResultSet rs=s.executeQuery("select * from Case_Data WHERE Client_Id='"+id+"'");
														while(rs.next())
														{
															i=i+1;
														}
													%>
													<br>
													<h2 class="mb-3 font-18"><%=i %></h2>
													
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
												<div class="banner-img">
													<img src="adminResources/image/1.png" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
						
						
						
						<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Number Of Suspended Cases</h5>
													<%
														int j=0;
														ResultSet rs1=s.executeQuery("select * from Case_Data Where Client_Id='"+id+"' and Status=5");
														while(rs1.next())
														{
															j=j+1;
														}
														%>
														<br>
													<h2 class="mb-3 font-18"><%=j %></h2>
													
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
												<div class="banner-img">
													<img src="adminResources/image/2.png" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						
						
						<div class="col-xl-3 col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Number Of Lawyers</h5>
													<%
														int k=0;
														ResultSet rs2=s.executeQuery("select Lawyer_Id from Case_Data Where Client_Id='"+id+"'");
														while(rs2.next())
														{
															k=k+1;
														}
														%>
														<br>
													<h2 class="mb-3 font-18"><%=k %></h2>
													
												</div>
											</div>
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pl-0">
												<div class="banner-img">
													<img src="adminResources/image/3.png" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</div>
						
				
					
				<div class="settingSidebar">
					<a href="javascript:void(0)" class="settingPanelToggle"> <i
						class="fa fa-spin fa-cog"></i>
					</a>
					<div class="settingSidebar-body ps-container ps-theme-default">
						<div class=" fade show active">
							<div class="setting-panel-header">Setting Panel</div>
							<div class="p-15 border-bottom">
								<h6 class="font-medium m-b-10">Select Layout</h6>
								<div class="selectgroup layout-color w-50">
									<label class="selectgroup-item"> <input type="radio"
										name="value" value="1"
										class="selectgroup-input-radio select-layout" checked>
										<span class="selectgroup-button">Light</span>
									</label> <label class="selectgroup-item"> <input type="radio"
										name="value" value="2"
										class="selectgroup-input-radio select-layout"> <span
										class="selectgroup-button">Dark</span>
									</label>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<h6 class="font-medium m-b-10">Sidebar Color</h6>
								<div class="selectgroup selectgroup-pills sidebar-color">
									<label class="selectgroup-item"> <input type="radio"
										name="icon-input" value="1"
										class="selectgroup-input select-sidebar"> <span
										class="selectgroup-button selectgroup-button-icon"
										data-toggle="tooltip" data-original-title="Light Sidebar"><i
											class="fas fa-sun"></i></span>
									</label> <label class="selectgroup-item"> <input type="radio"
										name="icon-input" value="2"
										class="selectgroup-input select-sidebar" checked> <span
										class="selectgroup-button selectgroup-button-icon"
										data-toggle="tooltip" data-original-title="Dark Sidebar"><i
											class="fas fa-moon"></i></span>
									</label>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<h6 class="font-medium m-b-10">Color Theme</h6>
								<div class="theme-setting-options">
									<ul class="choose-theme list-unstyled mb-0">
										<li title="white" class="active">
											<div class="white"></div>
										</li>
										<li title="cyan">
											<div class="cyan"></div>
										</li>
										<li title="black">
											<div class="black"></div>
										</li>
										<li title="purple">
											<div class="purple"></div>
										</li>
										<li title="orange">
											<div class="orange"></div>
										</li>
										<li title="green">
											<div class="green"></div>
										</li>
										<li title="red">
											<div class="red"></div>
										</li>
									</ul>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<div class="theme-setting-options">
									<label class="m-b-0"> <input type="checkbox"
										name="custom-switch-checkbox" class="custom-switch-input"
										id="mini_sidebar_setting"> <span
										class="custom-switch-indicator"></span> <span
										class="control-label p-l-10">Mini Sidebar</span>
									</label>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<div class="theme-setting-options">
									<label class="m-b-0"> <input type="checkbox"
										name="custom-switch-checkbox" class="custom-switch-input"
										id="sticky_header_setting"> <span
										class="custom-switch-indicator"></span> <span
										class="control-label p-l-10">Sticky Header</span>
									</label>
								</div>
							</div>
							<div class="mt-4 mb-4 p-3 align-center rt-sidebar-last-ele">
								<a href="#"
									class="btn btn-icon icon-left btn-primary btn-restore-theme">
									<i class="fas fa-undo"></i> Restore Default
								</a>
							</div>
						</div>
					</div>
				</div>
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