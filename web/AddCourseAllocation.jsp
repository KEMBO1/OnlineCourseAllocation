<%-- 
    Document   : AddCourseAllocation
    Created on : Feb 9, 2020, 11:50:34 AM
    Author     : Keboi
--%>

<%@page import="Kemboi.YearOfStudy"%>
<%@page import="Kemboi.SemesterOfStudy"%>
<%@page import="Kemboi.Department"%>
<%@page import="Kemboi.Courses"%>
<%@page import="Kemboi.Lecturer"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="MDB/css/addons/datatables.min.css">
        <link rel="stylesheet" href="MDB/css/modules/bootstrap.css">
        <link rel="stylesheet" href="MDB/css/modules/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="MDB/css/modules/style.css"
        
    </head>
    <body>
        
        <%
            ArrayList<Lecturer> lecturers=(ArrayList<Lecturer>)session.getAttribute("lectures");
            ArrayList<Courses> courseses=(ArrayList<Courses>)session.getAttribute("courseses");
            ArrayList<Department> departments=(ArrayList<Department>)session.getAttribute("departments");
            ArrayList<SemesterOfStudy> semesterOfStudys=(ArrayList<SemesterOfStudy>)session.getAttribute("semesterOfStudys");
            ArrayList<YearOfStudy> yearOfStudys=(ArrayList<YearOfStudy>)session.getAttribute("yearOfStudys");
            YearOfStudy y=(YearOfStudy)session.getAttribute("yos");


        %>
        <form action="AddCourseAllocation" method="post">
            Lecturers:
            <!--<input type="number" name="lecturerID">-->
           <select name="lecturerID">
                <% for(Lecturer lecturer:lecturers){ %>
                   <option value="<%=lecturer.getLecturerID() %>">
                      <%= lecturer.getSalutation()+"  "+lecturer.getFirstName()+" "+lecturer.getSecondName() %>
                   </option>
                <% }  %>
            </select><br><br>
            Courses:
            <!--<input type="text" name="courseID"><br>-->
            
            <select name="courseID">
                <% for(Courses  courses:courseses){ %>
                   <option value="<%=courses.getUnitCode()%>">
                      <%= courses.getCourseName() %>
                   </option>
                <% }  %>
            </select><br><br>
            Departments:
            <!--<input type="number" name="departmentID"><br>-->
            
            <select name="departmentID">
                <% for(Department  department:departments){ %>
                   <option value="<%=department.getDepartmentID()%>">
                      <%= department.getDepartmentName()%>
                   </option>
                <% }  %>
            </select><br><br>
            Semester:
            <!--<input type="number" name="semesterID" min="1" max="3"><br>!-->
            
            <select name="semesterID">
                <% for(SemesterOfStudy semesterOfStudy:semesterOfStudys ){ %>
                   <option value="<%= semesterOfStudy.getSemesterID()%>">
                      <%= semesterOfStudy.getSemesterName()%>
                   </option>
                <% }  %>
            </select><br><br>
            
            Year:
            <!--<input type="number" name="yearID"><br>!-->
            
            <select name="yearID">
                <% for(YearOfStudy yearOfStudy:yearOfStudys ){ %>
                   <option value="<%= yearOfStudy.getYearID()%>">
                      <%= yearOfStudy.getYearName()%>
                   </option>
                <% }  %>
            </select><br><br>
            
            
           Year_Generated:
           <input type="text" value="<%= y.getYearName() %>" ><br>
           
            <input type="Submit" value="ADD">
        </form>
    </body>
</html>

