package com.mikhalchuk.mp.entity;


/**
 * @author Dmitry Mikhalchuk
 */
public class Events {
    private Long id;
    private String title;
    private String description;
    private String pictureUrl;

    public Events(Long id, String title, String description, String pictureUrl) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.pictureUrl = pictureUrl;
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

}
