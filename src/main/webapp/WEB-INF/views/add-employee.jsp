<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="header.jsp" %>
<br>
<div  align="center"> <h2 class="title-name" style="color: white">Formularz pracowniczy</h2></div>
<div class="sum-employee"  align="center">
    <h5 style="color:white;">W bazie danych znajduje się: <c:out value="${count}"/> pracowników </h5>
</div>
<div  align="center">
    <form:form method="post" modelAttribute="employeeform">
        <br>
        <p>
        <h3 style="color:white;"> Imię:</h3>
            <br >
            <form:input path="firstName"/>
            <form:errors path="firstName" cssClass="error" element="p"/>
            <br>
        </p>
        <p style="color:white;">
        <h3 style="color:white;"> Nazwisko:</h3>

            <br>
            <form:input path="lastName"/>
            <form:errors path="lastName" cssClass="error" element="p"/>
            <br>
        </p>
        <p style="color:white;">
        <h3 style="color:white;">  Miasto:</h3>
            <br>
            <form:input path="city"/>
            <form:errors path="city" cssClass="error" element="p"/>
            <br>
        </p>

        <p style="color:white;">
        <h3 style="color:white;">  Ulica(nazwa i numer)</h3>
            <br>
            <form:input path="street"/>
            <form:errors path="street" cssClass="error" element="p"/>
            <br>
        </p>
        <p style="color:white;">
        <h3 style="color:white;">   Numer telefonu:</h3>
            <br>
            <form:input path="phoneNumber"/>
            <form:errors path="phoneNumber" cssClass="error" element="p"/>
            <br>
        </p>
        <p style="color:white;">
        <h3 style="color:white;">   Email:</h3>
            <br>
            <form:input path="email"/>
            <form:errors path="email" cssClass="error" element="p"/>
            <br>
        </p>
        <p style="color:white;">
        <h3 style="color:white;">   Position:</h3>
            <br>
            <form:input path="position"/>
            <form:errors path="position" cssClass="error" element="p"/>

        </p>
        <p style="color:white;">
        <h3 style="color:white;">   Payment:</h3>
            <br>
            <form:input path="payment"/>
            <form:errors path="payment" cssClass="error" element="p"/>

        </p>

        <p>
            <br>
            <input type="submit" value="Dodaj"/>
        </p>
    </form:form>
</div>
</body>

</html>