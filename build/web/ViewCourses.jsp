<%-- 
    Document   : ViewCourses
    Created on : Feb 9, 2020, 7:39:03 AM
    Author     : Keboi
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Kemboi.Courses"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%    
          ArrayList<Courses> courseses=(ArrayList<Courses>)session.getAttribute("courses");
          System.out.println(courseses.size());
        %>
        <table <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <td>CourseName</td>
                        <td>UnitCode</td>
                    </tr>
                        
                </thead>
                <tbody id="myTable">
                    <%for(Courses c:courseses){ %>
                    <tr>
                        <td><%= c.getCourseName()%></td>
                        <td><%= c.getUnitCode() %></td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
    </body>
</html>
