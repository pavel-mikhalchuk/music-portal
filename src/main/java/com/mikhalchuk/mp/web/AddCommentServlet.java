package com.mikhalchuk.mp.web;

import com.mikhalchuk.mp.db.DB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

/**
 * @author Dmitry Mikhalchuk
 */
public class AddCommentServlet extends HttpServlet {

    private DB db = new DB();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("user");
        String comment = req.getParameter("comment");
        Date date = new Date();
        Long newsId = Long.parseLong(req.getParameter("news_id"));

        db.createComment(user, comment, date, newsId);

        resp.sendRedirect("news?id=" + newsId);
    }
}