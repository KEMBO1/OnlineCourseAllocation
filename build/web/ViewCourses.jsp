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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
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
          ArrayList<Courses> courseses=(ArrayList<Courses>)session.getAttribute("courses");
          System.out.println(courseses.size());
        %>
        <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <th>CourseName</th>
                        <th>UnitCode</th>
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
                         <script>
  $(document).ready(function () {
    $('#myTable').DataTable();
    $('.dataTables_length').addClass('bs-select');
  });
</script>
    </body>
</html>
