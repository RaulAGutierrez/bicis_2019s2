

class Farolito {
	const peso = 0.5
	const luminoso = true
	method carga() { return 0 }
	method tieneLuz() { return luminoso }
	method peso() { return peso }
}

class Canasto {
	var property volumen
	const luminoso = false
	method carga() { return volumen * 2 }
	method tieneLuz() { return luminoso }
	method peso() { return volumen / 10 }
}

class MorralBici {
	var property largo // cm
	var luminoso = false
	const peso = 1.2 // kg
	method tieneOjoDeGato() { luminoso = not luminoso }
	method peso() { return peso }
	method carga() { return largo / 3 }
	method tieneLuz() { return luminoso }
}

/* 
 5. Una pregunta
 * Dependiendo que tipo de objeto hay que agregar.
 * agregaria una class para tipo de objeto.
 * Sobre el polimorfismo, mientras respete  
 * los mensajes de peso(), carga(), y tieneLuz(), 
 * voy a poder mantener polimorfismo con el resto
 * de los objetos.
 */
