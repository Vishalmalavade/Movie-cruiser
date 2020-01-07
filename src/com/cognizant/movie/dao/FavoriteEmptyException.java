package com.cognizant.movie.dao;

public class FavoriteEmptyException extends Exception {
    private static final long serialVersionUID = 1l;

    public String toString() {
        return "Favorite is Empty";

    }
}
