package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {

    static FavoriteDao favoriteDao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {
        testAddFavorites();
        testGetAllFavorites();
        testRemoveFavorites();
        testGetAllFavorites();
    }

    public static void testAddFavorites() {
        System.out.println("Movie added into favorite");
        favoriteDao.addFavoritesById(1, 2);
        favoriteDao.addFavoritesById(1, 3);
    }

    public static void testRemoveFavorites() {
        System.out.println("Remove Favorite");
        favoriteDao.removeFavoritesById(1, 3);

    }

    public static void testGetAllFavorites() {
        try {

            System.out.println("Retrieving all the Movies from Favorite");
            List<Movie> list = favoriteDao.getAllFavorites(1).getFavoriteList();
            for (Movie movie : list) {
                System.out.println(movie);
            }
            System.out.println("N.o of Favorites:" + list.size());
        } catch (FavoriteEmptyException e) {
            System.out.println(e);

        }

    }

}
