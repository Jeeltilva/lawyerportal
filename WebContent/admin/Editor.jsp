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
	<!-- <link rel="stylesheet" href="assets/css/app.min.css">
  <link rel="stylesheet" href="assets/bundles/summernote/summernote-bs4.css">
  <link rel="stylesheet" href="assets/bundles/codemirror/lib/codemirror.css">
  <link rel="stylesheet" href="assets/bundles/codemirror/theme/duotone-dark.css">
  <link rel="stylesheet" href="assets/bundles/jquery-selectric/selectric.css">
  Template CSS
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
  Custom style CSS
  <link rel="stylesheet" href="assets/css/custom.css">
  <link rel='shortcut icon' type='image/x-icon' href='assets/img/favicon.ico' /> -->
  <script type="text/javascript" src="assets/ckeditors/ckeditor.js">
  
  </script>
  
</head>

<body>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">

<%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
<div class="main-content">
			<!-- Main Content -->
			
		     
		      <section class="section">
          <div class="section-body">
            <div class="row">
              <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                <div class="card">
                  <div class="body">
                    <div id="mail-nav">
                      <ul class="" id="mail-folders">
                        
                        <li>
                          <a href="Editor.jsp" title="Sent">Case File</a>
                        </li>
                        <li>
                          <a href="javascript:;" title="Draft">Draft</a>
                        </li>
                        <li>
                          <a href="javascript:;" title="Bin">Bin</a>
                        </li>
                        <li>
                          <a href="javascript:;" title="Important">Important</a>
                        </li>
                        <li>
                          <a href="javascript:;" title="Starred">Starred</a>
                        </li>
                      </ul>
                     
                    
                      
                    </div>
                  </div>
                </div>
              </div>
            
          </div>
        </section>
        <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9">
                <div class="card">
                  <div class="boxs mail_listing">
                    <div class="inbox-center table-responsive">
                     	
                    </div>
                   		<div id="Details" class="tab-pane">
                  <section class="panel"></br>
                  <div class="form">
                      <form action="#" class="form-horizontal">
                        <div class="form-group">
                          <div class="col-sm-12">
                            <textarea class="form-control ckeditor" name="editor1" rows="12">Enter details here !!</textarea>
                          </div>
                          </br>
                          <div class="col-sm-2">
                            <a class="btn btn-warning" href="" title="">Save</a>
                          </div>
                        </div>
                      </form>
                    </div>
                  </section>
                  </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

			<jsp:include page="footer.jsp"></jsp:include>


		</div>
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