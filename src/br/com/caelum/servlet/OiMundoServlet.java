package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/oi")
public class OiMundoServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		LocalTime hora = LocalTime.now();
		
		PrintWriter pw = response.getWriter();
		pw.println("<html><head><body>");
		pw.println("<h1>Ola Mundo</h1>");
		pw.println("Agora sao: " + hora);
		pw.println("</body></head></html>");
		
	}
	

}
