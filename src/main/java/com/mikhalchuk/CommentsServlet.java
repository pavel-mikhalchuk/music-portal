package com.mikhalchuk;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author Pavel Mikhalchuk
 */
public class CommentsServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("user");
        String comment = req.getParameter("comment");

        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/coffeebreak", "username", "password");

        //selects
        //inserts

        conn.close();

        resp.sendRedirect("comments.jsp");
    }

}