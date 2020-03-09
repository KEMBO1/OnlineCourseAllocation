<%-- 
    Document   : index
    Created on : Feb 26, 2020, 12:35:52 PM
    Author     : Keboi
--%>
<%@page import="Kemboi.YearOfStudy"%>
<%@page import="Kemboi.SemesterOfStudy"%>
<%@page import="Kemboi.Department"%>
<%@page import="Kemboi.Courses"%>
<%@page import="Kemboi.Lecturer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
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
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
        <!-- ============================================================== -->
        <!-- navbar -->
        <!-- ============================================================== -->
        <div class="dashboard-header">
            <nav class="navbar navbar-expand-lg bg-white fixed-top">
                <a class="navbar-brand" href="">Online Course allocation</a>
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
                                <a class="nav-link" href="HodtaskAddCourse.jsp"  aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i></i>Add Course<span class="badge badge-success"></span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="GetCourseDetails"  aria-expanded="false" data-target="#submenu-2" aria-controls="submenu-2"><i></i>Allocate Courses </a>
                              
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="HodtaskAddDepartment.jsp"  aria-expanded="false" data-target="#submenu-3" aria-controls="submenu-3"><i></i>Add Department</a>
                  
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="HodtaskAddLecturer.jsp"  aria-expanded="false" data-target="#submenu-4" aria-controls="submenu-4"><i></i>Register Lecturer</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="HodtaskAddSemesterOfStudy.jsp" aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i></i>Add Semester Of Study</a>
                                
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="HodtaskAddYearOfStudy.jsp"  aria-expanded="false" data-target="#submenu-5" aria-controls="submenu-5"><i></i>Add Year Of Study</a>
                             
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

        
        <%
            ArrayList<Lecturer> lecturers=(ArrayList<Lecturer>)session.getAttribute("lectures");
            ArrayList<Courses> courseses=(ArrayList<Courses>)session.getAttribute("courseses");
            ArrayList<Department> departments=(ArrayList<Department>)session.getAttribute("departments");
            ArrayList<SemesterOfStudy> semesterOfStudys=(ArrayList<SemesterOfStudy>)session.getAttribute("semesterOfStudys");
            ArrayList<YearOfStudy> yearOfStudys=(ArrayList<YearOfStudy>)session.getAttribute("yearOfStudys");
            YearOfStudy y=(YearOfStudy)session.getAttribute("yos");


        %>
        <div class="col-sm-10">
        <form action="AddCourseAllocation" method="post">
            Lecturers:
            <!--<input type="number" name="lecturerID">-->
            <select name="lecturerID" class="form-control">
                <% for(Lecturer lecturer:lecturers){ %>
                   <option value="<%=lecturer.getLecturerID() %>">
                      <%= lecturer.getFirstName()+" "+lecturer.getSecondName() %>
                   </option>
                <% }  %>
            </select><br><br>
            Courses:
            <!--<input type="text" name="courseID"><br>-->
            
            <select name="courseID"class="form-control">
                <% for(Courses  courses:courseses){ %>
                   <option value="<%=courses.getUnitCode()%>">
                      <%= courses.getCourseName() %>
                   </option>
                <% }  %>
            </select><br><br>
            Departments:
            <!--<input type="number" name="departmentID"><br>-->
            
            <select name="departmentID"class="form-control">
                <% for(Department  department:departments){ %>
                   <option value="<%=department.getDepartmentID()%>">
                      <%= department.getDepartmentName()%>
                   </option>
                <% }  %>
            </select><br><br>
            Semester:
            <!--<input type="number" name="semesterID" min="1" max="3"><br>!-->
            
            <select name="semesterID"class="form-control">
                <% for(SemesterOfStudy semesterOfStudy:semesterOfStudys ){ %>
                   <option value="<%= semesterOfStudy.getSemesterID()%>">
                      <%= semesterOfStudy.getSemesterName()%>
                   </option>
                <% }  %>
            </select><br><br>
            
            Year:
            <!--<input type="number" name="yearID"><br>!-->
            
            <select name="yearID"class="form-control">
                <% for(YearOfStudy yearOfStudy:yearOfStudys ){ %>
                   <option value="<%= yearOfStudy.getYearID()%>">
                      <%= yearOfStudy.getYearName()%>
                   </option>
                <% }  %>
            </select><br><br>
            
            
           Year_Generated:
           <input type="text"class="form-control" value="<%= y.getYearName() %>" ><br>
           
            <input type="Submit" value="ADD">
        </form
        </div>

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