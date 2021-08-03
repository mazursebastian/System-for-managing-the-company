<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="header-client.jsp" %>


<tr>

    <div class="col-sm-5">
        <div class="panel-body">
            <table class="table">
                <thead class="thead-dark">
                <h2 class="title-name">Eurostal - Management system</h2>
                <h5>W bazie danych znajduje się: <c:out value="${institutioncount}"/> zamówień </h5>
                <tr>
                    <th> Institution name</th>
                    <th>Description</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listinstitutions}" var="institution">
                    <tr>
                        <td><c:out value="${institution.name}"/></td>
                        <td><c:out value="${institution.description}"/></td>



                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>

    </div>

</tr>

</tbody>
</table>
</div>

</body>
</html>