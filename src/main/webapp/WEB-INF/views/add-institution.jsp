<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%@include file="header.jsp" %>
<div align="center"> <h2 class="title-name">Eurostal - Management system</h2></div>
<div class="sum-employee" align="center">
    <h5>W bazie danych znajduje się: <c:out value="${institutioncount}"/> zamówień </h5>
</div>
<div align="center">
    <form:form method="post" modelAttribute="institutionform">
        <br>
        <p>
            Name company:
            <br>
            <form:input path="name"/>
            <form:errors path="name" cssClass="error" element="p"/>
            <br>
        </p>
        <p>
            Ordered on:
            <br>
            <form:input path="dateOrder"/>
            <form:errors path="dateOrder" cssClass="error" element="p"/>
            <br>
        </p>

        <p>
            Description:
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