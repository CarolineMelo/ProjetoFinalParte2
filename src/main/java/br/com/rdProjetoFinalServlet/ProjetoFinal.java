package br.com.rdProjetoFinalServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProjetoFinal
 */
@WebServlet("/ProjetoFinal")
public class ProjetoFinal extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static Container c = new Container();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProjetoFinal() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String alterar = request.getParameter("alterar");
		String id = request.getParameter("id");
		//String alterar = request.getParameter("alterar");
		
		if(id !=null) {
			if(alterar.equals("0")) {
				c.apagar(Integer.parseInt(id));
				
				
			}else if (alterar.equals("1")) {
				User user = c.buscar(Integer.parseInt(id));
				request.setAttribute("id", user.getId());
				request.setAttribute("nome", user.getNome());
				request.setAttribute("email", user.getEmail());
				request.setAttribute("pais", user.getPais());
				request.getRequestDispatcher("/formulario.jsp").forward(request, response);	
			}
		}
		request.setAttribute("lista",c.buscar());
		request.getRequestDispatcher("/").forward(request, response);	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
 if (request.getParameter("nome") != null && request.getParameter("email") != null && request.getParameter("pais") != null){
	 
	 String nome = request.getParameter("nome");
	 String email = request.getParameter("email");
	 String pais = request.getParameter("pais");
	 String id = request.getParameter("id");
	 
	 if(id  != null && !id.isEmpty()) {
		 c.editar(nome, email, pais, Integer.parseInt(id));
		 
	 }else {
		 User user = new User(nome, email, pais);
		 c.inserir(user);
		 
	 }
	 
	 request.setAttribute("lista",c.buscar());
	
 }
 
 	request.getRequestDispatcher("/").forward(request, response);	
	}
	

}
