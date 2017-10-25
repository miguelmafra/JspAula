<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%--//Sintaxe de um scriplet --%>
<%--// Mostrar informação na página --%>
<%
	String parametro = request.getParameter("mensagem");
	String mensagem = "";
	String classe = "";
	if (parametro != null) {
		if (parametro.equals("1")) {
			mensagem = "Preço ou quantidade em formato errado";
			classe = "text-warning";
		} else {
			if (parametro.equals("2")) {
				mensagem = "Produto cadastrado com sucesso";
				classe = "text-sucess";
			} else {
				if (parametro.equals("3")) {
					mensagem = "Produto já existe";
					classe = "text-danger";
				}
			}
		}
	}
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<title>Cadastrar Produto</title>
</head>

<body>


	<!-- Barra de navegação (navbar) -->

	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Barra de Navegação</span> <span
					class="icon-bar"></span> <span 
					class="icon-bar"></span> <span
					class="icon-bar"></span> 
			</button>
			<a class="navbar-brand" href="#">JSP e Servlet</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Cadastro <span
						class="sr-only">(current)</span></a></li>
			</ul>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Listar Produto<span
				class="sr-only">(current)</span></a></li>
			</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Pesquisar">
					</div>
					<button type="submit" class="btn btn-default">Confirmar</button>
				</form>
		</div>
	</nav>

	<!--  Fim da barra de navegação -->

	<!-- Formulário do Cadastro -->
	<div class="container">
		<form class="form-horizontal" action="ProdutoServlet" method="get">
			<fieldset>
				<legend>Cadastrar Produto</legend>
				<div class="form-group">
					<label for="inputNomedoProduto" class="col-lg-2 control-label">Nome
						do Produto</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputNomedoProduto"
							placeholder="Exemplo: Macarrão" name="txtNome">
						<p class="help-block">Informe o nome do produto</p>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPrecoProduto" class="col-lg-2 control-label">Preço
						do Produto</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputPrecoProduto"
							placeholder="Exemlo: R$5,00" name="txtPreco">
						<p class="help-block">Informe o valor do produto</p>
					</div>
				</div>
				<div class="form-group">
					<label for="inputCategoriaProduto" class="col-lg-2 control-label">Categoria
						do Produto</label>
					<div class="col-lg-10">
						<input type="text" class="form-control" id="inputCategoriaProduto"
							placeholder="Exemplo: Massa" name="txtCategoria">
						<p class="help-block">Informe a categoria do produto</p>
					</div>
				</div>

				<div class="form-group">
					<label for="inputQuantidadeProduto" class="col-lg-2 control-label">Quantidade
						de Produtos</label>
					<div class="col-lg-10">
						<input type="text" class="form-control"
							id="inputQuantidadeProduto" placeholder="Exemplo: 5"
							name="txtQuantidade">
						<p class="help-block">Informe a quantidade do produto</p>
					</div>
				</div>

				<div class="form-group">
					<label for="inputConfirmar" class="col-lg-2 control-label">Confirmar</label>
					<div class="col-lg-10">
						<input type="submit" value="Cadastrar" class="btn btn-danger"
							name="btnCadastrarProduto">
					</div>
				</div>
				<div class="form-group">
					<label class="<%=classe%>"> <%=mensagem%>
					</label>
				</div>

			</fieldset>
		</form>
	</div>
</body>
</html>