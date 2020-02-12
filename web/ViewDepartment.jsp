<%-- 
    Document   : ViewDepartment
    Created on : Feb 9, 2020, 7:59:22 AM
    Author     : Keboi
--%>

<%@page import="Kemboi.Department"%>
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
          ArrayList<Department> departments=(ArrayList<Department>)session.getAttribute("department");
          System.out.println(departments.size());
        %>
        <table <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <td>DepartmentName</td>
                        <td>DepartmentID</td>
                    </tr>
                        
                </thead>
                <tbody id="myTable">
                    <%for(Department d:departments){ %>
                    <tr>
                        <td><%= d.getDepartmentName()%></td>
                        <td><%= d.getDepartmentID()%></td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
</html>
