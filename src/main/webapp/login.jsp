<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 5/27/21
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int counter = 0; %>
<% counter += 1; %>

<%--<%= request.getParameter("username")%>--%>
<%--<%= request.getParameter("password")%>--%>



<html>
<head>
    <%-- Required meta tags --%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Work+Sans&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <%-- Bootstrap CSS --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title>Login</title>

    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <%@ include file="partials/navbar.jsp" %>
    <h1>Login</h1>

    <%-- This form should submit a POST request to /login.jsp --%>
    <form method="POST" action="login.jsp">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" id="username" name="username">
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>





    <c:choose>
        <%-- check if username and password are null --%>
        <c:when test="${param.username == null || param.password == null}">
            <p>Please enter username and password to login.</p>
        </c:when>

        <%-- check if username.equals("admin") and password.equals("password") --%>
        <c:when test="${param.username.equals(\"admin\") && param.password.equals(\"password\")}">
            <p>Welcome home, admin.</p>
            <c:redirect url = "profile.jsp"/>
        </c:when>

        <c:otherwise>
            <c:redirect url = "/login.jsp"/>
        </c:otherwise>
    </c:choose>


    <%@ include file="partials/footer.jsp" %>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
