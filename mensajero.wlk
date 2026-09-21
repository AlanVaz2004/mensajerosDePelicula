import vehiculos.*
import paquete.*
import destino.*
object jeanGrey{
    const puedeLlamar = true
    const peso = 65

    method peso(){
        return peso
    }

    method puedeLlamar(){
        return puedeLlamar
    }

    method pasaPorTodosLosDestinos(){
        return paquetonViajero.destinos().all({destino => destino.dejaEntrar(self) } )
    }
}

object neo{
    var puedeLlamar = true
    const peso = 0

    method peso(){
        return peso
    }

    method puedeLlamar(){
        return puedeLlamar
    }

    method puedeLlamar(_puedeLlamar){
        puedeLlamar = _puedeLlamar
    }

    method pasaPorTodosLosDestinos(){
        return paquetonViajero.destinos().all({destino => destino.dejaEntrar(self) } )
    }

}

object saraConnor{
    const puedeLlamar = false
    var peso = 70
    var vehiculo = camion

    method peso(){
        return peso + vehiculo.peso()
    }

    method peso(_peso){
        peso = _peso
    }

    method puedeLlamar(){
        return puedeLlamar
    }

    method vehiculo(_vehiculo){
        vehiculo = _vehiculo
    }

    method pasaPorTodosLosDestinos(){
        return paquetonViajero.destinos().all({destino => destino.dejaEntrar(self) } )
    }

}

object mensajeros{
    const contratados = []
    const despedidos = []

    method contratar(mensajero){
        contratados.add(mensajero)
    }

    method estaContratado(mensajero){
        return contratados.contains(mensajero)
    }

    method despedir(mensajero){
        contratados.remove(mensajero)
        despedidos.add(mensajero)
    }

    method estaDespedido(mensajero){
        return despedidos.contains(mensajero)
    }

    method despedirATodos(){
        despedidos.addAll(contratados)
        contratados.clear()
    }

    method hayMensajerosContratados(){
        return not contratados.isEmpty()
    }

    method esGrande(){
        return contratados.size() > 2
    }

    method elPrimeroPuedeEntregar(){
        return paquete.puedeSerEntregado(contratados.first()) 
        //preguntar a paquete si puede ser entregado y enviarle el mensajero por parametro
    }

    method pesoDelUltimoMensajero(){
        return contratados.last().peso()
    }
}