<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 6/3/21
  Time: 11:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp: name="title" value="Sign up" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Please sign up here</h1>
        <form action="/register" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="username" id="username" class="form-control">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" class="form-control">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" class="form-control">
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>

</body>
</html>
