<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Lawyer</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="adminResources/css/style.css">
<link rel="stylesheet" href="adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='adminResources/image/favicon.ico' />
</head>

<body>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">

			<jsp:include page="header.jsp"></jsp:include>


			<jsp:include page="menu.jsp"></jsp:include>


			<!-- Main Content -->
			<div class="main-content">
			<section class="section">
								<div class="section-body">
				<%
						/* session.removeAttribute("LId"); */
						int Lawyer_Id;
						String Name;
						String Surname;
						String Gender;
						String Email_Id;
						String Mobile_No;
						String Nationality;
						String City;
						String Address;
						String Council_No;
						String University_Name;
						String lid;
						int Year;
						String AreaOfPrac;
						Class.forName("com.mysql.jdbc.Driver");
						Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
						Statement s=c.createStatement();
						ResultSet rs=s.executeQuery("SELECT * FROM Lawyer_Data");											
						while(rs.next())
						{
							Lawyer_Id=rs.getInt("Lawyer_Id");
							Name=rs.getString("First_Name");
							Surname=rs.getString("Last_Name");
							Gender=rs.getString("Gender");
							Email_Id=rs.getString("Email_Id");
							Mobile_No=rs.getString("Mobile_No");
							Nationality=rs.getString("Nationality");
							City=rs.getString("City");
							Address=rs.getString("Address");
							Council_No=rs.getString("Council_No");
							University_Name=rs.getString("University_Name");
							Year=rs.getInt("Year");
							AreaOfPrac=rs.getString("AreaOfPrac");
							lid=rs.getString("Login_Id");
							
							%>	
							
									<div class="row mt-sm-4">
										<div class="col-12 col-md-12 col-lg-4">
											<div class="card author-box">
												<div class="card-body">
													<div class="author-box-center">
														<img alt="image" src="adminResources/image/lawyer.jpg"
															class="rounded-circle author-box-picture">
														<div class="clearfix"></div>
														<div class="author-box-name">
														<span><%= Name %> <%=Surname %></span>	
														</div>
														<div class="author-box-job">Lawyer</div>
														
													</div>
													
													<h6>Personal Details</h6>
												
													<div class="py-4">
														<p class="clearfix">
															<span class="float-left"> Exprience </span> <span
																class="float-right text-muted"> <%= Year%> Year </span>
														</p>
														
														<p class="clearfix">
															<span class="float-left"> Area of practice: </span> <span
																class="float-right text-muted"> <%=AreaOfPrac %>
															</span>
															<br>
															<div class="author-box-job">
														
								              		<button><span><a href="AddNewCase.jsp?lid1=<%= lid%>">Request</a></span></button> 
								              		</div>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								
							
							<%
								}
							%>
							</div>
		</section>
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
	<!-- Page Specific JS File -->
	<!-- Template JS File -->
	<script src="adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="adminResources/js/custom.js"></script>
</body>

</html>
