<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Page Data Example</title>
</head>

<body>
	<table border="1" width="310">
		<tr>
			<td bgcolor="#0000FF" width="98"><b> <font color="#FFFFFF"
					size="4">Name</font>
			</b></td>

			<td bgcolor="#0000FF" width="196"><b> <font color="#FFFFFF"
					size="4">Value</font>
			</b></td>
		</tr>

		<c:forEach var="aItem" items="${paramValues}">
			<tr>
				<td width="98"><b> <c:out value="${aItem.key}" />
				</b></td>

				<td width="196">&#160; <c:forEach var="aValue"
						items="${aItem.value}">
						<c:out value="${aValue}" />
					</c:forEach>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
