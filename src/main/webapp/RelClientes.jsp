<%@ include file="./_header.jsp"%>

<%@page import="model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<Cliente> lista = (ArrayList<Cliente>) request.getAttribute("clientes");
String success = (String) request.getAttribute("success");
%>


			<%
			if (success != null) {
			%>
			<div><%=success%></div>
			<%
			}
			%>
			
			<form name="buscacliente" action="pesquisacliente">
				<input type="search" name="q" value="">
				<button type="submit">🔎</button>
			</form>
			
			<table class="table table-bordered">
				<div class="card mt-3">
					<h5 class="card-header">Listagem de Clientes</h5>
					<thead>
						<tr>
							<th scope="col">Código</th>
							<th scope="col">Data</th>
							<th scope="col">Cliente</th>
							<th scope="col">Telefone</th>
							<th scope="col">Opções</th>
						</tr>
					</thead>
				</div>

				<tbody>
					<div class="card-body">
						<%
						for (int i = 0; i < lista.size(); i++) {
						%>

						<tr>
							<td><%=lista.get(i).getIdcliente()%></td>
							<td><%=lista.get(i).getData()%></td>
							<td><%=lista.get(i).getNome()%></td>
							<td><%=lista.get(i).getTelefone()%></td>
							<td><a
								href="editarcliente?id=<%=lista.get(i).getIdcliente()%>"
								onclick="return confirm('Tem certeza que deseja Editar?')">Editar</a>
								&nbsp;|&nbsp; <a
								href="apagarcliente?id=<%=lista.get(i).getIdcliente()%>"
								onclick="return confirm('Tem certeza que deseja Editar?')">Apagar</a>
							</td>
						</tr>

						<%
						}
						%>
					</div>
				</tbody>

			</table>

		</div>

		<!-- JavaScript (Opcional) -->
		<!-- jQuery primeiro, depois Popper.js, depois Bootstrap JS -->
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