<%-- 
    Document   : login
    Created on : Jan 8, 2026, 4:17:39 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action ="MainController" method ="post">
            Username: <input type ="text" name ="txtUsername"/> <br/>
            Password: <input type ="password" name ="txtPassword"/> <br/><!-- comment -->
            <input type ="submit" value="Login"/>
            
        </form>
     </body>
</html>
