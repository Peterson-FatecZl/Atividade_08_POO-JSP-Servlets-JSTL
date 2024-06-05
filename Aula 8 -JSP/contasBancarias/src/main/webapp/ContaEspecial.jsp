<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Conta Especial</title>
	</head>
	<body>
		<h1 style="color: red;">Antes de Realizar alguma operação realize o Cadastro da Conta</h1>
		<form action="criarContaEspecial" method="post">
			<h2>Dados Da Conta</h2>
			<p>Nome do Titular da conta:</p>
			<input id="nome" name="nome" type="text" placeholder="Nome do Titular" />
			
			<p>Número da Conta:</p>
			<input id="numConta" name="numConta" type="number" min="0" placeholder="Número da Conta" />
			
			<p>Saldo:</p>
			<input id="saldo" name="saldo" type="number" step="0.1" placeholder="Saldo $" />
			
			<p>Limite:<p/>
			<input id="limite" name="limite" type="number" min="0" placeholder="Limite" />
		
			<div>
				<input id="criarConta" name="criarConta" type="submit" value="CriarConta">
			</div>
		</form>
		<br/> <br/> <br/>
		
		<form action="depositarEspecial">
			<div>
				<h2>Depositar:</h2>
				<p>Valor de Depósito:</p>
				<input id="valorDeposito" name="valorDeposito" type="number" min="1" placeholder="Deposito $" />
			</div>
				<br/>
			<div >
				<input id="depositar" name="depositar" type="submit" value="Depositar">
			</div>
		</form>
		
		<br/> <br/> <br/>
		
		<form action="sacarEspecial">
			<div>
				<h2>Sacar:</h2>
				<p>Valor de Saque:</p>
				<input id="valorSaque" name="valorSaque" type="number" min="1" placeholder="Saque $" />		
			</div>
			<br/>
			<div>
				<input id="sacar" name="sacar" type="submit" value="Sacar">
			</div>
		</form>

		<h2>Métodos Adicionais</h2>
	</body>
</html>