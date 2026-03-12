<%-- 
    Document   : university-form
    Created on : Feb 2, 2026, 3:58:12 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add University</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-8">

            <div class="card shadow">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Add New University</h4>
                </div>

                <div class="card-body">
                    <form action="MainController" method="POST">

                        <input type="hidden" name="action" value="addUniversity"/>

                        <!-- ID -->
                        <div class="mb-3">
                            <label class="form-label">ID</label>
                            <input type="text" name="id" value="${u.id}" class="form-control">
                        </div>

                        <!-- Name -->
                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" name="name" value="${u.name}" class="form-control">
                        </div>

                        <!-- Short Name -->
                        <div class="mb-3">
                            <label class="form-label">Short Name</label>
                            <input type="text" name="shortName" value="${u.shortName}" class="form-control">
                        </div>

                        <!-- Description -->
                        <div class="mb-3">
                            <label class="form-label">Description</label>
                            <input type="text" name="description" value="${u.description}" class="form-control">
                        </div>

                        <!-- Founded Year -->
                        <div class="mb-3">
                            <label class="form-label">Founded Year</label>
                            <input type="number" min="0" name="foundedYear"
                                   value="${u.foundedYear}" class="form-control">
                        </div>

                        <!-- Address -->
                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <input type="text" name="address"
                                   value="${u.address}" class="form-control">
                        </div>

                        <!-- City & Region -->
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">City</label>
                                <input type="text" name="city"
                                       value="${u.city}" class="form-control">
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Region</label>
                                <input type="text" name="region"
                                       value="${u.region}" class="form-control">
                            </div>
                        </div>

                        <!-- Type -->
                        <div class="mb-3">
                            <label class="form-label">Type</label>
                            <input type="text" name="type"
                                   value="${u.type}" class="form-control">
                        </div>

                        <!-- Students & Faculties -->
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Total Students</label>
                                <input type="number" min="0" name="totalStudents"
                                       value="${u.totalStudents}" class="form-control">
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Total Faculties</label>
                                <input type="number" min="0" name="totalFaculties"
                                       value="${u.totalFaculties}" class="form-control">
                            </div>
                        </div>

                        <!-- Draft -->
                        <div class="form-check mb-4">
                            <input class="form-check-input"
                                   type="checkbox"
                                   name="isDraft"
                                   ${u.isDraft ? "checked" : ""}>
                            <label class="form-check-label">
                                Draft (Not published)
                            </label>
                        </div>

                        <!-- Buttons -->
                        <div class="d-flex justify-content-between">
                            <a href="search.jsp" class="btn btn-secondary">
                                Back
                            </a>
                            <button type="submit" class="btn btn-success">
                                Add
                            </button>
                        </div>

                    </form>

                    <!-- Messages -->
                    <c:if test="${not empty msg}">
                        <div class="alert alert-success mt-3">
                            ${msg}
                        </div>
                    </c:if>

                    <c:if test="${not empty error}">
                        <div class="alert alert-danger mt-3">
                            ${error}
                        </div>
                    </c:if>

                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>