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
                <h2 class="title-name" style="color: white">Lista współprac i zadań do realizacji</h2>
                <h5 style="color:white;">W bazie danych znajduje się: <c:out value="${institutioncount}"/>
                    zamówień </h5>
                <tr>
                    <th  style="text-align: center"> Firma</th>
                    <th  style="text-align: center"> Data realizacji</th>
                    <th  style="text-align: center">Opis</th>
                    <th style="text-align: center">Edycja</th>
                    <th  style="text-align: center">Usuwanie</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listinstitutions}" var="institution">
                    <tr>
                        <td><c:out value="${institution.name}"/></td>
                        <td><c:out value="${institution.dateOrder}"/></td>
                        <td><c:out value="${institution.description}"/></td>

                        <td><a href="/edit/${institution.id}"><input type="button" value="Edit"
                                                                     class="edit-button"></a></td>
                        <td>
                            <a href="/deleteInstitution/${institution.id}"><input type="button" value="Delete"
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