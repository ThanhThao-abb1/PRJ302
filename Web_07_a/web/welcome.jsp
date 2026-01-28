<%-- 
    Document   : welcome
    Created on : Jan 28, 2026, 5:24:03 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <c:choose>

            <c:when test="${not empty user}">
                <h1>
                    Welcome, ${user.fullName}
                </h1>

                <a href="MainController?action=logout">Logout</a><br/>
                <a href="search.jsp">Search</a>
            </c:when>

            <c:otherwise>
                <c:redirect url="login.jsp"/>
            </c:otherwise>

        </c:choose>

    </body>
</html>