import destino.*
import mensajero.*
object paquete{
    var destino = matrix
    var fuePagado = false

    method puedeSerEntregado(mensajero){//necesito por parametro poner el mensajero
        return fuePagado && destino.dejaEntrar(mensajero)
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