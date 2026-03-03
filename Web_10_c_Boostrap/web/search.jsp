<%-- 
    Document   : search
    Created on : Jan 28, 2026, 5:23:32 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>University Management</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body class="bg-light">

<jsp:include page="welcome.jsp" />

<c:if test="${empty user}">
    <c:redirect url="login.jsp"/>
</c:if>

<div class="container py-4">

    <!-- Page Header -->
    <div class="card shadow-sm mb-4">
        <div class="card-body">

            <div class="d-flex justify-content-between align-items-center mb-3">
                <h4 class="mb-0 text-primary">University Management</h4>
                <a href="university-form.jsp" class="btn btn-success">
                    ➕ Add New University
                </a>
            </div>

            <!-- Search -->
            <form action="MainController" method="post" class="row g-2">
                <input type="hidden" name="action" value="searchUniversity"/>

                <div class="col-md-9">
                    <input type="text"
                           name="keywords"
                           value="${keywords}"
                           class="form-control"
                           placeholder="Enter university name...">
                </div>

                <div class="col-md-3">
                    <button type="submit" class="btn btn-primary w-100">
                        🔍 Search
                    </button>
                </div>
            </form>

        </div>
    </div>

    <!-- No Data -->
    <c:if test="${empty list}">
        <div class="alert alert-warning text-center shadow-sm">
            No data matching the search criteria found!
        </div>
    </c:if>

    <!-- Table -->
    <c:if test="${not empty list}">
        <div class="card shadow-sm">
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-hover table-bordered mb-0 align-middle text-center">
                        <thead class="table-primary">
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Short Name</th>
                                <th>City</th>
                                <th>Region</th>
                                <th>Type</th>
                                <th>Founded</th>
                                <th>Students</th>
                                <th>Faculties</th>
                                <th width="90">Update</th>
                                <th width="90">Delete</th>
                            </tr>
                        </thead>
                        <tbody>

                        <c:forEach items="${list}" var="u">
                            <tr>
                                <td>${u.id}</td>
                                <td class="text-start">${u.name}</td>
                                <td>${u.shortName}</td>
                                <td>${u.city}</td>
                                <td>${u.region}</td>
                                <td>${u.type}</td>
                                <td>${u.foundedYear}</td>
                                <td>${u.totalStudents}</td>
                                <td>${u.totalFaculties}</td>

                                <!-- UPDATE -->
                                <td>
                                    <c:if test="${u.isDraft}">
                                        <form action="MainController" method="get">
                                            <input type="hidden" name="action" value="updateUniversity"/>
                                            <input type="hidden" name="id" value="${u.id}"/>
                                            <button type="submit" class="btn btn-warning btn-sm">
                                                Update
                                            </button>
                                        </form>
                                    </c:if>
                                </td>

                                <!-- DELETE -->
                                <td>
                                    <form action="MainController" method="post"
                                          onsubmit="return confirm('Bạn có chắc chắn muốn xóa trường đại học này không?');">
                                        <input type="hidden" name="action" value="deleteUniversity"/>
                                        <input type="hidden" name="id" value="${u.id}"/>
                                        <input type="hidden" name="keywords" value="${keywords}"/>
                                        <button type="submit" class="btn btn-danger btn-sm">
                                            Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </c:if>

</div>

</body>
</html>