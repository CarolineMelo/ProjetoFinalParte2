package br.com.rdProjetoFinalServlet;

import java.util.ArrayList;
import java.util.List;

public class Container {
	private List<User> lista = new ArrayList<User>();
	private static int id = 0;
	
	public User buscar(int indice) {
		return lista.get(indice);
	}
	public List<User> buscar() {
		return lista;
	}
	
	public void inserir(User user) {
		user.setId(id);
		lista.add(user);
		id ++;
	}
	
	public void apagar(int indice) {
		lista.remove(indice);
				
	}
	public void editar (String nome, String email, String pais, int id) {
		
		User user = buscar(id);
		user.setNome(nome);
		user.setEmail(email);
		user.setPais(pais);
		
		
	}
}
 	
 
