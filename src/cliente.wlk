

//--------------------------------------------------------CLIENTES------------------------------------------------------------//


object ludmila {
	method precioPactadoPorKm(){
    	return 18
  }
}

object anaMaria {
	/* Falto el método para volver a poner economicamenteEstable=true
	 * Podias hacer uno que le pases el booleano y cambie el valor de atributo
	 */	
	var economicamenteEstable = true
	
	method economicamenteEstable(unValor) {economicamenteEstable = unValor}
	
	method precioPactadoPorKm() {
		if (economicamenteEstable) {
			return 30
		}
		else {
			return 25
		}	
	}
}

object teresa {

	var precio = 22
	
	method cambioPrecio(nuevoPrecio) {precio = nuevoPrecio }
	
	method precioPactadoPorKm() {
		return precio
	}
}

object melina {

  var melinaRemplazaA 
 
  method estaTrabajandoPara(chofer) {
    melinaRemplazaA = chofer
  }
  
  method precioPactadoPorKm() {
    return melinaRemplazaA.precioPactadoPorKm() - 3
  }
}


