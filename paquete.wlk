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
        return fuePagado
    }

    method precio(){
        return 0
    }
}

object paquetonViajero{
    const destinos = [] //uso list ya que permite duplicados
    var precio = 0 
    const pagos = [] //uso list ya que permite duplicados

    method agregarDestino(destino){
        destinos.add(destino)
    }

    method precio(_precio){
        precio = _precio * destinos.size()//precio que cambia segun elementos de la lista destinos
    }

    method pagos(precioDeTodosLosDestinos){
        pagos.add(100) * destinos.size()
        //igual cantidad de elementos que destinos pero 100 en cada posicion de la lista
    }

    method puedeSerEntregado(mensajero){
        
        //depende de si puede pasar el mensajero por todos los destinos
    }
}