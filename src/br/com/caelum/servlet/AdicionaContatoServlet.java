package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

@SuppressWarnings("serial")
@WebServlet("/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// Busca o Writer
		PrintWriter pw = resp.getWriter();
		
		// Obtendo os valores pelo request
		String nome = req.getParameter("nome");
		String email = req.getParameter("email");
		String endereco = req.getParameter("endereco");
		String dtNasc = req.getParameter("dataNascimento");
		
		// Fazendo a conversao da data de texto para Calendar
		Calendar dataNascimento = null;
		
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dtNasc);
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		// Inicializando e inserindo informacoes em um objeto
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setEndereco(endereco);
		contato.setDataNascimento(dataNascimento);
		
		// Salva o contato
		ContatoDao dao = new ContatoDao();
		dao.adiciona(contato);
		
		// Imprime o nome do contato adicionado
		pw.println(""
				+ "<html>"
				+ "<body>"
				+ "Contato " + contato.getNome() + " salvo com sucesso no banco!"
				+ "</body>"
				+ "</html>");
		
		
	}

}
