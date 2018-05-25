<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/mytags.tld" prefix="easy"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Testing custom tags</title>
</head>
<body>
<h2>First easy tag</h2>
<easy:firstTag></easy:firstTag>

<h2>DataFormatterTag usage</h2>
<easy:dataFormatter header="States" 
    items="Alabama,Alaska,Georgia,Florida"/>
<br/>


<h2>Manipulating the tag body Select element example</h2>
<easy:select>
    <option value="${value}">${text}</option>
</easy:select>
</body>
</html>