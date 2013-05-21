package com.mikhalchuk.mp.db;

import com.mikhalchuk.mp.entity.News;

import java.sql.*;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/**
 * @author Pavel Mikhalchuk
 */
public class DB {

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (Exception e) {
            throw new RuntimeException("PIZDA!!!! BAZA NE RABOTAET!!!!", e);
        }
    }

    public List<News> getNews() {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            ResultSet rs = c.prepareStatement("SELECT * FROM music_portal.news ").executeQuery();

            List<News> result = new LinkedList<News>();

            while (rs.next()) {
                Long id = rs.getLong(1);
                String title = rs.getString(2);
                String summary = rs.getString(3);
                String description = rs.getString(4);
                String pictureUrl = rs.getString(5);
                Date date = rs.getDate(6);

                result.add(new News(id, title, summary, description, pictureUrl, date));
            }

            return result;
        } catch (Exception e) {
            throw new RuntimeException("CHTO-TO S BAZOJ!!!", e);
        } finally {
            try {
                if (c != null) c.close();
            } catch (SQLException e) {
                throw new RuntimeException("CHTO-TO S BAZOJ!!!", e);
            }
        }
    }

    public News findNews(Long id) {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            PreparedStatement s = c.prepareStatement("SELECT * FROM music_portal.news WHERE id = ?");
            s.setLong(1, id);

            ResultSet rs = s.executeQuery();
            rs.next();

            String title = rs.getString(2);
            String summary = rs.getString(3);
            String description = rs.getString(4);
            String pictureUrl = rs.getString(5);
            Date date = rs.getDate(6);

            return new News(id, title, summary, description, pictureUrl, date);
        } catch (Exception e) {
            throw new RuntimeException("CHTO-TO S BAZOJ!!!", e);
        } finally {
            try {
                if (c != null) c.close();
            } catch (SQLException e) {
                throw new RuntimeException("CHTO-TO S BAZOJ!!!", e);
            }
        }
    }

    public void create(String title, String summary, String pictureUrl, String description, String date) {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            PreparedStatement s = c.prepareStatement("INSERT INTO news (title, summary, picture_url, description, date)" +
                    "VALUES (?, ?, ?, ?, ?)");
            s.setString(1, title);
            s.setString(2, summary);
            s.setString(3, pictureUrl);
            s.setString(4, description);
            s.setString(5, date);

            s.executeUpdate();
        } catch (Exception e) {
            throw new RuntimeException("CHTO-TO S BAZOJ!!!", e);
        } finally {
            try {
                if (c != null) c.close();
            } catch (SQLException e) {
                throw new RuntimeException("CHTO-TO S BAZOJ!!!", e);
            }
        }
    }

}