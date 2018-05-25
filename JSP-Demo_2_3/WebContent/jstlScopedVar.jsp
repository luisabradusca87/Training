<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="scopeVarPage" value="Page Value" scope="page" />
<c:set var="scopeVarRequest" value="Request Value" scope="request" />
<c:set var="scopeVarSession" value="Session Value" scope="session" />
<c:set var="scopeVarApplication" value="Application Value" scope="application" /> 

<html>
<head>
<title>Scope Example</title>
</head>
<body>

	<h3>Main File: index.jsp</h3>
	<table border="1">
		<tr>
			<th>Scoped Variable</th>
			<th>Current Value</th>
		</tr>
		<tr>
			<td><b>Page Scope</b> (scopeVarPage)</td>
			<td>&#160; <c:out value="${scopeVarPage}" />
			</td>
		</tr>
		<tr>
			<td><b>Request Scope</b> (scopeVarRequest)</td>
			<td>&#160; <c:out value="${scopeVarRequest}" />
			</td>
		</tr>
		<tr>
			<td><b>Session Scope</b> (scopeVarSession)</td>
			<td>&#160; <c:out value="${scopeVarSession}" />
			</td>
		</tr>
		<tr>
			<td><b>Application Scope</b> (applicationVarPage)</td>
			<td>&#160; <c:out value="${scopeVarApplication}" />
			</td>
		</tr>
	</table>
	<br />
	<br />
	<jsp:include page="jstlincluded.jsp" />
	<br />
	<br />
	<a href="jstllinked.jsp">[Click Here to View: linked.jsp]</a>
</body>
</html>
