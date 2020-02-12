<%-- 
    Document   : ViewAllocation
    Created on : Feb 8, 2020, 12:41:14 PM
    Author     : Keboi
--%>

<%@page import="Kemboi.CourseAllocation"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%    
          ArrayList<CourseAllocation> courseAllocations=(ArrayList<CourseAllocation>)session.getAttribute("Alloctions");
          System.out.println(courseAllocations.size());
        %>
        <table <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <td>LecturerID</td>
                        <td>CourseID</td>
                        <td>DepartmentID</td>
                        <td>SemesterID</td>
                        <td>YearID</td>
                        <td>AllocationID</td>
                        
                    </tr>
                        
                </thead>
                <tbody id="myTable">
                    <%for(CourseAllocation ca:courseAllocations){ %>
                    <tr>
                        <td><%= ca.getLecturerID() %></td>
                        <td><%= ca.getCourseID() %></td>
                        <td><%= ca.getDepartmentID() %></td>
                         <td><%= ca.getSemesterID() %></td>
                        <td><%= ca.getYearID() %></td>
                        <td><%= ca.getAllocationID() %></td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
    </body>
</html>
