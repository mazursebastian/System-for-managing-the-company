<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="header-client.jsp" %>
<div align="center"><h2 class="title-name">Formularz zamówienia</h2></div>
<div class="sum-employee" align="center">

</div>
<div align="center">
    <form:form method="post" modelAttribute="orderform">
    <br>
        <p>
        <h3 style=" color:white;"><i class='bx bxs-user'></i>Imię: </h3>
        <br>
        <form:input path="firstName"/>
        <form:errors path="firstName" cssClass="error" element="p"/>
        <br>
        </p>
        <p>
        <h3 style=" color:white;"><i class='bx bxs-user'></i>Nazwisko: </h3>
        <br>
        <form:input path="lastName"/>
        <form:errors path="lastName" cssClass="error" element="p"/>
        <br>
        </p>
    <p>
    <h3 style=" color:white;"><i class='bx bxs-city'></i>Miasto: </h3>
    <br>
        <form:input path="city"/>
        <form:errors path="city" cssClass="error" element="p"/>
    <br>
    </p>
    <p>
    <h3 style=" color:white;"><i class='bx bxs-navigation'></i></i>Ulica:</h3>
    <br>
        <form:input path="street"/>
        <form:errors path="street" cssClass="error" element="p"/>
    <br>
    </p>

    <p>
    <h3 style=" color:white;"><i class='bx bxs-cylinder'></i>Product:</h3>
        <c:forEach items="${products}" var="product">
            <div class="form-group form-group--checkbox">
                <label>
                    <form:radiobutton path="product" value="${product.id}"/>

                    <span class="checkbox radio"></span>
                    <span class="description">
                  <div class="title" style="color: white">${product.name}</div>
                  <div class="subtitle"  style="color: white">${product.description}</div>
                  <div class="subtitle"  style="color: white">${product.price}</div>
                </span>
                </label>
            </div>
        </c:forEach>
        </p>
        <p>
        <h3 style=" color:white;"> <i class='bx bxs-calendar' ></i>Data odbioru:</h3>
            <br>
            <form:input path="pickUpDate"/>
            <form:errors path="pickUpDate" cssClass="error" element="p"/>
            <br>
        </p><p>
        <h3 style=" color:white;"><i class='bx bxs-phone-call' ></i>Numer telefonu:</h3>
            <br>
            <form:input path="phoneNumber"/>
            <form:errors path="phoneNumber" cssClass="error" element="p"/>
            <br>
        </p>


        <br>
        <input type="submit" value="Zamów"/>
        </p>
    </form:form>
</div>
</body>

</html>