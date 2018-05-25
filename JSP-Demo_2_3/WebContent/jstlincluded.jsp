<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table border="1">
  <tr>
<th>Scoped Variable</th>

    <th>Current Value</th>
  </tr>
  <tr>
    <td>
    <b>Page Scope</b>

    (scopeVarPage)</td>

    <td>&#160;
     <c:out value="${scopeVarPage}" />
    </td>
  </tr>

  <tr>
    <td>
    <b>Request Scope</b>

    (scopeVarRequest)</td>

    <td>&#160;
     <c:out value="${scopeVarRequest}" />
    </td>
  </tr>

  <tr>
    <td>
    <b>Session Scope</b>

    (scopeVarSession)</td>

    <td>&#160;
     <c:out value="${scopeVarSession}" />
    </td>
  </tr>

  <tr>
    <td>
    <b>Application Scope</b>

    (applicationVarPage)</td>

    <td>&#160;
     <c:out value="${scopeVarApplication}" />
    </td>
  </tr>
</table>
