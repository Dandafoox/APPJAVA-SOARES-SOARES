package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Advogado;
import model.AdvogadoDao;


/**
 * Servlet implementation class AdvogadoController
 */
@WebServlet({ "/AdvogadoController", "/novoadvogado", "/buscaadvogados","/apagaradvogado","/editaradvogado","/salvaadvogado" })
public class AdvogadoController extends HttpServlet {

	Advogado adv = new Advogado();
	AdvogadoDao daoadv = new AdvogadoDao();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdvogadoController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		String acao = request.getServletPath();
		
		if (acao.equals("/novoadvogado")) {
			EnviaDados(request, response);
		} else if (acao.equals("/buscaadvogados")) {
			BuscaDados(request, response);
		} else if (acao.equals("/apagaradvogado")) {
			ApagaDados (request,response);
		} else if (acao.equals("/editaradvogado")) {
			EditaDados (request,response);
		} else if (acao.equals("/salvaadvogado")) {
			SalvaDados (request,response);
		}
	}

	protected void EnviaDados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		adv.setOab(request.getParameter("oab"));
		adv.setNome(request.getParameter("nome"));
		adv.setTelefone(request.getParameter("telefone"));
		daoadv.Salvar(adv);
		request.setAttribute("success", "Cadastro Concluído!");
		request.getRequestDispatcher("buscaadvogados").forward(request, response);
	}
	
	
	

	protected void BuscaDados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ArrayList<Advogado> lista = daoadv.Listar();
		
		String success = (String) request.getAttribute("success");
		
		if(success != null) {
			request.setAttribute ("success", success);
		}
		
		request.setAttribute("advogados", lista);
		RequestDispatcher rd = request.getRequestDispatcher("RelAdvogado.jsp");
		rd.forward(request, response);

	}
	
	
	protected void ApagaDados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		daoadv.Apagar(id);
		request.setAttribute("success","Advogado apagado com sucesso");
		request.getRequestDispatcher("buscaadvogados").forward(request,response);
		
		System.out.println (request.getParameter("id"));
		
	}
		
	protected void EditaDados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		System.out.println ("id: "+id);
		List<Advogado> advogado = daoadv.Editar(id);
		request.setAttribute("advogado", advogado);
		RequestDispatcher rd = request.getRequestDispatcher("EditAdvogado.jsp");
		rd.forward(request, response);
	}

	protected void SalvaDados(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		adv.setIdadv(Integer.parseInt(request.getParameter("id")));
		adv.setNome(request.getParameter("nome"));
		adv.setTelefone(request.getParameter("telefone"));
		daoadv.Salvar(adv);
		request.setAttribute("success", "Advogado atualizado com sucesso!");
		request.getRequestDispatcher("buscaadvogado").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}