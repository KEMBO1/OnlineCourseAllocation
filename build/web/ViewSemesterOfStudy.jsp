<%-- 
    Document   : ViewSemesterOfStudy
    Created on : Feb 9, 2020, 8:36:52 AM
    Author     : Keboi
--%>

<%@page import="Kemboi.SemesterOfStudy"%>
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
          ArrayList<SemesterOfStudy> semesterOfStudys=(ArrayList<SemesterOfStudy>)session.getAttribute("semesterOfStudy");
          System.out.println(semesterOfStudys.size());
        %>
        <table <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <th>SemesterID</th>
                        <th>SemesterName</th>
                    </tr>
                        
                </thead>
                <tbody id="myTable">
                    <%for(SemesterOfStudy ofStudy:semesterOfStudys){ %>
                    <tr>
                        <td><%= ofStudy.getSemesterID()%></td>
                        <td><%= ofStudy.getSemesterName()%></td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
    </body>
</html>
