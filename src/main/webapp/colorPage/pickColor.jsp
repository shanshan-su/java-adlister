<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 5/31/21
  Time: 11:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/partials/head.jsp" %>
    <title>Color Page</title>
</head>
<body>
<%@ include file="/partials/navbar.jsp" %>

<form method="POST" action="/viewcolor">
    <h2>What's your favorite color?</h2>
    <div class="mb-3">
        <label for="color" class="form-label">Enter your favorite color</label>
        <input type="text" class="form-control" id="color" name="color">
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</body>
</html>
