<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<title>notification</title>
<link rel="shortcut icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header>
        <img src="images\logo.png">
        <p class="movie-cruiser">Movie Cruiser</p>
        <nav>
            <a class="movies" href="ShowMovieListCustomer">Movies</a> <a class="favorites"
                href="ShowFavorite">Favorites</a>
        </nav>
    </header>
    <p class="movies-heading">Movies</p>
    <c:if test="${addFavoriteStatus==true}">
        <h5 class="added">Movie added to Favorites Successfully</h5>
    </c:if>
    <table class="favorite-notification">
        <tr>
            <th align="left"><b>Title</b></th>
            <th class="center"><b>Box Office</b></th>
            <th class="center"><b>Genre</b></th>
            <th align="center"><b>Has Teaser</b></th>
            <th class="center"><b>Action</b></th>
        </tr>
        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${movie.getTitle()}</td>
                <td align="left"><f:formatNumber type="currency"
                        value="${movie.getBoxOffice()}" maxFractionDigits="0" /></td>
                <td align="center">${movie.getGenre()}</td>
                <td align="center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td align="center"><a href="AddToFavorite?movieId=${movie.getMovieId()}">Add
                        to Favorite</a></td>
            </tr>
        </c:forEach>
    </table>

    <footer>
        <p class="copy">&nbsp;Copyright &copy; 2019</p>
    </footer>
</body>
</html>