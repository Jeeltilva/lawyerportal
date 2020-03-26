<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
String caseid=request.getParameter("id1");
session.setAttribute("caseid", caseid);

%>
<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
	<!-- Main Content -->
      <div align="center" class="main-content">
        <section class="section">
      	
      	<div class="section-body">
							<div class="col-6 col-md-6 col-lg-6">
				                <div class="card">
				                  <form action="addjudge.jsp">
				                      
				                    <div class="card-body">
				                     
				                      
				                      <div class="form-group">
				                      	<lable>Add Judgements</lable>
				                      	<textarea rows="50" cols="20" name="judg" class="form-control"></textarea>
				                      </div>
				                      
				                    </div>
				                    <div class="card-footer text-right">
				                      <button class="btn btn-primary">Submit</button>
				                    </div>
				                  </form>
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