<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 6/1/21
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View Products</title>
</head>
<body>
    <h1>Here are all the products:</h1>

    <c:forEach var="product" items="${products}">
        <div class="product">
            <h2>${product.name}</h2>
            <p>Price: $ ${product.price}</p>
        </div>
    </c:forEach>
</body>
</html>
