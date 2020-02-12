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
        <title>JSP Page</title>
    </head>
    <body>
        <%    
          ArrayList<SemesterOfStudy> semesterOfStudys=(ArrayList<SemesterOfStudy>)session.getAttribute("semesterOfStudy");
          System.out.println(semesterOfStudys.size());
        %>
        <table <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <td>SemesterID</td>
                        <td>SemesterName</td>
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
