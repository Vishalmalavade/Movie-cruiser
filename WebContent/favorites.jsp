<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<title>Cart</title>
<link rel="shortcut icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header>
        <img src="images\logo.png" />
        <p class="movie-cruiser">Movie Cruiser</p>
        <nav>
            <a class="movies" href="ShowMovieListCustomer">Movies</a> <a class="favorites"
                href="ShowFavorite">Favorites</a>
        </nav>
    </header>
    <p class="movies-heading">Favorites</p>
    <c:if test="${removeFavoriteStatus==true}">
        <h5 class="removed">Movie removed From Favorites Successfully</h5>
    </c:if>
    <c:set var="favorite" value="${favorite}">
    </c:set>

    <table class="favorites-list-customer">

        <tr>
            <th align="left"><b>Title</b></th>
            <th class="right"><b>Box Office</b></th>
            <th class="center"><b>Genre</b></th>
        </tr>

        <c:forEach items="${movie}" var="movie">
            <tr>
                <td>${ movie.getTitle()}</td>

                <td align="right"><f:formatNumber type="currency"
                        value="${movie.getBoxOffice()}" maxFractionDigits="0" /></td>
                <td align="center">${movie.getGenre()}</td>

                <td align="center"><a href="RemoveFavorite?movieId=${movie.getMovieId()}">Delete</a></td>

            </tr>
            <tr></tr>
        </c:forEach>
        <tr>
            <td align="left"><b>N.o of Favorites ${favorite.getTotal()}</b></td>
        </tr>
    </table>
    <footer>
        <p class="copy">&nbsp;Copyright &copy; 2019</p>
    </footer>
</body>
</html>