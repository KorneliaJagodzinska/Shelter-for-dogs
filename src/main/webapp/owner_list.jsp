<%--
  Created by IntelliJ IDEA.
  User: korneliajagodzinska
  Date: 09/09/2020
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Owner List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<jsp:include page="navigator.jsp"/>
<h1>Owner List:</h1>
<div class="table">
    <div class="header-row">
        <div class="header-cell">
            Id
        </div>
        <div class="header-cell">
            First name
        </div>
        <div class="header-cell">
            Last name
        </div>
        <div class="header-cell">
            Birth date
        </div>
        <div class="header-cell">
            Age
        </div>
        <div class="header-cell">
            Average of pupil's age
        </div>
        <div class="header-cell">
            Amount of pets
        </div>
        <div class="header-cell actions-cell">
            Actions
        </div>
    </div>
    <c:forEach items="${requestScope.jakastamsobie_lista}" var="właściciel">
        <div class="owner-row">
            <div class="owner-cell">
                <c:out value="${właściciel.id}"/>
            </div>
            <div class="owner-cell">
                <c:out value="${właściciel.firstName}"/>
            </div>
            <div class="owner-cell">
                <c:out value="${właściciel.lastName}"/>
            </div>
            <div class="owner-cell">
                <c:out value="${właściciel.birthDate}"/>
            </div>
            <div class="owner-cell">
                <c:out value="${właściciel.age}"/>
            </div>
            <div class="owner-cell">
                <c:out value="${właściciel.averageOfPetsAge}"/>
            </div>
            <div class="owner-cell actions-cell">
                <a href="${pageContext.request.contextPath}/owner/details?id=${właściciel.id}">Details</a>
                <a href="${pageContext.request.contextPath}/owner/delete?id=${właściciel.id}">Delete</a>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>
