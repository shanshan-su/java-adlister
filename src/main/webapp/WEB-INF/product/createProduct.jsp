<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 6/2/21
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create A Product</title>
</head>
<body>
<h1>Create A Product</h1>
<form action="/products/create" method="post">
    <label for="name">Name</label>
    <input name="name" id="name" type="text">
    <br />
    <label for="price">Price</label>
    <input name="price" id="price" type="text">
    <br />
    <input type="submit">
</form>
</body>
</html>

