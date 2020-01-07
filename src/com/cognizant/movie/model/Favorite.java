package com.cognizant.movie.model;

import java.util.List;

public class Favorite {
    private List<Movie> favoriteList;

    public Favorite() {
    }

    public Favorite(List<Movie> favoriteList, int total) {
        super();
        this.favoriteList = favoriteList;
    }

    public List<Movie> getFavoriteList() {
        return favoriteList;
    }

    public void setFavoriteList(List<Movie> favoriteList) {
        this.favoriteList = favoriteList;
    }

    @Override
    public String toString() {
        return "Favorite [favoriteList=" + favoriteList + "]";
    }

}
