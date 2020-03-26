<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
  <title>Add New Case</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="adminResources/css/app.min.css">
  <link rel="stylesheet" href="adminResources/css/selectric.css">
  <!-- Template CSS -->
  <link rel="stylesheet" href="adminResources/css/style.css">
  <link rel="stylesheet" href="adminResources/css/components.css">
  <!-- Custom style CSS -->
  <link rel="stylesheet" href="adminResources/css/custom.css">
  <link rel='shortcut icon' type='image/x-icon' href='adminResources/image/favicon.ico' />
</head>
	
<body>
<%
String L_Id=request.getParameter("lid1");
	session.setAttribute("LId1", L_Id);
%><%@include file="header.jsp" %>
<%@include file="menu.jsp" %>
  <div class="loader"></div>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
            <div class="card card-primary">
              <div class="card-header">
                <h4>Add New Case </h4>
              </div>
              <div class="card-body">
                <form method="POST" action="Addcase.jsp" >
                  <div class="row">
                    <div class="form-group col-6">
                      <label for="forum">Forum - Category</label>
                       <select class="form-control m-bot15" name="forum">
                      					 	<option value="supreme court">Supreme Court</option>
                                         	<option value="high court">High Court</option>
                                        	<option value="District court">District Court</option>
                                            <option value="Consumer forum">Consumer forum</option>
                                             <option value="Tribunals ">Tribunals</option>
                                              <option value="Tax forum">Tax forum</option>
                                               <option value="CNR Number ">CNR Number(District Court)</option>
                                                <option value="Custom court">Custom Court</option>    
                                          </select>     
                  </div>    
				
				 
                    <div class="form-group col-6">
                      <label for="case_type">Case Type</label>
                     <select class="form-control" name="casetype">
                                              <option>Anticipatory bail</option>
                                              <option>Arbitration</option>
                                              <option>Armed forced Tribunal</option>
                                              <option>Banking/Finance</option>
                                              <option>Bankruptcy/Insolvency</option>
                                              <option>Breach of Contract</option>
                                              <option>Cheque Bounce</option>
                                              <option>child Custody</option>
                                              <option>Civil</option>
                                              <option>Consumer Court</option>
                                              <option>Corporate</option>
                                              <option>Criminal</option>
                                              <option>Cyber Crime</option>
                                              <option>Divorce</option>
                                              <option>Documentation</option>
                                              <option>Family</option>
                                              <option>GST</option>
                                              <option>Insurance</option>
                                              <option>International Law</option>
                                              <option>Media and Entertainment</option>
                                              <option>Muslim Law</option>
                                              <option>Patent</option>
                                              <option>Supreme Court</option>
                                              <option>Trademarks & Copyright</option>
                                              <option>Wills/Trusts</option>
                
                                          </select>
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group col-6">
                      <label for="Respondent">Description</label>
                      <textarea rows="100" cols="20" class="form-control" name="description"></textarea>
                    </div>
                    </div>
                   
                  
                  
                    
                  
                 
                 
                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">
                      Add New Case
                    </button>
                  </div>
                </form>
              </div>
              
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- General JS Scripts -->
  <script src="adminResources/js/app.min.js"></script>
  <!-- JS Libraies -->
  <script src="adminResources/js/jquery.pwstrength.min.js"></script>
  <script src="adminResources/js/jquery.selectric.min.js"></script>
  <!-- Page Specific JS File -->
  <script src="adminResources/js/auth-register.js"></script>
  <!-- Template JS File -->
  <script src="adminResources/js/scripts.js"></script>
  <!-- Custom JS File -->
  <script src="adminResources/js/custom.js"></script>
</body>

</html>