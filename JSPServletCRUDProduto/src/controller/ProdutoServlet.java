package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dal.ProdutoDAO;
import model.Produto;

@WebServlet("/ProdutoServlet")
public class ProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Produto produto = new Produto();
		try {
			
			produto.setNome(request.getParameter("txtNome"));
			produto.setValor(Double.parseDouble(request.getParameter("txtPreco")));
			produto.setCategoria(request.getParameter("GetCategoria"));
			produto.setQuantidade(Integer.parseInt(request.getParameter("txtQuantidade")));
			if(ProdutoDAO.cadastrarProduto(produto)){
				response.sendRedirect("CadastrarProduto.jsp?mensagem=2");
			}else{
				response.sendRedirect("CadastrarProduto.jsp?mensagem=3");
			}
			

		} catch (NumberFormatException e)  {

			response.sendRedirect("CadastrarProduto.jsp?mensagem=1");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
