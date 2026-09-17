import destino.*
import mensajero.*
object paquete{
    var destino = matrix
    var property fuePagado = false

    method puedeSerEntregado(mensajero){//necesito por parametro poner el mensajero
        return fuePagado && destino.dejaEntrar(mensajero)
    }
    
    method precio(){
        return destino.precio()
    }

    method destino(_destino){
        destino = _destino
    }
}

object paquetito{

    const fuePagado = true

    method puedeSerEntregado(mensajero){
        return true
    }

    method precio(){
        return 0
    }
}

object paquetonViajero{
    const destinos = []
    var precio = 0 //cambia segun cuantos destinos haya
    const pagos = []

    method agregarDestino(destino){
        destinos.add(destino)
    }

    method precio(_precio){
        //precio que cambia segun elementos de la lista destinos
    }

    method pagoTotal(){
        //igual cantidad de elementos que destinos pero 100 pesos en cada posicion
    }

    method puedeSerEntregado(mensajero){
        //depende de si puede pasar el mensajero por todos los destinos
    }
}