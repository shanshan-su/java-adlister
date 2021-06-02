<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<%-- // can do if/else logic in the jsp or in the servlet --%>
<%--<% // if user session is not set which means user hasn't logged in, redirect to Login page--%>
<%--    if ((request.getSession().getAttribute("user") == null))--%>
<%--    { %>--%>
<%--        <jsp:forward page="/WEB-INF/login.jsp"></jsp:forward>--%>
<%--<%  } %>--%>
<body>
    <jsp:include page="partials/navbar.jsp" />

    <div class="container">
        <h1>Viewing your profile.</h1>
        <p>${message}</p>
    </div>

</body>
</html>
