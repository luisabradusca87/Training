<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<html>
<head>
<title>
Highlight Error Fields
</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<html:form action="saveUser" >
    <table>
        <tr>
            <td>
                First name
            </td>
            <td>
                <html:text property="firstname" errorStyleClass="error"
                errorKey="org.apache.struts.action.ERROR" />
            </td>
            <td>
                <html:errors property="firstname"  />
            </td>
        </tr>
        <tr>
            <td>
                Last name
            </td>
            <td>
                <html:text property="lastname" errorStyleClass="error"
                errorKey="org.apache.struts.action.ERROR" />
            </td>
            <td>
                <html:errors property="lastname" />
            </td>
        </tr>
        <tr>
            <td>
                Age
            </td>
            <td>
                <html:text property="age" errorStyleClass="error"
                errorKey="org.apache.struts.action.ERROR" />
            </td>
            <td>
                <html:errors property="age" />
            </td>
        </tr>
        <tr>
            <td>
                 <html:submit value="Test" />
            </td>
        </tr>
    </table>
</html:form>
</body>
</html>