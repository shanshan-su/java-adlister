<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>

<%--<% //In case, if user session is not set, redirect to Login page--%>
<%--    if ((request.getSession().getAttribute("user") == null))--%>
<%--    { %>--%>
<%--        <jsp:forward page="/WEB-INF/login.jsp"></jsp:forward>--%>
<%--<%  } %>--%>
<body>
    <jsp:include page="partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing your profile.</h1>
    </div>

</body>
</html>
