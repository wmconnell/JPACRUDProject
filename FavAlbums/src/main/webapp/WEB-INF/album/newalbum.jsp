<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Album</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>
<main class="container-fluid">
<jsp:include page="../navbar.jsp"/>
<h3>New Album</h3>
<h5> Album Details</h5>
<div>
	To create an album, fill out at least the "Album Name" and "Band Name" forms
	<form action="addNewAlbum.do" method="POST">
		<label for="name">Album Name:</label>
			<input class="form" type="text" name="name" required/> <br>
		<label for="band">Band Name:</label>
			<input class="form" type="text" name="band" required/> <br>
		<label for="length">Length:</label>
			<input class="form" type="number" name="length" /> <br>
		<label for="genre">Genre:</label> 
			<input class="form" type="text" name="genre" /> <br>
		<label for="releaseYear">Release Year:</label>
			<input class="form" type="number" name="releaseYear" /> <br>
		<label for="numberOfSongs">Number of Songs:</label>
			<input class="form" type="number" name="numberOfSongs" /> <br>
		<label for="favoriteSong">Favorite Song:</label>
			<input class="form" type="text" name="favoriteSong" /> <br>
	
		<input class="btn btn-dark" type="submit" value="Add Album" />
	</form>
</div>

</main>
<jsp:include page="../bootstrapFoot.jsp"/>
</body>
</html>