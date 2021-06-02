"use strict";

function logoutAlert() {
    if ((request.getSession().getAttribute("user") == null)) {
        alert("Please login first.");
    }

}