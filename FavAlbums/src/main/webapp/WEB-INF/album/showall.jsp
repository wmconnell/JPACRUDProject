<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Favorite Albums</title>
<jsp:include page="../bootstrapHead.jsp"/>
</head>
<body>
<main class="container-fluid">
<jsp:include page="../navbar.jsp"/>
<h3>Favorite Albums</h3>
<div>

<table class="table table-striped">
		<thead class="table thead-dark">
			<tr>
				<th>ID</th>
				<th>Band</th>
				<th>Album</th>
			</tr>
		</thead>
		<tbody>
	<c:forEach items="${albums }" var="album">
				<tr>
					<td>${album.id}</td>
					<td>${album.band}</td>
					<td>
						<a href="getAlbum.do?aid=${album.id}">${album.name}</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>


	</table>
</div>

</main>
<jsp:include page="../bootstrapFoot.jsp"/>
</body>
</html>