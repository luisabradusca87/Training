<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<html:html>
<head>
<title>Tag libraries</title>
</head>
<body>
	<h2>Tag libraries examples</h2>
	<bean:parameter name="paramTest" id="paramVal"
		value="parameter missing" />

	<p>
		### bean:parameter ### Value=
		<bean:write name="paramVal" ignore="true" />
	</p>



	<logic:equal value="msg" property="msg" name="helloForm">
		<p>### logic:equal msg==msg ###</p>
	</logic:equal>

	<logic:notEqual value="msg" property="msg" name="helloForm">
		<p>### logic:notEqual msg!=msg ###</p>
	</logic:notEqual>

	<logic:present parameter="paramTest">
		<logic:match value="Value" parameter="paramTest" location="end">
			<p>### logic:match Parameter ends with "Value" ###</p>
		</logic:match>
	</logic:present>


	<p>### logic:iterate Users List from ActionForm ###</p>
	<ol>
		<logic:iterate id="user" property="users" name="helloForm">
			<li><bean:write name="user" property="firstname" />
				&nbsp;&nbsp; <bean:write name="user" property="lastname" />
				&nbsp;&nbsp; <bean:write name="user" property="age" /></li>
		</logic:iterate>
	</ol>


</body>
</html:html>