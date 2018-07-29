<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<html>
<body>
<h2>Struts 1.3 examples</h2>
<br/>
<br/>
<h3> Example of ContextLoaderListener and HTTPSessionListener</h3>
Running since: <bean:write name="dateStarted" scope="application"  format="MM/dd/yy"/>
Number of sessions: <%=request.getServletContext().getAttribute("numSessions")%> 

<hr>

<br/>                        

<a href="helloWorld.do">Hello world</a><br/>
<a href="helloWorldDisabled.do">Disabled mapping example!</a><br/>
<a href="examples/errorsFormExample.jsp">ActionForm errors example</a><br/>
<a href="examples/errorsFormExampleValidatorFile.jsp">Validator.xml errors example</a><br/>

<hr>

<a href="sayHelloWildcardTest1.do">Hello Wildcard Test1!</a><br/>
<a href="sayHelloWildcardTest2.do">Hello Wildcard Test2!</a><br/>
<a href="saveToken.do">Token test</a><br/>
<a href="errorsExample.do">Action errors example</a><br/>

<hr> 

<a href="tagLibraries.do?paramTest=ParamTestValue">Tag libraries examples</a><br/>
<a href="dupplicateKeyException.do">Exception handling example</a><br/>

<br />
<h3>Struts multilingual</h3>
<a href="multilingual/index.jsp">Enter</a><br/>
</body>
</html>
