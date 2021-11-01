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
        <h4 class="text-danger mb-3">Language Detail</h4>
        <div class="mb-3">
            Name: <c:out value="${toDisplay.name}"/>
        </div>
        <div class="mb-3">
            Creator: <c:out value="${toDisplay.creator}"/>
        </div>
        <div class="mb-3">
            Version: <c:out value="${toDisplay.version}"/>
        </div>
        <table>
				<tr>
					<td>
					<a class="mx-2 btn btn-danger" href="/">Dashboard</a>	
					</td>
					<td>
					<a class="mx-2 btn btn-danger" href="/edit/${toDisplay.identifier}">Edit</a>	
					</td>
					<td>
					<form action="/delete/${toDisplay.identifier}" method="post">
					    <input type="hidden" name="_method" value="delete">
					    <input class="mx-2 btn btn-danger"  type="submit" value="Delete">
					</form>
					</td>
				</tr>	
		</table>    
</body>
</html>