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
                <h5 style="color:white;">W bazie danych znajduje się: <c:out value="${orderncount}"/> zamówień </h5>
                <tr>
                    <th>City</th>
                    <th>Street</th>
                    <th>Phone number</th>
                    <th>Product</th>
                    <th>Date</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listorders}" var="institution">
                    <tr>
                        <td><c:out value="${order.city}"/></td>
                        <td><c:out value="${order.street}"/></td>
                        <td><c:out value="${order.phoneNumber}"/></td>
                        <td><c:out value="${order.product}"/></td>
                        <td><c:out value="${order.pickUpDate}"/></td>

                        <td><a href="/editorder/${order.id}"><input type="button" value="Edit"
                                                                     class="edit-button"></a></td>
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