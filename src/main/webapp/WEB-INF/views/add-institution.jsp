<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="header.jsp" %>
<br>
<div align="center" style="color: white"> <h2 class="title-name">Formularz dla współprac</h2></div>
<div class="sum-employee" align="center">
    <h5 style="color:white;">W bazie danych znajduje się: <c:out value="${institutioncount}"/> zamówienia </h5>
</div>
<div align="center">
    <form:form method="post" modelAttribute="institutionform">
        <br>
        <p>
           <h3 style="color:white;">Nazwa instytucji:</h3>
        <br>
            <form:input path="name"/>
            <form:errors path="name" cssClass="error" element="p"/>
            <br>
        </p>
        <p>
        <h3 style="color:white;"> Termin realizacji</h3>
        <h5 style="color: white"> format: yyyy-MM-dd</h5>

            <br>
            <form:input path="dateOrder"/>
            <form:errors path="dateOrder" cssClass="error" element="p"/>
            <br>
        </p>

        <p>
        <h3 style="color:white;"> Opis współpracy:</h3>
            <br>
            <form:input path="description"/>
            <form:errors path="description" cssClass="error" element="p"/>
            <br>
        </p>


        <br>
        <input type="submit" value="Wyślij"/>
        </p>
    </form:form>
</div>
</body>

</html>