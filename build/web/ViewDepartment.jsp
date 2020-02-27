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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>JSP Page</title>
        <style>
.table{
  width: 60%;
  margin-right: 20%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #4CAF50;
  color: white;
}
</style>
    </head>
    <body>
        <%    
          ArrayList<Department> departments=(ArrayList<Department>)session.getAttribute("department");
          System.out.println(departments.size());
        %>
        <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>DepartmentName</th>
                        <th>DepartmentID</th>
                    </tr>
                        
                </thead>
                <tbody id="myTable">
                    <%for(Department d:departments){ %>
                    <tr>
                        <td></td>
                        <td><%= d.getDepartmentName()%></td>
                        <td><%= d.getDepartmentID()%></td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
</html>
