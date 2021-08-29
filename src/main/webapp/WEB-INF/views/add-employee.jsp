<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="header.jsp" %>
<div  align="center"> <h2 class="title-name">Eurostal - Management system</h2></div>
<div class="sum-employee"  align="center">
    <h5 style="color:white;">W bazie danych znajduje się: <c:out value="${count}"/> pracowników </h5>
</div>
<div  align="center">
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
</div>
</body>

</html>