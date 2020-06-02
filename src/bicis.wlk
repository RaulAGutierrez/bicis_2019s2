

class Bicicleta {
	var property rodado
	var property largo // cm
	var property marca = ""
	const property accesorios = []
	
	method altura() { 
		return  15 + rodado * 2.5
	}
	method velocidadCrucero () {
		var velocidad = rodado + 2
		if (largo > 120) {
			velocidad = rodado + 6
		} 
		return velocidad
	} 
	method carga() {
		return accesorios.sum( { accesorio => accesorio.carga() } )
	}
	method pesoTotalAccesorios() {
		return accesorios.sum( { accesorio => accesorio.peso() } )
	}
	method peso() {
		return (rodado / 2) + self.pesoTotalAccesorios()
	}
	method tieneLuz() {
		return accesorios.any( { accesorio => accesorio.tieneLuz() } )
	}
	method accesoriosLiviano() {
		return accesorios.count( { accesorio => accesorio.peso() < 1 } )
	}
	method cargarAccesorio(accesorio) {
		accesorios.add(accesorio)
	}
	method removerAccesorio(accesorio) {
		accesorios.remove(accesorio)
	}
	method SonCompanieras(bicicletaAComparar) {
		return ((self != bicicletaAComparar) and ((self.marca() == bicicletaAComparar.marca()) and ((self.largo() - bicicletaAComparar.largo()) <= 10 )))
	}	
}
