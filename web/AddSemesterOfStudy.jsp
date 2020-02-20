<%-- 
    Document   : AddSemesterOfStudy
    Created on : Feb 20, 2020, 11:48:59 AM
    Author     : Keboi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <<head>
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
    <form action="AddSemesterOfStudy" method="post">
  <form class="form-horizontal" action="" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="semesterID">SemesterID:</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="semesterID" placeholder="Enter semesterID" name="semesterID">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="semester_name">SemesterName:</label>
      <div class="col-sm-10">          
        <select class="form-control" id="semester_name" placeholder="Select Semester" name="semester_name">
      	<option>Semester One</option>
      	<option>Semester Two</option>
      	<option>Semester Three</option>
      </select>
  </div>
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


