package com.mikhalchuk.mp.entity;

import java.util.Date;

/**
 * @author Pavel Mikhalchuk
 */
public class News {

    private Long id;
    private String title;
    private String summary;
    private String description;
    private String pictureUrl;
    private Date date;

    public News(Long id, String title, String summary, String description, String pictureUrl, Date date) {
        this.id = id;
        this.title = title;
        this.summary = summary;
        this.description = description;
        this.pictureUrl = pictureUrl;
        this.date = date;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

}