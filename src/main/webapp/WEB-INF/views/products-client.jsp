<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@include file="header-client.jsp" %>
<div style="background-color: black">
<div>
    <br>
    <br>
    <br>
</div>
<div class="card"style="background-color: black; border-color: white;">
    <img src="<c:url value="resources/images/okladka.jpg"/>" class="" alt="Signature" style="width: 20%"/>
    <h1 class="title-cd">Blejn - Alcatraz</h1>
    <p class="price">19.99 zł</p>
    <p class="p-description">Alcatraz to płyta artysty który stale poszukuje sensu w otaczającym go świecie, w utworach artysta opowiada o tym co towarzyszy mu często przy nocnych przemyśleniach.
    </p>
</div>
<div class="card" style="background-color: black; border-color: white;">
    <img src="<c:url value="resources/images/border-line.png"/>" class="" alt="Signature" style="width: 20%"/>
    <h1 class="title-cd">Blejn - Borderline</h1>
    <p class="price">19.99 zł</p>
    <p class="p-description">Some text about the jeans..</p>
</div>
<div class="card" style="background-color: black; border-color: white;">
    <img src="<c:url value="resources/images/outofline.png"/>" class="" alt="Signature" style="width: 20%"/>
    <h1 class="title-cd">Blejn - Out of line</h1>
    <p class="price">19.99 zł</p>
    <p class="p-description">Some text about the jeans..</p>
</div>
<div class="card" style="background-color: black; border-color: white;">
    <img src="<c:url value="resources/images/okladka.jpg"/>" class="" alt="Signature" style="width: 20%"/>
    <h1  class="title-cd">Blejn - Jesień</h1>
    <p class="price">19.99 zł</p>
    <p class="p-description">Some text about the jeans..</p>
</div>
</div>
</tbody>
</table>
</div>

</body>
</html>