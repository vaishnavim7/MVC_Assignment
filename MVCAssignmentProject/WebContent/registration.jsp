<%@page import="com.service.UserServiceImplement"%>
<%@page import="com.service.UserService"%>

<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>

<jsp:setProperty property="*" name="user"/>

<%
	UserService userService = new UserServiceImplement();
	userService.regiserUser(user);
	response.sendRedirect("login.jsp");
%>