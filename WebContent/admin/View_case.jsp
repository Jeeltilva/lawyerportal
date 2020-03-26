<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
  <meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Case </title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="adminResources/css/app.min.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="adminResources/css/style.css">
  <link rel="stylesheet" href="adminResources/css/components.css">
  <!-- Custom style CSS -->
  <link rel="stylesheet" href="adminResources/css/custom.css">
  <link rel='shortcut icon' type='image/x-icon' href='adminResources/img/favicon.ico' />
</head>

<body>
<%
	String date;
	String note;
	String caseid=request.getParameter("id1");
	session.setAttribute("caseid", caseid);
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
	Statement s=c.createStatement();
	
%>
<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
  <div class="loader"></div>
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          
            
              
                <div class="card">
                  <div class="card-header">
                    <h4>Case Page</h4>
                  </div>
                  <div class="card-body">
                    <ul class="nav nav-pills" id="myTab3" role="tablist">
                      <li class="nav-item">
                        <a class="nav-link active" id="home-tab3" data-toggle="tab" href="#casefile" role="tab"
                          aria-controls="home" aria-selected="true">Case File</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="profile-tab3" data-toggle="tab" href="#previous" role="tab"
                          aria-controls="profile" aria-selected="false">Previous Hearings</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="contact-tab3" data-toggle="tab" href="#doc" role="tab"
                          aria-controls="contact" aria-selected="false">Documents</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="contact-tab3" data-toggle="tab" href="#judgement" role="tab"
                          aria-controls="contact" aria-selected="false">Judgement</a>
                      </li>
                      
                    </ul>
                    
                    
                    
                    <div class="tab-content" id="myTabContent2">
                      <div class="tab-pane fade show active" id="casefile" role="tabpanel" aria-labelledby="home-tab3">
                        
                      </div>
                      
                      
                      
                      <div class="tab-pane fade" id="previous" role="tabpanel" aria-labelledby="profile-tab3">
                          <div class="section-body">
							<div class="col-6 col-md-6 col-lg-6">
				                <div class="card">
				                  
				                   
				                    <div class="card-body">
				                     
				                      <div class="form-group">
				                        <label>Previous Hearings with date</label>
				                      </div>
				      				
				      				<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>Date</th>
														<th>Note</th>
													</tr>
												</thead>
											<%
				      					ResultSet rs=s.executeQuery("SELECT * From previous_hearing_notes where Case_Id='"+caseid+"'");
				      						while(rs.next()){
												date=rs.getString("Date");
												note=rs.getString("Note");
				      						
				      					%>
												<tbody>
													<tr>
														<td><%=date %></td>
														<td><%=note %></td>
													</tr>
												</tbody>
											
				      				  <%} %>
				      				  </table>
				                    </div>
				                    
				                </div>
				                </div>
                			</div>
                      </div>
                      
                      
                      
                      
                      
                      
                       <div class="tab-pane fade" id="doc" role="tabpanel" aria-labelledby="contact-tab3">
                       	 <div class="section-body">
							<div class="col-6 col-md-6 col-lg-6">
				                <div class="card">
				      
				                   
				                    <div class="card-body">
				                     
				                      <div class="form-group">
				                        <label>Documents</label>
				                      </div>
				                      
				                     
				                    </div>
				                </div>
				                </div>
                			</div>
                      </div>
                      <div class="tab-pane fade" id="judgement" role="tabpanel" aria-labelledby="contact-tab3">
                       	 <div class="section-body">
							<div class="col-6 col-md-6 col-lg-6">
				                <div class="card">
				                
				                   
				                    <div class="card-body">
				                     
				                      <div class="form-group">
				                        <label>Judgement</label>
				                   
				                      </div>
				                			<%String judge;
				      					ResultSet rs3=s.executeQuery("SELECT * From case_data where Case_Id='"+caseid+"'");
				      						while(rs3.next()){
												//date=rs3.getString("Nexthearing");
												judge=rs3.getString("judgement");
				      						
				      					%>
														<p><%=judge %></p>
											
				      				  <%} %>
				      				  </table>
				                   
				                      
				                    </div>
				                </div>
				                </div>
                			</div>
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