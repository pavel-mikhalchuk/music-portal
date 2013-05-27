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
public class ReportServlet extends HttpServlet {

    private DB db = new DB();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.parseLong(req.getParameter("id"));

        req.setAttribute("report", db.findReport(id));
        req.setAttribute("lastReports", db.getReports());
        req.setAttribute("comments", db.findComments(id));
        req.getRequestDispatcher("report.jsp").forward(req, resp);
    }
}