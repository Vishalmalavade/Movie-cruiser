function validateForm() {
    var title = document.forms["admin"]["title"].value;
    var boxOffice = document.forms["admin"]["boxOffice"].value;
    var dateOfLaunch = document.forms["admin"]["dateOfLaunch"].value;
    var genre = document.forms["admin"]["genre"].value;
    var regex = (/^.*[0-9].*$/);

    if (title == "") {
        alert("Title is required");
        return false;
    }

    if (title.length < 2 || title.length > 100) {
        alert("Title should have 2 to 100 characters.");
        return false;
    }

    if (boxOffice == "") {
        alert("Box Office is required");
        return false;
    }

    if (!boxOffice.match(regex)) {
        alert("Box Office has to be a number");
        return false;
    }

    if (dateOfLaunch == "") {
        alert("Date of Launch is required");
        return false;
    }

    if (genre == "") {
        alert("Select one genre");
        return false;
    }
}
