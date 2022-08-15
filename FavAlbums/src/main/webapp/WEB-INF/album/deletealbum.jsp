<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Album</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>
<main class="container-fluid">
<jsp:include page="../navbar.jsp"/>
<h3>Delete Album</h3>
<div>

	<form action="deleteAlbum.do" method="POST">
		<label for="id">Album ID:</label>
			<input class="form" type="number" name="id" required/> <br>
		<input class="btn btn-dark" type="submit" value="Delete Album" />
	</form>
</div>

</main>
<jsp:include page="../bootstrapFoot.jsp"/>
</body>
</html>