<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> List of hobbies!!!</h1>
	
	
	<table>
	  
	  	<c:forEach var="language" items="${languageList}">
	  	<tr>
			<td>
				<c:out value="${language.getName()}"></c:out>
			</td>
			<td>
				<c:out value="${language.getCreator()}"></c:out>
			</td>
			<td>
				<c:out value="${language.getVersion()}"></c:out>
			</td>	
		</tr>	
		</c:forEach>
	  
	</table>
</body>
</html>