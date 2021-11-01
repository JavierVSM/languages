<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hello!</h1>

		<form method="POST" action="/update" >
			<div>
				<label for="name">
					Name:
				</label>
				<input type="text" id="name" name="name" />
			</div>
			<div>
				<label for="creator">
					Creator:
				</label>
				<input type="text" id="creator" name="creator" />
			</div>
			<div>
				<label for="version">
					Version:
				</label>
				<input type="text" id="version" name="version" />
			</div>
			<button type="submit">
				Update
			</button>
		</form>
		
		
		
		
		
		
		
		<form method="POST" action="/create" >
			<div>
				<label for="newName">
					Name:
				</label>
				<input type="text" id="newName" name="newName" />
			</div>
			<div>
				<label for="newCreator">
					Creator:
				</label>
				<input type="text" id="newCreator" name="newCreator" />
			</div>
			<div>
				<label for="newVersion">
					Version:
				</label>
				<input type="text" id="newVersion" name="newVersion" />
			</div>
			<button type="submit">
				Create hobby
			</button>
		</form>
		
		

	
		
</body>
</html>