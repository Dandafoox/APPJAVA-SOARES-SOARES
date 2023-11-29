<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="model.Advogado"%>
<%@page import="java.util.List"%>
<%
List<Advogado> advogado = (List<Advogado>) request.getAttribute("advogado");
String success = (String) request.getAttribute("success");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Cliente</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

</head>
<body>

	<div class="container">
		<form action="salvaadvogado">

			<input type="hidden" name="id"
				value="<%=advogado.get(0).getIdadv()%>">
				
			<div class="my-5">

				<h4>Escritório Soares & Soares - Editar Cadastro</h4>

				<div class="my-5">

					<ul class="nav">
						<li class="nav-item"><a class="nav-link active"
							href="index.jsp">Início</a></li>
						<li class="nav-item"><a class="nav-link"
							href="CadAdvogado.jsp">Cadastro Advogado</a></li>
						<li class="nav-item"><a class="nav-link"
							href="CadCliente.jsp">Cadastro Cliente</a></li>
						</li>
					</ul>



					<div class="my-5">

						<div class="card mt-3">
							<h5 class="card-header">Atualizar Advogado</h5>
							<div class="card-body">


								<div class="form-group shadow-sm p-3 mb-5 bg-white rounded">
									<label for="telefone">OAB</label> <input type="text"
										class="form-control" id="formGroupExampleInput2"
										name="oab" value="<%=advogado.get(0).getOab()%>">
								</div>
								<div class="form-group shadow-sm p-3 mb-5 bg-white rounded">
									<label for="nome">Nome</label> <input type="text"
										class="form-control" id="formGroupExampleInput2" name="nome"
										value="<%=advogado.get(0).getNome()%>">
								</div>

								<div class="form-group shadow-sm p-3 mb-5 bg-white rounded">
									<label for="telefone">Telefone</label> <input type="text"
										class="form-control" id="formGroupExampleInput2"
										name="telefone" value="<%=advogado.get(0).getTelefone()%>">
								</div>

								<div class="form-group shadow-sm p-3 mb-5 bg-white rounded">
									<input class="btn btn-primary" type="submit" value="Enviar">
								</div>


							</div>

							<div class="form-group shadow-sm p-3 mb-5 bg-white rounded">
								<label> Cadastrado em: </label> <span> <%=advogado.get(0).getData()%>
								</span>
							</div>

						</div>


						<div class="card mt-5">
							<h5 class="card-header">Relatório de Cliente</h5>

							<div class="card-body">
								<h5 class="card-title">Clientes</h5>
								<p class="card-text">Listagem de Clientes.</p>
								<a href="buscacliente" class="btn btn-success">Visitar</a>
							</div>
						</div>
		</form>
	</div>



	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>

</body>
</html>
