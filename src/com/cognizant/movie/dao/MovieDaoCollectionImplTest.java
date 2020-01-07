package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImplTest {
    static MovieDao moviedao = new MovieDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMovieListAdmin();
        testGetMovieListCustomer();
        testEditMovie();
        testGetMovieListAdmin();
        testGetMovie();

    }

    public static void testEditMovie() {
        System.out.println("Edit Movie");
        Movie movielist = new Movie(1, "Watch and Enjoy", 123450L, true,
                DateUtil.convertToDate("03/01/2019"), "Action", false);
        moviedao.modifyMovieList(movielist);

    }

    public static void testGetMovieListAdmin() {
        MovieDao moviedao = new MovieDaoCollectionImpl();
        List<Movie> movie = moviedao.getMovieListAdmin();
        System.out.println("Admin");
        System.out.printf("%-10s%-20s%-15s%-10s%-18s%-23s%-25s\n", "Id", "Title", "Box Office",
                "Active", "Date Of Launch", "Genre", "Has Teaser");
        for (Movie movies : movie) {
            System.out.println(movies);// invokes toString();

        }

    }

    public static void testGetMovieListCustomer() {
        List<Movie> movie = moviedao.getMovieListCustomer();
        System.out.println("Customer");
        System.out.printf("%-10s%-20s%-15s%-10s%-18s%-23s%-25s\n", "Id", "Title", "Box Office",
                "Active", "Date Of Launch", "Genre", "HasTeaser");
        for (Movie movies2 : movie) {
            System.out.println(movies2);

        }
    }

    public static void testGetMovie() {
        System.out.println("Get Movies");
        System.out.printf("%-10s%-20s%-15s%-10s%-18s%-23s%-25s\n", "Id", "Title", "Box Office",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        Movie movie = moviedao.getMovieById(3);
        System.out.println(movie);// invokes toString()

    }

}
