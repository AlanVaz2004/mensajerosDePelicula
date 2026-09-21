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
    var property estaPago = true

    method agregarDestino(destino){
        destinos.add(destino)
    }

    method destinos(){
        return destinos
    }

    method precio(_precio){
        precio = _precio * destinos.size()//precio que cambia segun elementos de la lista destinos
    }

    method pagos(precioDeTodosLosDestinos){ //TODO
        pagos.add(100) * destinos.size() //debi hacer un clousure en que tenga dentro el destino.size, ya que el * no funciona como quisiera en este caso
        //igual cantidad de elementos que destinos pero 100 en cada posicion de la lista
    }
    method pagos(){
        return
    }

    method puedeSerEntregado(mensajero){
        return estaPago && mensajero.pasaPorTodosLosDestinos()  
        //depende de si puede pasar el mensajero por todos los destinos
    }

    method pagarUnDestino(){
        //pagar los 100 de un destino de la lista (por tanto quitar ese pago de lista de pagos)
    }
}