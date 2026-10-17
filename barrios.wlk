class Barrio {
  const elementosDeBarrio = []

  method cantElementosDeBarrio() {
    return elementosDeBarrio.size()
  }
  method agregarElementoAlBarrio(unElemento) {
    elementosDeBarrio.add(unElemento)
  }
  method esCopado() {
    return elementosDeBarrio.filter({elemento => elemento.esBueno()}).size() 
                  > self.cantElementosDeBarrio() / 2
  }
} 