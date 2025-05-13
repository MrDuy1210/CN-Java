<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý danh sách công việc</title>
</head>

    <h2>Danh sách công việc</h2>
    
    <form action="todo" method="post">
        <input type="hidden" name="action" value="add">
        <input type="text" name="task" placeholder="Nhập công việc mới">
        <button type="submit">Thêm</button>
    </form>

    <h3>Công việc hiện tại:</h3>
    <ul>
        <c:forEach var="task" items="${sessionScope.todoList}">
            <li>
                ${task}
                <form action="todo" method="post" style="display:inline;">
                    <input type="hidden" name="action" value="remove">
                    <input type="hidden" name="task" value="${task}">
                    <button type="submit">Xóa</button>
                </form>
            </li>
        </c:forEach>
    </ul>
    
    <c:if test="${empty sessionScope.todoList}">
        <p>Chưa có công việc nào.</p>
    </c:if>
    
    <p><a href="login.jsp">Đăng xuất</a></p>

</html>