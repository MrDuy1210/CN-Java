<%-- 
    Document   : login
    Created on : May 13, 2025, 10:21:59 AM
    Author     : Khanh Duy
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
</head>
<body>
    <h2>Đăng nhập</h2>
    <form action="login.jsp" method="post">
        <input type="text" name="username" placeholder="Tên người dùng">
        <button type="submit">Đăng nhập</button>
    </form>
    
    <%
        String username = request.getParameter("username");
        if (username != null && !username.trim().isEmpty()) {
            session.setAttribute("loggedIn", true);
            response.sendRedirect("todo.jsp");
        }
    %>
</body>
</html>