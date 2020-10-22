<%@page import="com.service.UserServiceImplement"%>
<%@page import="com.service.UserService"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>

<jsp:setProperty property="*" name="user"/>

<%
	UserService userService = new UserServiceImplement();
	boolean b = userService.login(user);
	
//	if(b)
//	{
//		session.setAttribute("user", user.getUserId());
//		response.sendRedirect("home.jsp?name="+user.getUserName());
//	}
//	else
//	{
//		response.sendRedirect("login.jsp");
//	}
	
	if(b)
	{
		session.setAttribute("user", user.getUserId());
		response.sendRedirect("home.jsp?name="+user.getUserName());
	}
	else
	{
		request.getRequestDispatcher("login.jsp").include(request, response);
	}
%>
 
