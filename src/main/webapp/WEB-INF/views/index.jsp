<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="header.jsp" %>

<tr>

    <div class="col-sm-5">
        <div class="panel-body">
            <table class="table">
                <thead class="thead-dark">
                <h2 class="title-name">Eurostal - Management system</h2>
                <h5 style="color:white;">W bazie danych znajduje się: <c:out value="${count}"/> pracowników </h5>
                <tr>
                    <th> First Name</th>
                    <th> Last Name</th>
                    <th>Street</th>
                    <th>PhoneNumber</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listemployee}" var="employee">
                    <tr>
                        <td><c:out value="${employee.firstName}"/></td>
                        <td><c:out value="${employee.lastName}"/></td>
                        <td><c:out value="${employee.street}"/></td>
                        <td><c:out value="${employee.phoneNumber}"/></td>

                        <td><a href="/edit/${employee.id}"><input type="button" value="Edit"
                                                                  class="edit-button"></a></td>
                        <td>
                            <a href="/delete/${employee.id}"><input type="button" value="Delete"
                                                                    class="delete-button"></a>
                        </td>
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