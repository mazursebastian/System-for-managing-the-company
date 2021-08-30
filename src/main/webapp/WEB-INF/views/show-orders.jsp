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
                <h2 class="title-name"></h2>
               <!-- <h5 style="color:white;">W bazie danych znajduje się: <c:out value="${orderncount}"/> zamówień </h5>
               -->
                <tr>
                    <th>Imię</th>
                    <th>Nazwisko</th>
                    <th>Miasto</th>
                    <th>Ulica i nr</th>
                    <th>Numer telefonu</th>
                    <th>Produkt</th>
                    <th>Data</th>

                    <th>Usuń</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${orderList}" var="order">
                    <tr>
                        <td><c:out value="${order.firstName}"/></td>
                        <td><c:out value="${order.lastName}"/></td>
                        <td><c:out value="${order.city}"/></td>
                        <td><c:out value="${order.street}"/></td>
                        <td><c:out value="${order.phoneNumber}"/></td>
                        <td><c:out value="${order.product.name}"/></td>
                        <td><c:out value="${order.zipCode}"/></td>

                        <td>
                            <a href="/deleteOrder/${order.id}"><input type="button" value="Delete"
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