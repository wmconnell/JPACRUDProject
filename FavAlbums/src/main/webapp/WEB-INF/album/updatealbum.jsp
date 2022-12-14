<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<h3>Update Album</h3>
<h5> Album Details</h5>

<c:choose>
<c:when test="${empty album}">
	<h3><strong>Please select update album again and input a valid ID</strong></h3>
</c:when>
<c:otherwise>

	<form action="updateAlbum.do" method="POST">
		<label for="id"><strong>Album ID: </strong></label>${album.id}
		<input type="hidden" name="id" value="${album.id}"/>
			 <br>
			 <div class="prefilledForm">
		<label for="name">Album Name:</label>
			<input type="text" name="name" value="${album.name}"/> <br>
		<label for="band">Band Name:</label>
			<input type="text" name="band" value="${album.band}"/> <br>
		<label for="length">Length:</label>
			<input type="number" name="length" value="${album.length}"/> <br>
		<label for="genre">Genre:</label> 
			<input type="text" name="genre" value="${album.genre}"/> <br>
		<label for="releaseYear">Release Year:</label>
			<input type="number" name="releaseYear" value="${album.releaseYear}"/> <br>
		<label for="numberOfSongs">Number of Songs:</label>
			<input type="number" name="numberOfSongs" value="${album.numberOfSongs}"/> <br>
		<label for="favoriteSong">Favorite Song:</label>
			<input type="text" name="favoriteSong" value="${album.favoriteSong}"/> <br>
		<label for="albumCoverUrl">Album Cover: (URL)</label>
			<input type="text" name="albumCoverUrl" value="${album.albumCoverUrl}"/> <br>
	</div>
		<input class="btn btn-dark" type="submit" value="Update Album" />
		
	</form>
	<form action="deleteAlbum.do" method="POST">
	<input type="hidden" name="id" value="${album.id}"/>
		<input class="btn btn-dark" type="submit" value="Delete Album" />
	</form>
	
</c:otherwise>
</c:choose>

</main>
<jsp:include page="../bootstrapFoot.jsp"/>
</body>
</html>