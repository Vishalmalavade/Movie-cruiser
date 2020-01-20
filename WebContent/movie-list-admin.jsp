<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin</title>
<link rel="shortcut icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header>
        <img src="images\logo.png">
        <p class="movie-cruiser">Movie Cruiser</p>
        <nav>
            <a class="movies" href="ShowMovieListAdmin">Movies</a>
        </nav>
    </header>
    <p class="movies-heading">Movies</p>


    <table>

        <tr>
            <th align="left"><b>Title</b></th>
            <th class="right"><b>Box office</b></th>
            <th><b>Active</b></th>
            <th><b>Date of Launch</b></th>
            <th><b>Genre</b></th>
            <th><b>Has Teaser</b></th>
            <th><b>Action</b></th>
        </tr>

        <c:forEach items="${movie}" var="movie">

            <tr>
                <td>${movie.getTitle()}</td>

                <td class="right"><f:formatNumber type="currency"
                        value="${movie.getBoxOffice()}" maxFractionDigits="0" /></td>
                <td class="center"><c:choose>
                        <c:when test="${movie.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td class="center"><f:formatDate value="${movie.getDateOfLaunch()}"
                        pattern="dd/MM/yyy" /></td>
                <td class="center">${movie.getGenre()}</td>

                <td class="center"><c:choose>
                        <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td class="center"><a href="ShowEditMovie?movieId=${movie.getMovieId()}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>
        <p class="copy">&nbsp;Copyright &copy; 2019</p>
    </footer>
</body>
</html>