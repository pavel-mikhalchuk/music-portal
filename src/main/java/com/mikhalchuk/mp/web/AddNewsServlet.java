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
public class AddNewsServlet extends HttpServlet {

    private DB db = new DB();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String summary = req.getParameter("summary");
        String picture = req.getParameter("picture");
        String description = req.getParameter("description");
        String date = req.getParameter("date");

        db.create(title, summary, picture, description, date);

        resp.sendRedirect("");
    }
}
