<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.io.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Blank | Creative - Bootstrap 3 Responsive Admin Template</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <script src='https://kit.fontawesome.com/833fc807c2.js'></script>
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />


</head> 
<body>
    
  <!-- container section start -->
  <section id="container" class="">
   
    
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 Case style="text-align:center" class="page-header"><b><u>Case Info</u></b></h3>
            <section class="panel">
              <header class="panel-heading tab-bg-primary ">
                <ul class="nav nav-tabs">
                  <li class="active">
                    <a data-toggle="tab" href="#Info">Info</a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#Details">Case Detais</a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#Orders">Case Orders</a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#Notes">Notes</a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#Documents">Documents</a>
                  </li>
                  <li class="">
                    <a data-toggle="tab" href="#Client">Client</a>
                  </li>
                </ul>
              </header>

                  <div id="Details" class="tab-pane">
                  <section class="panel"></br>
                  <div class="form">
                      <form action="#" class="form-horizontal">
                        <div class="form-group">
                          <div class="col-sm-12">
                            <textarea class="form-control ckeditor" name="editor1" rows="12" placeholder>Enter details here !!</textarea>
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

                  <div id="Orders" class="tab-pane">
                  <section class="panel"></br>
                  <div class="col-sm-12" >
              <header class="panel-heading">
                Next Hearing Date
              </header>
              <div class="list-group-item">
              <p id="demo">no date added</p></br>
               <a class="btn btn-primary" > <i class="fas fa-plus"> Add date</i></a>
              </div>
              </div>
            </section>

            <section class="panel">
          <div class="col-sm-12">
          <header class="panel-heading">
                Previous Orders
            </header>
            <section class="panel">
              <table class="table">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Date</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Mark</td>
                  </tr>
                </tbody>
              </table>
            </section>
            </section>
                  </div>


                  <div id="Notes" class="tab-pane">
                  <section class="panel">
                  </br>
              <header class="panel-heading">
                Add New Note
              </header>
              <div class="panel-body">
                <form class="form-horizontal " method="get">
                  <div class="form-group">
                    <label class="col-sm-1 control-label">Enter Note :</label>
                    <div class="col-sm-8">
                      <textarea type="text" class="form-control"></textarea></br>
                      <a class="btn btn-primary" > <i class="fas fa-plus"> Add Note</i></a>
                    </div>
                  </div>
                  </form>
                  </div>
                  </section>

           
                    
              <header class="panel-heading">
                Notes
              </header>
              <ul class="list-group">
                <li class="list-group-item">added datetime
                  Lorem ipsum dolor sit amet Praesent tempus eleifend risusPraesent tempus eleifend risusPraesent tempus eleifend risusPraesent tempus eleifend risusPraesent tempus eleifend risusPraesent tempus eleifend risus</li>
                <li class="list-group-item">Praesent tempus eleifend risus</li>
              </ul>
            
                    </div>


                  <div id="Documents" class="tab-pane">
                  <div class="row">
          <div class="col-lg-12"></br>
            <section class="panel">
              <header class="panel-heading">
                Add New Document
              </header>
              <div class="panel-body" style="padding-left: 50px; color:#000000;">
                <form class="form-horizontal " method="get">
                  <div class="form-group">
                    <label for="exampleInputFile"><b>Select Document File :</b></label></br>
                    <input type="file" id="exampleInputFile">
                    <p class="help-block">which file can be entered</p>
                  </div>
                  </br>
                  <button type="submit" class="btn btn-primary"><i class="fas fa-plus">Add Document</i></button>
                </form>
              </div>
            </section>
            <div class="row">
          <div class="col-lg-12">
            <section class="panel">
              <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                    <th class="col-sm-5">Document Name</th>
                    <th class="col-sm-5">Date</th>
                    <th class="col-sm-1">View</th>
                    <th class="col-sm-1">Delete</th>
                  </tr>
                  <tr>
                    <td>Angeline Mcclain</td>
                    <td>2004-07-06</td>
                    <td>
                      <a class="btn btn-primary" href="#">View</a>
                    </td>
                    <td>
                      <a class="btn btn-danger" href="#">Delete</a>
                    </td>
                  </tr>
            </tbody>
            </table>
            </section>
            </div>
            </div>  
          </div>
          </div>
          </div>


            <div id="Client" class="tab-pane">
            <div class="row">
          <div class="col-lg-12">
            <section class="panel">
            </br>
              <header class="panel-heading">
               Link New Client
              </header></br>
              <div>
                    <form class="navbar-form">
                      <input class="form-control" placeholder="Search" type="text" style="width:400px; margin-left:300px">
                    </form>
                </div>
                </br>
                </br>
                </br>
            </section>
          </div>
          </div>

            <div class="row">
              <div class="col-lg-12">
              </br>
                <section class="panel">
                  <p><b><u>
                    Linked Clients
                  </b></p></u>
                  <table class="table table-striped table-advance table-hover">
                    <tbody>
                      <tr>
                    <th><i class="icon_profile"></i> Full Name</th>
                    <th><i class="icon_mail_alt"></i> Email</th>
                    <th><i class="icon_pin_alt"></i> City</th>
                    <th><i class="icon_mobile"></i> Mobile</th>
                    <th><i class="icon_cogs"></i> Delete</th>
                      </tr>
                      <tr>
                    <td>Angeline Mcclain</td>
                    <td>dale@chief.info</td>
                    <td>Rosser</td>
                    <td>176-026-5992</td>
                    <td>
                        <a class="btn btn-danger" href="">Delete</a>
                    </td>
                  </tr>
                  <tr>
          </div>
        </div>
        
      </section>
    </section>
    <!--main content end-->
  </section>
  <!-- container section end -->
  <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
</body>

    <script src="js/jquery.js"></script>
  <script src="js/jquery-ui-1.10.4.min.js"></script>
  <script src="js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <<script src="js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <script src="js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js"></script>
    <script src="assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/xcharts.min.js"></script>
    <script src="js/jquery.autosize.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/gdp-data.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/sparklines.js"></script>
    <script src="js/charts.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    
</html>
