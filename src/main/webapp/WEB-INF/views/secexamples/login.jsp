<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<h1>This is the login page</h1>
<c:if test="${param.error == 'true'}">
    <p style="color:red;">Invalid username or password. Please try again.</p>
</c:if>

<form action="<c:url value='/sectest/login'/>" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"/><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"/><br><br>        
        <input type="submit" value="Login" />
</form>
</body>
</html>