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

    method puedeSerEntregado(mensajero){
        return true
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
        pagos.add(100)
    }

    method destinos(){
        return destinos
    }

    method precio(){
        return precio
    }

    method precio(_precio){
        precio = _precio * destinos.size()//precio que cambia segun elementos de la lista destinos
    }

    method pagos(){
        return pagos
    }

    method puedeSerEntregado(mensajero){
        return mensajero.pasaPorTodosLosDestinos() && self.pagos().isEmpty()    
        //depende de si puede pasar el mensajero por todos los destinos
    }

    method pagarUnDestino(){
        pagos.remove(pagos.first())
        //pagar los 100 de un destino de la lista (por tanto quitar ese pago de lista de pagos)
    }
}