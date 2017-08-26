<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Hello!</title>
</head>
<body>
    <h1>Welcome, ${name}</h1>
    <ul>
    <c:forEach var="dog" items="${dogs}" varStatus="status">
        <li>${dog}</li>
    </c:forEach>
    </ul>
</body>
</html>
