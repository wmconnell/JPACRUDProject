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
	<h1>Favorite Albums</h1>

	<form action="getAlbum.do" method="GET">
		Album ID: <input class="form" type="text" name="aid" /> <input class="btn btn-dark" type="submit"
			value="Show Album" />
	</form>



</main>

<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>