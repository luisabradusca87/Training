<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<h2><bean:message key='<%=(String)session.getAttribute("error")%>'/> </h2>
