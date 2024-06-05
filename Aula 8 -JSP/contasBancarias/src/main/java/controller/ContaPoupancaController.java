package controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ContaPoupanca;

import java.io.IOException;
@WebServlet("/criarContaPoupanca")
public class ContaPoupancaController extends ContaController {
	private static final long serialVersionUID = 1L;
       
    public ContaPoupancaController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ContaPoupanca conta = new ContaPoupanca();
		String acaoDoBotao = request.getParameter("acaoBotao");
		
		if(acaoDoBotao.equals("CriarConta")) {
			conta.setCliente(request.getParameter("nome").toString());
			conta.setNum_conta(Integer.parseInt(request.getParameter("numConta")));
			conta.setSaldo(Float.parseFloat(request.getParameter("saldo")));
			conta.setDiaDeRendimento(Integer.parseInt(request.getParameter("diaRendimento")));
			
			String saida = "Conta Cadastrada com Sucesso!";
			request.setAttribute("saida", saida);
			
		}else if(acaoDoBotao.equals("Depositar")) {
			float valorDeposito = Float.parseFloat(request.getParameter("valorDeposito"));
			conta.depositar(valorDeposito);
			
			request.setAttribute("deposito", conta.getSaldo());
				
		}else if(acaoDoBotao.equals("Sacar")){
			try {
				float valorSaque = Float.parseFloat(request.getParameter("valorSaque"));
				conta.sacar(valorSaque);
				
				request.setAttribute("saque", conta.getSaldo());
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else {
			throw new IOException("Entrada Inválida");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("ContaPoupanca.jsp");
		rd.forward(request, response);
		
	};
		

}
