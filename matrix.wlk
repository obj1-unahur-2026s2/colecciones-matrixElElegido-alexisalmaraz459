

object neo{
    var energia = 100
    method vitalidad () = energia /10


    method esElElegido() = true

    method saltar(){
        energia = energia /2
    }
    

}


object morfeo {
    var vitalidad = 8
    var estaCansado = false

    method esElElegido() = false
    method vitalidad()= vitalidad

    method saltar(){
        estaCansado = not estaCansado
        vitalidad = (vitalidad-1).max(0)
    }

}

object trinity{
    method vitalidad() = 0
    method esElElegido() = false
    method saltar(){}
}

object nave{
    const pasajeros = []  // es una lista
    
    method subirPasajeros(unPasajero){
        pasajeros.add(unPasajero)
    }

    method bajarPasajeros(unPasajero){
        pasajeros.remove(unPasajero)
    }
   // consulta
    method cantidadPasajeros(){
      return pasajeros.size()
    }
   // consulta
    method laMayorVitalidad(){
        return pasajeros.max({unPasajero => unPasajero.vitalidad()}).vitalidad()
    }

   // consulta
    method elPasajeroConMasVitalidad(){
//        return pasajeros.max({unPasajero => unPasajero.vitalidad()}).vitalidad()

        return self.elPasajeroConMasVitalidad().vitalidad()

    }

   // consulta
    method estaEquilibrada(){
    // booleano
    // en min tenemos que hacer la minima
    // cuenta matematica max <= min*2
    return self.elPasajeroConMasVitalidad().vitalidad() <= min*2
    }

    // consulta
    method estaElElegido(){
    return pasajeoros.any({unPasajero => unPasajero.esElElegido()})

    }
//indicacion modifica estados. si no retorna.
    method chocar(){
    pasajeros.forEach({p => p.saltar()})
    pasajeros.clear()
    }
// explicacion para ver que se peiude mandar parametros.
//    method chocar(metros){
//    pasajeros.forEach({p => p.saltar(metros/2)})
 
    method acelerar() {
        



    }
}