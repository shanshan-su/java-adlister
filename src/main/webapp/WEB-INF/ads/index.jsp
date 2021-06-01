<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 6/1/21
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ads</title>
</head>
<body>
    <h1>Here are all the ads:</h1>

    <c:forEach var="ad" items="${ads}">
        <div class="ad">
            <h2>${ad.title}</h2>
            <p>Description: ${ad.description}</p>
        </div>
    </c:forEach>
</body>
</html>
