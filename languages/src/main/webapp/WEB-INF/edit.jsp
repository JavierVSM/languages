<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
    <div class="p-5 m-2 container">
            <table>
				<tr>
					<td>
					<a class="mx-2 btn btn-danger" href="/">Dashboard</a>	
					</td>
					<td>
					<form action="/delete/${toDisplay.identifier}" method="post">
					    <input type="hidden" name="_method" value="delete">
					    <input class="mx-2 btn btn-danger"  type="submit" value="Delete">
					</form>
					</td>
				</tr>	
			</table>  
     <h4 class="text-danger my-3">Edit Language</h4> 
    <form action="/update" method="POST">
            <div class="form-group row">

              <div class="form-group row mb-3">
                <label for="nameFormEdit" class="col-sm-2 col-form-label">Name:</label>
                <div class="col-sm-10">
                  <input  type="text" class="form-control" id="nameFormEdit" name="nameFormEdit" value="${toDisplay.name}">
                </div>
              </div>
              
              <div class="form-group row mb-3">
                <label for="creatorFormEdit" class="col-sm-2 col-form-label">Creator:</label>
                <div class="col-sm-10">
                  <input  type="text" class="form-control" id="creatorFormEdit" name="creatorFormEdit" value="${toDisplay.creator}"> 
              	</div>
              </div>
              
              <div class="form-group row mb-3">
                <label for="versionForm" class="col-sm-2 col-form-label">Version:</label>
                <div class="col-sm-10">
                  <input  type="text" class="form-control" id="versionFormEdit" name="versionFormEdit" value="${toDisplay.version}">
                </div>
              </div>
            <input type="hidden" value="${toDisplay.identifier}" id="idFormEdit" name="idFormEdit">  
            <button type="submit" class="btn btn-warning">UPDATE</button>        
        </form>
</body>
</html>