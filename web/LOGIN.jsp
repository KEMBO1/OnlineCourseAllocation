<%-- 
    Document   : LOGIN
    Created on : Feb 21, 2020, 12:32:33 PM
    Author     : Keboi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="style.css" type="text/css"/>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head><br><br>
    
    <body>
        
  <form class="form-horizontal" action="login" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="username">USERNAME</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="password">PASSWORD:</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
      </div>
    </div>
      <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
    </body>
</html>
