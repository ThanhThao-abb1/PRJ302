<%-- 
    Document   : welcome
    Created on : Jan 28, 2026, 5:24:03 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${empty user}">
    <c:redirect url="login.jsp"/>
</c:if>

<c:if test="${not empty user}">

<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm border-bottom">
    <div class="container">

        <!-- Brand -->
        <a class="navbar-brand fw-bold text-primary" href="search.jsp">
            🎓 University Management
        </a>

        <!-- Toggle -->
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarContent">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarContent">

            <!-- Left menu -->
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="search.jsp">
                        🔍 Search
                    </a>
                </li>
            </ul>

            <!-- Right side -->
            <div class="d-flex align-items-center">

                <span class="me-3 text-muted">
                    Welcome,
                    <span class="fw-semibold text-dark">
                        ${user.fullName}
                    </span>
                </span>

                <a href="MainController?action=logout"
                   class="btn btn-outline-danger btn-sm">
                    Logout
                </a>

            </div>

        </div>
    </div>
</nav>

</c:if>