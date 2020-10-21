<%@page import="com.service.UserServiceImplement"%>
<%@page import="com.service.UserService"%>

<jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>

<jsp:setProperty property="*" name="user"/>

<%
	UserService userService = new UserServiceImplement();
	boolean b = userService.login(user);
	
	if(b)
	{
		response.sendRedirect("home.jsp");
	}
	else
	{
		response.sendRedirect("login.jsp");
	}
%>
 