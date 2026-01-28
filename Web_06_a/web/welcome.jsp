<%-- 
    Document   : welcome
    Created on : Jan 28, 2026, 5:24:03 PM
    Author     : LENOVO
--%>

<%@page import="model.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UserDTO u = (UserDTO)session.getAttribute("user");
            if (u!=null){       
        %>
                <h1>Welcome, <%=u.getFullName()%> </h1>
                <a href="MainController?action=logout&">Logout</a><br/>
                <a href="search.jsp">Seach</a>
        <%  } else {
                response.sendRedirect("login.jsp");
            }
        %>
        
        
    </body>
</html>