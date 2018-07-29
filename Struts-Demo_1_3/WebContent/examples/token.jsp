<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html>
<head>
<title>Token Test</title>
</head>
<body bgcolor="white">
	<h2>Token Test</h2>
	<html:errors />
	<html:messages message="true" id="msg">
		<bean:write name="msg" />
		<br />
	</html:messages>
	<html:form action="/tokenCheckDoubleForm">
		<html:text property="msg" />
		<html:submit />
	</html:form>
	<html:link action="/tokenCheckDoubleForm" transaction="true">Save</html:link>

	<a href="index.jsp">Main page</a>
	<br />
</body>
</html>