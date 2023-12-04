
<%@ include file="./_header.jsp"%>

<%@ page import="model.Advogado"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<Advogado> lista = (ArrayList<Advogado>) request.getAttribute("advogados");
String success = (String) request.getAttribute("success");
%>



		<form name="buscaadvogado" action="pesquisaadvogado">
			<input type="search" name="q" value="">
			<button type="submit">🔎</button>
		</form>

		<%
		if (success != null) {
		%>
		<div><%=success%></div>
		<%
		}
		%>


		<table class="table table-bordered">
			<div class="card mt-3">
				<h5 class="card-header">Listagem de Advogados</h5>

				<thead>
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Data</th>
						<th scope="col">OAB</th>
						<th scope="col">Nome</th>
						<th scope="col">Telefone</th>
						<th scope="col">Opções</th>
					</tr>
				</thead>
			</div>
			</div>
			<tbody>

				<div class="card-body">
					<%
					for (int i = 0; i < lista.size(); i++) {
					%>

					<tr>
						<td><%=lista.get(i).getIdadv()%></td>
						<td><%=lista.get(i).getData()%></td>
						<td><%=lista.get(i).getOab()%></td>
						<td><%=lista.get(i).getNome()%></td>
						<td><%=lista.get(i).getTelefone()%></td>

						<td><a href="editaradvogado?id=<%=lista.get(i).getIdadv()%>"
							onclick="return confirm('Tem certeza que deseja Editar?')">Editar</a>
							&nbsp;|&nbsp; <a
							href="apagaradvogado?id=<%=lista.get(i).getIdadv()%>"
							onclick="return confirm('Tem certeza que deseja Apagar?')">Apagar</a></td>
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
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>