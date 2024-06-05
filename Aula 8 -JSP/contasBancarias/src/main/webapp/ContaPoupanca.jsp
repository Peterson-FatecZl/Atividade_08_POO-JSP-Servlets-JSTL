<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Conta Poupança</title>
	</head>
	<body>
		<h1 style="color: red;">Antes de Realizar alguma operação realize o Cadastro da Conta</h1>
		<form action="criarContaPoupanca" method="post">
			<h2>Dados Da Conta</h2>
			<p>Nome do Titular da conta:</p>
			<input id="nome" name="nome" type="text" placeholder="Nome do Titular" />
			
			<p>Número da Conta:</p>
			<input id="numConta" name="numConta" type="number" min="0" placeholder="Número da Conta" />
			
			<p>Saldo:</p>
			<input id="saldo" name="saldo" type="number" step="0.1" placeholder="Saldo $" />
			
			<p>Dia de rendimento:<p/>
			<input id="diaRendimento" name="diaRendimento" type="number" min="1" max="31" placeholder="Dia" />
		
			<div>
				<input id="criarConta" name="acaoBotao" type="submit" value="CriarConta">
			</div>
		</form>

		<br/> <br/> <br/>
		
		<form action="depositarPoupanca">
			<div>
				<h2>Depositar:</h2>
				<p>Valor de Depósito:</p>
				<input id="valorDeposito" name="valorDeposito" type="number" min="1" placeholder="Deposito $" />
			</div>
				<br/>
			<div >
				<input id="depositar" name="acaoBotao" type="submit" value="Depositar">
			</div>
		</form>
		
		<br/> <br/> <br/>
		
		<form action="sacarPoupanca">
			<div>
				<h2>Sacar:</h2>
				<p>Valor de Saque:</p>
				<input id="valorSaque" name="valorSaque" type="number" min="1" placeholder="Saque $" />		
			</div>
			<br/>
			<div>
				<input id="sacar" name="acaoBotao" type="submit" value="Sacar">
			</div>
		</form>

			<c:if test="${not empty saida} ">
			<div>
				<h1>
					<c:out value="${ conta }"/>				
				</h1>
			</div>
			</c:if>
	</body>
</html>
