<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="input" required="true" %>
<%!
    private String toUpperCase(String value) {
        if (value==null) {
            return null;
        }
        
        return value.toUpperCase();
    }
%>
<%=toUpperCase(input)%>