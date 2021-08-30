<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="header-client.jsp" %>

<br>
<br>
<br>
<br>
<br>
<div>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h3 style="color: white; text-align: center">Nazwa użytkownika: ${pageContext.request.userPrincipal.name}  </h3>
        <h3 style="color: white; text-align: center">Imię: Sebastian${user.firstName}  </h3>
        <h3 style="color: white; text-align: center">Nazwisko: Mazur${user.firstName}  </h3>



    </c:if>
</div>


</tbody>
</table>
</div>


</body>
</html>