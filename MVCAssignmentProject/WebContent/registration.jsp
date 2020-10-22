<%@page import="com.service.UserServiceImplement"%>
<%@page import="com.service.UserService"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="user" class="com.dto.User" scope="page"></jsp:useBean>

<jsp:setProperty property="*" name="user"/>

<%
	UserService userService = new UserServiceImplement();
	int i = userService.regiserUser(user);
	
	if(i>0)
	{
		request.getRequestDispatcher("registration_form.jsp").include(request, response);
		%>
		<h1>
		Record Added
		</h1>
		<%
	}
	else
	{
		//response.sendRedirect("login.jsp");
	}
	

//	UserService userService = new UserServiceImplement();
//	userService.regiserUser(user);
//	response.sendRedirect("login.jsp");
%>
