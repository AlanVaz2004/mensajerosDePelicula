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
    //paquetes pendientes = []

    method contratados(){
        return contratados
    }

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

    method puedeAlgunMensajeroEntregar(paquete){ //TODO
        return self.contratados().any{ mensajero => paquete.puedeSerEntregado(mensajero) }
    }

    method quienesPuedenLlevarPaquete(paquete){//TODO
        return self.contratados().filter{ mensajero => paquete.puedeSerEntregado(mensajero) }
        //devuelve collecion de mensajeros que pueden
    }

    method tieneSobrePeso(mensajeriaCompleta){
        //supera los 500 kg la mensajeria
    }

    //punto 4

    method enviarTodosLosPaquetes(){
        //enviar todos los paquetes de una coleccion
    }

    method enviarPaquetePendienteMasCaro(){
        //si es posible enviar el paquete pendiente mas caro
    }
}