

//--------------------------------------------------------CLIENTES------------------------------------------------------------//


object ludmila {
	method precioPactadoPorKm(){
    	return 18
  }
}

object anaMaria {
	
	var economicamenteEstable = true
	
	method noEstable() {economicamenteEstable = false}
	
	method esEstable() {return economicamenteEstable }

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


