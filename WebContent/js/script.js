function valid() {
    var title = document.forms["admin"]["title"].value;
    var boxoffice = document.forms["admin"]["Box-office"].value;
    var date = document.forms["admin"]["dateoflaunch"].value;
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

    if (boxoffice == "") {
        alert("Box Office is required");
        return false;
    }

    if (!boxoffice.match(regex)) {
        alert("Box Office has to be a number");
        return false;
    }

    if (date == "") {
        alert("Date of Launch is required");
        return false;
    }

    if (genre == "") {
        alert("Select one genre");
        return false;
    }
}
