package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class EditaContatoLogica implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		Contato contato = new ContatoDao().getByID(Long.parseLong((req.getParameter("id"))));
		
		req.setAttribute("contato", contato);
		
		return "/edita-contato.jsp";
		
	}

}
