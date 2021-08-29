<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="header-client.jsp" %>

<section class="register-section">
    <div align="center">

        <form:form method="post" modelAttribute="userform">
            <br>
            <p>
            <h3>First name:</h3>
            <br>
            <form:input path="firstName"/>
            <form:errors path="firstName" cssClass="error" element="p"/>
            <br>
            </p>
            <p>
            <h3>Last name:</h3>
            <br>
            <form:input path="lastName"/>
            <form:errors path="lastName" cssClass="error" element="p"/>
            <br>
            </p>
            <p>
            <h3>Login:</h3>
            <br>
            <form:input path="login"/>
            <form:errors path="login" cssClass="error" element="p"/>

            </p>
            <p>
            <h3>Password:</h3>
            <br>
            <form:input path="password"/>
            <form:errors path="password" cssClass="error" element="p"/>
            <br>
            </p>
            <p>
            <h3> Email:</h3>
            <br>
            <form:input path="email"/>
            <form:errors path="email" cssClass="error" element="p"/>
            <br>
            </p>
            <p>
                <br>
                <input type="submit" value="Zatwierdź"/>
            </p>
        </form:form>
    </div>
</section>
<div class="image-background">
    <img src="<c:url value="resources\images\Odlewy_i_staliwa.png"/>"/>
</div>


</body>
</html>