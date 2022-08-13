<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Album Details</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>
<main class="container-fluid">
<jsp:include page="../navbar.jsp"/>
<h3>Album Details</h3>
<div>
	<h2>${album.band}</h2>
  <h5>${album.name}</h5>
  <h5>${album.length} mins</h5>
  <h5>${album.genre}</h5>
  <h5>${album.releaseYear}</h5>
  <h5>${album.numberOfSongs}</h5>
  <h5>${album.favoriteSong}</h5>
</div>

</main>
<jsp:include page="../bootstrapFoot.jsp"/>
</body>
</html>