<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="pl">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
</head>
<body>
<div>
    <h2>Eurostal - Management system</h2>
    <tr>
        <div align="left">
            <h3><a th:href="@{'/add-employee'}">Add new</a></h3>
        </div>

    </tr>
    <tr>

        <div class="col-sm-5" align="center">
            <div class="panel-body" align="center">
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th>Employee ID</th>
                        <th>Employee Name</th>
                        <th>street</th>
                        <th>phoneNumber</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr th:each="employee : ${listemployee}">
                        <td th:text="${employee.id}">Employee ID</td>
                        <td th:text="${employee.firstName}">StudentName</td>
                        <td th:text="${employee.street}">Street</td>
                        <td th:text="${employee.phoneNumber}">PhoneNumber</td>
                        <td>
                            <a th:href="@{'/edit/' + ${employee.id}}">Edit</a>
                        </td>
                        <td>
                            <a th:href="@{'/delete/' + ${employee.id}}">Delete</a>
                        </td>
                    </tr>

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