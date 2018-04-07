<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Listagem de Contatos</title>
</head>
<body>

	<c:import url="cabecalho.jsp"></c:import>

	<main class="container">

	<table class="table">
		<thead>
			<tr>
				<th>ID</th>
				<th>NOME</th>
				<th>EMAIL</th>
				<th>ENDERECO</th>
				<th>DT_NASC</th>
			</tr>
		</thead>
		<!-- percorre contatos montando as linhas da tabela -->
		<tbody>
			<c:forEach var="contato" items="${contatos}">
				<tr>
					<td>${contato.id}</td>
					<td>${contato.nome}</td>
					<c:if test="${not empty contato.email}">
						<td><a href="mailto:${contato.email}">${contato.email}</a></td>
					</c:if>
					<c:if test="${empty contato.email}">
						<td>Email nao cadastrado</td>
					</c:if>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /></td>
					<td><a href="mvc?logica=RemoveContatoLogica&id=${contato.id}">Excluir</a></td>
					<td><a href="mvc?logica=EditaContatoLogica&id=${contato.id}">Modificar</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</main>

	<c:import url="rodape.jsp"></c:import>

</body>
</html>