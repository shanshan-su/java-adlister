<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 5/28/21
  Time: 11:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/partials/head.jsp" %>
    <title>Guessing Game</title>
</head>
<body>
<%@ include file="/partials/navbar.jsp" %>


<form method="POST" action="guess" class="m-5">
    <h2 class="mb-3">Guessing Game</h2>
    <div class="mb-3">
        <p>Let's play a game. I'll write down a whole number between 1 and 3, after I finish you'll guess what number it is on the paper. Are you ready?</p>
        <p>Now it's your turn, please enter your number below.</p>
    </div>
    <div class="mb-3" >
        <label for="number" class="form-label">Your number</label>
        <input type="text" class="form-control" id="number" name="number">
    </div>
    <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="check">
        <label class="form-check-label" for="check">Are you sure to submit?</label>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>


<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>
