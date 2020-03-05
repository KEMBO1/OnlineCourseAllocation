<%-- 
    Document   : Login1
    Created on : Feb 27, 2020, 4:49:11 PM
    Author     : Keboi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Online Course Allocation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">

  <link rel="stylesheet" href="css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="css/aos.css">
  <link href="css/jquery.mb.YTPlayer.min.css" media="all" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="css/style.css">



</head>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>


    <div class="py-2 bg-light">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-9 d-none d-lg-block">
            <a href="#" class="small mr-3"><span class="icon-question-circle-o mr-2"></span> Have a questions?</a> 
            <a href="#" class="small mr-3"><span class="icon-phone2 mr-2"></span>+254798767714</a> 
            <a href="#" class="small mr-3"><span class="icon-envelope-o mr-2"></span> anthokemboi6@.com</a> 
          </div>
          <div class="col-lg-3 text-right">
            <a href="Login1.jsp" class="small mr-3"><span class="icon-unlock-alt"></span> Log In</a>
            <a href="Regester.jsp" class="small btn btn-primary px-4 py-2 rounded-0"><span class="icon-users"></span> Register</a>
          </div>
        </div>
      </div>
    </div>
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="d-flex align-items-center">
          <div class="site-logo">
            <a href="index.jsp" class="d-block">
              <img src="images/logo.jpg" alt="Image" class="img-fluid">
            </a>
          </div>
          <div class="mr-auto">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active">
                  <a href="index.jsp" class="nav-link text-left">Home</a>
                </li>
                <li class="active">
                    <a href="index.jsp" class="nav-link text-left">Courses</a>
                </li> 
                <li class="active">
                    <a href="index.jsp" class="nav-link text-left">Lectures</a>
                </li>
                <li class="active">
                    <a href="index.jsp" class="nav-link text-left">Departments</a>
                </li>
                <li class="active">
                    <a href="index.jsp" class="nav-link text-left">Year</a>
                </li>
                <li class="active">
                    <a href="index.jsp" class="nav-link text-left">Semester</a>
                </li>

              </ul>                                                                                                                                                                                                                                                                                          </ul>
            </nav>

          </div>
          <div class="ml-auto">
            <div class="social-wrap">
              <a href="#"><span class="icon-facebook"></span></a>
              <a href="#"><span class="icon-twitter"></span></a>
              <a href="#"><span class="icon-linkedin"></span></a>

              <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
                class="icon-menu h3"></span></a>
            </div>
          </div>
         
        </div>
      </div>

    </header>

    
    <div class="site-section ftco-subscribe-1 site-blocks-cover pb-4" style="background-image: url('images/bg_1.jpg')">
        <div class="container">
          <div class="row align-items-end justify-content-center text-center">
            <div class="col-lg-7">
              <h2 class="mb-0">Register</h2>
              <p>Register in to the system.</p>
            </div>
          </div>
        </div>
      </div> 
    

    <div class="custom-breadcrumns border-bottom">
      <div class="container">
        <a href="index.jsp">Home</a>
        <span class="mx-3 icon-keyboard_arrow_right"></span>
        <span class="current">Register</span>
      </div>
    </div>

    <div class="site-section">
        
       <div class="container">

          <div class="row justify-content-center">
          <div class="col-md-5">
          <div class="row">
        <form class="form-horizontal" action="Addlecturer" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="first_name">FirstName:</label>
      <div class="col-sm-10">
          <input type="text" class="form-control" id="first_name" required="required" placeholder="Enter firstname" name="first_name"><br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="second_name">SecondName:</label>
      <div class="col-sm-10">          
          <input type="text" class="form-control" id="second_name" required="required" placeholder="Enter secondname" name="second_name"><br>
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="second_name">Username</label>
      <div class="col-sm-10">          
          <input type="text" class="form-control" id="second_name" required="required" placeholder="Enter username" name="username"><br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="category">Category:</label>
      <div class="col-sm-10">          
        <select class="form-control" id="category" required="required" placeholder="Select category" name="category"><br>
        <option>   </option>
        <option>Hod</option>
      	<option>Lecturer</option>
      </select>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="department">Department:</label>
      <div class="col-sm-10">          
        <input type="text>" class="form-control" id="department" required="required" placeholder="Enter department"name="department"><br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="salutation">Salutation:</label>
      <div class="col-sm-10"> 
          <select class="form-control" id="salutation" required="required" placeholder="Select salutation" name="salutation">
        <option>   </option>
      	<option>Mr</option>
      	<option>Mrs</option>
      	<option>Miss</option>
        </select>
               </div>
                </div>
                    <div class="form-group">
                       <label class="control-label col-sm-2" for="password">Password:</label>
                            <div class="col-sm-10">          
                          <input type="password" class="form-control" id="password" required="required" placeholder="Enter Password"name="password"><br>
                        </div>
                        </div>
                        <div class="form-group">
                        <div class="col-12">
                            <input type="submit" value="Register" class="btn btn-primary btn-lg px-5">
                        </div>
                    </div>
                </div>
            </div>

        </div>
        </form>
    </div>
 
  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#51be78"/></svg></div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>
  <script src="js/jquery.mb.YTPlayer.min.js"></script>




  <script src="js/main.js"></script>

</body>

</html>
