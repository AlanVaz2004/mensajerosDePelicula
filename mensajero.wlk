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
    const paquetesPendientes = []
    const paquetesEnviados = []
    var facturacion = 0

    method contratados(){
        return contratados
    }

    method contratar(mensajero){
        contratados.add(mensajero)
    }

    method facturacion(){
        return facturacion
    }

    method facturacion(_facturacion){
        facturacion = _facturacion
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

    method tieneSobrePesoLaMensajeria(){//TODO
        return self.contratados().average{ mensajero => mensajero.peso() } > 500
        //supera los 500 kg el promedio de peso de los mensajeros
    }

    method enviarPaquete(paquete){
        if(self.puedeAlgunMensajeroEntregar(paquete)){
            paquetesEnviados.add(paquete)
        } else{
            paquetesPendientes.add(paquete)
        }
        //enviar si es posible
    }

    method enviarTodosLosPaquetes(){
        paquetesPendientes.forEach{ paquete => paquetesEnviados.add(paquete)
        paquetesPendientes.remove(paquete) }
        //enviar todos los paquetes de una coleccion
    }

    method paquetePendienteMasCaro(){
        return paquetesPendientes.max{ paquete => paquete.precio()}
    }
    
    method enviarPaquetePendienteMasCaro(){
        self.enviarPaquete(self.paquetePendienteMasCaro())
        //si es posible enviar el paquete pendiente mas caro
    }
}