package com.mikhalchuk.mp.web;

import com.mikhalchuk.mp.db.DB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Dmitry Mikhalchuk
 */
public class ReviewServlet extends HttpServlet {

    private DB db = new DB();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));

        req.setAttribute("review", db.findReviews(id));
        req.setAttribute("lastNews", db.getNews());
        req.setAttribute("comments", db.findComments(id));
        req.getRequestDispatcher("review.jsp").forward(req, resp);
    }
}
