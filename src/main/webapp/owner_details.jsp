<%--
  Created by IntelliJ IDEA.
  User: korneliajagodzinska
  Date: 09/09/2020
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Owner Details</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<jsp:include page="navigator.jsp"/>
<h1>Details of owner with id: ${requestScope.owner.id}</h1>

<div class="details-container">
    <div class="details-section">
        <h2>Dane właściciela:</h2>
        <div class="details-param">
            <div class="details-label">Id:</div>
            <div class="detail">${requestScope.owner.id}</div>
        </div>
        <div class="details-param">
            <div class="details-label">Name:</div>
            <div class="detail">${requestScope.owner.firstName}</div>
        </div>
        <div class="details-param">
            <div class="details-label">Surname:</div>
            <div class="detail">${requestScope.owner.lastName}</div>
        </div>
        <div class="details-param">
            <div class="details-label">Birth date:</div>
            <div class="detail">${requestScope.owner.birthDate}</div>
        </div>
        <div class="details-param">
            <div class="details-label">Age:</div>
            <div class="detail">${requestScope.owner.age}</div>
        </div>
        <div class="details-param">
            <div class="details-label">Average of pet's age:</div>
            <div class="detail">${requestScope.owner.averageOfPetsAge}</div>
        </div>
        <div class="details-param">
            <div class="details-label">Amount of pets:</div>
            <div class="detail">${requestScope.owner.amountOfPets}</div>
        </div>
        <div class="details-param">
            <div class="details-label"></div>
            <div class="detail">
                <a href="${pageContext.request.contextPath}/pets/form?ownerId=${requestScope.owner.id}">Add pet...</a>
            </div>
        </div>
    </div>
    <div class="details-section">
        <h2>Pupile:</h2>
        <div class="pet-container">
            <div class="pet-table-header">
                <div class="pet-table-header-cell">
                    Id
                </div>
                <div class="pet-table-header-cell">
                    Value
                </div>
                <div class="pet-table-header-cell">
                    Subject
                </div>
                <div class="pet-table-header-cell">
                    Datetime
                </div>
                <div class="pet-table-header-cell">
                    Actions
                </div>
            </div>
            <c:forEach items="${requestScope.owner.pets}" var="pupil">
                <div class="pet-table-row">
                    <div class="pet-table-cell">
                            ${pupil.id}
                    </div>
                    <div class="pet-table-cell">
                            ${pupil.value}
                    </div>
                    <div class="pet-table-cell">
                            ${pupil.subject}
                    </div>
                    <div class="pet-table-cell">
                            ${pupil.datetimeCreated}
                    </div>
                    <div class="pet-table-cell">
                        <a href="${pageContext.request.contextPath}/pet/delete?id=${pupil.id}">Delete</a>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</div>

</body>
</html>
