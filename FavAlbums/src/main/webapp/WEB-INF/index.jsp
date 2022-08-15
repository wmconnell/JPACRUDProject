<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Favorite Albums</title>
<jsp:include page="bootstrapHead.jsp"/>
</head>
<body>
<main class="container-fluid">
<jsp:include page="navbar.jsp"/>
	<h1>Album Collection</h1>
	
	<h2>Welcome to your album collection!</h2>
	
	<h4>Select an album cover below to see album details, or choose an option from the navigation bar above</h4>
	

<c:forEach items="${albums}" var="album">
	<c:choose>
	<c:when test="${not empty album.albumCoverUrl}">
	<a href="/getAlbum.do?aid=${album.id}"><img src="${album.albumCoverUrl}" width="150" height="150"/></a>
	</c:when>
	</c:choose>
	</c:forEach>


</main>

<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>