package com.mikhalchuk.mp.db;

import com.mikhalchuk.mp.entity.*;

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

            ResultSet rs = c.prepareStatement("SELECT * FROM music_portal.news ORDER BY id DESC").executeQuery();

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

    public List<Comment> findComments(Long newsId) {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            PreparedStatement s = c.prepareStatement("SELECT * FROM music_portal.comment WHERE news_id = ? ORDER BY id DESC");
            s.setLong(1, newsId);

            ResultSet rs = s.executeQuery();

            List<Comment> result = new LinkedList<Comment>();

            while (rs.next()) {
                Long id = rs.getLong(1);
                String user = rs.getString(2);
                String comment = rs.getString(3);
                Date date = rs.getDate(4);

                result.add(new Comment(id, user, comment, date));
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

    public void createComment(String user, String comment, Date date, Long newsId) {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            PreparedStatement s = c.prepareStatement("INSERT INTO comment (user, comment, date, news_id) VALUES (?, ?, ?, ?)");
            s.setString(1, user);
            s.setString(2, comment);
            s.setDate(3, new java.sql.Date(date.getTime()));
            s.setLong(4, newsId);

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

// REPORTS

    public List<Report> getReports() {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            ResultSet rs = c.prepareStatement("SELECT * FROM music_portal.report ORDER BY id DESC").executeQuery();

            List<Report> result = new LinkedList<Report>();

            while (rs.next()) {
                Long id = rs.getLong(1);
                String title = rs.getString(2);
                String pictureUrl = rs.getString(3);
                String description = rs.getString(4);
                Date date = rs.getDate(5);

                result.add(new Report(id, title, description, pictureUrl, date));
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

    public Report findReport(Long id) {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            PreparedStatement s = c.prepareStatement("SELECT * FROM music_portal.report WHERE id = ?");
            s.setLong(1, id);

            ResultSet rs = s.executeQuery();
            rs.next();

            String title = rs.getString(2);
            String pictureUrl = rs.getString(3);
            String description = rs.getString(4);
            Date date = rs.getDate(5);

            return new Report(id, title, description, pictureUrl, date);
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

    public void createReport(String title, String pictureUrl, String description, String date) {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            PreparedStatement s = c.prepareStatement("INSERT INTO report (title, picture_url, description, date)" +
                    "VALUES (?, ?, ?, ?)");
            s.setString(1, title);
            s.setString(2, pictureUrl);
            s.setString(3, description);
            s.setString(4, date);

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

    // REVIEW

    public List<Review> getReviews() {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            ResultSet rs = c.prepareStatement("SELECT * FROM music_portal.review ORDER BY id DESC").executeQuery();

            List<Review> result = new LinkedList<Review>();

            while (rs.next()) {
                Long id = rs.getLong(1);
                String title = rs.getString(2);
                String pictureUrl = rs.getString(3);
                String description = rs.getString(4);
                Date date = rs.getDate(5);

                result.add(new Review(id, title, description, pictureUrl, date));
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

    public Review findReviews(Long id) {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            PreparedStatement s = c.prepareStatement("SELECT * FROM music_portal.review WHERE id = ?");
            s.setLong(1, id);

            ResultSet rs = s.executeQuery();
            rs.next();

            String title = rs.getString(2);
            String pictureUrl = rs.getString(3);
            String description = rs.getString(4);
            Date date = rs.getDate(5);

            return new Review(id, title, description, pictureUrl, date);
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

    public void createReview(String title, String pictureUrl, String description, String date) {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            PreparedStatement s = c.prepareStatement("INSERT INTO review (title, picture_url, description, date)" +
                    "VALUES (?, ?, ?, ?)");
            s.setString(1, title);
            s.setString(2, pictureUrl);
            s.setString(3, description);
            s.setString(4, date);

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

    // INTERVIEW

    public List<Interview> getInterviews() {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            ResultSet rs = c.prepareStatement("SELECT * FROM music_portal.interview ORDER BY id DESC").executeQuery();

            List<Interview> result = new LinkedList<Interview>();

            while (rs.next()) {
                Long id = rs.getLong(1);
                String title = rs.getString(2);
                String pictureUrl = rs.getString(3);
                String description = rs.getString(4);
                Date date = rs.getDate(5);

                result.add(new Interview(id, title, description, pictureUrl, date));
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

    public Interview findInterview(Long id) {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            PreparedStatement s = c.prepareStatement("SELECT * FROM music_portal.interview WHERE id = ?");
            s.setLong(1, id);

            ResultSet rs = s.executeQuery();
            rs.next();

            String title = rs.getString(2);
            String pictureUrl = rs.getString(3);
            String description = rs.getString(4);
            Date date = rs.getDate(5);

            return new Interview(id, title, description, pictureUrl, date);
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

    public void createInterview(String title, String pictureUrl, String description, String date) {
        Connection c = null;
        try {
            c = DriverManager.getConnection("jdbc:mysql://localhost/music_portal", "root", "");

            PreparedStatement s = c.prepareStatement("INSERT INTO interview (title, picture_url, description, date)" +
                    "VALUES (?, ?, ?, ?)");
            s.setString(1, title);
            s.setString(2, pictureUrl);
            s.setString(3, description);
            s.setString(4, date);

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