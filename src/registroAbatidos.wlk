object registroAbatidosCOD {
	const abatidos = []
	const dias = []
	
	method cantidadDeDiasRegistrados() = dias.size()
	
	method estaVacioElRegistro() = abatidos.isEmpty() && dias.isEmpty()
	
	method algunDiaAbatio(cantidad) = abatidos.any({a => a == cantidad})
	
	method primerValorDeAbatidos() = abatidos.first()
	
	method ultimoValorDeAbatidos() = abatidos.last()
	
	method maximoValorDeAbatidos() = abatidos.max()
	
	method totalAbatidos() = abatidos.sum()
	
	method cantidadDeAbatidosElDia(dia){
		
	}
	
	
	
}