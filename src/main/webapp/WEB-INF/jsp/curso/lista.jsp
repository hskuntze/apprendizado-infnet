<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Curso</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp"></c:import>
	<div class="container mt-3">
		<h4 class="mt-3">Cursos</h4>
		<a href="/cursos/cadastro"><button class="btn btn-outline-secondary my-3">Cadastrar</button></a>
		<table class="table table-hover table-striped">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">T�tulo</th>
					<th scope="col">In�cio</th>
					<th scope="col">Fim</th>
					<th scope="col">Respons�vel</th>
					<th scope="col">Qtd. de Conte�dos</th>
					<th scope="col">#</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="b" items="${listagemCursos}">
					<tr>
						<td>${b.id}</td>
						<td>${b.titulo}</td>
						<td>${b.inicio}</td>
						<td>${b.fim}</td>
						<td>${b.responsavel.nome}</td>
						<td>${b.conteudos.size()}</td>
						<td><a href="/cursos/${b.id}/excluir">Excluir</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>