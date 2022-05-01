import remiseras.*
import cliente.*


//------------------------------------------------------------------------OFICINA--------------------------------------------------------------------//


object oficina {
	var primeraOpcion
  	var segundaOpcion 
  

	method asignarRemiseras(remisera1, remisera2) {
		primeraOpcion = remisera1
    	segundaOpcion = remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera) {primeraOpcion = remisera}
	
	method cambiarSegundoRemiseraPor(remisera) {segundaOpcion = remisera}
	
	method intercambiarRemiseras() {
		/*
		 * Aca lo mas fácil era llamar al método self.asignarRemiseras(r2,r1)
		 */
		self.asignarRemiseras(segundaOpcion, primeraOpcion)
	}
	
	method remiseraPrimeraOpcion() { return  primeraOpcion }
  
  	method remiseraSegundaOpcion() {return  segundaOpcion}
  	
	method diferenciaEntreRemiseras(cliente,kms) {
    	return (primeraOpcion.precioViaje(cliente, kms) - segundaOpcion.precioViaje(cliente, kms)).abs()
  }
	
	method remiseraElegidaParaViaje(cliente, kms) {
		if (primeraOpcion.precioViaje(cliente, kms) > segundaOpcion.precioViaje(cliente, kms) and self.diferenciaEntreRemiseras(cliente,kms) > 30) {
			return self.remiseraSegundaOpcion()
    }
    	else {return self.remiseraPrimeraOpcion()}
  }
	}
	