<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<c:choose>
<c:when test="${empty album}">
	<h3><strong>Please return to the homepage and input a valid ID</strong></h3>
</c:when>
<c:otherwise>

<div>
	<h2>Band: ${album.band}</h2>
	<h5>ID: ${album.id}</h5>
  <h5>Album: ${album.name}</h5>
  <h5>Length: ${album.length} mins</h5>
  <h5>Genre: ${album.genre}</h5>
  <h5>Year: ${album.releaseYear}</h5>
  <h5>Number of Songs: ${album.numberOfSongs}</h5>
  <h5>Favorite Song: ${album.favoriteSong}</h5>
  
  <c:choose>
  <c:when test="${not empty album.albumCoverUrl }">
  <a href="${album.albumCoverUrl}"><img src="${album.albumCoverUrl}" alt="Album Cover" width="200" height="200"/></a>
  </c:when>
  <c:otherwise>
  <br>
  <br>
  <p>**No album cover available**</p>
  </c:otherwise>
  </c:choose>
</div>

</c:otherwise>
</c:choose>



</main>
<jsp:include page="../bootstrapFoot.jsp"/>
</body>
</html>