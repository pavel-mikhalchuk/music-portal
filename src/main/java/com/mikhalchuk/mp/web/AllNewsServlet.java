package com.mikhalchuk.mp.web;

import com.mikhalchuk.mp.db.DB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 * User: dzmikhalchuk
 * Date: 27.05.13
 * Time: 13:48
 * To change this template use File | Settings | File Templates.
 */
public class AllNewsServlet extends HttpServlet {

    private DB db = new DB();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("news", db.getNews());
        req.getRequestDispatcher("allnews.jsp").forward(req, resp);
    }
}
