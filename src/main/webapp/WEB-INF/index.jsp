<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login & Registration</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1 class="text-center">Welcome!</h1>
        <p class="text-center">Join our growing community.</p>

        <!-- Registration Section -->
        <div class="form-section">
            <h3 class="text-center">Register</h3>
            <form:form action="/register" method="post" modelAttribute="newUser">
                <div class="mb-3">
                    <form:label path="userName" cssClass="form-label" for="userName">Username:</form:label>
                    <form:input path="userName" id="userName" class="form-control" placeholder="Enter your Username" />
                    <form:errors path="userName" cssClass="error-message" />
                </div>
                <div class="mb-3">
                    <form:label path="email" cssClass="form-label" for="registerEmail">Email:</form:label>
                    <form:input path="email" id="registerEmail" class="form-control" placeholder="Enter your Email" />
                    <form:errors path="email" cssClass="error-message" />
                </div>
                <div class="mb-3">
                    <form:label path="password" cssClass="form-label" for="registerPassword">Password:</form:label>
                    <form:input path="password" id="registerPassword" type="password" class="form-control" placeholder="Enter your Password" />
                    <form:errors path="password" cssClass="error-message" />
                </div>
                <div class="mb-3">
                    <form:label path="confirm" cssClass="form-label" for="confirmPassword">Confirm Password:</form:label>
                    <form:input path="confirm" id="confirmPassword" type="password" class="form-control" placeholder="Confirm your Password" />
                    <form:errors path="confirm" cssClass="error-message" />
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form:form>
        </div>

        <!-- Login Section -->
        <div class="form-section">
            <h3 class="text-center">Log In</h3>
            <form:form action="/login" method="post" modelAttribute="newLogin">
                <div class="mb-3">
                    <form:label path="email" cssClass="form-label" for="loginEmail">Email:</form:label>
                    <form:input path="email" id="loginEmail" class="form-control" placeholder="Enter your Email" />
                    <form:errors path="email" cssClass="error-message" />
                </div>
                <div class="mb-3">
                    <form:label path="password" cssClass="form-label" for="loginPassword">Password:</form:label>
                    <form:input path="password" id="loginPassword" type="password" class="form-control" placeholder="Enter your Password" />
                    <form:errors path="password" cssClass="error-message" />
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form:form>
        </div>
    </div>


    <script src="/webjars/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="/js/script.js"></script>
</body>
</html>
