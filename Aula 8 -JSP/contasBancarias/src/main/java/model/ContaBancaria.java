package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ContaBancaria {
	protected String cliente;
	protected int num_conta;
	protected float saldo;
	
	public void sacar(float valorSaque) throws Exception{
		
		if(this.saldo < valorSaque) {
			throw new Exception("O Valor excede o seu Saldo, por favor insira um valor válido ");
		}else {
			this.saldo -= valorSaque;
		}
	}
	
	public void depositar(float valorDeposito) {
		saldo += valorDeposito;
	}

}
