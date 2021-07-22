<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="pl">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
</head>
<body>
<form:form method="post" modelAttribute="employeeform">
    <br>
    <p>
        Imię:
        <br>
        <form:input path="firstName"/>
        <form:errors path="firstName" cssClass="error" element="p"/>
        <br>
    </p>
    <p>
        Nazwisko:
        <br>
        <form:input path="lastName"/>
        <form:errors path="lastName" cssClass="error" element="p"/>
        <br>
    </p>

    <p>
        Ulica(nazwa i numer)
        <br>
        <form:input path="street"/>
        <form:errors path="street" cssClass="error" element="p"/>
        <br>
    </p>
    <p>
        Numer telefonu:
        <br>
        <form:input path="phoneNumber"/>
        <form:errors path="phoneNumber" cssClass="error" element="p"/>
        <br>
    </p>
    <p>
        Email:
        <br>
        <form:input path="email"/>
        <form:errors path="email" cssClass="error" element="p"/>
        <br>
    </p>
    <p>
        Position:
        <br>
        <form:input path="position"/>
        <form:errors path="position" cssClass="error" element="p"/>

    </p>
    <p>
        Payment:
        <br>
        <form:input path="payment"/>
        <form:errors path="payment" cssClass="error" element="p"/>

    </p>

    <p>
        <br>
        <input type="submit" value="Wyślij"/>
    </p>
</form:form>
</body>
</html>