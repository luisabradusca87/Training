<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Example of JSTL</title>
</head>
<body>

<html>
  <body>
    <h2> Property access: </h2>
    <c:if test="${pageContext.request.method=='POST'}">
	    <c:set var="idx" value="name" />
	    param.name =<c:out value="${param.name}" />
	    <br />
	    param[name] = <c:out value="${param[idx]}" />
	    <br />
    </c:if>

    <br />

    <form method="post">Please enter your name?
    <input type="text" name="name" />

    <input type="Submit" />
    <br />
    </form>
    
    <h2>Variable with EL value and comparison:</h2>
     <c:set var="idx" value="3.140d" />
     idx = <c:out value="${idx}" /><br />
     idx = <c:out value="${idx == 3.14}" /><br />
     
    <h2>Variable with EL text concatenated:</h2>
     <c:set var="str1" value="Text1" />
     <c:set var="str2" value="Text2" />
     <c:set var="concatenate" value="${str1}${str2}" />
     Text1 toghether with Text2: <c:out value="${concatenate}" /><br />
  </body>
</html>

</body>
</html>