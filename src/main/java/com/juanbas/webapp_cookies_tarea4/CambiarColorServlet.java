package com.juanbas.webapp_cookies_tarea4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/cambiar-color")
public class CambiarColorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String textColor = req.getParameter("textColor");
        String backgroundColor = req.getParameter("backColor");
        System.out.println("backgroundColor = " + backgroundColor);
        resp.addCookie(new Cookie("textColor", textColor));
        resp.addCookie(new Cookie("backColor", backgroundColor));
        resp.sendRedirect("/webapp-cookie-tarea4/index.jsp");
    }
}
