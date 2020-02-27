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
          ArrayList<Lecturer> lecturers =(ArrayList<Lecturer>)session.getAttribute("lecturer");
          System.out.println(lecturers.size());
        %>
         <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <th>FirstName</th>
                        <th>SecondName</th>
                        <th>Category</th>
                        <th>Department</th>
                        <th>Salutation</th>
                        <!--<th>Password</th>-->
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
                        <!--<td><%= l.getPassword()%></td>-->
                        <!--<td><%= l.getLecturerID()%></td>-->
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
