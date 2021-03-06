<%-- 
    Document   : index
    Created on : Feb 26, 2020, 12:35:52 PM
    Author     : Keboi
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
 
<head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
    <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
    <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <title>Online Course Allocation</title>
</head>

<body>
    <div class="dashboard-main-wrapper">
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="AdminDashboard.jsp">Online Course allocation</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse " id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto navbar-right-top">
                       
                        <li class="nav-item dropdown nav-user">
                            <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                            <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                <c:forEach var="username" items="${username}">
                                <div class="nav-user-info">
                                    <h5 class="mb-0 text-white nav-user-name">${username}</h5>
                                    <span class="status"></span><span class="ml-2">Available</span>
                                </div>
                                </c:forEach>
                                <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                <a class="dropdown-item" href="index.jsp"><i class="fas fa-power-off mr-2"></i>Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <div class="nav-left-sidebar sidebar-dark">
            <div class="menu-list">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="d-xl-none d-lg-none" href="#">Dashboard</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav flex-column">
                            <li class="nav-divider">
                                Menu
                             </li>
                            
                            <li class="nav-item ">
                                <a class="nav-link" href="ViewYearOfStudy"  aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i></i>Add Unit in the System <span class="badge badge-success"></span></a>
                            </li>
                       
                            <li class="nav-item">
                                <a class="nav-link" href="AdmintaskAddDepartment.jsp"  aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3"><i></i>Add Departments to the System</a>
                  
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="AdmintaskRegesterHOD.jsp"  aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i></i>Register HODs</a>
                           
                            </li>
                      
                   
                            <li class="nav-item">
                                <a class="nav-link" href="ViewDepartment"  aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3"><i></i>View Department</a>
                  
                            </li>
                            
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <div class="dashboard-wrapper">
            <div class="dashboard-ecommerce">
                <div class="container-fluid dashboard-content ">
                   
<div class="container">
<!--    <form action="AddDepartment" method="post">-->
  <form class="form-horizontal" action="AddDepartment" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="department_name"> DepartmentName </label>
      <div class="col-sm-10">
          <input type="text" class="form-control" id="department_name" required="required" placeholder="Enter department_name" name="department_name"><br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="departmentID">DepartmentID:</label>
      <div class="col-sm-10">          
      <input type="number" class="form-control" id="departmentID" required="required"placeholder="Enter departmentID" name="departmentID"><br>
  </div>
</div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>
                    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <!-- bootstap bundle js -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <!-- slimscroll js -->
    <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="assets/libs/js/main-js.js"></script>
    <!-- chart chartist js -->
    <script src="assets/vendor/charts/chartist-bundle/chartist.min.js"></script>
    <!-- sparkline js -->
    <script src="assets/vendor/charts/sparkline/jquery.sparkline.js"></script>
    <!-- morris js -->
    <script src="assets/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="assets/vendor/charts/morris-bundle/morris.js"></script>
    <!-- chart c3 js -->
    <script src="assets/vendor/charts/c3charts/c3.min.js"></script>
    <script src="assets/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
    <script src="assets/vendor/charts/c3charts/C3chartjs.js"></script>
    <script src="assets/libs/js/dashboard-ecommerce.js"></script>
</body>
 
</html>