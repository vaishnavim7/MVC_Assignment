<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ include file="logout.jsp" %>  

<jsp:useBean id="user" class="com.dto.User" scope="page"></jsp:useBean>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
<h1>Welcome</h1> <br>

<h1>User Name 
	<%=request.getParameter("name") %> 
</h1> 
<br>

<h1><a href ="logout.jsp">Logout</a></h1>

</body>
</html>
