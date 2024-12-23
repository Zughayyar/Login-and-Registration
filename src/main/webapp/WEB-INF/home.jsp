<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login & Registration</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/style.css">

</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 main-container">
                <h1 class="text-center header-text">Welcome, ${loggedUser.userName} </h1>
                <p class="text-center sub-header">This is your dashboard. Nothing to see here yet.</p>
            </div>
            <a href="/logout" class="btn btn-primary">logout</a>
        </div>
    </div>


    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/script.js"></script>
</body>
</html>