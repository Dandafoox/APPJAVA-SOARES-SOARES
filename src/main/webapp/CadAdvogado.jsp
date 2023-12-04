<%@ include file="./_header.jsp"%>



	<div class="container mt-3">
		<form action="novoadvogado">




					<div class="my-5">



						<div class="card mt-3">
							<h5 class="card-header">Cadastro Advogado</h5>
							<div class="card-body">
								<div class="form-group shadow-sm p-3 mb-5 bg-white rounded">
									<label for="oab"> Oab</label> <input type="text"
										class="form-control" id="" name="oab">
								</div>

								<div class="form-group shadow-sm p-3 mb-5 bg-white rounded">
									<label for="nome">Nome</label> <input type="text"
										class="form-control" id="formGroupExampleInput2" name="nome">
								</div>

								<div class="form-group shadow-sm p-3 mb-5 bg-white rounded">
									<label for="telefone">Telefone</label> <input type="text"
										class="form-control" id="formGroupExampleInput2"
										name="telefone">
								</div>

								<div class="form-group shadow-sm p-3 mb-5 bg-white rounded">
									<input class="btn btn-primary" type="submit" value="Enviar">

								</div>
							</div>
						</div>

					<div class="my-5">
					
						<div class="card mt-3">
							<h5 class="card-header">Relatório de Advogados</h5>

							<div class="card-body">
								<h5 class="card-title">Advogados</h5>
								<p class="card-text">Listagem de Advogados.</p>
								<a href="buscaadvogados" class="btn btn-success">Visitar</a>
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

<%@ include file="./_footer.jsp"%>

</body>
</html>
