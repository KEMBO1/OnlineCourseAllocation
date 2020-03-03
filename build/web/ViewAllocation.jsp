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
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css"
        <script src="https://code.jquery.com/jquery-3.4.1.js"integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"</script>
        
        <script>
            $(document).ready( function () {
    $('#myTable').DataTable();
      } );
        </script>
  
        
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
          ArrayList<CourseAllocation> courseAllocations=(ArrayList<CourseAllocation>)session.getAttribute("Alloctions");
          System.out.println(courseAllocations.size());
        %>
       <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <th>LecturerID</th>
                        <th>CourseID</th>
                        <th>DepartmentID</th>
                        <th>SemesterID</th>
                        <th>YearID</th>
                        <th>AllocationID</th>
                        
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
