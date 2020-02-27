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
<!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">-->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
        
        
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js">
        <script  src="bootstrap/js/bootstrap.min.js"></script>
    
    
          
         <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
  
         <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
         <link rel="stylesheet" type="text/css" href="/DataTables/datatables.css">
 
         <script type="text/javascript" charset="utf8" src="/DataTables/datatables.js"></script>
       
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
                <script>
  $(document).ready(function () {
    $('#myTable').DataTable();
    $('.dataTables_length').addClass('bs-select');
  });
</script>
    </body>
</html>
