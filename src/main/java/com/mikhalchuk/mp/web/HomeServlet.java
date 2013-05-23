package com.mikhalchuk.mp.web;

import com.mikhalchuk.mp.db.DB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Pavel Mikhalchuk
 */
public class HomeServlet extends HttpServlet {

    private DB db = new DB();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("news", db.getNews());
        req.setAttribute("lastReports", db.getReports());
        req.setAttribute("lastReviews", db.getReviews());
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

}