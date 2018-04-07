<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="data" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="assets/css/jquery.css" rel="stylesheet">
<script src="assets/js/jquery.js"></script>
<script src="assets/js/jquery-ui.js"></script>
<title>Formulario de Contatos</title>
</head>
<body>
	<c:import url="cabecalho.jsp" />
	<main class="container">


	<h1>Adiciona Contatos</h1>
	<hr />
	<form action="adicionaContato" method="post">

		<table class="table">
			<tr>
				<td>NOME:</td>
				<td><input type="text" name="nome" /></td>
			</tr>
			<tr>
				<td>EMAIL:<br /></td>
				<td><input type="email" name="email" /></td>
			</tr>
			<tr>
				<td>ENDERECO:<br /></td>
				<td><input type="text" name="endereco" /></td>
			</tr>
			<tr>
				<td>DATA DE NASCIMENTO:<br /></td>
				<td><data:campoData id="dataNascimento" /></td>
			</tr>
		</table>

		<input type="submit" value="Gravar" />

	</form>


	</main>
	<c:import url="/rodape.jsp" />
</body>
</html>