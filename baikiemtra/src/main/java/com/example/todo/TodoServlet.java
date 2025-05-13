package com.example.todo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/todo")
public class TodoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<String> todoList = (ArrayList<String>) session.getAttribute("todoList");
        
        if (todoList == null) {
            todoList = new ArrayList<>();
            session.setAttribute("todoList", todoList);
        }

        String action = request.getParameter("action");
        if ("add".equals(action)) {
            String task = request.getParameter("task");
            if (task != null && !task.trim().isEmpty()) {
                todoList.add(task);
            }
        } else if ("remove".equals(action)) {
            String task = request.getParameter("task");
            if (task != null) {
                todoList.remove(task);
            }
        }

        response.sendRedirect("todo.jsp");
    }
}