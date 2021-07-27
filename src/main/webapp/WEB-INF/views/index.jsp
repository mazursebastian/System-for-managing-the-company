<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="pl">
<head>
    <link href="/style/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
</head>
<body>
<div>

    <table cellpadding="0px" cellspacing="0px" id="navBar">
        <tr>
            <td>
                <h3><a href="/add-employee">Add new employee</a></h3>
            </td>
            <td>
                <h3><a href="/add-employee">Display employees list</a></h3>
            </td>
            <td>
                <h3><a href="/add-employee">Add new company order</a></h3>
            </td>
            <td>
                <h3><a href="/add-employee">Display companies orders</a></h3>
            </td>
        </tr>
    </table>


    <tr>

        <div class="col-sm-5">
            <div class="panel-body">
                <table class="table">
                    <thead class="thead-dark">
                    <h2>Eurostal - Management system</h2>
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