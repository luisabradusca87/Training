<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Multiple examples of directives</title>
</head>
<body>
	<%-- Example of JSP Comment --%>
	<h2>Todays date: </h2>
	<%
		DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.LONG);
		String s = dateFormat.format(new Date());
		out.println("Today is " + s);
	%>

	<br />
	<br />
	
	<h2>This is included using the JSP Include Directive: </h2><hr/>
	<%@ include file="jspf/jspFragment1.jspf"%>
	<h2>The  counter value from main page:<%=counter%> </h2><hr/>
	<br />
	<br />
	
	
	
</body>
</html>