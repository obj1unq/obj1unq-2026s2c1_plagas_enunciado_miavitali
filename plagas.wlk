class Plaga {
    var property poblacion = 0
    method nivelDeDaño()
    method transmiteEnfermedad() {
        return poblacion >= 10
    }
    method efectoAlAtacar(){
        poblacion = poblacion * 1.1
    }

    method atacar(elemento) {
        elemento.efectoSobrePlaga(self)
        self.efectoAlAtacar()
    }
}

class PlagaCucaracha inherits Plaga{
    var property pesoPromedio = 0

    override method nivelDeDaño(){
        return poblacion / 2
    }

    override method transmiteEnfermedad(){
        return pesoPromedio >= 10 && super()
    }

    override method efectoAlAtacar(){
        super()
        pesoPromedio += 2
    }
}

class PlagaMosquito inherits Plaga{
    override method nivelDeDaño(){
        return poblacion
    }
    override method transmiteEnfermedad(){
        return poblacion % 3 == 0 && super()
    }
}

class PlagaPulga inherits Plaga{
    override method nivelDeDaño(){
        return poblacion * 2
    }
}

class PlagaGarrapata inherits Plaga{
    override method nivelDeDaño(){
        return poblacion * 2
    }

    override method efectoAlAtacar(){
        poblacion = poblacion * 1.2
    }
}