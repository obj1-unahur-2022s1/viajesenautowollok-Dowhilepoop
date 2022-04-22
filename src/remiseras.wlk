//----------------------------------------------------REMISERAS---------------------------------------------------------------------//



object roxana {
	method precioViaje(cliente, kms) { 
		return cliente.precioPactadoPorKm() * kms
	}
}

object gabriela {
  method precioViaje(cliente, kms) { 
		return (cliente.precioPactadoPorKm() * kms) + ((cliente.precioPactadoPorKm() * kms) * 0.20)
	}
}


object mariela {
  method precioViaje(cliente, kms) {
    if ((cliente.precioPactadoPorKm() * kms) < 50) {
      return 50
    } 
    else {
      return cliente.precioPactadoPorKm() * kms
    } 
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