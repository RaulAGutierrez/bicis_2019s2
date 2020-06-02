import bicis.* 
import accesorios.*

class Deposito {
	const coleccion = []
	
	method agregarALaColeccion(bicicleta) {
		return coleccion.add(bicicleta)
	}
	method quitarDeLaColecion(bicicleta) {
		return coleccion.remove(bicicleta)
	}
	method bicisMasRapidas() {
		return coleccion.filter( { bicicleta => bicicleta.velocidadCrucero() > 25 } )
	}
	method coleccionDeMarcas() {
		return coleccion.map( { bicicleta =>  bicicleta.marca() } ).asSet()
	}
	method elDepositoEsNocturno() {
		return coleccion.all( { bicicleta => bicicleta.tieneLuz() } )
	}
	method cualBicicletaSoportaLaCarga(kg) {
		return coleccion.any({ bicicleta => bicicleta.carga() > kg })
	}
	method marcaDeLaBiciMasRapida() {
		return coleccion.max( { bicicleta => bicicleta.velocidadCrucero() } ).marca()
	}
	method bicicletasMasLarga(largoEnCm) {
		return coleccion.filter( { bicicletas => bicicletas.largo() > largoEnCm } )
	}	
	method totalCargaDeLasBicisLargas() {
		return self.bicicletasMasLarga(170).sum( { bicicletas => bicicletas.carga() } )
	}
	method cantidadDeBicisSinAccesorios() {
		return coleccion.count( { bicicletas => (bicicletas.accesorios()).isEmpty() } )
	}
	method buscarBicicletasCompanieras(bicicletaBase) {
		return coleccion.filter( { bicicleta => bicicleta.SonCompanieras(bicicletaBase) })
	}
	
	// Desafio
	
	
}

