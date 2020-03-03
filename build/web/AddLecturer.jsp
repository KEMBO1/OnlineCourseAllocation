<%-- 
    Document   : AddLecturer
    Created on : Feb 20, 2020, 11:57:52 AM
    Author     : Keboi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="style.css" type="text/css"/>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<br><br><br>
<div class="container">
  <form class="form-horizontal" action="/Addlecturer" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="first_name">FirstName:</label>
      <div class="col-sm-10">
          <input type="text" class="form-control" id="first_name" placeholder="Enter firstname" name="first_name"><br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="second_name">SecondName:</label>
      <div class="col-sm-10">          
          <input type="text" class="form-control" id="second_name" placeholder="Enter secondname" name="second_name"><br>
      </div>
    </div>
      <div class="form-group">
      <label class="control-label col-sm-2" for="second_name">Username</label>
      <div class="col-sm-10">          
          <input type="text" class="form-control" id="second_name" placeholder="" name="username"><br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="category">Category:</label>
      <div class="col-sm-10">          
        <select class="form-control" id="category" placeholder="Select category" name="category"><br>
      	<option>Hod</option>
      	<option>Lecturer</option>
      </select><br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="department">Department:</label>
      <div class="col-sm-10">          
        <input type="text>" class="form-control" id="department" placeholder="Enter department"name="department"><br>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="salutation">Salutation:</label>
      <div class="col-sm-10"> 
      <select class="form-control" id="salutation" placeholder="Select salutation" name="salutation">
      	<option>Mr</option>
      	<option>Mrs</option>
      	<option>Miss</option>
      </select><br>
    </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="password">Password:</label>
      <div class="col-sm-10">          
        <input type="password>" class="form-control" id="password" placeholder="Enter Password"name="password"><br>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
    
</div>


</html>