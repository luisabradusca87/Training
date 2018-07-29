<%@ page language="java" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html:html>
<head>
<html:base/>
<title>
<bean:message key="index.title"/>
</title>
</head>

<body>

<h3>Action change language</h3>
<html:link action="/ChangeLocale?language=en&page=/multilingual/index.jsp">
  <bean:message key="label.english"/>
</html:link><br />
<html:link action="/ChangeLocale?language=de&page=/multilingual/index.jsp">
 <bean:message key="label.german"/>
</html:link>
<br/>
<h3>DispatchAction change language</h3>
<html:link action="/ChangeLocaleDispatch?method=english&page=/multilingual/index.jsp">
  <bean:message key="label.english"/>
</html:link><br />
<html:link action="/ChangeLocaleDispatch?method=german&page=/multilingual/index.jsp">
 <bean:message key="label.german"/>
</html:link>


<h2><bean:message key="index.title"/></h2>
<img src="<bean:message key="pics.logo"/>" alt="Logo" />
<br />
<br />
<bean:message key="general.copyright"/>

<h3>Logging something within jsp (check the console)</h3>
<%
org.apache.commons.logging.Log log = org.apache.commons.logging.LogFactory.getFactory().getInstance(this.getClass().getName());
log.error("hello from multilingual file");
%>

<a href="../index.jsp">Main page</a><br/>

</body>
</html:html>