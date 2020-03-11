<%-- 
    Document   : CourseAddition
    Created on : Mar 10, 2020, 12:53:26 AM
    Author     : Keboi
--%>

<%@page import="Kemboi.Category"%>
<%@page import="Kemboi.SemesterOfStudy"%>
<%@page import="Kemboi.YearOfStudy"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="style.css" type="text/css"/>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
</head>
<body><br><br><br>

<div class="container">
    <form action="AddCourse" method="post">
  <form class="form-horizontal" action="" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="categoryID">categoryID:</label>
      <div class="col-sm-10">
          <select class="form-control" name="categoryID" id="categoryID">
              <%    
          ArrayList<Category> categorys=(ArrayList<Category>)session.getAttribute("viewcategorys");
          System.out.println(categorys.size());
        %>
        <%for(Category category:categorys){ %>
              <option value="<%= category.getCategoryID() %>"> 
                  <%= category.getCategory() %>  
              <%} %>
          </select>

      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="category">category:</label>
      <div class="col-sm-10">

      <<select class="form-control" name="category" id="category">
      
        <%for(Category category:categorys){ %>
              <option value="<%= category.getCategory() %>">
                  <%=category.getCategory() %>
              <%} %>
          </select>          
          
  </div>

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>


