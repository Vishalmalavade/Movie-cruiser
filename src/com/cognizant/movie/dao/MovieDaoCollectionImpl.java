package com.cognizant.movie.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImpl implements MovieDao {
    public static List<Movie> movielist;

    public MovieDaoCollectionImpl() {
        if (movielist == null || movielist.isEmpty()) {
            Movie item1 = new Movie(1, "Avatar", 2787965087L, true,
                    DateUtil.convertToDate("15/03/2017"), "Science Fiction", true);
            Movie item2 = new Movie(2, "The Avengers", 1518812988L, true,
                    DateUtil.convertToDate("23/12/2017"), "Superhero", false);
            Movie item3 = new Movie(3, "Titanic", 2186463944L, true,
                    DateUtil.convertToDate("21/08/2018"), "Romance", false);
            Movie item4 = new Movie(4, "Jurassic World", 1671713208L, false,
                    DateUtil.convertToDate("02/07/2017"), "Scicence Fiction", true);
            Movie item5 = new Movie(5, "Avengers:End Game", 2750760368L, true,
                    DateUtil.convertToDate("02/11/2022"), "Superhero", true);
            movielist = new ArrayList<Movie>();
            movielist.add(item1);
            movielist.add(item2);
            movielist.add(item3);
            movielist.add(item4);
            movielist.add(item5);
        }
    }

    public Movie getMovieById(long movieId) {
        for (Movie movie : movielist) {
            if (movie.getMovieId() == movieId) {
                return movie;
            }
        }
        return null;
    }

    @Override
    public void modifyMovieList(Movie movieLists) {
        for (int i = 0; i < movielist.size(); i++) {
            if (movielist.get(i).getMovieId() == movieLists.getMovieId()) {
                movielist.set(i, movieLists);
            }
        }

    }

    @Override
    public List<Movie> getMovieListAdmin() {
        return movielist;
    }

    @Override
    public List<Movie> getMovieListCustomer() {
        ArrayList<Movie> movie = new ArrayList<Movie>();
        for (Movie movies : movielist) {
            if ((movies.getDateOfLaunch().before(new Date())
                    || movies.getDateOfLaunch().equals(new Date())) && movies.isActive() == true) {
                movie.add(movies);
            }
        }
        return movie;
    }

}
