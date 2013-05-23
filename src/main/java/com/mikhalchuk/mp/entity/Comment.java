package com.mikhalchuk.mp.entity;

import java.util.Date;

/**
 * @author Dmitry Mikhalchuk
 */
public class Comment {

    private Long id;
    private String user;
    private String comment;
    private Date date;

    public Comment(Long id, String user, String comment, Date date) {
        this.id = id;
        this.user = user;
        this.comment = comment;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

}