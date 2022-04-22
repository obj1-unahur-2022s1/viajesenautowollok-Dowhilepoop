

//--------------------------------------------------------CLIENTES------------------------------------------------------------//


object ludmila {
	method precioPactadoPorKm(){
    	return 18
  }
}

object anaMaria {
	
//return 30  si está económicamente estable, return 25 pesos el kilómetro en caso contrario. Se sabe en cada momento si Ana María está o no económicamente estable.
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
	
//arranca en 22 pesos el kilómetro, puede cambiar a cualquier otro valor

	var precio = 22
	
	method cambioPrecio(nuevoPrecio) {precio = nuevoPrecio }
	
	method precioPactadoPorKm() {
		return precio
	}
}

object melina {
//El precio por kilómetro pactado con Melina es 3 pesos menos que el precio de la clienta para quien esté trabajando en cada momento.

  var melinaRemplazaA 
 
  method estaTrabajandoPara(chofer) {
    melinaRemplazaA = chofer
  }
  
  method precioPactadoPorKm() {
    return melinaRemplazaA.precioPactadoPorKm() - 3
  }
}


