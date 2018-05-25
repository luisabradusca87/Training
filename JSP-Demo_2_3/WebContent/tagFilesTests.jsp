<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Testing custom tags</title>
</head>
<body>
<h2>Using simple defined custom tag library:</h2>
<tags:toUpperCase input=" lower-case text should be now all upper-case"/></h2>


<h2>Using tag library with variable:</h2>
<tags:variableDirective>Todays date: <br/> In long format: ${longDate}
<br/>
In short format: ${shortDate}
</tags:variableDirective>

<h2>Using with invoke</h2>
<tags:invoke>
    <jsp:attribute name="productDetails">
        <table width="220" border="1">
        <tr>
            <td><b>Product Name</b></td>
            <td>${productName}</td>
        </tr>
        <tr>
            <td><b>Description</b></td>
            <td>${description}</td>
        </tr>
        <tr>
            <td><b>Price</b></td>
            <td>${price}</td>
        </tr>
        </table>
    </jsp:attribute>
</tags:invoke>

</body>
</html>