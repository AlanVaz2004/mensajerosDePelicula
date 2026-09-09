import destino.*
import mensajero.*
object paquete{
    var destino = matrix
    var fuePagado = false
    var mensajero = jeanGrey

    method puedeSerEntregado(){
        return fuePagado //faltan otros 2 booleanos para saber si puede ser entregado 
    }

    method mensajero(_mensajero){
        mensajero = _mensajero
    }

    method mensajero(){
        return mensajero
    }
    
    method precio(){
        return destino.precio()
    }

    method destino(_destino){
        destino = _destino
    }

    method fuePagado(){
        return fuePagado
    }

    method fuePagado(_fuePagado){
        fuePagado = _fuePagado
    }
}