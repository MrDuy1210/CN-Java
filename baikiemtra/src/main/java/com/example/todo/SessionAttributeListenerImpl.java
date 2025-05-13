package com.example.todo;

import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;

public class SessionAttributeListenerImpl implements HttpSessionAttributeListener {
    public void attributeAdded(HttpSessionBindingEvent event) {
        if ("todoList".equals(event.getName())) {
            System.out.println("Session attribute 'todoList' added: " + event.getValue());
        }
    }

    public void attributeRemoved(HttpSessionBindingEvent event) {
        if ("todoList".equals(event.getName())) {
            System.out.println("Session attribute 'todoList' removed");
        }
    }

    public void attributeReplaced(HttpSessionBindingEvent event) {
        if ("todoList".equals(event.getName())) {
            System.out.println("Session attribute 'todoList' updated: " + event.getValue());
        }
    }
}