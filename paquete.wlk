import destino.*
object paquete{
    var destino = matrix
    var fuePagado = false
    
    method precio(){
        return destino.precio()
    }

    method destino(_destino){
        destino = _destino
    }

    method fuePagado(_fuePagado){
        fuePagado = _fuePagado
    }
}