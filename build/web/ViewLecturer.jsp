<%-- 
    Document   : ViewLecturer
    Created on : Feb 9, 2020, 8:22:06 AM
    Author     : Keboi
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Kemboi.Lecturer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%    
          ArrayList<Lecturer> lecturers =(ArrayList<Lecturer>)session.getAttribute("lecturer");
          System.out.println(lecturers.size());
        %>
        <table <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <td>FirstName</td>
                        <td>SecondName</td>
                        <td>Category</td>
                        <td>Department</td>
                        <td>Salutation</td>
                        <td>Password</td>
                        <!--<td>LecturerID</td>-->
                        
                    </tr>
                        
                </thead>
                <tbody id="myTable">
                    <%for(Lecturer l:lecturers){ %>
                    <tr>
                        <td><%= l.getFirstName() %></td>
                        <td><%= l.getSecondName()%></td>
                        <td><%= l.getCategory()%></td>
                        <td><%= l.getDepartment()%></td>
                        <td><%= l.getSalutation()%></td>
                        <td><%= l.getPassword()%></td>
                        <!--<td><%= l.getLecturerID()%></td>-->
                    </tr>
                    <%} %>
                </tbody>
            </table>
        
    </body>
</html>
