object pepita {
  var energia = 100

  method energia() = energia

  method volar(distancia) {
    self.validarVolar(distancia)
    energia = energia - self.energiaParaVolar(distancia)
  }

  method validarVolar(distancia) {
    if (energia < self.energiaParaVolar(distancia)) {
      self.error("No puedo volar esta distancia")
    }
  }

  method energiaParaVolar(distancia) {
    return 10 + distancia
  }

  method comer(alimento) {
    energia = energia + alimento.energiaQueAporta()
  }

}

object roque {

  var rutina = {}
  var ave = pepita
  var cantidadDeCenas = 0

  method rutina(_rutina) {
    rutina= _rutina
  }

  method ave(_ave){
    ave = _ave
  }

  method entrenar() {
    rutina.apply(ave)
  }

  method alimentarAveCon(alimento){
    ave.comer(alimento)
    cantidadDeCenas = cantidadDeCenas + 1
  }

method cenas() {
    return cantidadDeCenas
  }
}



object alpiste {
  method energiaQueAporta() = 20
}

object miAsserter {

    method assertException(bloque) {

      try {
        bloque.apply() //ejecuto el bloque
        return false //no anda como espero
      }
      catch e: Exception {
        return true //anda como espero
      } 
      
    }

}
