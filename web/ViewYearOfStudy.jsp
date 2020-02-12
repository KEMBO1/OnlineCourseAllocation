<%-- 
    Document   : ViewYearOfStudy
    Created on : Feb 9, 2020, 9:21:37 AM
    Author     : Keboi
--%>

<%@page import="Kemboi.YearOfStudy"%>
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
          ArrayList<YearOfStudy> yearOfStudys=(ArrayList<YearOfStudy>)session.getAttribute("yearOfStudy");
          System.out.println(yearOfStudys.size());
        %>
        <table <table class="table table-sm table-bordered" id="myTable">
                <thead>
                    <tr>
                        <td>YearID</td>
                        <td>YearName</td>
                    </tr>
                        
                </thead>
                <tbody id="myTable">
                    <%for(YearOfStudy yearOfStudy:yearOfStudys){ %>
                    <tr>
                        <td><%= yearOfStudy.getYearID()%></td>
                        <td><%= yearOfStudy.getYearName()%></td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
    </body>
</html>
