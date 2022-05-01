//----------------------------------------------------REMISERAS---------------------------------------------------------------------//



object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela {
  /* Para sumar un % a un valor podes multiplicar directamente al valor * 1.%  */
  method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms * 1.2
	}
}


object mariela {
  method precioViaje(cliente, kms) {
  	/*Aca tenias que  usar el max() */
  	return 50.max(cliente.precioPactadoPorKm() * kms)
  }
}

object juana {
  method precioViaje(cliente, kms) {
    if (kms <= 8) {
      return 100
    }
    else {
      return 200
    }
  }
}

object lucia{
  var ahoraLuciaEs
  method estaReemplazandoA(chofer) {
    ahoraLuciaEs = chofer
  }
  
  method precioViaje(cliente, kms) {
    return ahoraLuciaEs.precioViaje(cliente, kms)
  }
} 