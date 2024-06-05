package model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class ContaPoupanca extends ContaBancaria{
	private int diaDeRendimento;
	
	public void calcularNovoSaldo(float taxaDeRendimento) {
		this.saldo += (saldo * taxaDeRendimento);
		
	}
}
