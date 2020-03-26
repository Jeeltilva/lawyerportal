<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
	<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Cases</title>

<!-- Fav Icon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Bootstrap -->
<link href="userResources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="userResources/css/settings.css">
<link href="userResources/css/font-awesome.css" rel="stylesheet">
<link href="userResources/css/owl.carousel.css" rel="stylesheet">
<link href="userResources/css/style.css" rel="stylesheet">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">


</head>
<body>
		<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">

			<%@include file="header.jsp" %>
			<%@include file="menu.jsp" %>
	
	<%
		///String id;
	
		String cid=(String)session.getAttribute("cid");
		String Lawyerid;
		String caseno;
		String Lawyer="";
		String Courttype;
		String Casetype;
		String Description;
		String[] a;
		int caseid;
		int i=0;
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
		Statement s=c.createStatement();
		
		ResultSet rs=s.executeQuery("SELECT Case_Id,Case_No,CaseType,Courttype,Description,First_Name FROM case_data,lawyer_data where case_data.Lawyer_Id=Lawyer_data.Login_Id and Client_Id='"+cid+"' and Case_Data.Status=3 ");
		
	%>
			<div class="main-content">
        <section class="section">
          <div class="section-body">
            <div class="row">
              <div class="col-12">
                <div class="card mb-0">
                  
                </div>
              </div>
            </div>
            <div class="row mt-4">
              <div class="col-12">
                <div class="card">
                  
                  <div class="card-body">
                    
                    	<center><h3>Ongoing Cases</h3></center>
    
	
			        <div class="table-responsive">
                      <table class="table table-striped">
                        <tr>
                          <th class="pt-2">
                            <div class="custom-checkbox custom-checkbox-table custom-control">
                              <input type="checkbox" data-checkboxes="mygroup" data-checkbox-role="dad"
                                class="custom-control-input" id="checkbox-all">
                              <label for="checkbox-all" class="custom-control-label">&nbsp;</label>
                            </div>
                          </th>
                          <th>Case No</th>
                          <th>Lawyer</th>
                          <th>Court Type</th>
                          <th>Case Type</th>
                          <th>Description</th>
                          <th>Action</th>
                          
                        </tr>
                        <%
						while(rs.next())
						{
							caseid=rs.getInt("Case_Id");
														
							Courttype=rs.getString("Courttype");
							Casetype=rs.getString("Casetype");
							Description=rs.getString("Description");
							Lawyer=rs.getString("First_Name");
							caseno=rs.getString("Case_No");
							// ResultSet rs1=s.executeQuery("SELECT * FROM client_data where Login_Id='"+Clientid+"'");
							 //while(rs1.next())
							//{
								//Petitioner=rs1.getString("First_Name");
								//} 
	
							%>
							<tr>
                          <td>
                            <div class="custom-checkbox custom-control">
                            
                              <input type="checkbox" data-checkboxes="mygroup" class="custom-control-input"
                                 value=<%=caseid %>>
                              <label for="checkbox-2" class="custom-control-label">&nbsp;</label>
                            </div>
                          </td>
                          <td>
                            
                              <span class="d-inline-block ml-1"><%=caseno %></span>
                           
                          </td>
                          <td>
                            
                              <span class="d-inline-block ml-1"><%= Lawyer %></span>
                           
                          </td>
                          <td>
                          	 <span class="d-inline-block ml-1"><%= Courttype%></span>
                          </td>
                          <td>
                            <span class="d-inline-block ml-1"><%= Casetype%></span>
                          </td>
                          <td>
                          <span class="d-inline-block ml-1"><%= Description%></span>
						</td>
                          <td>
                          	<span class="d-inline-block ml-1"><button><a href="View_case.jsp?id1=<%=caseid %>"><b>View</b></a></button></span>&nbsp;
                          	
                          </td>
                          
                        </tr>
						<%
							}					
						%>	
                        
                      </table>
                    </div>
                    <div class="float-right">
                      
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <div class="settingSidebar">
          <a href="javascript:void(0)" class="settingPanelToggle"> <i class="fa fa-spin fa-cog"></i>
          </a>
          <div class="settingSidebar-body ps-container ps-theme-default">
            <div class=" fade show active">
              <div class="setting-panel-header">Setting Panel
              </div>
              <div class="p-15 border-bottom">
                <h6 class="font-medium m-b-10">Select Layout</h6>
                <div class="selectgroup layout-color w-50">
                  <label class="selectgroup-item">
                    <input type="radio" name="value" value="1" class="selectgroup-input-radio select-layout" checked>
                    <span class="selectgroup-button">Light</span>
                  </label>
                  <label class="selectgroup-item">
                    <input type="radio" name="value" value="2" class="selectgroup-input-radio select-layout">
                    <span class="selectgroup-button">Dark</span>
                  </label>
                </div>
              </div>
              <div class="p-15 border-bottom">
                <h6 class="font-medium m-b-10">Sidebar Color</h6>
                <div class="selectgroup selectgroup-pills sidebar-color">
                  <label class="selectgroup-item">
                    <input type="radio" name="icon-input" value="1" class="selectgroup-input select-sidebar">
                    <span class="selectgroup-button selectgroup-button-icon" data-toggle="tooltip"
                      data-original-title="Light Sidebar"><i class="fas fa-sun"></i></span>
                  </label>
                  <label class="selectgroup-item">
                    <input type="radio" name="icon-input" value="2" class="selectgroup-input select-sidebar" checked>
                    <span class="selectgroup-button selectgroup-button-icon" data-toggle="tooltip"
                      data-original-title="Dark Sidebar"><i class="fas fa-moon"></i></span>
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
                  <label class="m-b-0">
                    <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input"
                      id="mini_sidebar_setting">
                    <span class="custom-switch-indicator"></span>
                    <span class="control-label p-l-10">Mini Sidebar</span>
                  </label>
                </div>
              </div>
              <div class="p-15 border-bottom">
                <div class="theme-setting-options">
                  <label class="m-b-0">
                    <input type="checkbox" name="custom-switch-checkbox" class="custom-switch-input"
                      id="sticky_header_setting">
                    <span class="custom-switch-indicator"></span>
                    <span class="control-label p-l-10">Sticky Header</span>
                  </label>
                </div>
              </div>
              <div class="mt-4 mb-4 p-3 align-center rt-sidebar-last-ele">
                <a href="#" class="btn btn-icon icon-left btn-primary btn-restore-theme">
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