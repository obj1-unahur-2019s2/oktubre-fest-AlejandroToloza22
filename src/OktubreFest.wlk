class MarcaDeCerveza {
	var property cantdDeLupulo
	var property hechoEn
	var property graduacionDeAlcohol
}

class CervezaRubia inherits MarcaDeCerveza {}

object enteRegulador {
	method reguladorGraduacion() {
		return 2
	}
}

class CervezaNegra inherits MarcaDeCerveza {
	override method graduacionDeAlcohol() {
		return (enteRegulador.reguladorGraduacion()).min(cantdDeLupulo * 2)
	}
}

class CervezaRoja inherits CervezaNegra {
	override method graduacionDeAlcohol() {
		return super() * 1.25
	}
}

class Jarra {
	var property capacidad
	var property marca
	
	method contenidoDEAlcohol() {
		return capacidad * marca.graduacionDeAlcohol()
	}
}

class Persona {
	var property peso
	var property jarrasCompradas = []
	var property gustaDeMusicaTradicional
	var property nivelDeAguante
	
	method cervezaQueGusta(cerveza)
	
	method comprarJarra(jarra) {
		jarrasCompradas.add({jarra})
	}
	
	method totalDeAlcohol() {
		return jarrasCompradas.sum({j=>j.contenidoDeAlcohol()})
	}
	
	method estaEbria() {
		return self.totalDeAlcohol()*peso>nivelDeAguante
	}
}

class Belga inherits Persona {
	override method cervezaQueGusta(cerveza) {
		return cerveza.cantdLupulo()>4
	}
}

class Checo inherits Persona {
	override method cervezaQueGusta(cerveza) {
		return cerveza.graduacionDeAlcohol() > 0.08
	}
}

class Aleman inherits Persona {
	override method cervezaQueGusta(cerveza) {
		return true
	}
}

class CarpasCerveceras {
	
}