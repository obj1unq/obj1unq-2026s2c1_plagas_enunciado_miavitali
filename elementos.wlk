import plagas.*

class Elemento {
    method esBueno()
    method efectoSobrePlaga(plaga)
}

class Hogar inherits Elemento {
    var property nivelDeMugre = 0
    var property nivelDeConfort = 0

    override method esBueno(){
        return nivelDeMugre <= nivelDeConfort / 2
    }
    override method efectoSobrePlaga(plaga){
        nivelDeMugre += plaga.nivelDeDaño()
    }
}

class Huerta inherits Elemento {
    var property capacidadDeProduccion = 0
    var property nivel = 0

    override method esBueno(){
      return capacidadDeProduccion > nivel
    }
    override method efectoSobrePlaga(plaga){
        capacidadDeProduccion -= (plaga.nivelDeDaño()) * 0.1
        if (plaga.transmiteEnfermedad()){capacidadDeProduccion -= 10}
    }
    
}

class Mascota inherits Elemento {
    var property nivelDeSalud = 0

    override method esBueno(){
      return nivelDeSalud > 250
    }    

    override method efectoSobrePlaga(plaga){
        if (plaga.transmiteEnfermedad()){nivelDeSalud -= plaga.nivelDeDaño()}
    }  
}