package model;

public class ContaEspecial extends ContaBancaria {
	
	private float limite;
	
	@Override
	public void sacar(float valorSaque) throws Exception{
		if((this.saldo + limite) > valorSaque) {
			throw new Exception("Valor de Saque Indisponível");
		
		}else {
			this.saldo -= valorSaque;
		}
		
	}
}
