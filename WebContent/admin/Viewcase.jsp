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
<title>Law Firm</title>

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
<%
	String caseid=request.getParameter("id1");
	session.setAttribute("caseid", caseid);
%>
		<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">

			<%@include file="header.jsp" %>
			<%@include file="menu.jsp" %>
	
	<%
		
		String id=(String)session.getAttribute("ID");
		String Clientid;
		String caseno;
		String Petitioner="";
		String Courttype;
		String Casetype;
		String Description;
		String Nexthearing;
		String[] a;
		
		int i=0;
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
		Statement s=c.createStatement();
		  String Previousdate="";
      	 String note="";
      
      	ResultSet rs=s.executeQuery("SELECT Case_Id,Case_No,CaseType,Courttype,Description,First_Name,Nexthearing FROM case_data,client_data where case_data.Client_Id=client_data.Login_Id and Lawyer_Id='"+id+"' and Status=3 order by Nexthearing desc");
		 while(rs.next())
		{
			Nexthearing=rs.getString("Nexthearing"); 
      	
      	
		
		
			%>
	
	<div class="loader"></div>
  <div id="app">
    <div class="main-wrapper main-wrapper-1">
      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-body">
            
           
              
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
                          aria-controls="profile" aria-selected="false">Previous Hearing Notes</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="contact-tab3" data-toggle="tab" href="#next" role="tab"
                          aria-controls="contact" aria-selected="false">Next Hearing</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" id="contact-tab3" data-toggle="tab" href="#doc" role="tab"
                          aria-controls="contact" aria-selected="false"> Documents</a>
                      </li>
                    </ul>
                    
                    
                    
                     
                      
                      
                     
                      <div class="tab-pane fade" id="previous" role="tabpanel" aria-labelledby="profile-tab3">
                      
                          <div class="section-body">
							<div class="col-6 col-md-6 col-lg-6">
				                <div class="card">
				                  
				                    <div class="card-body">
				                     
				                      <div class="form-group">
				                        <label>Previous Hearing Date</label>
				                        <% 
				                        Class.forName("com.mysql.jdbc.Driver");
				                		Connection c1=DriverManager.getConnection("jdbc:mysql://localhost/lawyerportal","root","root");
				                		Statement s1=c1.createStatement();
				                        ResultSet resultset=s1.executeQuery("select * from Previous_Hearing_Notes where Case_Id='"+caseid+"'");
				                        if(resultset.next())
				                     	 {
				                     		 
				                     		 Previousdate=resultset.getString("Date");
				                     		 note=resultset.getString("Note");
				                     		 %>
				                        <input type="text" class="form-control" name="previous" value=<%=Previousdate %> required="">
				                      </div>
				      
				                      <div class="form-group">
				                      	<lable>Notes</lable>
				                      	<textarea rows="50" cols="20" name="note" class="form-control" value=<%=note%> ></textarea>
				                       </div>
				                        <% 
                      	 }%> 
				                    <div class="card-footer text-right">
				                </div>
				               
				                </div>
				                </div>
                			
                      
                          
                      </div>
                      </div>
                      </div>
                     
                      <div class="tab-pane fade" id="next" role="tabpanel" aria-labelledby="contact-tab3">
                       	 <div class="section-body">
							<div class="col-6 col-md-6 col-lg-6">
				                <div class="card">
				                  
				                   
				                    <div class="card-body">
				                     
				                      <div class="form-group">
				                        <label>Next Hearing</label>
				                        <input type="text" class="form-control" name="next" value= <%=Nexthearing %> > 
				                      </div>
				            		
                       <% 
				             }
	%>       
				                    </div>
				                    <div class="card-footer text-right">
				                      <!-- <button class="btn btn-primary">Submit</button> -->
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
				                        <label>Attach Your File Here</label>
				                        <input type="file" name="doc" class="form-control">
				                      </div>
				                      
				                     
				                    </div>
				                    <!-- <div class="card-footer text-right"> -->
				                    
				                    </div>
				                
				                </div>
				                </div>
                			</div>
                	
                      
                      
                    
                    </div>
                  </div>
                </div>
                      
              </div>
              </section>
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