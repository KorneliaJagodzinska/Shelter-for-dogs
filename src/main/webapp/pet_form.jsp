<%--
  Created by IntelliJ IDEA.
  User: korneliajagodzinska
  Date: 09/09/2020
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Pet Form</title>
</head>
<body>
<jsp:include page="navigator.jsp"/>

<form action="${pageContext.request.contextPath}/pet/form" method="post">
    <%--first name input type text--%>
    <c:choose>
        <c:when test="${requestScope.ownerId ==null}">
            <label for="owner">Owner:</label>
            <select id="owner" name="ownerIdValue">
                <c:forEach items="${requestScope.all_owners}" var="owner">
                    <option value="${owner.id}">
                        <c:out value="${owner.firstName} ${owner.lastName}"/>
                    </option>
                </c:forEach>
            </select>
            <br/>
        </c:when>
        <c:otherwise>
            <input type="number" value="${requestScope.ownerId}" name="ownerIdValue" hidden>
        </c:otherwise>
    </c:choose>
    <label for="race">Race:</label>
    <select id="race" name="raceValue">
        <c:forEach items="${requestScope.all_races}" var="race">
            <option value="${race}">
                <c:out value="${subj.name}"/>
            </option>
        </c:forEach>
    </select>

    <br/>
    <input type="submit">
</form>
</body>
</html>
