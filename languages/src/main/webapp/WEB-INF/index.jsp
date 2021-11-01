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
        <div>
			<c:out value="${errorMessage}"></c:out>
		</div>
		
	<div class="p-5 m-2 container">
	<table class="table table-striped table-bordered">
	 	<c:forEach var="language" items="${languageList}">
	  	<tr>
			<td>
			<a href="./${language.getIdentifier()}"><c:out value="${language.getName()}"></c:out></a>				
			</td>
			<td>
				<c:out value="${language.getCreator()}"></c:out>
			</td>
			<td>
				<c:out value="${language.getVersion()}"></c:out>
			</td>	
			<td>
			<table>
				<tr>
					<td>
					<a class="mx-2 btn btn-danger" href="./edit/${language.getIdentifier()}">Edit</a>	
					</td>
					<td>
					<form action="/delete/${language.getIdentifier()}" method="post">
					    <input type="hidden" name="_method" value="delete">
					    <input class="mx-2 btn btn-danger"  type="submit" value="Delete">
					</form>
					</td>
				</tr>	
			</table>	
			</td>	
		</tr>	
		</c:forEach>	  
	</table>
	<h4 class="my-3">Add a New Language</h4>    
    <form action="/create" method="POST">
            <div class="form-group row">

              <div class="form-group row mb-3">
                <label for="nameForm" class="col-sm-2 col-form-label">Name:</label>
                <div class="col-sm-10">
                  <input  type="text" class="form-control" id="nameForm" name="nameForm">
                </div>
              </div>
              
              <div class="form-group row mb-3">
                <label for="creatorForm" class="col-sm-2 col-form-label">Creator:</label>
                <div class="col-sm-10">
                  <input  type="text" class="form-control" id="creatorForm" name="creatorForm">
                </div>
              </div>
              
              <div class="form-group row mb-3">
                <label for="versionForm" class="col-sm-2 col-form-label">Version:</label>
                <div class="col-sm-10">
                  <input  type="text" class="form-control" id="versionForm" name="versionForm">
                </div>
              </div>
            <button type="submit" value="create answer" class="btn btn-warning">Submit</button>        
        </form>
        <div>
			<c:out value="${errorMessage}"></c:out>
		</div>
</body>
</html>