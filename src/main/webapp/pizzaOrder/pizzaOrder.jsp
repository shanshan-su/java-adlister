<%--
  Created by IntelliJ IDEA.
  User: shan
  Date: 5/30/21
  Time: 7:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/partials/head.jsp" %>
    <title>Pizza Order</title>
</head>
<body>
<%@ include file="/partials/navbar.jsp"%>

<form method="POST" action="pizza-order" class="container">
    <h2>Build your own pizza!</h2>

    <div>
        <div>
            <div class="card">
                <h5 class="card-header bg-primary text-white">Choose size and crust</h5>
                <div class="card-body">
                    <div class="card child-cards">
                        <div class="card-header">
                            Crust Type
                        </div>
                        <label for="crustType"></label>
                        <select class="form-control" id="crustType" name="crustType">
                            <option>Please select crust type</option>
                            <option value="hand tossed">Hand Tossed</option>
                            <option value='crispy thin)'>Crispy Thin</option>
                        </select>
                        <div class="card child-cards">
                            <div class="card-header">
                                Size
                            </div>
                            <label for="size"></label>
                            <select class="form-control" id="size" name="size">
                                <option>Please select size</option>
                                <option value='small(10")'>Small(10")</option>
                                <option value='medium(12")'>medium(12")</option>
                                <option value='large(14")'>Large(14")</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <h5 class="card-header bg-primary text-white">Choose Cheese and Sauce</h5>
                <div class="card-body">
                    <div class="card child-cards">
                        <div class="card-header">
                            Cheese
                        </div>
                        <div class="form-group">
                            <label for="cheese-amount">How much?</label>
                            <select class="form-control" id="cheese-amount">
                                <option>Light</option>
                                <option>Normal</option>
                                <option>Extra</option>
                                <option>Double</option>
                            </select>
                        </div>
                    </div>

                    <div class="card child-cards">
                        <div class="card-header">
                            Sauce
                        </div>
                        <div class="form-group">
                            <label for="sauce-type">What Type?</label>
                            <select class="form-control" id="sauce-type">
                                <option>Tomato Sauce</option>
                                <option>Marinara sauce</option>
                                <option>BBQ Sauce</option>
                                <option>Alfredo Sauce</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="sauce-amount">How much?</label>
                            <select class="form-control" id="sauce-amount">
                                <option>Light</option>
                                <option>Normal</option>
                                <option>Extra</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
            <h5 class="card-header bg-primary text-white">Choose Toppings</h5>
            <div class="card-body">
                <div class="card child-cards">
                    <div class="card-header">
                        Choose  Meats
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="beef" id="beef">
                                <label class="form-check-label" for="beef">
                                    Beef
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="ham" id="ham">
                                <label class="form-check-label" for="ham">
                                    Ham
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="philly-steak" id="philly-steak">
                                <label class="form-check-label" for="philly-steak">
                                    Philly Steak
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="bacon" id="bacon">
                                <label class="form-check-label" for="bacon">
                                    Bacon
                                </label>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="card child-cards">
                    <div class="card-header">
                        Choose Non-Meats
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="green-peppers" id="green-peppers">
                                <label class="form-check-label" for="green-peppers">
                                    Green Peppers
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="mushrooms" id="mushrooms">
                                <label class="form-check-label" for="mushrooms">
                                    Mushrooms
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="onions" id="onions">
                                <label class="form-check-label" for="onions">
                                    Onions
                                </label>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="jalepeno" id="jalepeno">
                                <label class="form-check-label" for="jalepeno">
                                    Jalepeno Peppers
                                </label>
                            </div>
                        </li>
                    </ul>
                </div>

                <div class="card child-cards">
                    <div class="card-header">
                        Delivery Address
                    </div>
                    <div>
                        <label for="address"></label>
                        <input type="text" class="form-control" id="address" name="address">
                    </div>
                </div>

                <div class="card-footer text-muted">
                    <button type="submit" class="btn btn-primary">checkout <i class="fa fa-shopping-cart"></i></button>
                </div>
            </div>
        </div>
        </div>
    </div>
</form>




<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

</body>
</html>
