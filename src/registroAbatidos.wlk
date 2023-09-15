object reg {
	const registro = []
	
	method agregarAbatidosDia(cantidad, dia){
		if(self.yaEstaElDia(dia)){
			self.error("Ya existe el día")
		}
		registro.add([cantidad, dia])
	}
	
	method agregarAbatidosVariosDias(registrosAbatidos){
		
		registro.addAll(registrosAbatidos)
	}
	
	method yaEstaElDia(dia) = registro.any({r => self.dia(r) == dia})
	
	method dia(reg) = reg.get(1)
	
	method cant(reg) = reg.first()
	
	method eliminarElRegristroDelDiaR(dia){
		if(!self.yaEstaElDia(dia)){
			self.error("El dia no esta en la lista")
		}
		registro.remove(self.registroDia(dia))
	}
	
	method eliminarVariosRegistroDeDias(listaDeDias){
		if(!listaDeDias.all({e => self.yaEstaElDia(e)})){
			self.error("Algun día de la lista no esta incluido en el registro")
		}
		listaDeDias.forEach{e => self.eliminarElRegristroDelDiaR(e)}
	}
	
	method eliminarVariosRegistroDeDias2(listaDeDias){
		if(listaDeDias.any({e => !self.yaEstaElDia(e)})){
			self.error("Algun día de la lista no esta incluido en el registro")
		}
		listaDeDias.forEach{e => self.eliminarElRegristroDelDiaR(e)}
	}
	
	method estaVacioElRegistro() = registro.isEmpty()
		
	method registroDia(dia) = registro.find({r => self.dia(r) == dia})
	
	method cantidadDeDiasRegistrados() = registro.size()
	
	method algunDiaAbatio(cantidad) = registro.any({r => self.cant(r) == cantidad})
	
	method primerValorDeAbatidos() = self.cant(registro.first())
	
	method ultimoValorDeAbatidos() = self.cant(registro.last())
	
	method maximoValorDeAbatidos() = registro.max({r => self.cant(r)}).first()
	
	method maximoValorDeAbatidos2() = self.cant(registro.max({r => self.cant(r)}))
		
	method maximoValorDeAbatidosConMap() = registro.map({r => self.cant(r)}).max()
	
	method totalAbatidos() = registro.sum({r => self.cant(r)})
	
	method cantidadDeAbatidosElDia(dia) = self.cant(self.registroDia(dia))
	
	method ultimoValorDeAbatidosConSize() = self.cant(registro.get(registro.size()-1))
	
	method esCrack() = 
	(1..registro.size()-1).all({i => self.cant(registro.get(i) > self.cant(registro.get(i-1)))})
	
}