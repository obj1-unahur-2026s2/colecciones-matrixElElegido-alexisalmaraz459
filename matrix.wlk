

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

    method cantidadPasajeros(){
      return pasajeros.size()
    }

    method laMayorVitalidad(){
        return pasajeros.max({unPasajero => unPasajero.vitalidad()}).vitalidad()
    }


    method elPasajeroConMasVitalidad(){
        return pasajeros.max({unPasajero => unPasajero.vitalidad()})


    }

    //




}