<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<html>
<head>
  <title>Errors examples</title>
</head>
<h2>html:messages Example</h2>
<html:messages message="true" id="msg">
    <bean:write name="msg"/>
    <br/>
</html:messages>

<h2>html:errors Example</h2>
<html:errors/>


</html>