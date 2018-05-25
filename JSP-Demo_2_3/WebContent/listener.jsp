<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Country List</title>
</head>
<body>
We operate in these countries:
<ul>
    <!--${countries.values().stream().map(x -> 
           "--><li>" += x += "</li><!--").toList()}-->
</ul>
</body>
</html>