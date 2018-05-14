<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- Example of JSP Include --%>
<h2>JSP Include fragment:</h2><hr/>
<jsp:include page="jspf/jspFragment2.jspf">
 	<jsp:param name="text" value="Send param value"/>
</jsp:include>
<!--  Doesn't compile as the counter doesn't exist!!!! <h2>The  counter value from main page:counter%> </h2><hr/> -->


<%-- Example of JSP useBean Acrion --%>
<h2>JSP useBean Date and print it:</h2>
<jsp:useBean id="today" class="java.util.Date"/>
<%=today%>

<h2>Jsp get/set properties example:</h2>
<jsp:useBean id="student" class="pojo.Student" scope="session"/><br/>

First name:<jsp:getProperty name="student" property="firstName"/><br/>
Last name:<jsp:getProperty name="student" property="lastName"/><br/>
Last name:<jsp:getProperty name="student" property="age"/><br/>
...changing age...<br/>
Last name:<jsp:setProperty name="student" property="age" value="22"/><br/>
New age: <jsp:getProperty name="student" property="age"/>

<h2>JSP param sended from other JSP Page:</h2>
<%=request.getParameter("actionsForwardParam")%>


</body>
</html>